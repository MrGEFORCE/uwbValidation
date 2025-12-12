package main

import (
	"math/rand"
	"net"
)

var interBuf []float32

const simuTargetFreqMHz = 12e3

func HandleInterferenceScan(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	interBuf = make([]float32, p.Inter.spanPoints)

	for i := 0; i < p.Inter.spanPoints; i++ {
		interBuf[i] = float32(rand.Intn(100)) / 10.
	}
	fMin := p.Inter.scanFreqMHz - p.Inter.scanSpanMHz/2
	fMax := p.Inter.scanFreqMHz + p.Inter.scanSpanMHz/2

	if simuTargetFreqMHz >= fMin && simuTargetFreqMHz <= fMax {
		ratio := (simuTargetFreqMHz - fMin) / (fMax - fMin)
		idx := int(ratio * float32(p.Inter.spanPoints))
		if idx < 0 {
			idx = 0
		}
		if idx >= p.Inter.spanPoints {
			idx = p.Inter.spanPoints - 1
		}
		interBuf[idx] = 1000
	}
	tlv.header.OuterClass = CMD_OUTER_CLASS_FUNC_INTER
	tlv.dataLens[INTER_SPEC] = uint32(p.Inter.spanPoints) * 4 // 用f32表示
	tlv.Tlv_transmit(conn, remote)
}

func HandleInterferenceJamming(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	// 不需要模拟
}
