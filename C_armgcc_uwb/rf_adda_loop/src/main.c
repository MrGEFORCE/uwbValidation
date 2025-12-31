
#include "xparameters.h"
#include "rfsoc.h"
#include "axi_lite.h"
#include "platform.h"
#include "platform_config.h"
#include "lmk04828.h"
#include "xtime_l.h"
#include "xrfdc.h"
#include "xsdps.h"
#include "xadc.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "protocol.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "netif/xadapter.h"

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"

#define My_SPI_Bank 0x80040000

//base define
#define RFDC_DEVICE_ID 	XPAR_XRFDC_0_DEVICE_ID
#define AXI_LITE_CTRL_BASE_ADDR 	XPAR_AXI_LITE_CTRL_0_BASEADDR

#define AXI_LITE_CTRL_DDS_RESET_N  0
#define AXI_LITE_CTRL_INIT_READY   4
#define AXI_LITE_CTRL_PHASE_INC1   8

//clock frq
#define DAC_AUX 1600
#define REF_CLK_FREQ   245.76e6
#define SAMPLERATE	   REF_CLK_FREQ
//global varible
extern spi_device spi_lmk04828;
XRFdc RFdcInstPtr;
uint64_t FS;

void platform_enable_interrupts(void);
void start_application(void);
void print_app_header(void);
void udp_send_123_default(void);

#if defined (__arm__) && !defined (ARMR5)
#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
		 XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
int ProgramSi5324(void);
int ProgramSfpPhy(void);
#endif
#endif

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

struct netif server_netif;

static void print_ip(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\r\n", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if (!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if (!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if (!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}

uint8_t flag;

int main(void)
{
	int Status;

	int32_t lock_pll1 = -1;
	int32_t lock_pll2 = -1;
	int config_lmkpll_timeout = 0;
	uint32_t val_out;

	struct netif *netif;
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
	int output;
	int i;
	netif = &server_netif;

	#if defined (__arm__) && !defined (ARMR5)
	#if XPAR_GIGE_PCS_PMA_SGMII_CORE_PRESENT == 1 || \
			XPAR_GIGE_PCS_PMA_1000BASEX_CORE_PRESENT == 1
		ProgramSi5324();
		ProgramSfpPhy();
	#endif
	#endif

		/* Define this board specific macro in order perform PHY reset
		 * on ZCU102
		 */
	#ifdef XPS_BOARD_ZCU102
		IicPhyReset();
	#endif

	print("RF27DR_Lite init start......\n\r");
	//platform init
	Platform_Init();
	lwip_init();
	protocol_init(&pro);
	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(netif, NULL, NULL, NULL, mac_ethernet_address,
				PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return -1;
	}
	netif_set_default(netif);

	/* now enable interrupts */
	platform_enable_interrupts();

	/* specify that the network if is up */
	netif_set_up(netif);

	assign_default_ip(&(netif->ip_addr), &(netif->netmask), &(netif->gw));
	print_ip_settings(&(netif->ip_addr), &(netif->netmask), &(netif->gw));

	xil_printf("\r\n");

	/* print app header */
	print_app_header();

	/* start the application*/
	start_application();
	xil_printf("\r\n");

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
	//RF Init
	Status = AXI_REG_READ(0XFF5E0000, 0X00000200U);
	printf("CRL_APB_BOOT_MODE_SET=%x\r\n", Status);

	RF_init(&RFdcInstPtr, RFDC_DEVICE_ID);

	for (i = 0; i < 2; i++)
	{
		XRFdc_Reset(&RFdcInstPtr, XRFDC_DAC_TILE, i);
	}
	for (i = 0; i < 4; i++)
	{
		XRFdc_Reset(&RFdcInstPtr, XRFDC_ADC_TILE, i);
	}

	Status = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, XRFDC_ADC_PATHS_ENABLED_OFFSET);
	printf("ADC Path Enabled=%x\r\n", Status);
	Status = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, XRFDC_DAC_PATHS_ENABLED_OFFSET);
	printf("DAC Path Enabled=%x\r\n", Status);

	val_out = AXI_REG_READ(XPAR_XRFDC_0_BASEADDR, 0);
	printf("IP Revision=%x\r\n", val_out);

	FS = RFdcInstPtr.ADC_Tile[0].PLL_Settings.SampleRate * 1e9;
	printf("ADC Samplerate is%ld Hz\r\n", FS);
	FS = RFdcInstPtr.DAC_Tile[0].PLL_Settings.SampleRate * 1e9;
	printf("DAC Samplerate is%ld Hz\r\n", FS);

	printf("RF init done.\r\n");

	//DDS START UP
	AXI_REG_WRITE(AXI_LITE_CTRL_BASE_ADDR,AXI_LITE_CTRL_INIT_READY,	 0);// dds phase increment
	AXI_REG_WRITE(AXI_LITE_CTRL_BASE_ADDR,AXI_LITE_CTRL_PHASE_INC1, 512);
	AXI_REG_WRITE(AXI_LITE_CTRL_BASE_ADDR,AXI_LITE_CTRL_DDS_RESET_N, 0);
	ms_delay(10);
	AXI_REG_WRITE(AXI_LITE_CTRL_BASE_ADDR,AXI_LITE_CTRL_DDS_RESET_N, 1);

	Status = Xadc_Init(XPAR_PSU_AMS_DEVICE_ID);
	if (Status == 0) printf("Xadc Setup Complete......\r\n");

	printf("Start rfsoc xadc read......\r\n");
	while(1)
	{
//		soc_tempture=Xadc_Read_Tempture();
//		printf("Rfsoc Temperature=%lf\n",soc_tempture);
//		sleep(1);
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(netif);

		output = Xil_In32(My_SPI_Bank + 4 * 17) & 0x3;

		if(flag != 0)
		{
			if(output == 0)
			{
				if(flag == 1)
				{
					for(int i = 0;i < 8;i++)
					{
						Xil_Out32(My_SPI_Bank + 4 * (i + 5),pro.txRegs[i]);
						//	printf("%u\r\n",pro.txRegs[i]);
					}
				}
				if(flag == 2)
				{
					for(int i = 0;i < 16;i++)
					{
						Xil_Out32(My_SPI_Bank + 4 *i,pro.rxRegs[i]);
					    //	printf("%u\r\n",pro.rxRegs[i]);
					}
				}
				Xil_Out32(My_SPI_Bank + 4 * 16, 1);
			}
			if(output == 2)
			{
				Xil_Out32(My_SPI_Bank + 4 * 16, 0);
				flag = 0;
			}
		}
	}
	/* never reached */
	//	cleanup_platform();

	return XRFDC_SUCCESS;
}
