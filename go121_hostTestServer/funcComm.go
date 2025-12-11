package main

import (
	"net"
)

func HandleCommTransmit(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	tlv.dataLens[COMM] = p.Comm.packLen
	tlv.Tlv_transmit(conn, remote)
}

func HandleCommReceive(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	// 模拟不了
}
