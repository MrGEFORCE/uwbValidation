#include <stdint.h>
#include <stdbool.h>
#include <chirpParameters.h>

#ifdef __cplusplus
extern "C" {
#endif

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
    ModeComm = 0,
    ModeRadar = 1,
    ModeInter = 2,
    ModeCount = 3,
    ModeStop = 4,
};

enum commParamsID {
    COMM_IMG = 0x00,
    COMM_TXT = 0x01,
    COMM_IMG_SIZE = 0x02,
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
};

enum interParamsID {
    interFreqMHz = 0x00,
    interSpanMHz = 0x01,
    interSpanPoints = 0x02,
};

typedef struct comm_t {
    uint32_t picID;
    uint16_t picH;
    uint16_t picW;
    uint32_t len;
    uint8_t buf[2048];
} comm_t;

typedef struct inter_t {
    float freqMHz;
    float spanMHz;
    int spanPoints;
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

extern uint8_t protocol_buf[1024];

void protocol_init(protocol_t *p);

bool protocol_process(protocol_t *p, int size);

#ifdef __cplusplus
}
#endif
