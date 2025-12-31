
#ifndef PLATFORM_H_
#define PLATFORM_H_

#include <sleep.h>
#include <xspips.h>
#include <xgpiops.h>

#define SPI_BASEADDR				XPAR_PSU_SPI_1_BASEADDR
#define SPI_DEVICE_ID				XPAR_XSPIPS_0_DEVICE_ID

#define GPIO_BASEADDR				XPAR_PSU_GPIO_0_BASEADDR
#define GPIO_DEVICE_ID              XPAR_PSU_GPIO_0_DEVICE_ID

#define STDOUT_IS_PSU_UART
#define UART_DEVICE_ID 0

#define GPIO_EMIO_OFFSET			78

#define LMK_RESET   	29
#define LMK_REF_SELECT1	28
#define LMK_REF_SELECT0 30

#define LMK_SYNC		GPIO_EMIO_OFFSET + 0
#define OLED_RST		GPIO_EMIO_OFFSET + 1
#define OLED_SDA 		GPIO_EMIO_OFFSET + 2
#define OLED_SCL		GPIO_EMIO_OFFSET + 3


#define ARRAY_SIZE(ar)		(sizeof(ar)/sizeof(ar[0]))

typedef struct
{
	uint32_t	base_address;
	uint32_t	device_id;
	uint8_t		chip_select;
	uint32_t	cpha;
	uint32_t	cpol;
	uint8_t		id_no;
} spi_device;

int32_t Gpio_Init(uint16_t device_id);
int32_t Spi_Init(uint16_t device_id, XSpiPs *spi_instance);
void Platform_Init(void);

int32_t Spi_Read_Write(spi_device *dev,uint8_t *data,uint8_t bytes_number);
int32_t Gpio_Direction_Set(uint8_t gpio,uint8_t value);
int32_t Gpio_Value_Set(uint8_t gpio,uint8_t value);
void ms_delay(uint32_t msecs);

#endif
