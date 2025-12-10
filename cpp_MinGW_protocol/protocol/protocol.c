#include "protocol.h"
#include "string.h"


uint8_t protocol_buf[1024];  // extern

void protocol_init(protocol_t *p) {
    p->cp.slopePriority = spBandwidthFirst;
    set_default(&p->cp);
    p->buf = protocol_buf;
    p->bufSize = 1024;
    p->currentMode = ModeStop;
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
    bool ret = false;
    switch (id) {
        case COMM_IMG:
            p->comm.picID = *((uint32_t *) ptr);
            break;
        // 注意！COMM_TXT后面一定是被发送的内容！return ture之后直接退出最外层的protocol处理，直接转到发送
        case COMM_TXT:
            ret = true;
            p->comm.len = *((uint32_t *) ptr + 10);
            memmove(p->comm.buf, ptr + 14, p->comm.len);
            break;
        // 注意！COMM_IMG_SIZE后面一定是被发送的内容！return ture之后直接退出最外层的protocol处理，直接转到发送
        case COMM_IMG_SIZE:
            p->comm.picH = *((uint16_t *) ptr);
            p->comm.picW = *((uint16_t *) ptr + 2);
            p->comm.len = *((uint32_t *) ptr + 10);
            memmove(p->comm.buf, ptr + 14, p->comm.len);
            ret = true;
        default:
            break;
    }
    return ret;
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
        default:
            break;
    }
}

static void protocol_class_inter(protocol_t *p, uint8_t id, void *ptr) {
    switch (id) {
        case interFreqMHz:
            p->inter.freqMHz = *((float *) ptr);
            break;
        case interSpanMHz:
            p->inter.spanMHz = *((float *) ptr);
            break;
        case interSpanPoints:
            p->inter.spanPoints = (int) *((uint32_t *) ptr);
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
                p->currentMode = ModeComm;
                exitFlag = protocol_class_comm(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_FUNC_RADAR:
                p->currentMode = ModeRadar;
                protocol_class_radar(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_FUNC_INTER:
                p->currentMode = ModeInter;
                protocol_class_inter(p, minor, &p->buf[ptr + 2]);
                break;
            case CMD_OUTER_CLASS_STOP:
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

    return false;
}
