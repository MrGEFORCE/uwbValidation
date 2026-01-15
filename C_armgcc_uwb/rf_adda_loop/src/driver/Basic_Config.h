#ifndef _BASIC_CONFIG_H
#define _BASIC_CONFIG_H

#include "xscugic.h"


// assert FPGA Reset Signal
#define XSLCR_BASEADDR					0xF8000000U
#define XSLCR_LOCK_ADDR				    (XSLCR_BASEADDR + 0x00000004U)
#define XSLCR_UNLOCK_ADDR				(XSLCR_BASEADDR + 0x00000008U)

#define XSLCR_FPGA_RST_CTRL_ADDR        (XSLCR_BASEADDR + 0x00000240U)

/**< SLCR unlock code */
#define XSLCR_LOCK_CODE		    		0x0000767BU
#define XSLCR_UNLOCK_CODE				0x0000DF0DU

#define PSS_RST_CTRL_REG 				0xF8000200
#define SLCR_UNLOCK_ADDR 				0xF8000008
#define UNLOCK_KEY 						0xDF0D
#define PSS_RST_MASK 					0x01


extern XScuGic 				ScuGic;


void PlSoftwareReset(void);
void Basic_Config_Init(XScuGic *Xscugic);



#endif
