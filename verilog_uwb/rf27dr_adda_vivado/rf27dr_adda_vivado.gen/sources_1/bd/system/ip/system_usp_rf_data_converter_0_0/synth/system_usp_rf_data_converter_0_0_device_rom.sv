//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps

module system_usp_rf_data_converter_0_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:496] = '{
       30'h07230000,  // Clock Network Control 0 (ADC0)
       30'h07240001,  // Clock Network Control 1 (ADC0)
       30'h0717002e,  // PLL FB Div (ADC0)
       30'h070c0081,  // PLL Output Divide (ADC0)
       30'h07100010,  // PLL Ref clock divide (ADC0)
       30'h07000080,  // PLL SDM CONFIG0 (ADC0)
       30'h07060111,  // PLL SDM seed (ADC0)
       30'h07070011,  // PLL SDM seed setup (ADC0)
       30'h070e0507,  // PLL ChargePump setup (ADC0)
       30'h0712ffff,  // PLL ChargePump setup (ADC0)
       30'h07137f9c,  // PLL loop filter setup (ADC0)
       30'h07140006,  // PLL loop filter setup (ADC0)
       30'h07155800,  // PLL VCO setup (ADC0)
       30'h07160008,  // PLL VCO setup (ADC0)
       30'h070a7a3e,  // PLL Coarse Frequency setup (ADC0)
       30'h070b7008,  // PLL Coarse Frequency setup (ADC0)
       30'h0711003d,  // PLL Voltage Regulator setup (ADC0)
       30'h072c0022,  // CLK_DIV (ADC0)
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h072dffc0,  // HSCOM_PWR_MASK (ADC0)
       30'h00020402,  // ADC00 Data Width
       30'h00100003,  // ADC00 Decimation Config
       30'h00110003,  // ADC00 Decimation Mode
       30'h00221015,  // ADC00 Mixer Mode
       30'h002a0001,  // ADC00 NCO Phase Mode
       30'h00270000,  // ADC00 NCO Frequency Word 0
       30'h00260000,  // ADC00 NCO Frequency Word 1
       30'h0025e1a8,  // ADC00 NCO Frequency Word 2
       30'h00290000,  // ADC00 NCO Phase Offset Word 0
       30'h00280000,  // ADC00 NCO Phase Offset Word 1
       30'h003a0020,  // ADC00 Switch Matrix Config
       30'h007101f1,  // ADC00 RX MC Config 0
       30'h00518243,  // ADC00 TI_DCB_CTRL0
       30'h0055904e,  // ADC00 TI_TIME_SKEW_CTRL0
       30'h00060004,  // ADC00 FABRIC_DEBUG
       30'h01020402,  // ADC01 Data Width
       30'h01100003,  // ADC01 Decimation Config
       30'h01110003,  // ADC01 Decimation Mode
       30'h01221015,  // ADC01 Mixer Mode
       30'h012a0002,  // ADC01 NCO Phase Mode
       30'h01270000,  // ADC01 NCO Frequency Word 0
       30'h01260000,  // ADC01 NCO Frequency Word 1
       30'h0125e1a8,  // ADC01 NCO Frequency Word 2
       30'h01290000,  // ADC01 NCO Phase Offset Word 0
       30'h01280000,  // ADC01 NCO Phase Offset Word 1
       30'h013a0024,  // ADC01 Switch Matrix Config
       30'h017101f9,  // ADC01 RX MC Config 0
       30'h0151fa47,  // ADC01 TI_DCB_CTRL0
       30'h0155904e,  // ADC01 TI_TIME_SKEW_CTRL0
       30'h01060004,  // ADC01 FABRIC_DEBUG
       30'h02020402,  // ADC02 Data Width
       30'h02100003,  // ADC02 Decimation Config
       30'h02110003,  // ADC02 Decimation Mode
       30'h02221015,  // ADC02 Mixer Mode
       30'h022a0001,  // ADC02 NCO Phase Mode
       30'h02270000,  // ADC02 NCO Frequency Word 0
       30'h02260000,  // ADC02 NCO Frequency Word 1
       30'h0225e1a8,  // ADC02 NCO Frequency Word 2
       30'h02290000,  // ADC02 NCO Phase Offset Word 0
       30'h02280000,  // ADC02 NCO Phase Offset Word 1
       30'h023a0028,  // ADC02 Switch Matrix Config
       30'h027101f1,  // ADC02 RX MC Config 0
       30'h02518243,  // ADC02 TI_DCB_CTRL0
       30'h0255904e,  // ADC02 TI_TIME_SKEW_CTRL0
       30'h02060004,  // ADC02 FABRIC_DEBUG
       30'h03020402,  // ADC03 Data Width
       30'h03100003,  // ADC03 Decimation Config
       30'h03110003,  // ADC03 Decimation Mode
       30'h03221015,  // ADC03 Mixer Mode
       30'h032a0002,  // ADC03 NCO Phase Mode
       30'h03270000,  // ADC03 NCO Frequency Word 0
       30'h03260000,  // ADC03 NCO Frequency Word 1
       30'h0325e1a8,  // ADC03 NCO Frequency Word 2
       30'h03290000,  // ADC03 NCO Phase Offset Word 0
       30'h03280000,  // ADC03 NCO Phase Offset Word 1
       30'h033a002c,  // ADC03 Switch Matrix Config
       30'h037101f9,  // ADC03 RX MC Config 0
       30'h0351fa47,  // ADC03 TI_DCB_CTRL0
       30'h0355904e,  // ADC03 TI_TIME_SKEW_CTRL0
       30'h03060004,  // ADC03 FABRIC_DEBUG
       30'h0f230000,  // Clock Network Control 0 (ADC1)
       30'h0f240001,  // Clock Network Control 1 (ADC1)
       30'h0f17002e,  // PLL FB Div (ADC1)
       30'h0f0c0081,  // PLL Output Divide (ADC1)
       30'h0f100010,  // PLL Ref clock divide (ADC1)
       30'h0f000080,  // PLL SDM CONFIG0 (ADC1)
       30'h0f060111,  // PLL SDM seed (ADC1)
       30'h0f070011,  // PLL SDM seed setup (ADC1)
       30'h0f0e0507,  // PLL ChargePump setup (ADC1)
       30'h0f12ffff,  // PLL ChargePump setup (ADC1)
       30'h0f137f9c,  // PLL loop filter setup (ADC1)
       30'h0f140006,  // PLL loop filter setup (ADC1)
       30'h0f155800,  // PLL VCO setup (ADC1)
       30'h0f160008,  // PLL VCO setup (ADC1)
       30'h0f0a7a3e,  // PLL Coarse Frequency setup (ADC1)
       30'h0f0b7008,  // PLL Coarse Frequency setup (ADC1)
       30'h0f11003d,  // PLL Voltage Regulator setup (ADC1)
       30'h0f2c0022,  // CLK_DIV (ADC1)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h0f2dffc0,  // HSCOM_PWR_MASK (ADC1)
       30'h08020402,  // ADC10 Data Width
       30'h08100003,  // ADC10 Decimation Config
       30'h08110003,  // ADC10 Decimation Mode
       30'h08221015,  // ADC10 Mixer Mode
       30'h082a0001,  // ADC10 NCO Phase Mode
       30'h08270000,  // ADC10 NCO Frequency Word 0
       30'h08260000,  // ADC10 NCO Frequency Word 1
       30'h0825e1a8,  // ADC10 NCO Frequency Word 2
       30'h08290000,  // ADC10 NCO Phase Offset Word 0
       30'h08280000,  // ADC10 NCO Phase Offset Word 1
       30'h083a0020,  // ADC10 Switch Matrix Config
       30'h087101f1,  // ADC10 RX MC Config 0
       30'h08518243,  // ADC10 TI_DCB_CTRL0
       30'h0855904e,  // ADC10 TI_TIME_SKEW_CTRL0
       30'h08060004,  // ADC10 FABRIC_DEBUG
       30'h09020402,  // ADC11 Data Width
       30'h09100003,  // ADC11 Decimation Config
       30'h09110003,  // ADC11 Decimation Mode
       30'h09221015,  // ADC11 Mixer Mode
       30'h092a0002,  // ADC11 NCO Phase Mode
       30'h09270000,  // ADC11 NCO Frequency Word 0
       30'h09260000,  // ADC11 NCO Frequency Word 1
       30'h0925e1a8,  // ADC11 NCO Frequency Word 2
       30'h09290000,  // ADC11 NCO Phase Offset Word 0
       30'h09280000,  // ADC11 NCO Phase Offset Word 1
       30'h093a0024,  // ADC11 Switch Matrix Config
       30'h097101f9,  // ADC11 RX MC Config 0
       30'h0951fa47,  // ADC11 TI_DCB_CTRL0
       30'h0955904e,  // ADC11 TI_TIME_SKEW_CTRL0
       30'h09060004,  // ADC11 FABRIC_DEBUG
       30'h0a020402,  // ADC12 Data Width
       30'h0a100003,  // ADC12 Decimation Config
       30'h0a110003,  // ADC12 Decimation Mode
       30'h0a221015,  // ADC12 Mixer Mode
       30'h0a2a0001,  // ADC12 NCO Phase Mode
       30'h0a270000,  // ADC12 NCO Frequency Word 0
       30'h0a260000,  // ADC12 NCO Frequency Word 1
       30'h0a25e1a8,  // ADC12 NCO Frequency Word 2
       30'h0a290000,  // ADC12 NCO Phase Offset Word 0
       30'h0a280000,  // ADC12 NCO Phase Offset Word 1
       30'h0a3a0028,  // ADC12 Switch Matrix Config
       30'h0a7101f1,  // ADC12 RX MC Config 0
       30'h0a518243,  // ADC12 TI_DCB_CTRL0
       30'h0a55904e,  // ADC12 TI_TIME_SKEW_CTRL0
       30'h0a060004,  // ADC12 FABRIC_DEBUG
       30'h0b020402,  // ADC13 Data Width
       30'h0b100003,  // ADC13 Decimation Config
       30'h0b110003,  // ADC13 Decimation Mode
       30'h0b221015,  // ADC13 Mixer Mode
       30'h0b2a0002,  // ADC13 NCO Phase Mode
       30'h0b270000,  // ADC13 NCO Frequency Word 0
       30'h0b260000,  // ADC13 NCO Frequency Word 1
       30'h0b25e1a8,  // ADC13 NCO Frequency Word 2
       30'h0b290000,  // ADC13 NCO Phase Offset Word 0
       30'h0b280000,  // ADC13 NCO Phase Offset Word 1
       30'h0b3a002c,  // ADC13 Switch Matrix Config
       30'h0b7101f9,  // ADC13 RX MC Config 0
       30'h0b51fa47,  // ADC13 TI_DCB_CTRL0
       30'h0b55904e,  // ADC13 TI_TIME_SKEW_CTRL0
       30'h0b060004,  // ADC13 FABRIC_DEBUG
       30'h17230000,  // Clock Network Control 0 (ADC2)
       30'h17240001,  // Clock Network Control 1 (ADC2)
       30'h1717002e,  // PLL FB Div (ADC2)
       30'h170c0081,  // PLL Output Divide (ADC2)
       30'h17100010,  // PLL Ref clock divide (ADC2)
       30'h17000080,  // PLL SDM CONFIG0 (ADC2)
       30'h17060111,  // PLL SDM seed (ADC2)
       30'h17070011,  // PLL SDM seed setup (ADC2)
       30'h170e0507,  // PLL ChargePump setup (ADC2)
       30'h1712ffff,  // PLL ChargePump setup (ADC2)
       30'h17137f9c,  // PLL loop filter setup (ADC2)
       30'h17140006,  // PLL loop filter setup (ADC2)
       30'h17155800,  // PLL VCO setup (ADC2)
       30'h17160008,  // PLL VCO setup (ADC2)
       30'h170a7a3e,  // PLL Coarse Frequency setup (ADC2)
       30'h170b7008,  // PLL Coarse Frequency setup (ADC2)
       30'h1711003d,  // PLL Voltage Regulator setup (ADC2)
       30'h172c0022,  // CLK_DIV (ADC2)
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h172dffc0,  // HSCOM_PWR_MASK (ADC2)
       30'h10020402,  // ADC20 Data Width
       30'h10100003,  // ADC20 Decimation Config
       30'h10110003,  // ADC20 Decimation Mode
       30'h10221015,  // ADC20 Mixer Mode
       30'h102a0001,  // ADC20 NCO Phase Mode
       30'h10270000,  // ADC20 NCO Frequency Word 0
       30'h10260000,  // ADC20 NCO Frequency Word 1
       30'h1025e1a8,  // ADC20 NCO Frequency Word 2
       30'h10290000,  // ADC20 NCO Phase Offset Word 0
       30'h10280000,  // ADC20 NCO Phase Offset Word 1
       30'h103a0020,  // ADC20 Switch Matrix Config
       30'h107101f1,  // ADC20 RX MC Config 0
       30'h10518243,  // ADC20 TI_DCB_CTRL0
       30'h1055904e,  // ADC20 TI_TIME_SKEW_CTRL0
       30'h10060004,  // ADC20 FABRIC_DEBUG
       30'h11020402,  // ADC21 Data Width
       30'h11100003,  // ADC21 Decimation Config
       30'h11110003,  // ADC21 Decimation Mode
       30'h11221015,  // ADC21 Mixer Mode
       30'h112a0002,  // ADC21 NCO Phase Mode
       30'h11270000,  // ADC21 NCO Frequency Word 0
       30'h11260000,  // ADC21 NCO Frequency Word 1
       30'h1125e1a8,  // ADC21 NCO Frequency Word 2
       30'h11290000,  // ADC21 NCO Phase Offset Word 0
       30'h11280000,  // ADC21 NCO Phase Offset Word 1
       30'h113a0024,  // ADC21 Switch Matrix Config
       30'h117101f9,  // ADC21 RX MC Config 0
       30'h1151fa47,  // ADC21 TI_DCB_CTRL0
       30'h1155904e,  // ADC21 TI_TIME_SKEW_CTRL0
       30'h11060004,  // ADC21 FABRIC_DEBUG
       30'h12020402,  // ADC22 Data Width
       30'h12100003,  // ADC22 Decimation Config
       30'h12110003,  // ADC22 Decimation Mode
       30'h12221015,  // ADC22 Mixer Mode
       30'h122a0001,  // ADC22 NCO Phase Mode
       30'h12270000,  // ADC22 NCO Frequency Word 0
       30'h12260000,  // ADC22 NCO Frequency Word 1
       30'h1225e1a8,  // ADC22 NCO Frequency Word 2
       30'h12290000,  // ADC22 NCO Phase Offset Word 0
       30'h12280000,  // ADC22 NCO Phase Offset Word 1
       30'h123a0028,  // ADC22 Switch Matrix Config
       30'h127101f1,  // ADC22 RX MC Config 0
       30'h12518243,  // ADC22 TI_DCB_CTRL0
       30'h1255904e,  // ADC22 TI_TIME_SKEW_CTRL0
       30'h12060004,  // ADC22 FABRIC_DEBUG
       30'h13020402,  // ADC23 Data Width
       30'h13100003,  // ADC23 Decimation Config
       30'h13110003,  // ADC23 Decimation Mode
       30'h13221015,  // ADC23 Mixer Mode
       30'h132a0002,  // ADC23 NCO Phase Mode
       30'h13270000,  // ADC23 NCO Frequency Word 0
       30'h13260000,  // ADC23 NCO Frequency Word 1
       30'h1325e1a8,  // ADC23 NCO Frequency Word 2
       30'h13290000,  // ADC23 NCO Phase Offset Word 0
       30'h13280000,  // ADC23 NCO Phase Offset Word 1
       30'h133a002c,  // ADC23 Switch Matrix Config
       30'h137101f9,  // ADC23 RX MC Config 0
       30'h1351fa47,  // ADC23 TI_DCB_CTRL0
       30'h1355904e,  // ADC23 TI_TIME_SKEW_CTRL0
       30'h13060004,  // ADC23 FABRIC_DEBUG
       30'h1f230000,  // Clock Network Control 0 (ADC3)
       30'h1f240001,  // Clock Network Control 1 (ADC3)
       30'h1f17002e,  // PLL FB Div (ADC3)
       30'h1f0c0081,  // PLL Output Divide (ADC3)
       30'h1f100010,  // PLL Ref clock divide (ADC3)
       30'h1f000080,  // PLL SDM CONFIG0 (ADC3)
       30'h1f060111,  // PLL SDM seed (ADC3)
       30'h1f070011,  // PLL SDM seed setup (ADC3)
       30'h1f0e0507,  // PLL ChargePump setup (ADC3)
       30'h1f12ffff,  // PLL ChargePump setup (ADC3)
       30'h1f137f9c,  // PLL loop filter setup (ADC3)
       30'h1f140006,  // PLL loop filter setup (ADC3)
       30'h1f155800,  // PLL VCO setup (ADC3)
       30'h1f160008,  // PLL VCO setup (ADC3)
       30'h1f0a7a3e,  // PLL Coarse Frequency setup (ADC3)
       30'h1f0b7008,  // PLL Coarse Frequency setup (ADC3)
       30'h1f11003d,  // PLL Voltage Regulator setup (ADC3)
       30'h1f2c0022,  // CLK_DIV (ADC3)
       30'h1f281700,  // SYSREF Distribution (ADC3)
       30'h1f2dffc0,  // HSCOM_PWR_MASK (ADC3)
       30'h18020402,  // ADC30 Data Width
       30'h18100003,  // ADC30 Decimation Config
       30'h18110003,  // ADC30 Decimation Mode
       30'h18221015,  // ADC30 Mixer Mode
       30'h182a0001,  // ADC30 NCO Phase Mode
       30'h18270000,  // ADC30 NCO Frequency Word 0
       30'h18260000,  // ADC30 NCO Frequency Word 1
       30'h1825e1a8,  // ADC30 NCO Frequency Word 2
       30'h18290000,  // ADC30 NCO Phase Offset Word 0
       30'h18280000,  // ADC30 NCO Phase Offset Word 1
       30'h183a0020,  // ADC30 Switch Matrix Config
       30'h187101f1,  // ADC30 RX MC Config 0
       30'h18518243,  // ADC30 TI_DCB_CTRL0
       30'h1855904e,  // ADC30 TI_TIME_SKEW_CTRL0
       30'h18060004,  // ADC30 FABRIC_DEBUG
       30'h19020402,  // ADC31 Data Width
       30'h19100003,  // ADC31 Decimation Config
       30'h19110003,  // ADC31 Decimation Mode
       30'h19221015,  // ADC31 Mixer Mode
       30'h192a0002,  // ADC31 NCO Phase Mode
       30'h19270000,  // ADC31 NCO Frequency Word 0
       30'h19260000,  // ADC31 NCO Frequency Word 1
       30'h1925e1a8,  // ADC31 NCO Frequency Word 2
       30'h19290000,  // ADC31 NCO Phase Offset Word 0
       30'h19280000,  // ADC31 NCO Phase Offset Word 1
       30'h193a0024,  // ADC31 Switch Matrix Config
       30'h197101f9,  // ADC31 RX MC Config 0
       30'h1951fa47,  // ADC31 TI_DCB_CTRL0
       30'h1955904e,  // ADC31 TI_TIME_SKEW_CTRL0
       30'h19060004,  // ADC31 FABRIC_DEBUG
       30'h1a020402,  // ADC32 Data Width
       30'h1a100003,  // ADC32 Decimation Config
       30'h1a110003,  // ADC32 Decimation Mode
       30'h1a221015,  // ADC32 Mixer Mode
       30'h1a2a0001,  // ADC32 NCO Phase Mode
       30'h1a270000,  // ADC32 NCO Frequency Word 0
       30'h1a260000,  // ADC32 NCO Frequency Word 1
       30'h1a25e1a8,  // ADC32 NCO Frequency Word 2
       30'h1a290000,  // ADC32 NCO Phase Offset Word 0
       30'h1a280000,  // ADC32 NCO Phase Offset Word 1
       30'h1a3a0028,  // ADC32 Switch Matrix Config
       30'h1a7101f1,  // ADC32 RX MC Config 0
       30'h1a518243,  // ADC32 TI_DCB_CTRL0
       30'h1a55904e,  // ADC32 TI_TIME_SKEW_CTRL0
       30'h1a060004,  // ADC32 FABRIC_DEBUG
       30'h1b020402,  // ADC33 Data Width
       30'h1b100003,  // ADC33 Decimation Config
       30'h1b110003,  // ADC33 Decimation Mode
       30'h1b221015,  // ADC33 Mixer Mode
       30'h1b2a0002,  // ADC33 NCO Phase Mode
       30'h1b270000,  // ADC33 NCO Frequency Word 0
       30'h1b260000,  // ADC33 NCO Frequency Word 1
       30'h1b25e1a8,  // ADC33 NCO Frequency Word 2
       30'h1b290000,  // ADC33 NCO Phase Offset Word 0
       30'h1b280000,  // ADC33 NCO Phase Offset Word 1
       30'h1b3a002c,  // ADC33 Switch Matrix Config
       30'h1b7101f9,  // ADC33 RX MC Config 0
       30'h1b51fa47,  // ADC33 TI_DCB_CTRL0
       30'h1b55904e,  // ADC33 TI_TIME_SKEW_CTRL0
       30'h1b060004,  // ADC33 FABRIC_DEBUG
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240001,  // Clock Network Control 1 (DAC0)
       30'h2717002e,  // PLL FB Div (DAC0)
       30'h270c0081,  // PLL Output Divide (DAC0)
       30'h27100010,  // PLL Ref clock divide (DAC0)
       30'h27000080,  // PLL SDM CONFIG0 (DAC0)
       30'h27060111,  // PLL SDM seed (DAC0)
       30'h27070011,  // PLL SDM seed setup (DAC0)
       30'h270e0507,  // PLL ChargePump setup (DAC0)
       30'h2712ffff,  // PLL ChargePump setup (DAC0)
       30'h27137f9c,  // PLL loop filter setup (DAC0)
       30'h27140006,  // PLL loop filter setup (DAC0)
       30'h27155800,  // PLL VCO setup (DAC0)
       30'h27160008,  // PLL VCO setup (DAC0)
       30'h270a7a3e,  // PLL Coarse Frequency setup (DAC0)
       30'h270b7008,  // PLL Coarse Frequency setup (DAC0)
       30'h2711003d,  // PLL Voltage Regulator setup (DAC0)
       30'h272c0012,  // CLK_DIV (DAC0)
       30'h2728c980,  // SYSREF Distribution (DAC0)
       30'h272dffc0,  // HSCOM_PWR_MASK (DAC0)
       30'h20020408,  // DAC00 Data Width
       30'h20100033,  // DAC00 Interpolation Control
       30'h20110001,  // DAC00 Interpolation Data
       30'h20220c03,  // DAC00 Mixer Mode
       30'h20270000,  // DAC00 NCO Frequency Word 0
       30'h20260000,  // DAC00 NCO Frequency Word 1
       30'h202561a8,  // DAC00 NCO Frequency Word 2
       30'h20290000,  // DAC00 NCO Phase Offest Word 0
       30'h20280000,  // DAC00 NCO Phase Offest Word 1
       30'h20300001,  // DAC00 Inv Sinc Filter
       30'h20310040,  // DAC00 Multiband Config
       30'h20600001,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h20710000,  // DAC00 MC_CONFIG0
       30'h2073a0d8,  // DAC00 MC_CONFIG2
       30'h2074ffc0,  // DAC00 MC_CONFIG3
       30'h20070004,  // DAC00 FABRIC_DEBUG
       30'h21020408,  // DAC01 Data Width
       30'h21100033,  // DAC01 Interpolation Control
       30'h21110001,  // DAC01 Interpolation Data
       30'h21220c03,  // DAC01 Mixer Mode
       30'h21270000,  // DAC01 NCO Frequency Word 0
       30'h21260000,  // DAC01 NCO Frequency Word 1
       30'h212561a8,  // DAC01 NCO Frequency Word 2
       30'h21290000,  // DAC01 NCO Phase Offest Word 0
       30'h21280000,  // DAC01 NCO Phase Offest Word 1
       30'h21300001,  // DAC01 Inv Sinc Filter
       30'h21310040,  // DAC01 Multiband Config
       30'h21600001,  // DAC01 Decoder Control
       30'h21610001,  // DAC01 Decoder Clock Enable
       30'h21710000,  // DAC01 MC_CONFIG0
       30'h2173a0d8,  // DAC01 MC_CONFIG2
       30'h2174ffc0,  // DAC01 MC_CONFIG3
       30'h21070004,  // DAC01 FABRIC_DEBUG
       30'h22020408,  // DAC02 Data Width
       30'h22100033,  // DAC02 Interpolation Control
       30'h22110001,  // DAC02 Interpolation Data
       30'h22220c03,  // DAC02 Mixer Mode
       30'h22270000,  // DAC02 NCO Frequency Word 0
       30'h22260000,  // DAC02 NCO Frequency Word 1
       30'h222561a8,  // DAC02 NCO Frequency Word 2
       30'h22290000,  // DAC02 NCO Phase Offest Word 0
       30'h22280000,  // DAC02 NCO Phase Offest Word 1
       30'h22300001,  // DAC02 Inv Sinc Filter
       30'h22310040,  // DAC02 Multiband Config
       30'h22600001,  // DAC02 Decoder Control
       30'h22610001,  // DAC02 Decoder Clock Enable
       30'h22710000,  // DAC02 MC_CONFIG0
       30'h2273a0d8,  // DAC02 MC_CONFIG2
       30'h2274ffc0,  // DAC02 MC_CONFIG3
       30'h22070004,  // DAC02 FABRIC_DEBUG
       30'h23020408,  // DAC03 Data Width
       30'h23100033,  // DAC03 Interpolation Control
       30'h23110001,  // DAC03 Interpolation Data
       30'h23220c03,  // DAC03 Mixer Mode
       30'h23270000,  // DAC03 NCO Frequency Word 0
       30'h23260000,  // DAC03 NCO Frequency Word 1
       30'h232561a8,  // DAC03 NCO Frequency Word 2
       30'h23290000,  // DAC03 NCO Phase Offest Word 0
       30'h23280000,  // DAC03 NCO Phase Offest Word 1
       30'h23300001,  // DAC03 Inv Sinc Filter
       30'h23310040,  // DAC03 Multiband Config
       30'h23600001,  // DAC03 Decoder Control
       30'h23610001,  // DAC03 Decoder Clock Enable
       30'h23710000,  // DAC03 MC_CONFIG0
       30'h2373a0d8,  // DAC03 MC_CONFIG2
       30'h2374ffc0,  // DAC03 MC_CONFIG3
       30'h23070004,  // DAC03 FABRIC_DEBUG
       30'h2f230000,  // Clock Network Control 0 (DAC1)
       30'h2f240001,  // Clock Network Control 1 (DAC1)
       30'h2f17002e,  // PLL FB Div (DAC1)
       30'h2f0c0081,  // PLL Output Divide (DAC1)
       30'h2f100010,  // PLL Ref clock divide (DAC1)
       30'h2f000080,  // PLL SDM CONFIG0 (DAC1)
       30'h2f060111,  // PLL SDM seed (DAC1)
       30'h2f070011,  // PLL SDM seed setup (DAC1)
       30'h2f0e0507,  // PLL ChargePump setup (DAC1)
       30'h2f12ffff,  // PLL ChargePump setup (DAC1)
       30'h2f137f9c,  // PLL loop filter setup (DAC1)
       30'h2f140006,  // PLL loop filter setup (DAC1)
       30'h2f155800,  // PLL VCO setup (DAC1)
       30'h2f160008,  // PLL VCO setup (DAC1)
       30'h2f0a7a3e,  // PLL Coarse Frequency setup (DAC1)
       30'h2f0b7008,  // PLL Coarse Frequency setup (DAC1)
       30'h2f11003d,  // PLL Voltage Regulator setup (DAC1)
       30'h2f2c0012,  // CLK_DIV (DAC1)
       30'h2f280100,  // SYSREF Distribution (DAC1)
       30'h2f2dffc0,  // HSCOM_PWR_MASK (DAC1)
       30'h28020408,  // DAC10 Data Width
       30'h28100033,  // DAC10 Interpolation Control
       30'h28110001,  // DAC10 Interpolation Data
       30'h28220c03,  // DAC10 Mixer Mode
       30'h28270000,  // DAC10 NCO Frequency Word 0
       30'h28260000,  // DAC10 NCO Frequency Word 1
       30'h282561a8,  // DAC10 NCO Frequency Word 2
       30'h28290000,  // DAC10 NCO Phase Offest Word 0
       30'h28280000,  // DAC10 NCO Phase Offest Word 1
       30'h28300001,  // DAC10 Inv Sinc Filter
       30'h28310040,  // DAC10 Multiband Config
       30'h28600001,  // DAC10 Decoder Control
       30'h28610001,  // DAC10 Decoder Clock Enable
       30'h28710000,  // DAC10 MC_CONFIG0
       30'h2873a0d8,  // DAC10 MC_CONFIG2
       30'h2874ffc0,  // DAC10 MC_CONFIG3
       30'h28070004,  // DAC10 FABRIC_DEBUG
       30'h29020408,  // DAC11 Data Width
       30'h29100033,  // DAC11 Interpolation Control
       30'h29110001,  // DAC11 Interpolation Data
       30'h29220c03,  // DAC11 Mixer Mode
       30'h29270000,  // DAC11 NCO Frequency Word 0
       30'h29260000,  // DAC11 NCO Frequency Word 1
       30'h292561a8,  // DAC11 NCO Frequency Word 2
       30'h29290000,  // DAC11 NCO Phase Offest Word 0
       30'h29280000,  // DAC11 NCO Phase Offest Word 1
       30'h29300001,  // DAC11 Inv Sinc Filter
       30'h29310040,  // DAC11 Multiband Config
       30'h29600001,  // DAC11 Decoder Control
       30'h29610001,  // DAC11 Decoder Clock Enable
       30'h29710000,  // DAC11 MC_CONFIG0
       30'h2973a0d8,  // DAC11 MC_CONFIG2
       30'h2974ffc0,  // DAC11 MC_CONFIG3
       30'h29070004,  // DAC11 FABRIC_DEBUG
       30'h2a020408,  // DAC12 Data Width
       30'h2a100033,  // DAC12 Interpolation Control
       30'h2a110001,  // DAC12 Interpolation Data
       30'h2a220c03,  // DAC12 Mixer Mode
       30'h2a270000,  // DAC12 NCO Frequency Word 0
       30'h2a260000,  // DAC12 NCO Frequency Word 1
       30'h2a2561a8,  // DAC12 NCO Frequency Word 2
       30'h2a290000,  // DAC12 NCO Phase Offest Word 0
       30'h2a280000,  // DAC12 NCO Phase Offest Word 1
       30'h2a300001,  // DAC12 Inv Sinc Filter
       30'h2a310040,  // DAC12 Multiband Config
       30'h2a600001,  // DAC12 Decoder Control
       30'h2a610001,  // DAC12 Decoder Clock Enable
       30'h2a710000,  // DAC12 MC_CONFIG0
       30'h2a73a0d8,  // DAC12 MC_CONFIG2
       30'h2a74ffc0,  // DAC12 MC_CONFIG3
       30'h2a070004,  // DAC12 FABRIC_DEBUG
       30'h2b020408,  // DAC13 Data Width
       30'h2b100033,  // DAC13 Interpolation Control
       30'h2b110001,  // DAC13 Interpolation Data
       30'h2b220c03,  // DAC13 Mixer Mode
       30'h2b270000,  // DAC13 NCO Frequency Word 0
       30'h2b260000,  // DAC13 NCO Frequency Word 1
       30'h2b2561a8,  // DAC13 NCO Frequency Word 2
       30'h2b290000,  // DAC13 NCO Phase Offest Word 0
       30'h2b280000,  // DAC13 NCO Phase Offest Word 1
       30'h2b300001,  // DAC13 Inv Sinc Filter
       30'h2b310040,  // DAC13 Multiband Config
       30'h2b600001,  // DAC13 Decoder Control
       30'h2b610001,  // DAC13 Decoder Clock Enable
       30'h2b710000,  // DAC13 MC_CONFIG0
       30'h2b73a0d8,  // DAC13 MC_CONFIG2
       30'h2b74ffc0,  // DAC13 MC_CONFIG3
       30'h2b070004,  // DAC13 FABRIC_DEBUG
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
