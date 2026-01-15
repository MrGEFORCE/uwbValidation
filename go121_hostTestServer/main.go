package main

import (
	"fmt"
	"net"
)

var proBuf = make([]byte, 4096)
var pro = Protocol{}

func main() {
	pro.Init(proBuf)
	tlv.Tlv_init()
	addr := net.UDPAddr{
		Port: 10,
		IP:   net.ParseIP("127.0.0.1"),
	}
	conn, err := net.ListenUDP("udp", &addr)
	if err != nil {
		panic(err)
	}
	defer conn.Close()
	fmt.Printf("UDP server listening on %v...\n", addr)
	for {
		n, remoteAddr, err := conn.ReadFromUDP(proBuf)
		if err != nil {
			fmt.Println("read error:", err)
			continue
		}
		fmt.Printf("\n[Recv %d bytes] from %v\n", n, remoteAddr)
		pro.Process(n)
		go response(&pro, conn, remoteAddr)
	}
}
