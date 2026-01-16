#include "xparameters.h"
#include "platform_config.h"
#include "xtime_l.h"
#include "xsdps.h"
#include "lwip/priv/tcp_priv.h"
#include "lwip/init.h"
#include "xparameters.h"
#include "xil_io.h"
#include "sleep.h"
#include "netif/xadapter.h"
#include "Init_Config.h"
#include "math.h"
#include "Fmcw_IF_Config.h"
#include "Basic_Config.h"
#include "xil_cache.h"

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
#endif

extern volatile int TcpFastTmrFlag;
extern volatile int TcpSlowTmrFlag;

#define DEFAULT_IP_ADDRESS	"192.168.1.10"
#define DEFAULT_IP_MASK		"255.255.255.0"
#define DEFAULT_GW_ADDRESS	"192.168.1.1"

#define axi_lite_ctrl_DacFMCW 0x80000000
#define axi_lite_ctrl_SpiControl 0x80010000
#define rf_data_converter 0x80040000

//base define
#define RFDC_DEVICE_ID 	XPAR_XRFDC_0_DEVICE_ID

#define AXI_LITE_CTRL_DDS_RESET_N  0
#define AXI_LITE_CTRL_INIT_READY   4
#define AXI_LITE_CTRL_PHASE_INC1   8

void platform_enable_interrupts(void);
void start_application(void);
void print_app_header(void);

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
uint32_t FMCW_R;				//锟斤拷锟斤拷锟斤拷扫频斜锟斤拷
uint32_t FMCW_S;				//锟斤拷锟斤拷锟斤拷扫频锟斤拷始频锟斤拷
uint32_t FMCW_N;				//DDS锟斤拷锟斤拷
uint32_t FMCW_fc = 1.2288e9;
uint32_t FMCW_f0 = 0;
uint8_t  PHASE_NUM = 8;
uint8_t FMCW_DDS_L = 32;

int main(void)
{
	Xil_DCacheDisable();
	Xil_ICacheDisable();
	struct netif *netif;
	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] = {
		0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };
	int output;
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

	//platform init
	Platform_Init();
	lwip_init();
	protocol_init(&pro,protocol_buf,4096);
	Basic_Config_Init(&ScuGic);					//锟叫断匡拷锟斤拷锟斤拷锟斤拷始锟斤拷
	AXI_GPIO_init();							//AXI GPIO锟斤拷始锟斤拷
	PL_PS_Intr_Init(&ScuGic);					//锟叫断筹拷始锟斤拷

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
	LMK04828_CLOCK_Init();
	RFSOC_Init();
	while(1)
	{
		xemacif_input(netif);

		output = Xil_In32(axi_lite_ctrl_SpiControl + 4 * 17) & 0x3;

		if(flag != 0)
		{
			if(output == 0)
			{
				if(flag == 1)
				{
					for(int i = 0;i < 7;i++)
					{
						Xil_Out32(axi_lite_ctrl_SpiControl + 4 * (i + 5),pro.txRegs[i]);
						//	printf("%u\r\n",pro.txRegs[i]);
					}
					Xil_Out32(axi_lite_ctrl_SpiControl + 4 * 16, 1);
				}
				if(flag == 2)
				{
					for(int i = 0;i < 16;i++)
					{
						Xil_Out32(axi_lite_ctrl_SpiControl + 4 *i,pro.rxRegs[i]);
					    //	printf("%u\r\n",pro.rxRegs[i]);
					}
					Xil_Out32(axi_lite_ctrl_SpiControl + 4 * 16, 1);
				}
				if(flag == 4)
				{
					// 0-FMCW_R,1-FMCW_S,2-FMCW_N,3-FMCW_IDX(8)\FS_Div(8)\FS_Number(16),4-USER_RST_N,
					// 5-FMCW_Chirp_Cycle_us\FMCW_Chirp_Number,6-FMCW_Frame_Cycle_ms\FMCW_Adc_Delay_us,7-cal_delay_num
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,16,0);
					usleep(10000);
					FMCW_R = (double)pow(2,FMCW_DDS_L) * (pro.cp.data.floatData.t.bandWidth_MHz * 1e12) / pro.cp.data.floatData.t.rampTime_us / FMCW_fc / FMCW_fc;
					FMCW_S = (double)pow(2,FMCW_DDS_L) * FMCW_f0 / FMCW_fc + FMCW_R /2 ;
					FMCW_N = (double)pro.cp.data.floatData.t.rampTime_us * FMCW_fc / PHASE_NUM / 1e6;
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,0,FMCW_R);
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,4,FMCW_S);
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,8,FMCW_N);
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,12,pro.cp.data.intData.t.antTDM + (pro.cp.data.intData.t.ADCPoints << 16) + (pro.sampleInterval << 8));
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,20,pro.cp.data.floatData.t.Tc_us + ((pro.cp.data.intData.t.chirpLoops * pro.cp.data.intData.t.antTDM) << 16) );
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,24,pro.cp.data.floatData.t.periodicity_ms + ((uint16_t)(pro.cp.data.floatData.t.ADCDelay_us) << 16));
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,28,pro.mixerDelay[0] + (pro.mixerDelay[1] << 16));
					printf("FMCW_R:%u\r\n",FMCW_R);
					printf("FMCW_S:%u\r\n",FMCW_S);
					printf("FMCW_N:%u\r\n",FMCW_N);
					printf("rxAnt:%u",pro.cp.data.intData.t.rx);
					printf("antTDM:%u,ADCPoints:%u,sampleInterval:%u\r\n",(u32)(pro.cp.data.intData.t.antTDM),(u32)(pro.cp.data.intData.t.ADCPoints),(u32)(pro.sampleInterval));
					printf("Tc_us:%u,chirpLoops:%u\r\n",(u32)(pro.cp.data.floatData.t.Tc_us),(u32)(pro.cp.data.intData.t.chirpLoops));
					printf("periodicity_ms:%u,ADCDelay_us:%u\r\n",(u32)(pro.cp.data.floatData.t.periodicity_ms),(u32)(pro.cp.data.floatData.t.ADCDelay_us));
					printf("SystemDelay1:%u,SystemDelay1:%u\r\n",pro.mixerDelay[0],pro.mixerDelay[1]);
					usleep(100000);
					AXI_REG_WRITE(axi_lite_ctrl_DacFMCW,16,1);
					flag = 0;
				}
			}
			if(output == 2)
			{
				Xil_Out32(axi_lite_ctrl_SpiControl + 4 * 16, 0);
				flag = 0;
			}
		}

		if(SMP_Done_Flag)
		{
			char* BASE_ADDR;
			if(PL_Addr_Flag_Read())
				BASE_ADDR = (char*)P_BASE1_DDR;
			else
				BASE_ADDR = (char*)P_BASE0_DDR;
			printf("udp Test\r\n");

			Transer_Header();
			udp_transmit_Large_ADC(BASE_ADDR, header.L,pro.cp.data.intData.t.rx);
			SMP_Done_Flag = 0;
		}
	}
	/* never reached */
	//	cleanup_platform();

	return XRFDC_SUCCESS;
}
