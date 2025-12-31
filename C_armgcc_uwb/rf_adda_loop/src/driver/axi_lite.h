//axi_lite.h
#include "xil_io.h"

#define AXI_REG_WRITE(BaseAddress, RegOffset, Data) Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define AXI_REG_READ(BaseAddress, RegOffset) Xil_In32((BaseAddress) + (RegOffset))

