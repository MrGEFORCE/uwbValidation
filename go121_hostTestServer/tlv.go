package main

import (
	"fmt"
	"net"
	"unsafe"
)

var tlvBuf [4096]byte
var tlvBufLen uint32

const (
	COMM = iota
	RADAR_IF
	INTER_SPEC
	DATA_TYPE_NUMS
)

type Header struct {
	SMW        [4]uint16
	Delay      uint8
	TlvNums    uint8
	OuterClass uint8
	_          uint8
	DataLen    uint32
	Frame      uint16
}

type TL struct {
	T uint32
	L uint32
}

type tlvHandler struct {
	header       Header
	tl           TL
	mask         [DATA_TYPE_NUMS]bool
	previousMode int
	sendFunc     [DATA_TYPE_NUMS]func()
	dataLens     [DATA_TYPE_NUMS]uint32
}

var tlv = tlvHandler{}

func (t *tlvHandler) tlv_mode_reset() {
	for i := range t.mask {
		t.mask[i] = false
	}
}

func (t *tlvHandler) tlv_mode_comm() {
	t.tlv_mode_reset()
	t.mask[COMM] = true
	t.header.TlvNums = 1
}

func (t *tlvHandler) tlv_mode_radar() {
	t.tlv_mode_reset()
	t.mask[RADAR_IF] = true
	t.header.TlvNums = 1
}

func (t *tlvHandler) tlv_mode_inter_scan() {
	t.tlv_mode_reset()
	t.mask[INTER_SPEC] = true
	t.header.TlvNums = 1
}

func (t *tlvHandler) tlv_mode_select() {
	if t.previousMode != pro.CurrentMode {
		switch pro.CurrentMode {
		// 通信模式这里的行为下位机不能参考，实验中直接处理后回传，R模式无法模拟，T模式行为不同
		case ModeCommT:
			t.tlv_mode_comm()
		case ModeCommR: // 模拟不了
		case ModeRadar:
			t.tlv_mode_radar()
		case ModeInterScan:
			t.tlv_mode_inter_scan()
		case ModeInterJamming: // 不需要模拟
		}
		t.previousMode = pro.CurrentMode
	}
}

func (t *tlvHandler) Tlv_init() {
	t.header.SMW[0] = 0x0102
	t.header.SMW[1] = 0x0304
	t.header.SMW[2] = 0x0506
	t.header.SMW[3] = 0x0708
	t.header.Frame = 0
	t.header.Delay = 0
	t.header.OuterClass = CMD_OUTER_CLASS_STOP
	t.tlv_mode_reset()
	t.previousMode = 0xff
	t.sendFunc[COMM] = t.tlv_send_comm
	t.sendFunc[RADAR_IF] = t.tlv_send_radar_if
	t.sendFunc[INTER_SPEC] = t.tlv_send_inter_scan_spec
}

func (t *tlvHandler) Tlv_transmit(conn *net.UDPConn, remote *net.UDPAddr) {
	tlvBufLen = 0
	t.tlv_mode_select()
	t.tlv_send_header()
	for i := 0; i < DATA_TYPE_NUMS; i++ {
		if t.mask[i] {
			t.sendFunc[i]()
		}
	}
	_, err := conn.WriteToUDP(tlvBuf[:tlvBufLen], remote)
	if err != nil {
		return
	}
}

func (t *tlvHandler) tlv_send_header() {
	tlv.header.DataLen = uint32(unsafe.Sizeof(tlv.header)) + uint32(unsafe.Sizeof(tlv.tl))*uint32(tlv.header.TlvNums)
	for i := 0; i < DATA_TYPE_NUMS; i++ {
		if t.mask[i] {
			tlv.header.DataLen += tlv.dataLens[i] // 到send header前需要准备好对应的数据长度，将其更新在tlv.dataLens[i]中
		}
	}
	tlv.header.OuterClass = CMD_OUTER_CLASS_FUNC_COMM
	Tlv_to_bytes(&tlv.header)
}

func (t *tlvHandler) tlv_send_comm() {
	fmt.Println("tlv：通信模式->发送内容")
	tlv.tl.T = uint32(COMM)
	tlv.tl.L = pro.Comm.packLen
	Tlv_to_bytes(&tlv.tl)
	Tlv_append_bytes(pro.Comm.buf, pro.Comm.packLen)
}

func (t *tlvHandler) tlv_send_radar_if() {

}

func (t *tlvHandler) tlv_send_inter_scan_spec() {

}

func Tlv_to_bytes[T any](v *T) {
	size := unsafe.Sizeof(*v)
	ptr := unsafe.Pointer(v)
	copy(tlvBuf[tlvBufLen:], unsafe.Slice((*byte)(ptr), size))
	tlvBufLen += uint32(size)
}

func Tlv_append_bytes(b []byte, size uint32) {
	copy(tlvBuf[tlvBufLen:tlvBufLen+size], b[:size])
	tlvBufLen += size
	fmt.Println(tlvBufLen)
}
