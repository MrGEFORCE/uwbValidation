#ifndef _FMCW_IF_CONFIG_H
#define _FMCW_IF_CONFIG_H

#include "xgpio.h"
#include "xscugic.h"
#include "udp_perf_server.h"

#define P_BASE0_DDR		0X40000000
#define P_BASE1_DDR		0x45000000


#define GPIO_CHANNEL 			1
#define INT_TYPE_RISING_EDGE 	0x03 	//上升沿敏感
#define INT_TYPE_HIGHLEVEL 		0x01 	//高电平敏感
#define INT_TYPE_MASK 			0x03
#define INT_CFG0_OFFSET 		0x00000C00
#define PL_Done_INTR_ID			121


#pragma pack(1)
typedef struct {
    uint16_t start_magic_word[4];
    uint16_t delay;
    uint16_t tlv_nums;
    uint8_t  OuterClass;
    uint8_t  _;
    uint32_t data_len;
    uint16_t frame;
} header_t;

typedef struct {
	uint32_t T;
	uint32_t L;
}TL;


#pragma pack ()


extern volatile header_t header;
extern volatile TL tl;
extern volatile uint8_t SMP_Done_Flag;
extern volatile struct FMCW_Parameter FMCW_Parameter;

void AXI_GPIO_init();
u32 PL_Addr_Flag_Read(void);
void PL_PS_Intr_Init(XScuGic *INTCInst);
void Transer_Header(void);


#endif
