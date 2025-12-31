
#include <stdint.h>
#include "platform.h"

int32_t Spi_Write(spi_device *spi, uint32_t data);
int32_t Lmk04828_Init(spi_device *spi);
int32_t Lmk04828_Update_Sysref(spi_device *spi);
int32_t Lmk04828_Update_Man_DAC(spi_device *spi, uint16_t man_dac);
int32_t Lmk04828_Get_DAC_Value(spi_device *spi, uint16_t *man_dac);

int32_t Lmk04828_Set_Sysref_Sync_Shots(spi_device *spi);
int32_t Lmk04828_Set_Sysref_Sync_Cont(spi_device *spi);

int32_t Lmk04828_Set_Sysref_Shots(spi_device *spi, uint32_t mode);
int32_t Lmk04828_Send_Sync_Pol(spi_device *spi);

int32_t Spi_Read_Bytes(spi_device *spi, uint32_t reg,uint8_t *rbuf);
int32_t Lmk04828_Spi_Read(spi_device *spi, uint32_t reg);
void Lmk04828_reset();
