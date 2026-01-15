package main

import (
	"encoding/binary"
	"fmt"
	"math"
	"net"
	"os"
	"time"
)

const SAMPLE_RATE_MAX_MSPS = 153.6
const TWO_PI = 2 * math.Pi
const c0 = 3e8

var radarBuf [128 * 4 * 512 * 2 * 2]byte
var radarBufLen int

var radarStopChan chan struct{}
var radarRunning = false

const targetNums int = 1

type targetMov struct {
	r float64
	v float64
}

type targetLimit struct {
	rMin  float64
	rMax  float64
	vMin  float64
	vMax  float64
	rStep float64
	vStep float64
}

var targets [targetNums]targetMov
var targetsLimit [targetNums]targetLimit

func HandleRadar(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	// target init
	targetsLimit[0].rMin = 50
	targetsLimit[0].rMax = 600
	targetsLimit[0].vMin = -15
	targetsLimit[0].vMax = 15
	targetsLimit[0].rStep = 10
	targetsLimit[0].vStep = 1
	targets[0].r = targetsLimit[0].rMin
	targets[0].v = targetsLimit[0].vMin

	StartRadarTimer(p, conn, remote)
}

func StartRadarTimer(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	if radarRunning {
		return
	}
	radarRunning = true
	radarStopChan = make(chan struct{})
	ticker := time.NewTicker(time.Duration(p.Radar.Periodicity * float32(time.Millisecond)))

	// radar header init
	tlv.header.Frame = 0
	tlv.header.OuterClass = CMD_OUTER_CLASS_FUNC_RADAR
	tlv.dataLens[RADAR_IF] = 4 * pro.Radar.Chirps * pro.Radar.TxAnt * pro.Radar.RxAnt * pro.Radar.ADCPoints
	fmt.Println("here")

	go func() {
		defer func() {
			ticker.Stop()
			radarRunning = false
		}()
		for {
			select {
			case <-ticker.C:
				radarProcessOnce(p)
				tlv.header.Frame++
				tlv.Tlv_transmit(conn, remote)
				// send if data
				chunkSize := 2048
				for i := 0; i < radarBufLen; i += chunkSize {
					end := i + chunkSize
					if end > radarBufLen {
						end = radarBufLen
					}
					_, err := conn.WriteToUDP(radarBuf[i:end], remote)
					if err != nil {
						fmt.Printf("Error: %v\n", err)
						os.Exit(1)
					}
				}
			case <-radarStopChan:
				return
			}
		}
	}()
}

func StopRadarTimer() {
	if radarRunning && radarStopChan != nil {
		close(radarStopChan)
	}
}

func radarProcessOnce(p *Protocol) {
	// target update
	for t := 0; t < targetNums; t++ {
		targets[t].r += targetsLimit[t].rStep
		targets[t].v += targetsLimit[t].vStep
		if targets[t].r > targetsLimit[t].rMax {
			targets[t].r = targetsLimit[t].rMin
		}
		if targets[t].v > targetsLimit[t].vMax {
			targets[t].v = targetsLimit[t].vMin
		}
	}
	Fs := SAMPLE_RATE_MAX_MSPS / float64(p.Radar.sampleInterval) * 1e6
	oneChirp := make([]byte, p.Radar.ADCPoints*4)
	amp := 1500. / float64(targetNums)

	for k := 0; k < int(p.Radar.Chirps); k++ {
		// DC
		for j := 0; j < int(p.Radar.ADCPoints); j++ {
			off := j * 4
			binary.LittleEndian.PutUint16(oneChirp[off:], 2048)
			binary.LittleEndian.PutUint16(oneChirp[off+2:], 2048)
		}
		// signal gen
		for t := 0; t < targetNums; t++ {
			IF := 2e12 * float64(p.Radar.Bandwidth/p.Radar.RampTime) * targets[t].r / c0
			chirp_p := float64(k) * 4. * math.Pi * targets[t].v * float64(p.Radar.Tc) * 1e-6 / (c0 / (float64(p.Radar.startFreq) * 1e6))
			for j := 0; j < int(p.Radar.ADCPoints); j++ {
				phase := TWO_PI*IF*float64(j)*(1/Fs) + chirp_p
				off := j * 4
				I0 := binary.LittleEndian.Uint16(oneChirp[off:])
				Q0 := binary.LittleEndian.Uint16(oneChirp[off+2:])
				I := int(I0) + int(amp*math.Cos(phase))
				Q := int(Q0) + int(amp*math.Sin(phase))
				binary.LittleEndian.PutUint16(oneChirp[off:], uint16(I))
				binary.LittleEndian.PutUint16(oneChirp[off+2:], uint16(Q))
			}
		}
		// make memory
		chirpStart := k * int(p.Radar.TxAnt) * int(p.Radar.RxAnt) * int(p.Radar.ADCPoints) * 2 * 2
		for tx := 0; tx < int(p.Radar.TxAnt); tx++ {
			for j := 0; j < int(p.Radar.ADCPoints); j++ {
				basis := chirpStart + 2*2*int(p.Radar.RxAnt)*j
				for rx := 0; rx < int(p.Radar.RxAnt); rx++ {
					// copy I
					copy(radarBuf[basis+rx*2:basis+rx*2+2], oneChirp[j*4:j*4+2]) // once u16
					// copy Q
					copy(radarBuf[basis+rx*2+int(p.Radar.RxAnt)*2:basis+rx*2+int(p.Radar.RxAnt)*2+2], oneChirp[j*4+2:j*4+4])
				}
			}
		}
	}
	radarBufLen = int(p.Radar.Chirps) * int(p.Radar.TxAnt) * int(p.Radar.RxAnt) * int(p.Radar.ADCPoints) * 2 * 2
	fmt.Println("雷达内存占用：", radarBufLen)
}
