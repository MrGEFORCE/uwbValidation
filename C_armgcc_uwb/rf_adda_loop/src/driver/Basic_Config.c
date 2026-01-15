#include "Basic_Config.h"


XScuGic 				ScuGic;


void Basic_Config_Init(XScuGic *ScuGic) {
	XScuGic_Config *IntcConfig; //存储中断设备的配置信息
	/* 初始化中断控制器 */
	IntcConfig = XScuGic_LookupConfig(XPAR_SCUGIC_0_DEVICE_ID);
	//配置中断控制器
	XScuGic_CfgInitialize(ScuGic, IntcConfig, IntcConfig->CpuBaseAddress);
	/* 设置并打开中断异常处理功能 */
	/* Enable interrupts from the hardware */
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
			(Xil_ExceptionHandler) XScuGic_InterruptHandler, ScuGic);
	Xil_ExceptionEnable();
}


void PlSoftwareReset(void)
{
	Xil_Out32(XSLCR_UNLOCK_ADDR, XSLCR_UNLOCK_CODE);
	Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x0F);
	// and release the FPGA Reset Signal
	Xil_Out32(XSLCR_FPGA_RST_CTRL_ADDR, 0x00);
	Xil_Out32(XSLCR_LOCK_ADDR, XSLCR_LOCK_CODE);
}

