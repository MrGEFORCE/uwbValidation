#include <Init_Config.h>

#define RFDC_DEVICE_ID 				XPAR_XRFDC_0_DEVICE_ID
//clock frq
#define DAC_AUX 1600
#define REF_CLK_FREQ   153.6e6
#define SAMPLERATE	   REF_CLK_FREQ

uint32_t txatt[8] = { 40500, 40500, 40500, 40500, 40500, 40500, 40500, 40500 };

XRFdc RFdcInstPtr;
XRFdc_DSA_Settings SettingsPtr;
uint64_t FS;

void LMK04828_CLOCK_Init(void)
{
	int32_t lock_pll1 = -1;
	int32_t lock_pll2 = -1;
	int config_lmkpll_timeout = 0;
	//lmk04828 reset
	Lmk04828_reset();
	//lmk04828 ref clk set
	Gpio_Value_Set(LMK_REF_SELECT0, 1); //CLKIN1 EXTERNAL
	Gpio_Value_Set(LMK_REF_SELECT1, 0);
	Gpio_Value_Set(LMK_SYNC, 0);
	//lmk04828 init
	Lmk04828_Init(&spi_lmk04828);
	Lmk04828_Update_Man_DAC(&spi_lmk04828, DAC_AUX);
	//wait pll locked
	while ((lock_pll1 != 0)||lock_pll2 != 1)
	{
		lock_pll1 = Lmk04828_Spi_Read(&spi_lmk04828, 0X182) >> 1 & 0x1;
		lock_pll2 = Lmk04828_Spi_Read(&spi_lmk04828, 0X183) >> 1 & 0x1;
		config_lmkpll_timeout++;
		ms_delay(1);
		if(config_lmkpll_timeout>=100)
		{
			config_lmkpll_timeout=0;
			printf("LMK pllconfig faild!,timeout=100.\r\n");
			break;
		}
	}
	printf("LMK pll1_lock=0x%x, pll2_lock=0x%x,try=%d,init Done\r\n", lock_pll1,lock_pll2,config_lmkpll_timeout);
	//LMK SYNC
	Gpio_Value_Set(LMK_SYNC, 1);
	ms_delay(1);
	Gpio_Value_Set(LMK_SYNC, 0);
	//update sysref
	Lmk04828_Update_Sysref(&spi_lmk04828);
	Lmk04828_Set_Sysref_Shots(&spi_lmk04828, 0);
	ms_delay(100);
}

void RFSOC_Init(void)
{
	int Status,i,j;
	uint32_t val_out;
	Status = AXI_REG_READ(0XFF5E0000, 0X00000200U);
	printf("CRL_APB_BOOT_MODE_SET=%x\r\n", Status);
	RF_init(&RFdcInstPtr, RFDC_DEVICE_ID);
	for (i = 0; i < 4; i++)
	{
		XRFdc_Reset(&RFdcInstPtr, XRFDC_DAC_TILE, i);
		XRFdc_Reset(&RFdcInstPtr, XRFDC_ADC_TILE, i);
	}
	Status = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, XRFDC_ADC_PATHS_ENABLED_OFFSET);
	printf("ADC_PATHS_ENABLED=%x\r\n", Status);
	Status = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, XRFDC_DAC_PATHS_ENABLED_OFFSET);
	printf("DAC_PATHS_ENABLED=%x\r\n", Status);
	SettingsPtr.Attenuation = 0;
	SettingsPtr.DisableRTS = 1;
	for (i = 0; i < 4; i++)
	{
		for (j = 0; j < 2; j++)
		{
			Status = XRFdc_SetDACVOP(&RFdcInstPtr, i, j * 2, txatt[i * 2 + j]);
			printf("tile=%d,block=%d,XRFdc_SetDACVOP,Status=%d\r\n", i, j, Status);
			Status = XRFdc_SetDSA(&RFdcInstPtr, i, j, &SettingsPtr);
			Status = XRFdc_GetDSA(&RFdcInstPtr, i, j, &SettingsPtr);
			Status = XRFdc_SetDither(&RFdcInstPtr, i, j, 1);
			printf("tile%d,block%d,Attenuation %f,Status=%d\r\n", i, j,SettingsPtr.Attenuation, Status);
		}
	}
	val_out = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, 0);
	printf("IP Revision=%x\r\n", val_out);
	val_out = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, 0x18084);
	printf("ADC tile1 clock_dector=%x\r\n", val_out);
	val_out = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, 0x1c084);
	printf("ADC tile2 clock_dector=%x\r\n", val_out);
	val_out = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, 0x04084);
	printf("DAC tile0 clock_dector=%x\r\n", val_out);
	val_out = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, 0x0c084);
	printf("DAC tile2 clock_dector=%x\r\n", val_out);

	FS = RFdcInstPtr.ADC_Tile[0].PLL_Settings.SampleRate * 1e9;
	printf("ADC Samplerate is %ld Hz\r\n", FS);
	FS = RFdcInstPtr.DAC_Tile[0].PLL_Settings.SampleRate * 1e9;
	printf("DAC Samplerate is %ld Hz\r\n", FS);
	printf("RF init done");
}

