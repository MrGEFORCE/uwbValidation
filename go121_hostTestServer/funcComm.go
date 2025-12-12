package main

import (
	"net"
)

func HandleCommTransmit(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	tlv.header.OuterClass = CMD_OUTER_CLASS_FUNC_COMM
	tlv.dataLens[COMM] = p.Comm.packLen
	tlv.Tlv_transmit(conn, remote)
}

func HandleCommReceive(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	// 模拟不了
}
