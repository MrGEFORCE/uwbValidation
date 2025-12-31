
#include "platform.h"
#include <stdio.h>

spi_device spi_lmk04828 =
{
		SPI_BASEADDR, 	// base_address
		SPI_DEVICE_ID,  // device_id
		1, 				// chip_select
		0, 				// cpha
		0, 				// cpol
		0				// id_no
};

XGpioPs			gpio_instance;
static XSpiPs			spi_instance;

//gpio init
int32_t Gpio_Init(uint16_t device_id)
{
	XGpioPs_Config	*gpio_config;
	gpio_config = XGpioPs_LookupConfig(device_id);
	XGpioPs_CfgInitialize(&gpio_instance, gpio_config, gpio_config->BaseAddr);
	return 0;
}

//spi init
int32_t Spi_Init(uint16_t device_id, XSpiPs *spi_instance)
{
	static XSpiPs_Config 	*spi_config;
	spi_config = XSpiPs_LookupConfig(device_id);
	if (spi_config == NULL)return -1;
	if (XSpiPs_CfgInitialize(spi_instance, spi_config, spi_config->BaseAddress) != 0)return -1;
	//	spi_instance->Config.DeviceId=device_id;
	return 0;
}

void Platform_Init(void)
{
	Gpio_Init(GPIO_DEVICE_ID);
	Spi_Init(SPI_DEVICE_ID, &spi_instance);
	Gpio_Direction_Set(LMK_REF_SELECT0, 1);//TCXO
	Gpio_Direction_Set(LMK_REF_SELECT1, 1);
	Gpio_Direction_Set(LMK_SYNC, 1);
	Gpio_Direction_Set(LMK_RESET, 1);
}

int32_t Spi_Read_Write(spi_device *dev,uint8_t *data,uint8_t bytes_number)
{
	uint32_t initss;
	initss = XSpiPs_ReadReg(dev->base_address, XSPIPS_CR_OFFSET);
	initss = initss & (uint32_t)(~XSPIPS_CR_SSCTRL_MASK);
	initss = initss | (0x7 << XSPIPS_CR_SSCTRL_SHIFT);
	XSpiPs_WriteReg(dev->base_address, XSPIPS_CR_OFFSET, initss);

	XSpiPs_SetOptions(&spi_instance, XSPIPS_MASTER_OPTION |
	XSPIPS_DECODE_SSELECT_OPTION | XSPIPS_FORCE_SSELECT_OPTION |
	((dev->cpol == 1) ? XSPIPS_CLK_ACTIVE_LOW_OPTION : 0) |
	((dev->cpha == 1) ? XSPIPS_CLK_PHASE_1_OPTION : 0));

	XSpiPs_SetSlaveSelect(&spi_instance, (uint8_t) 0x7);
	XSpiPs_SetClkPrescaler(&spi_instance, XSPIPS_CLK_PRESCALE_64);
	XSpiPs_SetSlaveSelect(&spi_instance,  0xf & ~dev->chip_select);
	XSpiPs_PolledTransfer(&spi_instance, data, data, bytes_number);
	XSpiPs_SetSlaveSelect(&spi_instance,  (uint8_t) 0x7);
	return 0;
}


int32_t Gpio_Direction_Set(uint8_t gpio, uint8_t dir)
{
	XGpioPs_SetDirectionPin(&gpio_instance, gpio, dir);
	XGpioPs_SetOutputEnablePin(&gpio_instance, gpio, dir);
	return 0;
}

int SYNC_STATE;
int32_t Gpio_Value_Set(uint8_t gpio, uint8_t value)
{
	SYNC_STATE=value;
	XGpioPs_WritePin(&gpio_instance, gpio, value);
	return 0;
}


void ms_delay(uint32_t msecs)
{
	usleep(msecs * 1000);
}
