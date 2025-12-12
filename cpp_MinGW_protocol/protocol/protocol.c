#include "protocol.h"
#include "string.h"

#ifdef COMPUTER_ONLY

#include "stdio.h"
#include <windows.h>

#endif

void print_info(char *p) {
#ifdef COMPUTER_ONLY
    printf("%s", p);
#endif
}

void protocol_init(protocol_t *p, uint8_t *buf, int bufSize) {
    p->cp.slopePriority = spBandwidthFirst;
    set_default(&p->cp);
    p->buf = buf;
    p->bufSize = bufSize;
    p->currentMode = ModeStop;
#ifdef COMPUTER_ONLY
    SetConsoleOutputCP(CP_UTF8);
    SetConsoleCP(CP_UTF8);
#endif
}

static void protocol_class_t(protocol_t *p, uint8_t id, void *ptr) {
    p->txRegs[id - 5] = *((uint32_t *) ptr);
}

static void protocol_class_r(protocol_t *p, uint8_t id, void *ptr) {
    p->rxRegs[id] = *((uint32_t *) ptr);
}

static void protocol_class_lmx(protocol_t *p, uint8_t id, void *ptr) {
    p->lmxRegs[id] = *((uint32_t *) ptr);  // pending
}

static bool protocol_class_comm(protocol_t *p, uint8_t id, void *ptr) {
    switch (id) {
        case commPack:
            print_info("\t收到小类：发送内容\n");
            p->comm.packLen = *((uint32_t *) ptr);
            memmove(p->comm.buf, ptr + 4, p->comm.packLen);
            p->currentMode = ModeCommT;
            return true;// 注意！commSendTxt后面一定是被发送的内容！return ture之后直接退出最外层的protocol处理，直接转到发送
        case commRecv:
            print_info("\t收到小类：接收模式\n");
            p->currentMode = ModeCommR;
            break;
        default:
            break;
    }
    return false;
}

static void protocol_class_radar(protocol_t *p, uint8_t id, void *ptr) {
    switch (id) {
        case radarTxNums:
            p->cp.data.intData.t.antTDM = (int) *((uint32_t *) ptr);
            break;
        case radarRxNums:
            p->cp.data.intData.t.rx = (int) *((uint32_t *) ptr);
            break;
        case radarBW:
            p->cp.data.floatData.t.bandWidth_MHz = *((float *) ptr);
            break;
        case radarChirps:
            p->cp.data.intData.t.chirpLoops = (int) *((uint32_t *) ptr);
            break;
        case radarRampTime:
            p->cp.data.floatData.t.rampTime_us = *((float *) ptr);
            break;
        case radarTc:
            p->cp.data.floatData.t.Tc_us = *((float *) ptr);
            break;
        case radarADCDelay:
            p->cp.data.floatData.t.ADCDelay_us = *((float *) ptr);
            break;
        case radarPeriodicity:
            p->cp.data.floatData.t.periodicity_ms = *((float *) ptr);
            break;
        case radarPoints:
            p->cp.data.intData.t.ADCPoints = (int) *((uint32_t *) ptr);
            break;
        case radarSampleInterval:
            p->sampleInterval = (int) *((uint32_t *) ptr);
            break;
        case radarFreq:
            p->cp.data.floatData.t.startFrequency_MHz = *((float *) ptr);
            break;
        default:
            break;
    }
}

static void protocol_class_inter(protocol_t *p, uint8_t id, void *ptr) {
    switch (id) {
        case interScanFreqMHz:
            print_info("\t收到小类：扫频频率\n");
            p->inter.scanFreqMHz = *((float *) ptr);
            p->currentMode = ModeInterScan;
            break;
        case interScanSpanMHz:
            print_info("\t收到小类：扫频频率跨度\n");
            p->inter.scanSpanMHz = *((float *) ptr);
            p->currentMode = ModeInterScan;
            break;
        case interScanPoints:
            print_info("\t收到小类：扫频数据点\n");
            p->inter.spanPoints = (int) *((uint32_t *) ptr);
            p->currentMode = ModeInterScan;
            break;
        case interJammingFreqMHz:
            print_info("\t收到小类：干扰频率\n");
            p->inter.jammingFreqMHz = *((float *) ptr);
            p->currentMode = ModeInterJamming;
            break;
        case interJammingSpanMHz:
            print_info("\t收到小类：干扰频率跨度\n");
            p->inter.jammingSpanMHz = *((float *) ptr);
            p->currentMode = ModeInterJamming;
            break;
        default:
            break;
    }
}

bool protocol_process(protocol_t *p, int size) {
    uint32_t *u32p;

    // length check
    if (size > p->bufSize) {
        return true;
    }

    // header check
    u32p = (uint32_t *) p->buf;
    if (*u32p != 0x12345678) {
        return true;
    }

    // tail check
    u32p = (uint32_t *) (&p->buf[size - 4]);
    if (*u32p != 0x87654321) {
        return true;
    }

    // sum check
    uint32_t sum = 0;
    for (int i = 4; i < size - 8; i++) {
        sum += p->buf[i];
    }
    u32p = (uint32_t *) (&p->buf[size - 8]);
    if (*u32p != sum) {
        return true;
    }

    // cmd parse
    int ptr = 4;
    uint8_t major, minor;
    bool exitFlag = false;

    while (ptr < size - 8) {
        major = p->buf[ptr];
        minor = p->buf[ptr + 1];
        switch (major) {
            case CMD_OUTER_CLASS_T:
                protocol_class_t(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_R:
                protocol_class_r(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_CLK:
                protocol_class_lmx(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_FUNC_COMM:
                print_info("收到大类：通信");
                exitFlag = protocol_class_comm(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_FUNC_RADAR:
                print_info("收到大类：雷达\n");
                p->currentMode = ModeRadar;
                protocol_class_radar(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_FUNC_INTER:
                print_info("收到大类：对抗");
                protocol_class_inter(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_STOP:
                print_info("收到大类：停止\n");
                p->currentMode = ModeStop;
                break;
            default:
                break;
        }
        if (exitFlag) {
            return false;
        }
        ptr += 6;
    }

    if (p->currentMode == ModeRadar) {
        p->cp.data.floatData.t.idleTime_us = p->cp.data.floatData.t.Tc_us - p->cp.data.floatData.t.rampTime_us;
        p->cp.data.floatData.t.sampleRate_ksps = SAMPLE_RATE_MAX_MSPS / p->sampleInterval * 1e3;
        compute_and_validate(&p->cp);
    }

    return false;
}
