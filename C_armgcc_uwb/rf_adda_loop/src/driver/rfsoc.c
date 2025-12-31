//

#include "rfsoc.h"
#include "lmk04828.h"

extern uint64_t FS;
extern spi_device spi_lmk04828;

void RF_init(XRFdc *RFdcInstPtr,u16 RFdcDeviceId)
{
	s32 Status;
	XRFdc_Config *ConfigPtr;

	ConfigPtr = XRFdc_LookupConfig(RFdcDeviceId);
	if (ConfigPtr == NULL) return XRFDC_FAILURE;

	Status = XRFdc_CfgInitialize(RFdcInstPtr, ConfigPtr);
	if (Status != XRFDC_SUCCESS) printf("RFdc Init Fail.\r\n");
}

