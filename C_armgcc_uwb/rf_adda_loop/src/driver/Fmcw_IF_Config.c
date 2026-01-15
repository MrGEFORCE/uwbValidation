#include "Fmcw_IF_Config.h"

XGpio AXI_Gpio0; /* The Instance of the GPIO Driver */
volatile uint8_t SMP_Done_Flag = 0;
volatile header_t header = {.start_magic_word={0x0102,0x0304,0x0506,0x0708},.delay=0,.OuterClass=0,.tlv_nums=1,.data_len=0,._=0,.frame=0};
volatile TL tl = {.L=0,.T=0};


void AXI_GPIO_init() {

	/* Initialize the GPIO0 driver */
	XGpio_Initialize(&AXI_Gpio0, XPAR_GPIO_0_DEVICE_ID);
	/* Set the direction for all signals as outputs except the LED output */
	XGpio_SetDataDirection(&AXI_Gpio0, GPIO_CHANNEL, 0);
}

u32 PL_Addr_Flag_Read(void) {
	u32 Temp = XGpio_DiscreteRead(&AXI_Gpio0, GPIO_CHANNEL);
	return Temp;
}


void PL_Done_intr_Handler(void *param) {
	if(SMP_Done_Flag==0)
	{
		header.frame++;
		header.delay=0;
		SMP_Done_Flag = 1;
	}
	else
	{
//		header.delay++;
	}
}


// 中断敏感类型设置函数
void IntcTypeSetup(XScuGic *InstancePtr, int intId, int intType) {
	int mask;
	intType &= INT_TYPE_MASK;
	mask = XScuGic_DistReadReg(InstancePtr, INT_CFG0_OFFSET+(intId/16)*4);
	mask &= ~(INT_TYPE_MASK << (intId % 16) * 2);
	mask |= intType << ((intId % 16) * 2);
	XScuGic_DistWriteReg(InstancePtr, INT_CFG0_OFFSET+(intId/16)*4, mask);
}

void PL_PS_Intr_Init(XScuGic *INTCInst) {
	/* 为中断设置中断处理函数 */
	XScuGic_Connect(INTCInst, PL_Done_INTR_ID,
			(Xil_ExceptionHandler) PL_Done_intr_Handler, (void *) 1);
	/* 将中断设置为上升沿敏感类型 */
	IntcTypeSetup(INTCInst, PL_Done_INTR_ID, INT_TYPE_RISING_EDGE);
	/* 使能中断 */
	XScuGic_Enable(INTCInst, PL_Done_INTR_ID);
}


void Transer_Header()
{
	header.OuterClass = 4;
	// 2(ADC数据2个字节) * ADCpoint * TxAnt * RxAnt * chirpLoop
	header.data_len = 2 * pro.cp.data.intData.t.ADCPoints * pro.cp.data.intData.t.chirpLoops * pro.cp.data.intData.t.antTDM * pro.cp.data.intData.t.rx  + sizeof(header_t) + sizeof(TL);
	tl.T = 1;
	tl.L = 2 * pro.cp.data.intData.t.ADCPoints * pro.cp.data.intData.t.chirpLoops * pro.cp.data.intData.t.antTDM * pro.cp.data.intData.t.rx;
	udp_transmit((char*)&header, sizeof(header_t));
	udp_transmit((char*)&tl, sizeof(TL));
}
