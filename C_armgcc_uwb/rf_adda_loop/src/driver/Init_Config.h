#ifndef _INIT_CONFIG_H
#define _INIT_CONFIG_H

#include "rfsoc.h"
#include "lmk04828.h"
#include "axi_lite.h"
#include "xadc.h"
#include "xrfdc.h"

//global varible
extern spi_device spi_lmk04828;

void RFSOC_Init();
void LMK04828_CLOCK_Init();

#endif
