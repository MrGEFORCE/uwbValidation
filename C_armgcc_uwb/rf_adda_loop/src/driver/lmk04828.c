/******************************************************************************/
/***************************** Include Files **********************************/
/******************************************************************************/
#include "lmk04828.h"
#include "platform.h"
#include <stdint.h>
#include <stdio.h>
#include <math.h>
#include "xil_types.h"

uint32_t lmk04828_Config_245p76[] =//19.2MHz input ref clock
{
		0x000090,
		0x000010,
		0x000200,
		0x000306,
		0x0004D0,
		0x00055B,
		0x000600,
		0x000C51,
		0x000D04,
		0x01000A,
		0x010155,
		0x010255,
		0x010300,
		0x010400,
		0x010500,
		0x010670,
		0x010711,
		0x01080A,
		0x010955,
		0x010A55,
		0x010B00,
		0x010C00,
		0x010D00,
		0x010E70,
		0x010F16,
		0x01100A,
		0x011155,
		0x011255,
		0x011300,
		0x011400,
		0x011500,
		0x011670,
		0x011716,
		0x01180A,
		0x011955,
		0x011A55,
		0x011B00,
		0x011C20,
		0x011D00,
		0x011E70,
		0x011F16,
		0x01200A,
		0x012155,
		0x012255,
		0x012300,
		0x012400,
		0x012500,
		0x012670,
		0x012761,
		0x01280A,
		0x012955,
		0x012A55,
		0x012B00,
		0x012C20,
		0x012D00,
		0x012E70,
		0x012F10,
		0x01300A,
		0x013155,
		0x013255,
		0x013300,
		0x013400,
		0x013500,
		0x013670,
		0x013766,
		0x013801,
		0x013902,
		0x013A0A,
		0x013B00,
		0x013C00,
		0x013D08,
		0x013E03,
		0x013F03,
		0x014000,
		0x014100,
		0x014200,
		0x014311,
		0x014400,
		0x01457F,
		0x014638,
		0x01473A,
		0x014802,
		0x014901,
		0x014A02,
		0x014B1E,
		0x014C00,
		0x014D00,
		0x014EC0,
		0x014F7F,
		0x015000,
		0x015102,
		0x015200,
		0x015302,
		0x015471,
		0x015503,
		0x015600,
		0x015700,
		0x015878,
		0x015900,
		0x015A78,
		0x015BDF,
		0x015C20,
		0x015D00,
		0x015E00,
		0x015F13,
		0x016000,
		0x016101,
		0x016285,
		0x016300,
		0x016400,
		0x01650A,
		0x0171AA,
		0x017202,
		0x017C15,
		0x017D33,
		0x016600,
		0x016700,
		0x016810,
		0x016959,
		0x016A60,
		0x016B00,
		0x016C00,
		0x016D00,
		0x016E3B,
		0x017300,
		0x018200,
		0x018300,
		0x018400,
		0x018500,
		0x018800,
		0x018900,
		0x018A00,
		0x018B00,
		0x1FFD00,
		0x1FFE00,
		0x1FFF53,
};

//spi write reg,3byte(24bit)
int32_t Spi_Write(spi_device *spi, uint32_t data)
{
	uint8_t buf[3];
	uint32_t cmd = data;
	buf[0] = cmd >> 16;
	buf[1] = cmd >> 8;
	buf[2] = cmd & 0xFF;
	return Spi_Read_Write(spi, buf, 3);
}
//lmk04828 init
int32_t Lmk04828_Init(spi_device *spi)
{
	int i;
	for (i = 0; i < ARRAY_SIZE(lmk04828_Config_245p76); i++)
	{
		Spi_Write(spi, lmk04828_Config_245p76[i]);
		ms_delay(10);
	}
	return Lmk04828_Spi_Read(spi, 6);
}

int32_t Lmk04828_Update_Sysref(spi_device *spi)
{
	int ret;
	ret = Spi_Write(spi, 0x0144FF);
	ret = Spi_Write(spi, 0x014352);
	ret = Spi_Write(spi, 0x013902);
	return ret;
}

int32_t Lmk04828_Update_Man_DAC(spi_device *spi, uint16_t man_dac)
{
	int ret;
	uint16_t value;
	if (man_dac < 500)value = 0;
	else if (man_dac > 2700)value = 1023;
	else value = round((((float) man_dac - 500) * 1023) / 2200);
	ret = Spi_Write(spi, 0x014B1C | ((value >> 8) & 0x3));
	ret = Spi_Write(spi, 0x014C00 | (value & 0xff));
	return ret;
}

int32_t Lmk04828_Set_Sysref_Sync_Shots(spi_device *spi)
{
	int ret;
	ret = Spi_Write(spi, 0x016A20);
	return ret;
}

int32_t Lmk04828_Set_Sysref_Sync_Cont(spi_device *spi)
{
	int ret;
	ret = Spi_Write(spi, 0x016A60);
	return ret;
}

int32_t Lmk04828_Set_Sysref_Shots(spi_device *spi, uint32_t mode)
{
	int ret;
	ret = Spi_Write(spi, 0x013E00 | (mode & 0x3));
	return ret;
}
//spi read bytes
int32_t Spi_Read_Bytes(spi_device *spi, uint32_t reg,uint8_t *rbuf)
{
	uint8_t buf[3];
	int32_t ret;
	uint16_t cmd;

	cmd = 0x8000 | (reg & 0x1FFF);
	buf[0] = cmd >> 8;
	buf[1] = cmd & 0xFF;
	buf[2] = 0;
	ret = Spi_Read_Write(spi, buf, 3);
	*rbuf=buf[2];
	return ret;
}
//lmk04828 read
int32_t Lmk04828_Spi_Read(spi_device *spi, uint32_t reg)
{
	uint8_t buf;
	int32_t ret;

	ret = Spi_Read_Bytes(spi, reg, &buf);
	if (ret < 0)return ret;
	return buf;
}
void Lmk04828_reset()
{
	Gpio_Value_Set(LMK_RESET, 1);
	ms_delay(100);
	Gpio_Value_Set(LMK_RESET, 0);
}
