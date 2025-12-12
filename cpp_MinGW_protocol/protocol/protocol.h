#ifndef __UWB_PROTOCOL_H__
#define __UWB_PROTOCOL_H__

#include <stdint.h>
#include <stdbool.h>
#include <chirpParameters.h>

#ifdef __cplusplus
extern "C" {
#endif

#define SAMPLE_RATE_MAX_MSPS (153.6)

enum MajorType {
    CMD_OUTER_CLASS_T,
    CMD_OUTER_CLASS_R,
    CMD_OUTER_CLASS_CLK,
    CMD_OUTER_CLASS_FUNC_COMM,
    CMD_OUTER_CLASS_FUNC_RADAR,
    CMD_OUTER_CLASS_FUNC_INTER,
    CMD_OUTER_CLASS_STOP,
};

enum WorkMode {
    ModeCommT,
    ModeCommR,
    ModeRadar,
    ModeInterScan,
    ModeInterJamming,
    ModeStop,
};

enum commParamsID {
    commPack = 0x00,
    commRecv = 0x01,
};

enum chirpParamsID {
    radarTxNums = 0x00,
    radarRxNums = 0x01,
    radarBW = 0x02,
    radarChirps = 0x03,
    radarRampTime = 0x04,
    radarTc = 0x05,
    radarADCDelay = 0x06,
    radarPeriodicity = 0x07,
    radarPoints = 0x08,
    radarSampleInterval = 0x09,
    radarFreq = 0x0A,
};

enum interParamsID {
    interScanFreqMHz = 0x00,
    interScanSpanMHz = 0x01,
    interScanPoints = 0x02,
    interJammingFreqMHz = 0x03,
    interJammingSpanMHz = 0x04,
};

typedef struct comm_t {
    uint32_t packLen;
    uint8_t buf[2048];
} comm_t;

typedef struct inter_t {
    float scanFreqMHz;
    float scanSpanMHz;
    int spanPoints;
    float jammingFreqMHz;
    float jammingSpanMHz;
} inter_t;

typedef struct protocol_t {
    comm_t comm;  // comm params
    ChirpParameterHandler_t cp;  // radar params
    int sampleInterval;
    inter_t inter;  // inter params
    uint8_t currentMode;
    uint8_t *buf;
    int bufSize;
    uint32_t txRegs[7], rxRegs[16], lmxRegs[120];  // regs
} protocol_t;

void protocol_init(protocol_t *p, uint8_t *buf, int bufSize);

bool protocol_process(protocol_t *p, int size);

#ifdef __cplusplus
}
#endif

#endif
