
#include "xadc.h"
#include <stdio.h>
#include "xsysmonpsu.h"

static XSysMonPsu XAdcInstPtr;

//XADC 	init config
int Xadc_Init(u16 XAdcDeviceId)
{
	int Status;
	XSysMonPsu_Config *ConfigPtr;

	ConfigPtr= XSysMonPsu_LookupConfig(XAdcDeviceId);
	if (ConfigPtr == NULL)return XST_FAILURE;
	XSysMonPsu_CfgInitialize(&XAdcInstPtr, ConfigPtr, ConfigPtr->BaseAddress);
	Status = XSysMonPsu_SelfTest(&XAdcInstPtr);
	if (Status != XST_SUCCESS)return XST_FAILURE;

	XSysMonPsu_SetSequencerMode(&XAdcInstPtr, XSM_SEQ_MODE_SAFE,XSYSMON_PL);
	return XST_SUCCESS;
}

//get soc chip temture
float Xadc_Read_Tempture()
{
	u16 TempRawData;
	float TempData;
	TempRawData = XSysMonPsu_GetAdcData(&XAdcInstPtr, XSM_CH_TEMP, XSYSMON_PL);
	return  XSysMonPsu_RawToTemperature_OnChip(TempRawData);
}
