#ifndef __UDP_PERF_SERVER_H_
#define __UDP_PERF_SERVER_H_

#include "lwipopts.h"
#include "lwip/ip_addr.h"
#include "lwip/err.h"
#include "lwip/udp.h"
#include "lwip/inet.h"
#include "xil_printf.h"
#include "platform.h"
#include "protocol.h"
#include "axi_lite.h"

/* used as indices into kLabel[] */
enum {
	KCONV_UNIT,
	KCONV_KILO,
	KCONV_MEGA,
	KCONV_GIGA,
};

/* labels for formats [KMG] */
static const char kLabel[] =
{
	' ',
	'K',
	'M',
	'G'
};

/* used as type of print */
enum measure_t {
	BYTES,
	SPEED
};

/* Report type */
enum report_type {
	/* The Intermediate report */
	INTER_REPORT,
	/* The server side test is done */
	UDP_DONE_SERVER,
	/* Remote side aborted the test */
	UDP_ABORTED_REMOTE
};

struct interim_report {
	u64_t start_time;
	u64_t last_report_time;
	u32_t total_bytes;
	u32_t cnt_datagrams;
	u32_t cnt_dropped_datagrams;
};

struct perf_stats {
	u8_t client_id;
	u64_t start_time;
	u64_t end_time;
	u64_t total_bytes;
	u64_t cnt_datagrams;
	u64_t cnt_dropped_datagrams;
	u32_t cnt_out_of_order_datagrams;
	s32_t expected_datagram_id;
	struct interim_report i_report;
};

/* seconds between periodic bandwidth reports */
#define INTERIM_REPORT_INTERVAL 5

/* server port to listen on/connect to */
#define UDP_CONN_PORT 10

#define ETH_MAX_SIZE	1024

void udp_transmit(const char8 *ctrl1,uint32_t length);
void udp_transmit_Large(const char8 *Addr,uint32_t Len);
void udp_transmit_Large_ADC(const char8 *Addr,uint32_t Len,int antTDM);

#endif /* __UDP_PERF_SERVER_H_ */
