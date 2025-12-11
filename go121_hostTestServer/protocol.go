package main

import (
	"encoding/binary"
	"fmt"
)

const (
	HeaderMagic = 0x12345678
	TailMagic   = 0x87654321

	CMD_OUTER_CLASS_T          = 0
	CMD_OUTER_CLASS_R          = 1
	CMD_OUTER_CLASS_CLK        = 2
	CMD_OUTER_CLASS_FUNC_COMM  = 3
	CMD_OUTER_CLASS_FUNC_RADAR = 4
	CMD_OUTER_CLASS_FUNC_INTER = 5
	CMD_OUTER_CLASS_STOP       = 6
)

const (
	commPack            = 0
	commRecv            = 1
	radarTxNums         = 0
	radarRxNums         = 1
	radarBW             = 2
	radarChirps         = 3
	radarRampTime       = 4
	radarTc             = 5
	radarADCDelay       = 6
	radarPeriodicity    = 7
	radarPoints         = 8
	radarSampleInterval = 9

	interScanFreqMHz    = 0
	interScanSpanMHz    = 1
	interScanPoints     = 2
	interJammingFreqMHz = 3
	interJammingSpanMHz = 4
)

type CommInfo struct {
	packLen uint32
	buf     []byte
}

type RadarConfig struct {
	TxAnt       int
	RxAnt       int
	Bandwidth   float32
	Chirps      int
	RampTime    float32
	Tc          float32
	ADCDelay    float32
	Periodicity float32
	ADCPoints   int
}

type InterConfig struct {
	scanFreqMHz    float32
	scanSpanMHz    float32
	spanPoints     int
	jammingFreqMHz float32
	jammingSpanMHz float32
}

type Protocol struct {
	Buf         []byte
	BufSize     int
	CurrentMode int

	Comm  CommInfo
	Radar RadarConfig
	Inter InterConfig

	TxRegs  [7]uint32
	RxRegs  [16]uint32
	LMXRegs [120]uint32
}

const (
	ModeStop         = 5
	ModeCommT        = 0
	ModeCommR        = 1
	ModeRadar        = 2
	ModeInterScan    = 3
	ModeInterJamming = 4
)

func (p *Protocol) Init(buffer []byte) {
	p.Buf = buffer
	p.BufSize = len(buffer)
	p.CurrentMode = ModeStop
	p.Comm.buf = make([]byte, 2048)
}

func u32(b []byte) uint32 { return binary.LittleEndian.Uint32(b) }
func u16(b []byte) uint16 { return binary.LittleEndian.Uint16(b) }

func (p *Protocol) classT(id uint8, ptr []byte) {
	p.TxRegs[id-5] = u32(ptr)
}

func (p *Protocol) classR(id uint8, ptr []byte) {
	p.RxRegs[id] = u32(ptr)
}

func (p *Protocol) classLMX(id uint8, ptr []byte) {
	p.LMXRegs[id] = u32(ptr)
}

func (p *Protocol) classComm(id uint8, ptr []byte) bool {
	switch id {
	case commPack:
		fmt.Println("\t收到小类：发送内容")
		p.Comm.packLen = u32(ptr)
		p.Comm.buf = append([]byte{}, ptr[4:4+p.Comm.packLen]...)
		p.CurrentMode = ModeCommT
		return true

	case commRecv:
		fmt.Println("\t收到小类：接收模式")
		// 测试中不可以将其设置为接收模式，必须保持发送
		//p.CurrentMode = ModeCommR
	}
	return false
}

func (p *Protocol) classRadar(id uint8, ptr []byte) {
	switch id {
	case radarTxNums:
		p.Radar.TxAnt = int(u32(ptr))
	case radarRxNums:
		p.Radar.RxAnt = int(u32(ptr))
	case radarBW:
		p.Radar.Bandwidth = float32(u32(ptr))
	case radarChirps:
		p.Radar.Chirps = int(u32(ptr))
	case radarRampTime:
		p.Radar.RampTime = float32(u32(ptr))
	case radarTc:
		p.Radar.Tc = float32(u32(ptr))
	case radarADCDelay:
		p.Radar.ADCDelay = float32(u32(ptr))
	case radarPeriodicity:
		p.Radar.Periodicity = float32(u32(ptr))
	case radarPoints:
		p.Radar.ADCPoints = int(u32(ptr))
	}
}

func (p *Protocol) classInter(id uint8, ptr []byte) {
	switch id {
	case interScanFreqMHz:
		fmt.Println("\t收到小类：扫频频率")
		p.Inter.scanFreqMHz = float32(u32(ptr))
		p.CurrentMode = ModeInterScan
	case interScanSpanMHz:
		fmt.Println("\t收到小类：扫频频率跨度")
		p.Inter.scanSpanMHz = float32(u32(ptr))
		p.CurrentMode = ModeInterScan
	case interScanPoints:
		fmt.Println("\t收到小类：扫频数据点")
		p.Inter.spanPoints = int(u32(ptr))
		p.CurrentMode = ModeInterScan
	case interJammingFreqMHz:
		fmt.Println("\t收到小类：干扰频率")
		p.Inter.jammingFreqMHz = float32(u32(ptr))
		p.CurrentMode = ModeInterJamming
	case interJammingSpanMHz:
		fmt.Println("\t收到小类：干扰频率跨度")
		p.Inter.jammingSpanMHz = float32(u32(ptr))
		p.CurrentMode = ModeInterJamming
	}
}

func (p *Protocol) Process(size int) bool {

	// 1. buffer 长度
	if size > p.BufSize {
		return true
	}

	// 2. header
	if u32(p.Buf[0:4]) != HeaderMagic {
		return true
	}

	// 3. tail
	if u32(p.Buf[size-4:size]) != TailMagic {
		return true
	}

	// 4. checksum
	var sum uint32 = 0
	for i := 4; i < size-8; i++ {
		sum += uint32(p.Buf[i])
	}
	if u32(p.Buf[size-8:size-4]) != sum {
		return true
	}

	// 5. TLV 解析
	ptr := 4
	exitFlag := false

	for ptr < size-8 {

		major := p.Buf[ptr]
		minor := p.Buf[ptr+1]
		body := p.Buf[ptr+2 : ptr+6]

		switch major {

		case CMD_OUTER_CLASS_T:
			p.classT(minor, body)

		case CMD_OUTER_CLASS_R:
			p.classR(minor, body)

		case CMD_OUTER_CLASS_CLK:
			p.classLMX(minor, body)

		case CMD_OUTER_CLASS_FUNC_COMM:
			fmt.Println("收到大类：通信")
			exitFlag = p.classComm(minor, body)

		case CMD_OUTER_CLASS_FUNC_RADAR:
			fmt.Println("收到大类：雷达")
			p.CurrentMode = ModeRadar
			p.classRadar(minor, body)

		case CMD_OUTER_CLASS_FUNC_INTER:
			fmt.Println("收到大类：对抗")
			p.classInter(minor, body)

		case CMD_OUTER_CLASS_STOP:
			fmt.Println("收到大类：停止")
			p.CurrentMode = ModeStop
		}

		if exitFlag {
			return false
		}

		ptr += 6
	}

	return false
}
