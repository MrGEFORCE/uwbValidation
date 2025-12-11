package main

import "net"

func HandleInterferenceScan(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	// 例：按 p.Inter 的参数执行扫频/干扰逻辑
}

func HandleInterferenceJamming(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	// 不需要模拟
}
