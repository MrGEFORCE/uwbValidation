#ifndef __UWB_TLV_H__
#define __UWB_TLV_H__

#include <stdint.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct header_t {
    uint16_t SMW[4];
    uint8_t delay;
    uint8_t tlvNums;
    uint8_t outerClass;
    uint8_t commPicID;
    uint32_t dataLen;
    uint16_t frame;
} header_t;

typedef struct tlvHandler_t {
    header_t header;
} tlvHandler_t;

extern tlvHandler_t *tlvPointer;

void tlv_init();

void tlv_transmit(tlvHandler_t *t);

#ifdef __cplusplus
}
#endif

#endif
