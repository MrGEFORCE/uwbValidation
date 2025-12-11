package main

import (
	"net"
)

func response(p *Protocol, conn *net.UDPConn, remote *net.UDPAddr) {
	switch p.CurrentMode {
	case ModeCommT:
		// 模拟只能模拟发，收到电脑过来东西后，进行简单处理，基本回写回去
		// 并且软件得调节成特殊的测试模式，正常情况下完成这个测试需要两个硬件、两个电脑，一边发一遍收
		HandleCommTransmit(p, conn, remote) // 单次执行
	case ModeCommR:
		//go HandleCommReceive(p, conn, remote) // 循环执行，这个模拟不了

	case ModeRadar:
		// 启动定时go程，按帧周期刷新假目标数据、生成IF数据发回去，让软件处理（对应下位机就是启动timer）
		go HandleRadar(p, conn, remote) // 循环执行

	case ModeInterScan:
		// 按照假装的功率谱，每次把结果发回去就行，也要定时go程（对应下位机就是启动timer）
		go HandleInterferenceScan(p, conn, remote) // 循环执行有限次

	case ModeInterJamming:
		// 这个倒不是模拟不了而是不需要模拟，设置好寄存器、生成好BB后就是在执行干扰
		HandleInterferenceJamming(p, conn, remote) // 单次执行

	case ModeStop:
		// 停止模式：可以做清理或空闲等待
	default:
		// 未知模式，忽略或记录
	}
}
