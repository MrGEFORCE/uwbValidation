#include "tlv.h"
#include "protocol.h"

tlvHandler_t *tlvPointer;  // extern
tlvHandler_t tlv;

void tlv_init() {
    tlvPointer = &tlv;
    tlvPointer->header.SMW[0] = 0x0102;
    tlvPointer->header.SMW[1] = 0x0304;
    tlvPointer->header.SMW[2] = 0x0506;
    tlvPointer->header.SMW[3] = 0x0708;
    tlvPointer->header.frame = 0;
    tlvPointer->header.delay = 0;
    tlvPointer->header.tlvNums = 0;
    tlvPointer->header.dataLen = sizeof(header_t);
    tlvPointer->header.outerClass = CMD_OUTER_CLASS_STOP;
    tlvPointer->header.commPicID = 0;
}

void tlv_transmit(tlvHandler_t *t) {

}
