////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Design_timesim.v
// /___/   /\     Timestamp: Thu Apr 28 12:55:57 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf Design.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Design.ncd Design_timesim.v 
// Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: Design.ncd
// Output file	: D:\Github\4.SemesterProject\Code\FPGA\Solution\netgen\par\Design_timesim.v
// # of Modules	: 1
// Design Name	: Design
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Design (
  SPI_MISO, clk, SPI_SS, SPI_MOSI, SPI_Clk, led, sw
);
  output SPI_MISO;
  input clk;
  input SPI_SS;
  input SPI_MOSI;
  input SPI_Clk;
  output [7 : 0] led;
  input [7 : 0] sw;
  wire SPI_MOSI_IBUF_613;
  wire clk_BUFGP;
  wire \XLXI_21/InBuf[11] ;
  wire \XLXI_21/InBuf[12] ;
  wire \XLXI_21/InBuf[13] ;
  wire \XLXI_21/InBuf[14] ;
  wire \XLXI_21/InBuf[15] ;
  wire \XLXI_21/State_FSM_FFd4-In_0 ;
  wire \XLXI_21/N111_0 ;
  wire \XLXI_21/State_cmp_eq0004 ;
  wire \XLXI_21/N10_0 ;
  wire \XLXI_27/DataOut_cmp_eq0000 ;
  wire \XLXI_21/State_FSM_FFd6_639 ;
  wire \XLXI_21/UdBuf[7] ;
  wire \XLXI_21/N01 ;
  wire \XLXI_21/State_FSM_FFd2_642 ;
  wire \XLXI_21/State_FSM_FFd3_643 ;
  wire \XLXI_21/State_FSM_FFd4_644 ;
  wire N11_0;
  wire \XLXI_21/InBuf[10] ;
  wire \XLXI_21/State_FSM_FFd1_650 ;
  wire \XLXI_21/State_FSM_FFd5_652 ;
  wire \XLXI_21/State_FSM_FFd7_653 ;
  wire \XLXI_21/State_FSM_FFd8_654 ;
  wire \XLXI_21/InBuf[8] ;
  wire \XLXI_21/InBuf[9] ;
  wire \XLXI_21/N8_0 ;
  wire \XLXI_21/WE_net_661 ;
  wire \XLXI_21/SClk_Count_and0000_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>17_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<1>_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<2>_0 ;
  wire N27_0;
  wire N28_0;
  wire N30_0;
  wire N31_0;
  wire \XLXI_21/Mmux__varindex0000_7_f5 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6 ;
  wire N33_0;
  wire N34_0;
  wire N36_0;
  wire N37_0;
  wire \XLXI_21/MISO_691 ;
  wire \XLXI_21/UdBuf[6] ;
  wire \XLXI_21/UdBuf[4] ;
  wire \XLXI_21/UdBuf[5] ;
  wire N39;
  wire N40;
  wire \XLXI_21/State_FSM_FFd9_708 ;
  wire \XLXI_21/State_FSM_FFd8-In_SW1/O ;
  wire \XLXI_21/State_cmp_eq0001 ;
  wire \XLXI_21/UdBuf[0] ;
  wire \XLXI_21/Mmux__varindex0000_9_f5/O ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>120_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>132/O ;
  wire \XLXI_21/UdBuf[15] ;
  wire N3;
  wire \XLXI_21/UdBuf[10] ;
  wire \XLXI_21/UdBuf[8] ;
  wire \XLXI_21/UdBuf[12] ;
  wire \XLXI_21/UdBuf[11] ;
  wire \XLXI_21/UdBuf[14] ;
  wire \XLXI_21/UdBuf[13] ;
  wire \XLXI_21/InBuf[0] ;
  wire \XLXI_21/InBuf[1] ;
  wire \XLXI_21/InBuf[2] ;
  wire \XLXI_21/InBuf[3] ;
  wire \XLXI_21/State_cmp_eq0003 ;
  wire \XLXI_21/State_FSM_FFd7-In_0 ;
  wire \XLXI_27/Led_not0001_0 ;
  wire \XLXI_21/UdBuf[9] ;
  wire \XLXI_21/State_FSM_FFd8/DXMUX_1380 ;
  wire \XLXI_21/State_FSM_FFd8-In_1377 ;
  wire \XLXI_21/State_FSM_FFd8-In_SW1/O_pack_2 ;
  wire \XLXI_21/State_FSM_FFd8/CLKINVNOT ;
  wire \sw<4>/INBUF ;
  wire \SPI_MOSI/INBUF ;
  wire \sw<5>/INBUF ;
  wire \sw<6>/INBUF ;
  wire \N40/F5MUX_1352 ;
  wire N47;
  wire \N40/BXINV_1344 ;
  wire N46;
  wire \SPI_Clk/INBUF ;
  wire \sw<7>/INBUF ;
  wire \SPI_SS/INBUF ;
  wire \N39/F5MUX_1327 ;
  wire N45;
  wire \N39/BXINV_1319 ;
  wire N44;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \XLXI_21/InBuf_0_and0000 ;
  wire \XLXI_21/InBuf_3_and0000 ;
  wire \XLXI_21/DataOut<1>/DXMUX_824 ;
  wire \XLXI_21/DataOut<1>/DYMUX_818 ;
  wire \XLXI_21/DataOut<1>/CLKINVNOT ;
  wire \XLXI_21/DataOut<1>/CEINV_815 ;
  wire \XLXI_21/InBuf<15>/DYMUX_804 ;
  wire \XLXI_21/InBuf<15>/CLKINVNOT ;
  wire \XLXI_21/InBuf<15>/CEINV_801 ;
  wire \XLXI_21/InBuf_10_and0000 ;
  wire \XLXI_21/InBuf_11_and0000 ;
  wire \XLXI_21/DataOut<5>/DXMUX_942 ;
  wire \XLXI_21/DataOut<5>/DYMUX_936 ;
  wire \XLXI_21/DataOut<5>/CLKINVNOT ;
  wire \XLXI_21/DataOut<5>/CEINV_933 ;
  wire \XLXI_21/DataOut<3>/DXMUX_868 ;
  wire \XLXI_21/DataOut<3>/DYMUX_862 ;
  wire \XLXI_21/DataOut<3>/CLKINVNOT ;
  wire \XLXI_21/DataOut<3>/CEINV_859 ;
  wire \XLXI_21/InBuf<13>/DYMUX_780 ;
  wire \XLXI_21/InBuf<13>/CLKINVNOT ;
  wire \XLXI_21/InBuf<13>/CEINV_777 ;
  wire \XLXI_21/InBuf<11>/DYMUX_756 ;
  wire \XLXI_21/InBuf<11>/CLKINVNOT ;
  wire \XLXI_21/InBuf<11>/CEINV_753 ;
  wire \XLXI_21/InBuf<12>/DYMUX_768 ;
  wire \XLXI_21/InBuf<12>/CLKINVNOT ;
  wire \XLXI_21/InBuf<12>/CEINV_765 ;
  wire \XLXI_21/UdBuf<7>/DXMUX_923 ;
  wire \XLXI_21/UdBuf_7_mux0000 ;
  wire \XLXI_21/N01_pack_2 ;
  wire \XLXI_21/UdBuf<7>/CLKINVNOT ;
  wire \XLXI_21/State_FSM_FFd1/DXMUX_975 ;
  wire \XLXI_21/State_FSM_FFd1-In1 ;
  wire N11;
  wire \XLXI_21/State_FSM_FFd1/SRINV_959 ;
  wire \XLXI_21/State_FSM_FFd1/CLKINVNOT ;
  wire \XLXI_21/InBuf<14>/DYMUX_792 ;
  wire \XLXI_21/InBuf<14>/CLKINVNOT ;
  wire \XLXI_21/InBuf<14>/CEINV_789 ;
  wire \XLXI_21/InBuf_13_and0000 ;
  wire \XLXI_21/InBuf_12_and0000 ;
  wire \XLXI_21/WE_net/DYMUX_1031 ;
  wire \XLXI_21/WE_net/BYINV_1030 ;
  wire \XLXI_21/WE_net/SRINV_1029 ;
  wire \XLXI_21/WE_net/CLKINVNOT ;
  wire \XLXI_21/xSClk<1>/DXMUX_1048 ;
  wire \XLXI_21/xSClk<1>/DYMUX_1043 ;
  wire \XLXI_21/xSClk<1>/CLKINV_1041 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/F5MUX_1130 ;
  wire \XLXI_21/Mmux__varindex0000_8_1128 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/BXINV_1123 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/F6MUX_1121 ;
  wire \XLXI_21/Mmux__varindex0000_9_1119 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/BYINV_1114 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5/F5MUX_1154 ;
  wire \XLXI_21/Mmux__varindex0000_91_1152 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5/BXINV_1147 ;
  wire \XLXI_21/Mmux__varindex0000_101_1145 ;
  wire \led<0>/O ;
  wire \led<2>/O ;
  wire \XLXI_21/SClk_Count_and0000 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>17_1066 ;
  wire \XLXI_21/InBuf_15_and0000 ;
  wire \XLXI_21/InBuf_14_and0000 ;
  wire \led<1>/O ;
  wire \XLXI_21/DataOut<7>/DXMUX_995 ;
  wire \XLXI_21/DataOut<7>/DYMUX_989 ;
  wire \XLXI_21/DataOut<7>/CLKINVNOT ;
  wire \XLXI_21/DataOut<7>/CEINV_986 ;
  wire \led<3>/O ;
  wire \led<6>/O ;
  wire \led<4>/O ;
  wire \led<7>/O ;
  wire \sw<2>/INBUF ;
  wire \sw<0>/INBUF ;
  wire \SPI_MISO/O ;
  wire \sw<1>/INBUF ;
  wire \led<5>/O ;
  wire \sw<3>/INBUF ;
  wire \clk/INBUF ;
  wire \XLXI_21/UdBuf<6>/DXMUX_1651 ;
  wire \XLXI_21/UdBuf_6_mux0000 ;
  wire \XLXI_21/UdBuf<6>/DYMUX_1640 ;
  wire \XLXI_21/UdBuf_5_mux0000 ;
  wire \XLXI_21/UdBuf<6>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<0>/DXMUX_1728 ;
  wire \XLXI_21/InBuf_1_and0000 ;
  wire \XLXI_21/SClk_Count<0>/DYMUX_1714 ;
  wire \XLXI_21/SClk_Count<0>/SRINV_1704 ;
  wire \XLXI_21/SClk_Count<0>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<0>/CEINV_1702 ;
  wire \XLXI_21/UdBuf<15>/DXMUX_1549 ;
  wire \XLXI_21/UdBuf_15_mux0000_1546 ;
  wire \XLXI_21/UdBuf<15>/DYMUX_1538 ;
  wire \XLXI_21/UdBuf_10_mux0000_1535 ;
  wire \XLXI_21/UdBuf<15>/CLKINVNOT ;
  wire \XLXI_21/MISO/DXMUX_1434 ;
  wire \XLXI_21/_varindex0000 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 ;
  wire \XLXI_21/MISO/CLKINVNOT ;
  wire \XLXI_21/State_FSM_FFd9/DYMUX_1494 ;
  wire \XLXI_21/State_FSM_FFd9-In ;
  wire \XLXI_21/State_FSM_FFd9/CLKINVNOT ;
  wire \XLXI_21/InBuf_2_and0000 ;
  wire \XLXI_21/InBuf_8_and0000 ;
  wire \XLXI_21/InBuf<0>/DYMUX_1765 ;
  wire \XLXI_21/InBuf<0>/CLKINVNOT ;
  wire \XLXI_21/InBuf<0>/CEINV_1762 ;
  wire \XLXI_21/UdBuf<8>/DXMUX_1583 ;
  wire \XLXI_21/UdBuf_8_mux0000_1580 ;
  wire \XLXI_21/UdBuf<8>/DYMUX_1572 ;
  wire \XLXI_21/UdBuf_4_mux0000 ;
  wire \XLXI_21/UdBuf<8>/CLKINVNOT ;
  wire \XLXI_21/InBuf<1>/DYMUX_1777 ;
  wire \XLXI_21/InBuf<1>/CLKINVNOT ;
  wire \XLXI_21/InBuf<1>/CEINV_1774 ;
  wire \XLXI_21/SClk_Count<3>/DXMUX_1474 ;
  wire \XLXI_21/SClk_Count<3>/DYMUX_1461 ;
  wire \XLXI_21/SClk_Count<3>/SRINV_1452 ;
  wire \XLXI_21/SClk_Count<3>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<3>/CEINV_1450 ;
  wire \XLXI_21/UdBuf<12>/DXMUX_1617 ;
  wire \XLXI_21/UdBuf_12_mux0000_1614 ;
  wire \XLXI_21/UdBuf<12>/DYMUX_1606 ;
  wire \XLXI_21/UdBuf_11_mux0000_1603 ;
  wire \XLXI_21/UdBuf<12>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<14>/DXMUX_1685 ;
  wire \XLXI_21/UdBuf_14_mux0000_1682 ;
  wire \XLXI_21/UdBuf<14>/DYMUX_1674 ;
  wire \XLXI_21/UdBuf_13_mux0000_1671 ;
  wire \XLXI_21/UdBuf<14>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<0>/DYMUX_1514 ;
  wire \XLXI_21/State_cmp_eq0000 ;
  wire \XLXI_21/UdBuf<0>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<0>/CEINV_1503 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>120_1405 ;
  wire \XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 ;
  wire \XLXI_21/InBuf<2>/DYMUX_1789 ;
  wire \XLXI_21/InBuf<2>/CLKINVNOT ;
  wire \XLXI_21/InBuf<2>/CEINV_1786 ;
  wire \XLXI_21/InBuf<3>/DYMUX_1801 ;
  wire \XLXI_21/InBuf<3>/CLKINVNOT ;
  wire \XLXI_21/InBuf<3>/CEINV_1798 ;
  wire \XLXI_27/Led<5>/DXMUX_2159 ;
  wire \XLXI_27/Led<5>/DYMUX_2153 ;
  wire \XLXI_27/Led<5>/CLKINV_2151 ;
  wire \XLXI_27/Led<5>/CEINV_2150 ;
  wire \XLXI_27/Led<7>/DXMUX_2179 ;
  wire \XLXI_27/Led<7>/DYMUX_2173 ;
  wire \XLXI_27/Led<7>/CLKINV_2171 ;
  wire \XLXI_27/Led<7>/CEINV_2170 ;
  wire \XLXI_27/Led_not0001 ;
  wire \XLXI_27/DataOut_cmp_eq0000_pack_1 ;
  wire \XLXI_27/Led<1>/DXMUX_2119 ;
  wire \XLXI_27/Led<1>/DYMUX_2113 ;
  wire \XLXI_27/Led<1>/CLKINV_2111 ;
  wire \XLXI_27/Led<1>/CEINV_2110 ;
  wire \XLXI_21/State_FSM_FFd6/DYMUX_1894 ;
  wire \XLXI_21/State_FSM_FFd6/CLKINVNOT ;
  wire \XLXI_21/State_FSM_FFd2/DYMUX_1859 ;
  wire \XLXI_21/State_FSM_FFd2/CLKINVNOT ;
  wire \XLXI_21/xSS<1>/DXMUX_2196 ;
  wire \XLXI_21/xSS<1>/DYMUX_2191 ;
  wire \XLXI_21/xSS<1>/CLKINV_2189 ;
  wire \XLXI_21/N111 ;
  wire \XLXI_21/N10 ;
  wire \XLXI_21/N8 ;
  wire \XLXI_27/DataOut<1>/DXMUX_2227 ;
  wire \XLXI_27/DataOut<1>/DYMUX_2221 ;
  wire \XLXI_27/DataOut<1>/CLKINV_2219 ;
  wire \XLXI_27/DataOut<1>/CEINV_2218 ;
  wire \XLXI_21/InBuf_9_and0000 ;
  wire \XLXI_21/State_cmp_eq0004_pack_1 ;
  wire \XLXI_27/DataOut<3>/DXMUX_2247 ;
  wire \XLXI_27/DataOut<3>/DYMUX_2241 ;
  wire \XLXI_27/DataOut<3>/CLKINV_2239 ;
  wire \XLXI_27/DataOut<3>/CEINV_2238 ;
  wire \XLXI_21/InBuf<8>/DYMUX_1837 ;
  wire \XLXI_21/InBuf<8>/CLKINVNOT ;
  wire \XLXI_21/InBuf<8>/CEINV_1834 ;
  wire \XLXI_21/State_FSM_FFd7/DXMUX_1989 ;
  wire \XLXI_21/State_FSM_FFd7/FXMUX_1988 ;
  wire \XLXI_21/State_FSM_FFd7-In ;
  wire \XLXI_21/State_cmp_eq0001_pack_1 ;
  wire \XLXI_21/State_FSM_FFd7/CLKINVNOT ;
  wire \XLXI_21/InBuf<9>/DYMUX_1849 ;
  wire \XLXI_21/InBuf<9>/CLKINVNOT ;
  wire \XLXI_21/InBuf<9>/CEINV_1846 ;
  wire \XLXI_21/AdrBus<1>/DXMUX_1937 ;
  wire \XLXI_21/AdrBus<1>/DYMUX_1931 ;
  wire \XLXI_21/AdrBus<1>/CLKINVNOT ;
  wire \XLXI_21/AdrBus<1>/CEINV_1928 ;
  wire \XLXI_21/UdBuf<9>/DXMUX_2100 ;
  wire \XLXI_21/UdBuf_9_mux0000_2097 ;
  wire N3_pack_2;
  wire \XLXI_21/UdBuf<9>/CLKINVNOT ;
  wire \XLXI_21/State_FSM_FFd5/DXMUX_2021 ;
  wire \XLXI_21/State_FSM_FFd5-In1 ;
  wire \XLXI_21/State_cmp_eq0003_pack_2 ;
  wire \XLXI_21/State_FSM_FFd5/SRINV_2006 ;
  wire \XLXI_21/State_FSM_FFd5/CLKINVNOT ;
  wire \XLXI_21/State_FSM_FFd3/DXMUX_1885 ;
  wire \XLXI_21/State_FSM_FFd3/DYMUX_1880 ;
  wire \XLXI_21/State_FSM_FFd3/GYMUX_1879 ;
  wire \XLXI_21/State_FSM_FFd4-In ;
  wire \XLXI_21/State_FSM_FFd3/CLKINVNOT ;
  wire \XLXI_27/Led<3>/DXMUX_2139 ;
  wire \XLXI_27/Led<3>/DYMUX_2133 ;
  wire \XLXI_27/Led<3>/CLKINV_2131 ;
  wire \XLXI_27/Led<3>/CEINV_2130 ;
  wire \XLXI_21/AdrBus<3>/DXMUX_1957 ;
  wire \XLXI_21/AdrBus<3>/DYMUX_1951 ;
  wire \XLXI_21/AdrBus<3>/CLKINVNOT ;
  wire \XLXI_21/AdrBus<3>/CEINV_1948 ;
  wire N28;
  wire N27;
  wire \XLXI_21/SClk_Cnt<1>/DXMUX_2267 ;
  wire \XLXI_21/SClk_Cnt<1>/DYMUX_2261 ;
  wire \XLXI_21/SClk_Cnt<1>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt<1>/CEINV_2258 ;
  wire \XLXI_21/SClk_Cnt<3>/DXMUX_2331 ;
  wire \XLXI_21/SClk_Cnt<3>/DYMUX_2325 ;
  wire \XLXI_21/SClk_Cnt<3>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt<3>/CEINV_2322 ;
  wire \XLXI_21/InBuf<10>/DYMUX_2435 ;
  wire \XLXI_21/InBuf<10>/CLKINVNOT ;
  wire \XLXI_21/InBuf<10>/CEINV_2432 ;
  wire N37;
  wire N36;
  wire \XLXI_27/DataOut<7>/DXMUX_2375 ;
  wire \XLXI_27/DataOut<7>/DYMUX_2369 ;
  wire \XLXI_27/DataOut<7>/CLKINV_2367 ;
  wire \XLXI_27/DataOut<7>/CEINV_2366 ;
  wire \XLXI_27/DataOut<5>/DXMUX_2311 ;
  wire \XLXI_27/DataOut<5>/DYMUX_2305 ;
  wire \XLXI_27/DataOut<5>/CLKINV_2303 ;
  wire \XLXI_27/DataOut<5>/CEINV_2302 ;
  wire N34;
  wire N33;
  wire N31;
  wire N30;
  wire GND;
  wire VCC;
  wire [7 : 0] \XLXI_21/DataOut ;
  wire [3 : 0] \XLXI_21/SClk_Count ;
  wire [1 : 0] \XLXI_21/xSS ;
  wire [1 : 0] \XLXI_21/xSClk ;
  wire [3 : 0] \XLXI_21/SClk_Cnt ;
  wire [7 : 0] \XLXI_27/Led ;
  wire [7 : 0] \XLXI_27/DataOut ;
  wire [3 : 0] \XLXI_21/AdrBus ;
  wire [3 : 1] \XLXI_21/Result ;
  wire [2 : 1] \XLXI_21/SClk_Cnt_mux0000 ;
  initial $sdf_annotate("netgen/par/design_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/State_FSM_FFd8/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd8-In_1377 ),
    .O(\XLXI_21/State_FSM_FFd8/DXMUX_1380 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/State_FSM_FFd8/YUSED  (
    .I(\XLXI_21/State_FSM_FFd8-In_SW1/O_pack_2 ),
    .O(\XLXI_21/State_FSM_FFd8-In_SW1/O )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/State_FSM_FFd8/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd8/CLKINVNOT )
  );
  X_IPAD #(
    .LOC ( "IPAD103" ))
  \sw<4>/PAD  (
    .PAD(sw[4])
  );
  X_BUF #(
    .LOC ( "IPAD103" ))
  sw_4_IBUF (
    .I(sw[4]),
    .O(\sw<4>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD91" ))
  \SPI_MOSI/PAD  (
    .PAD(SPI_MOSI)
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  SPI_MOSI_IBUF (
    .I(SPI_MOSI),
    .O(\SPI_MOSI/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD98" ))
  \sw<5>/PAD  (
    .PAD(sw[5])
  );
  X_BUF #(
    .LOC ( "IPAD98" ))
  sw_5_IBUF (
    .I(sw[5]),
    .O(\sw<5>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD108" ))
  \sw<6>/PAD  (
    .PAD(sw[6])
  );
  X_BUF #(
    .LOC ( "IPAD108" ))
  sw_6_IBUF (
    .I(sw[6]),
    .O(\sw<6>/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y44" ))
  \N40/XUSED  (
    .I(\N40/F5MUX_1352 ),
    .O(N40)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y44" ))
  \N40/F5MUX  (
    .IA(N46),
    .IB(N47),
    .SEL(\N40/BXINV_1344 ),
    .O(\N40/F5MUX_1352 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y44" ))
  \N40/BXINV  (
    .I(\XLXI_21/SClk_Count [1]),
    .O(\N40/BXINV_1344 )
  );
  X_IPAD #(
    .LOC ( "PAD102" ))
  \SPI_Clk/PAD  (
    .PAD(SPI_Clk)
  );
  X_BUF #(
    .LOC ( "PAD102" ))
  SPI_Clk_IBUF (
    .I(SPI_Clk),
    .O(\SPI_Clk/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD112" ))
  \sw<7>/PAD  (
    .PAD(sw[7])
  );
  X_BUF #(
    .LOC ( "IPAD112" ))
  sw_7_IBUF (
    .I(sw[7]),
    .O(\sw<7>/INBUF )
  );
  X_IPAD #(
    .LOC ( "PAD96" ))
  \SPI_SS/PAD  (
    .PAD(SPI_SS)
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  SPI_SS_IBUF (
    .I(SPI_SS),
    .O(\SPI_SS/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y45" ))
  \N39/XUSED  (
    .I(\N39/F5MUX_1327 ),
    .O(N39)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X51Y45" ))
  \N39/F5MUX  (
    .IA(N44),
    .IB(N45),
    .SEL(\N39/BXINV_1319 ),
    .O(\N39/F5MUX_1327 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y45" ))
  \N39/BXINV  (
    .I(\XLXI_21/SClk_Cnt [1]),
    .O(\N39/BXINV_1319 )
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG  (
    .I0(\clk_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clk_BUFGP/BUFG/S_INVNOT ),
    .O(clk_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clk_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y11" ))
  \clk_BUFGP/BUFG/I0_USED  (
    .I(\clk/INBUF ),
    .O(\clk_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/DataOut<1>/DXMUX  (
    .I(\XLXI_21/InBuf[14] ),
    .O(\XLXI_21/DataOut<1>/DXMUX_824 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/DataOut<1>/DYMUX  (
    .I(\XLXI_21/InBuf[15] ),
    .O(\XLXI_21/DataOut<1>/DYMUX_818 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/DataOut<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/DataOut<1>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<1>/CEINV_815 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/InBuf<15>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<15>/DYMUX_804 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/InBuf<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<15>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/InBuf<15>/CEINV  (
    .I(\XLXI_21/InBuf_15_and0000 ),
    .O(\XLXI_21/InBuf<15>/CEINV_801 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y53" ))
  \XLXI_21/DataOut<5>/DXMUX  (
    .I(\XLXI_21/InBuf[10] ),
    .O(\XLXI_21/DataOut<5>/DXMUX_942 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y53" ))
  \XLXI_21/DataOut<5>/DYMUX  (
    .I(\XLXI_21/InBuf[11] ),
    .O(\XLXI_21/DataOut<5>/DYMUX_936 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y53" ))
  \XLXI_21/DataOut<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<5>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y53" ))
  \XLXI_21/DataOut<5>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<5>/CEINV_933 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/DataOut<3>/DXMUX  (
    .I(\XLXI_21/InBuf[12] ),
    .O(\XLXI_21/DataOut<3>/DXMUX_868 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/DataOut<3>/DYMUX  (
    .I(\XLXI_21/InBuf[13] ),
    .O(\XLXI_21/DataOut<3>/DYMUX_862 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/DataOut<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/DataOut<3>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<3>/CEINV_859 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y47" ))
  \XLXI_21/InBuf<13>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<13>/DYMUX_780 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y47" ))
  \XLXI_21/InBuf<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<13>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y47" ))
  \XLXI_21/InBuf<13>/CEINV  (
    .I(\XLXI_21/InBuf_13_and0000 ),
    .O(\XLXI_21/InBuf<13>/CEINV_777 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y53" ))
  \XLXI_21/InBuf<11>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<11>/DYMUX_756 )
  );
  X_INV #(
    .LOC ( "SLICE_X50Y53" ))
  \XLXI_21/InBuf<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<11>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y53" ))
  \XLXI_21/InBuf<11>/CEINV  (
    .I(\XLXI_21/InBuf_11_and0000 ),
    .O(\XLXI_21/InBuf<11>/CEINV_753 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/InBuf<12>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<12>/DYMUX_768 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/InBuf<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<12>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/InBuf<12>/CEINV  (
    .I(\XLXI_21/InBuf_12_and0000 ),
    .O(\XLXI_21/InBuf<12>/CEINV_765 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/UdBuf<7>/DXMUX  (
    .I(\XLXI_21/UdBuf_7_mux0000 ),
    .O(\XLXI_21/UdBuf<7>/DXMUX_923 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/UdBuf<7>/YUSED  (
    .I(\XLXI_21/N01_pack_2 ),
    .O(\XLXI_21/N01 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/UdBuf<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_21/State_FSM_FFd1/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd1-In1 ),
    .O(\XLXI_21/State_FSM_FFd1/DXMUX_975 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_21/State_FSM_FFd1/YUSED  (
    .I(N11),
    .O(N11_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_21/State_FSM_FFd1/SRINV  (
    .I(\XLXI_21/State_FSM_FFd2_642 ),
    .O(\XLXI_21/State_FSM_FFd1/SRINV_959 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_21/State_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd1/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y40" ))
  \XLXI_21/InBuf<14>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<14>/DYMUX_792 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y40" ))
  \XLXI_21/InBuf<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<14>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y40" ))
  \XLXI_21/InBuf<14>/CEINV  (
    .I(\XLXI_21/InBuf_14_and0000 ),
    .O(\XLXI_21/InBuf<14>/CEINV_789 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/WE_net/DYMUX  (
    .I(\XLXI_21/WE_net/BYINV_1030 ),
    .O(\XLXI_21/WE_net/DYMUX_1031 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/WE_net/BYINV  (
    .I(1'b1),
    .O(\XLXI_21/WE_net/BYINV_1030 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/WE_net/SRINV  (
    .I(\XLXI_21/State_FSM_FFd4_644 ),
    .O(\XLXI_21/WE_net/SRINV_1029 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/WE_net/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/WE_net/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/xSClk<1>/DXMUX  (
    .I(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/xSClk<1>/DXMUX_1048 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/xSClk<1>/DYMUX  (
    .I(\SPI_Clk/INBUF ),
    .O(\XLXI_21/xSClk<1>/DYMUX_1043 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/xSClk<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/xSClk<1>/CLKINV_1041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F5USED  (
    .I(\XLXI_21/Mmux__varindex0000_6_f6/F5MUX_1130 ),
    .O(\XLXI_21/Mmux__varindex0000_7_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F5MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_9_1119 ),
    .IB(\XLXI_21/Mmux__varindex0000_8_1128 ),
    .SEL(\XLXI_21/Mmux__varindex0000_6_f6/BXINV_1123 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/F5MUX_1130 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_6_f6/BXINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<1>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/BXINV_1123 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_6_f6/YUSED  (
    .I(\XLXI_21/Mmux__varindex0000_6_f6/F6MUX_1121 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F6MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_8_f5 ),
    .IB(\XLXI_21/Mmux__varindex0000_7_f5 ),
    .SEL(\XLXI_21/Mmux__varindex0000_6_f6/BYINV_1114 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/F6MUX_1121 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_6_f6/BYINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<2>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/BYINV_1114 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/Mmux__varindex0000_8_f5/F5USED  (
    .I(\XLXI_21/Mmux__varindex0000_8_f5/F5MUX_1154 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/Mmux__varindex0000_8_f5/F5MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_101_1145 ),
    .IB(\XLXI_21/Mmux__varindex0000_91_1152 ),
    .SEL(\XLXI_21/Mmux__varindex0000_8_f5/BXINV_1147 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5/F5MUX_1154 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/Mmux__varindex0000_8_f5/BXINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<1>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5/BXINV_1147 )
  );
  X_OPAD #(
    .LOC ( "PAD84" ))
  \led<0>/PAD  (
    .PAD(led[0])
  );
  X_OBUF #(
    .LOC ( "PAD84" ))
  led_0_OBUF (
    .I(\led<0>/O ),
    .O(led[0])
  );
  X_OPAD #(
    .LOC ( "PAD90" ))
  \led<2>/PAD  (
    .PAD(led[2])
  );
  X_OBUF #(
    .LOC ( "PAD90" ))
  led_2_OBUF (
    .I(\led<2>/O ),
    .O(led[2])
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/SClk_Count_and0000/XUSED  (
    .I(\XLXI_21/SClk_Count_and0000 ),
    .O(\XLXI_21/SClk_Count_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/SClk_Count_and0000/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>17_1066 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>17_0 )
  );
  X_OPAD #(
    .LOC ( "PAD85" ))
  \led<1>/PAD  (
    .PAD(led[1])
  );
  X_OBUF #(
    .LOC ( "PAD85" ))
  led_1_OBUF (
    .I(\led<1>/O ),
    .O(led[1])
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y47" ))
  \XLXI_21/DataOut<7>/DXMUX  (
    .I(\XLXI_21/InBuf[8] ),
    .O(\XLXI_21/DataOut<7>/DXMUX_995 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y47" ))
  \XLXI_21/DataOut<7>/DYMUX  (
    .I(\XLXI_21/InBuf[9] ),
    .O(\XLXI_21/DataOut<7>/DYMUX_989 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y47" ))
  \XLXI_21/DataOut<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y47" ))
  \XLXI_21/DataOut<7>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<7>/CEINV_986 )
  );
  X_OPAD #(
    .LOC ( "PAD89" ))
  \led<3>/PAD  (
    .PAD(led[3])
  );
  X_OBUF #(
    .LOC ( "PAD89" ))
  led_3_OBUF (
    .I(\led<3>/O ),
    .O(led[3])
  );
  X_OPAD #(
    .LOC ( "PAD225" ))
  \led<6>/PAD  (
    .PAD(led[6])
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  led_6_OBUF (
    .I(\led<6>/O ),
    .O(led[6])
  );
  X_OPAD #(
    .LOC ( "PAD65" ))
  \led<4>/PAD  (
    .PAD(led[4])
  );
  X_OBUF #(
    .LOC ( "PAD65" ))
  led_4_OBUF (
    .I(\led<4>/O ),
    .O(led[4])
  );
  X_OPAD #(
    .LOC ( "PAD181" ))
  \led<7>/PAD  (
    .PAD(led[7])
  );
  X_OBUF #(
    .LOC ( "PAD181" ))
  led_7_OBUF (
    .I(\led<7>/O ),
    .O(led[7])
  );
  X_IPAD #(
    .LOC ( "IPAD88" ))
  \sw<2>/PAD  (
    .PAD(sw[2])
  );
  X_BUF #(
    .LOC ( "IPAD88" ))
  sw_2_IBUF (
    .I(sw[2]),
    .O(\sw<2>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD78" ))
  \sw<0>/PAD  (
    .PAD(sw[0])
  );
  X_BUF #(
    .LOC ( "IPAD78" ))
  sw_0_IBUF (
    .I(sw[0]),
    .O(\sw<0>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD94" ))
  \SPI_MISO/PAD  (
    .PAD(SPI_MISO)
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  SPI_MISO_OBUF (
    .I(\SPI_MISO/O ),
    .O(SPI_MISO)
  );
  X_IPAD #(
    .LOC ( "IPAD83" ))
  \sw<1>/PAD  (
    .PAD(sw[1])
  );
  X_BUF #(
    .LOC ( "IPAD83" ))
  sw_1_IBUF (
    .I(sw[1]),
    .O(\sw<1>/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD109" ))
  \led<5>/PAD  (
    .PAD(led[5])
  );
  X_OBUF #(
    .LOC ( "PAD109" ))
  led_5_OBUF (
    .I(\led<5>/O ),
    .O(led[5])
  );
  X_IPAD #(
    .LOC ( "IPAD93" ))
  \sw<3>/PAD  (
    .PAD(sw[3])
  );
  X_BUF #(
    .LOC ( "IPAD93" ))
  sw_3_IBUF (
    .I(sw[3]),
    .O(\sw<3>/INBUF )
  );
  X_IPAD #(
    .LOC ( "IPAD29" ))
  \clk/PAD  (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "IPAD29" ))
  \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk/INBUF )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y44" ))
  \XLXI_21/UdBuf<6>/DXMUX  (
    .I(\XLXI_21/UdBuf_6_mux0000 ),
    .O(\XLXI_21/UdBuf<6>/DXMUX_1651 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y44" ))
  \XLXI_21/UdBuf<6>/DYMUX  (
    .I(\XLXI_21/UdBuf_5_mux0000 ),
    .O(\XLXI_21/UdBuf<6>/DYMUX_1640 )
  );
  X_INV #(
    .LOC ( "SLICE_X50Y44" ))
  \XLXI_21/UdBuf<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<6>/CLKINVNOT )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/SClk_Count<0>/DXMUX  (
    .I(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/SClk_Count<0>/DXMUX_1728 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/SClk_Count<0>/DYMUX  (
    .I(\XLXI_21/Result [1]),
    .O(\XLXI_21/SClk_Count<0>/DYMUX_1714 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/SClk_Count<0>/SRINV  (
    .I(\XLXI_21/SClk_Count_and0000_0 ),
    .O(\XLXI_21/SClk_Count<0>/SRINV_1704 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/SClk_Count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Count<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/SClk_Count<0>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Count<0>/CEINV_1702 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<15>/DXMUX  (
    .I(\XLXI_21/UdBuf_15_mux0000_1546 ),
    .O(\XLXI_21/UdBuf<15>/DXMUX_1549 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<15>/DYMUX  (
    .I(\XLXI_21/UdBuf_10_mux0000_1535 ),
    .O(\XLXI_21/UdBuf<15>/DYMUX_1538 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<15>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/MISO/DXMUX  (
    .I(\XLXI_21/_varindex0000 ),
    .O(\XLXI_21/MISO/DXMUX_1434 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/MISO/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>132/O )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/MISO/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/MISO/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y45" ))
  \XLXI_21/State_FSM_FFd9/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd9-In ),
    .O(\XLXI_21/State_FSM_FFd9/DYMUX_1494 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y45" ))
  \XLXI_21/State_FSM_FFd9/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd9/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y44" ))
  \XLXI_21/InBuf<0>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<0>/DYMUX_1765 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y44" ))
  \XLXI_21/InBuf<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y44" ))
  \XLXI_21/InBuf<0>/CEINV  (
    .I(\XLXI_21/InBuf_0_and0000 ),
    .O(\XLXI_21/InBuf<0>/CEINV_1762 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/UdBuf<8>/DXMUX  (
    .I(\XLXI_21/UdBuf_8_mux0000_1580 ),
    .O(\XLXI_21/UdBuf<8>/DXMUX_1583 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/UdBuf<8>/DYMUX  (
    .I(\XLXI_21/UdBuf_4_mux0000 ),
    .O(\XLXI_21/UdBuf<8>/DYMUX_1572 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/UdBuf<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<8>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y45" ))
  \XLXI_21/InBuf<1>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<1>/DYMUX_1777 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y45" ))
  \XLXI_21/InBuf<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y45" ))
  \XLXI_21/InBuf<1>/CEINV  (
    .I(\XLXI_21/InBuf_1_and0000 ),
    .O(\XLXI_21/InBuf<1>/CEINV_1774 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Count<3>/DXMUX  (
    .I(\XLXI_21/Result [3]),
    .O(\XLXI_21/SClk_Count<3>/DXMUX_1474 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Count<3>/DYMUX  (
    .I(\XLXI_21/Result [2]),
    .O(\XLXI_21/SClk_Count<3>/DYMUX_1461 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Count<3>/SRINV  (
    .I(\XLXI_21/SClk_Count_and0000_0 ),
    .O(\XLXI_21/SClk_Count<3>/SRINV_1452 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Count<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Count<3>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Count<3>/CEINV_1450 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_21/UdBuf<12>/DXMUX  (
    .I(\XLXI_21/UdBuf_12_mux0000_1614 ),
    .O(\XLXI_21/UdBuf<12>/DXMUX_1617 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_21/UdBuf<12>/DYMUX  (
    .I(\XLXI_21/UdBuf_11_mux0000_1603 ),
    .O(\XLXI_21/UdBuf<12>/DYMUX_1606 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_21/UdBuf<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<12>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/UdBuf<14>/DXMUX  (
    .I(\XLXI_21/UdBuf_14_mux0000_1682 ),
    .O(\XLXI_21/UdBuf<14>/DXMUX_1685 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/UdBuf<14>/DYMUX  (
    .I(\XLXI_21/UdBuf_13_mux0000_1671 ),
    .O(\XLXI_21/UdBuf<14>/DYMUX_1674 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/UdBuf<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<14>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/UdBuf<0>/DYMUX  (
    .I(\XLXI_21/State_cmp_eq0000 ),
    .O(\XLXI_21/UdBuf<0>/DYMUX_1514 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/UdBuf<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/UdBuf<0>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd9_708 ),
    .O(\XLXI_21/UdBuf<0>/CEINV_1503 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y45" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>120_1405 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>120_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y45" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120/YUSED  (
    .I(\XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 ),
    .O(\XLXI_21/Mmux__varindex0000_9_f5/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y46" ))
  \XLXI_21/InBuf<2>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<2>/DYMUX_1789 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y46" ))
  \XLXI_21/InBuf<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<2>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y46" ))
  \XLXI_21/InBuf<2>/CEINV  (
    .I(\XLXI_21/InBuf_2_and0000 ),
    .O(\XLXI_21/InBuf<2>/CEINV_1786 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y45" ))
  \XLXI_21/InBuf<3>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<3>/DYMUX_1801 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y45" ))
  \XLXI_21/InBuf<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y45" ))
  \XLXI_21/InBuf<3>/CEINV  (
    .I(\XLXI_21/InBuf_3_and0000 ),
    .O(\XLXI_21/InBuf<3>/CEINV_1798 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<2>/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000 [2]),
    .O(\XLXI_21/SClk_Cnt_mux0000<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<2>/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000 [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y53" ))
  \XLXI_27/Led<5>/DXMUX  (
    .I(\XLXI_21/DataOut [5]),
    .O(\XLXI_27/Led<5>/DXMUX_2159 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y53" ))
  \XLXI_27/Led<5>/DYMUX  (
    .I(\XLXI_21/DataOut [4]),
    .O(\XLXI_27/Led<5>/DYMUX_2153 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y53" ))
  \XLXI_27/Led<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<5>/CLKINV_2151 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y53" ))
  \XLXI_27/Led<5>/CEINV  (
    .I(\XLXI_27/Led_not0001_0 ),
    .O(\XLXI_27/Led<5>/CEINV_2150 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y47" ))
  \XLXI_27/Led<7>/DXMUX  (
    .I(\XLXI_21/DataOut [7]),
    .O(\XLXI_27/Led<7>/DXMUX_2179 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y47" ))
  \XLXI_27/Led<7>/DYMUX  (
    .I(\XLXI_21/DataOut [6]),
    .O(\XLXI_27/Led<7>/DYMUX_2173 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y47" ))
  \XLXI_27/Led<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<7>/CLKINV_2171 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y47" ))
  \XLXI_27/Led<7>/CEINV  (
    .I(\XLXI_27/Led_not0001_0 ),
    .O(\XLXI_27/Led<7>/CEINV_2170 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_27/Led_not0001/XUSED  (
    .I(\XLXI_27/Led_not0001 ),
    .O(\XLXI_27/Led_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_27/Led_not0001/YUSED  (
    .I(\XLXI_27/DataOut_cmp_eq0000_pack_1 ),
    .O(\XLXI_27/DataOut_cmp_eq0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_27/Led<1>/DXMUX  (
    .I(\XLXI_21/DataOut [1]),
    .O(\XLXI_27/Led<1>/DXMUX_2119 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_27/Led<1>/DYMUX  (
    .I(\XLXI_21/DataOut [0]),
    .O(\XLXI_27/Led<1>/DYMUX_2113 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_27/Led<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<1>/CLKINV_2111 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_27/Led<1>/CEINV  (
    .I(\XLXI_27/Led_not0001_0 ),
    .O(\XLXI_27/Led<1>/CEINV_2110 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y51" ))
  \XLXI_21/State_FSM_FFd6/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd7_653 ),
    .O(\XLXI_21/State_FSM_FFd6/DYMUX_1894 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y51" ))
  \XLXI_21/State_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd6/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y66" ))
  \XLXI_21/State_FSM_FFd2/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd3_643 ),
    .O(\XLXI_21/State_FSM_FFd2/DYMUX_1859 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y66" ))
  \XLXI_21/State_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd2/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/xSS<1>/DXMUX  (
    .I(\XLXI_21/xSS [0]),
    .O(\XLXI_21/xSS<1>/DXMUX_2196 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/xSS<1>/DYMUX  (
    .I(\SPI_SS/INBUF ),
    .O(\XLXI_21/xSS<1>/DYMUX_2191 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/xSS<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/xSS<1>/CLKINV_2189 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/N111/XUSED  (
    .I(\XLXI_21/N111 ),
    .O(\XLXI_21/N111_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/N111/YUSED  (
    .I(\XLXI_21/N10 ),
    .O(\XLXI_21/N10_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/N8/XUSED  (
    .I(\XLXI_21/N8 ),
    .O(\XLXI_21/N8_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y46" ))
  \XLXI_27/DataOut<1>/DXMUX  (
    .I(\sw<1>/INBUF ),
    .O(\XLXI_27/DataOut<1>/DXMUX_2227 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y46" ))
  \XLXI_27/DataOut<1>/DYMUX  (
    .I(\sw<0>/INBUF ),
    .O(\XLXI_27/DataOut<1>/DYMUX_2221 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y46" ))
  \XLXI_27/DataOut<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<1>/CLKINV_2219 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y46" ))
  \XLXI_27/DataOut<1>/CEINV  (
    .I(\XLXI_27/DataOut_cmp_eq0000 ),
    .O(\XLXI_27/DataOut<1>/CEINV_2218 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y43" ))
  \XLXI_21/InBuf_9_and0000/YUSED  (
    .I(\XLXI_21/State_cmp_eq0004_pack_1 ),
    .O(\XLXI_21/State_cmp_eq0004 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y42" ))
  \XLXI_27/DataOut<3>/DXMUX  (
    .I(\sw<3>/INBUF ),
    .O(\XLXI_27/DataOut<3>/DXMUX_2247 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y42" ))
  \XLXI_27/DataOut<3>/DYMUX  (
    .I(\sw<2>/INBUF ),
    .O(\XLXI_27/DataOut<3>/DYMUX_2241 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y42" ))
  \XLXI_27/DataOut<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<3>/CLKINV_2239 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y42" ))
  \XLXI_27/DataOut<3>/CEINV  (
    .I(\XLXI_27/DataOut_cmp_eq0000 ),
    .O(\XLXI_27/DataOut<3>/CEINV_2238 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y48" ))
  \XLXI_21/InBuf<8>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<8>/DYMUX_1837 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y48" ))
  \XLXI_21/InBuf<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<8>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y48" ))
  \XLXI_21/InBuf<8>/CEINV  (
    .I(\XLXI_21/InBuf_8_and0000 ),
    .O(\XLXI_21/InBuf<8>/CEINV_1834 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_FSM_FFd7/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd7/FXMUX_1988 ),
    .O(\XLXI_21/State_FSM_FFd7/DXMUX_1989 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_FSM_FFd7/XUSED  (
    .I(\XLXI_21/State_FSM_FFd7/FXMUX_1988 ),
    .O(\XLXI_21/State_FSM_FFd7-In_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_FSM_FFd7/FXMUX  (
    .I(\XLXI_21/State_FSM_FFd7-In ),
    .O(\XLXI_21/State_FSM_FFd7/FXMUX_1988 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_FSM_FFd7/YUSED  (
    .I(\XLXI_21/State_cmp_eq0001_pack_1 ),
    .O(\XLXI_21/State_cmp_eq0001 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_FSM_FFd7/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd7/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y44" ))
  \XLXI_21/InBuf<9>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<9>/DYMUX_1849 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y44" ))
  \XLXI_21/InBuf<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y44" ))
  \XLXI_21/InBuf<9>/CEINV  (
    .I(\XLXI_21/InBuf_9_and0000 ),
    .O(\XLXI_21/InBuf<9>/CEINV_1846 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/AdrBus<1>/DXMUX  (
    .I(\XLXI_21/InBuf[2] ),
    .O(\XLXI_21/AdrBus<1>/DXMUX_1937 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/AdrBus<1>/DYMUX  (
    .I(\XLXI_21/InBuf[3] ),
    .O(\XLXI_21/AdrBus<1>/DYMUX_1931 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/AdrBus<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/AdrBus<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/AdrBus<1>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd7-In_0 ),
    .O(\XLXI_21/AdrBus<1>/CEINV_1928 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/UdBuf<9>/DXMUX  (
    .I(\XLXI_21/UdBuf_9_mux0000_2097 ),
    .O(\XLXI_21/UdBuf<9>/DXMUX_2100 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/UdBuf<9>/YUSED  (
    .I(N3_pack_2),
    .O(N3)
  );
  X_INV #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/UdBuf<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/State_FSM_FFd5/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd5-In1 ),
    .O(\XLXI_21/State_FSM_FFd5/DXMUX_2021 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/State_FSM_FFd5/YUSED  (
    .I(\XLXI_21/State_cmp_eq0003_pack_2 ),
    .O(\XLXI_21/State_cmp_eq0003 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/State_FSM_FFd5/SRINV  (
    .I(\XLXI_21/State_FSM_FFd6_639 ),
    .O(\XLXI_21/State_FSM_FFd5/SRINV_2006 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/State_FSM_FFd5/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd5/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y47" ))
  \XLXI_21/State_FSM_FFd3/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd4_644 ),
    .O(\XLXI_21/State_FSM_FFd3/DXMUX_1885 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y47" ))
  \XLXI_21/State_FSM_FFd3/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd3/GYMUX_1879 ),
    .O(\XLXI_21/State_FSM_FFd3/DYMUX_1880 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y47" ))
  \XLXI_21/State_FSM_FFd3/YUSED  (
    .I(\XLXI_21/State_FSM_FFd3/GYMUX_1879 ),
    .O(\XLXI_21/State_FSM_FFd4-In_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y47" ))
  \XLXI_21/State_FSM_FFd3/GYMUX  (
    .I(\XLXI_21/State_FSM_FFd4-In ),
    .O(\XLXI_21/State_FSM_FFd3/GYMUX_1879 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y47" ))
  \XLXI_21/State_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd3/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_27/Led<3>/DXMUX  (
    .I(\XLXI_21/DataOut [3]),
    .O(\XLXI_27/Led<3>/DXMUX_2139 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_27/Led<3>/DYMUX  (
    .I(\XLXI_21/DataOut [2]),
    .O(\XLXI_27/Led<3>/DYMUX_2133 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_27/Led<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<3>/CLKINV_2131 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_27/Led<3>/CEINV  (
    .I(\XLXI_27/Led_not0001_0 ),
    .O(\XLXI_27/Led<3>/CEINV_2130 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/AdrBus<3>/DXMUX  (
    .I(\XLXI_21/InBuf[0] ),
    .O(\XLXI_21/AdrBus<3>/DXMUX_1957 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/AdrBus<3>/DYMUX  (
    .I(\XLXI_21/InBuf[1] ),
    .O(\XLXI_21/AdrBus<3>/DYMUX_1951 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/AdrBus<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/AdrBus<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/AdrBus<3>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd7-In_0 ),
    .O(\XLXI_21/AdrBus<3>/CEINV_1948 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y43" ))
  \N28/XUSED  (
    .I(N28),
    .O(N28_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y43" ))
  \N28/YUSED  (
    .I(N27),
    .O(N27_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y45" ))
  \XLXI_21/SClk_Cnt<1>/DXMUX  (
    .I(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/SClk_Cnt<1>/DXMUX_2267 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y45" ))
  \XLXI_21/SClk_Cnt<1>/DYMUX  (
    .I(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/SClk_Cnt<1>/DYMUX_2261 )
  );
  X_INV #(
    .LOC ( "SLICE_X50Y45" ))
  \XLXI_21/SClk_Cnt<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Cnt<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y45" ))
  \XLXI_21/SClk_Cnt<1>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Cnt<1>/CEINV_2258 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/SClk_Cnt<3>/DXMUX  (
    .I(\XLXI_21/SClk_Count [3]),
    .O(\XLXI_21/SClk_Cnt<3>/DXMUX_2331 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/SClk_Cnt<3>/DYMUX  (
    .I(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/SClk_Cnt<3>/DYMUX_2325 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/SClk_Cnt<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Cnt<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/SClk_Cnt<3>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Cnt<3>/CEINV_2322 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y57" ))
  \XLXI_21/InBuf<10>/DYMUX  (
    .I(SPI_MOSI_IBUF_613),
    .O(\XLXI_21/InBuf<10>/DYMUX_2435 )
  );
  X_INV #(
    .LOC ( "SLICE_X51Y57" ))
  \XLXI_21/InBuf<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<10>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y57" ))
  \XLXI_21/InBuf<10>/CEINV  (
    .I(\XLXI_21/InBuf_10_and0000 ),
    .O(\XLXI_21/InBuf<10>/CEINV_2432 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y42" ))
  \N37/XUSED  (
    .I(N37),
    .O(N37_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y42" ))
  \N37/YUSED  (
    .I(N36),
    .O(N36_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_27/DataOut<7>/DXMUX  (
    .I(\sw<7>/INBUF ),
    .O(\XLXI_27/DataOut<7>/DXMUX_2375 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_27/DataOut<7>/DYMUX  (
    .I(\sw<6>/INBUF ),
    .O(\XLXI_27/DataOut<7>/DYMUX_2369 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_27/DataOut<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<7>/CLKINV_2367 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_27/DataOut<7>/CEINV  (
    .I(\XLXI_27/DataOut_cmp_eq0000 ),
    .O(\XLXI_27/DataOut<7>/CEINV_2366 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_27/DataOut<5>/DXMUX  (
    .I(\sw<5>/INBUF ),
    .O(\XLXI_27/DataOut<5>/DXMUX_2311 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_27/DataOut<5>/DYMUX  (
    .I(\sw<4>/INBUF ),
    .O(\XLXI_27/DataOut<5>/DYMUX_2305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_27/DataOut<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<5>/CLKINV_2303 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_27/DataOut<5>/CEINV  (
    .I(\XLXI_27/DataOut_cmp_eq0000 ),
    .O(\XLXI_27/DataOut<5>/CEINV_2302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \N34/XUSED  (
    .I(N34),
    .O(N34_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \N34/YUSED  (
    .I(N33),
    .O(N33_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y42" ))
  \N31/XUSED  (
    .I(N31),
    .O(N31_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y42" ))
  \N31/YUSED  (
    .I(N30),
    .O(N30_0)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_FSM_FFd7-In1  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/State_FSM_FFd8_654 ),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/State_cmp_eq0001 ),
    .O(\XLXI_21/State_FSM_FFd7-In )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_9  (
    .I(\XLXI_21/UdBuf<9>/DXMUX_2100 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[9] )
  );
  X_LUT4 #(
    .INIT ( 16'h3030 ),
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_27/Led_not00011  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/WE_net_661 ),
    .ADR2(\XLXI_27/DataOut_cmp_eq0000 ),
    .ADR3(VCC),
    .O(\XLXI_27/Led_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_30/Mmux_dataOut131  (
    .ADR0(\XLXI_21/AdrBus [3]),
    .ADR1(\XLXI_21/AdrBus [0]),
    .ADR2(\XLXI_21/AdrBus [1]),
    .ADR3(\XLXI_21/AdrBus [2]),
    .O(\XLXI_27/DataOut_cmp_eq0000_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y50" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_0  (
    .I(\XLXI_27/Led<1>/DYMUX_2113 ),
    .CE(\XLXI_27/Led<1>/CEINV_2110 ),
    .CLK(\XLXI_27/Led<1>/CLKINV_2111 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X54Y49" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd5  (
    .I(\XLXI_21/State_FSM_FFd5/DXMUX_2021 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd5/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/State_FSM_FFd5/SRINV_2006 ),
    .SRST(GND),
    .O(\XLXI_21/State_FSM_FFd5_652 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/State_cmp_eq00031  (
    .ADR0(\XLXI_21/SClk_Cnt [0]),
    .ADR1(\XLXI_21/SClk_Cnt [3]),
    .ADR2(\XLXI_21/SClk_Cnt [2]),
    .ADR3(\XLXI_21/SClk_Cnt [1]),
    .O(\XLXI_21/State_cmp_eq0003_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/UdBuf_9_mux0000  (
    .ADR0(\XLXI_27/DataOut [6]),
    .ADR1(\XLXI_21/N01 ),
    .ADR2(N3),
    .ADR3(\XLXI_21/UdBuf[9] ),
    .O(\XLXI_21/UdBuf_9_mux0000_2097 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC4C ),
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/State_FSM_FFd5-In11  (
    .ADR0(\XLXI_21/xSClk [0]),
    .ADR1(\XLXI_21/State_FSM_FFd5_652 ),
    .ADR2(\XLXI_21/State_cmp_eq0003 ),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd5-In1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X53Y43" ))
  \XLXI_21/InBuf_9_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/N10_0 ),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_9_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/State_cmp_eq00011  (
    .ADR0(\XLXI_21/SClk_Cnt [0]),
    .ADR1(\XLXI_21/SClk_Cnt [3]),
    .ADR2(\XLXI_21/SClk_Cnt [1]),
    .ADR3(\XLXI_21/SClk_Cnt [2]),
    .O(\XLXI_21/State_cmp_eq0001_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd7  (
    .I(\XLXI_21/State_FSM_FFd7/DXMUX_1989 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd7/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd7_653 )
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X53Y43" ))
  \XLXI_21/State_cmp_eq00041  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/State_cmp_eq0004_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y50" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_1  (
    .I(\XLXI_27/Led<1>/DXMUX_2119 ),
    .CE(\XLXI_27/Led<1>/CEINV_2110 ),
    .CLK(\XLXI_27/Led<1>/CLKINV_2111 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ),
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/UdBuf_9_mux0000_SW0  (
    .ADR0(\XLXI_27/DataOut_cmp_eq0000 ),
    .ADR1(\XLXI_21/State_FSM_FFd6_639 ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(N3_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X55Y53" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_4  (
    .I(\XLXI_27/Led<5>/DYMUX_2153 ),
    .CE(\XLXI_27/Led<5>/CEINV_2150 ),
    .CLK(\XLXI_27/Led<5>/CLKINV_2151 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [4])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y42" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_2  (
    .I(\XLXI_27/DataOut<3>/DYMUX_2241 ),
    .CE(\XLXI_27/DataOut<3>/CEINV_2238 ),
    .CLK(\XLXI_27/DataOut<3>/CLKINV_2239 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y39" ),
    .INIT ( 1'b1 ))
  \XLXI_21/xSS_0  (
    .I(\XLXI_21/xSS<1>/DYMUX_2191 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSS<1>/CLKINV_2189 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSS [0])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_7  (
    .I(\XLXI_27/Led<7>/DXMUX_2179 ),
    .CE(\XLXI_27/Led<7>/CEINV_2170 ),
    .CLK(\XLXI_27/Led<7>/CLKINV_2171 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [7])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_6  (
    .I(\XLXI_27/Led<7>/DYMUX_2173 ),
    .CE(\XLXI_27/Led<7>/CEINV_2170 ),
    .CLK(\XLXI_27/Led<7>/CLKINV_2171 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [6])
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ),
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/InBuf_12_and000011  (
    .ADR0(\XLXI_21/SClk_Count [2]),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_21/N8 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_3  (
    .I(\XLXI_27/Led<3>/DXMUX_2139 ),
    .CE(\XLXI_27/Led<3>/CEINV_2130 ),
    .CLK(\XLXI_27/Led<3>/CLKINV_2131 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [3])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y46" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_0  (
    .I(\XLXI_27/DataOut<1>/DYMUX_2221 ),
    .CE(\XLXI_27/DataOut<1>/CEINV_2218 ),
    .CLK(\XLXI_27/DataOut<1>/CLKINV_2219 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y46" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_1  (
    .I(\XLXI_27/DataOut<1>/DXMUX_2227 ),
    .CE(\XLXI_27/DataOut<1>/CEINV_2218 ),
    .CLK(\XLXI_27/DataOut<1>/CLKINV_2219 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y53" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_5  (
    .I(\XLXI_27/Led<5>/DXMUX_2159 ),
    .CE(\XLXI_27/Led<5>/CEINV_2150 ),
    .CLK(\XLXI_27/Led<5>/CLKINV_2151 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [5])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_2  (
    .I(\XLXI_27/Led<3>/DYMUX_2133 ),
    .CE(\XLXI_27/Led<3>/CEINV_2130 ),
    .CLK(\XLXI_27/Led<3>/CLKINV_2131 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [2])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y39" ),
    .INIT ( 1'b1 ))
  \XLXI_21/xSS_1  (
    .I(\XLXI_21/xSS<1>/DXMUX_2196 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSS<1>/CLKINV_2189 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSS [1])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y42" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_3  (
    .I(\XLXI_27/DataOut<3>/DXMUX_2247 ),
    .CE(\XLXI_27/DataOut<3>/CEINV_2238 ),
    .CLK(\XLXI_27/DataOut<3>/CLKINV_2239 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X65Y42" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW6  (
    .ADR0(\XLXI_21/SClk_Cnt [0]),
    .ADR1(VCC),
    .ADR2(\XLXI_21/UdBuf[12] ),
    .ADR3(\XLXI_21/UdBuf[13] ),
    .O(N30)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_3  (
    .I(\XLXI_21/SClk_Cnt<3>/DXMUX_2331 ),
    .CE(\XLXI_21/SClk_Cnt<3>/CEINV_2322 ),
    .CLK(\XLXI_21/SClk_Cnt<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [3])
  );
  X_LUT4 #(
    .INIT ( 16'hCCF0 ),
    .LOC ( "SLICE_X65Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW5  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[15] ),
    .ADR2(\XLXI_21/UdBuf[14] ),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(N28)
  );
  X_FF #(
    .LOC ( "SLICE_X50Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_0  (
    .I(\XLXI_21/SClk_Cnt<1>/DYMUX_2261 ),
    .CE(\XLXI_21/SClk_Cnt<1>/CEINV_2258 ),
    .CLK(\XLXI_21/SClk_Cnt<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [0])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_1  (
    .I(\XLXI_21/SClk_Cnt<1>/DXMUX_2267 ),
    .CE(\XLXI_21/SClk_Cnt<1>/CEINV_2258 ),
    .CLK(\XLXI_21/SClk_Cnt<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFC30 ),
    .LOC ( "SLICE_X65Y42" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW7  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/UdBuf[12] ),
    .ADR3(\XLXI_21/UdBuf[13] ),
    .O(N31)
  );
  X_FF #(
    .LOC ( "SLICE_X54Y38" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_7  (
    .I(\XLXI_27/DataOut<7>/DXMUX_2375 ),
    .CE(\XLXI_27/DataOut<7>/CEINV_2366 ),
    .CLK(\XLXI_27/DataOut<7>/CLKINV_2367 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [7])
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X54Y42" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW10  (
    .ADR0(\XLXI_21/UdBuf[8] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/UdBuf[9] ),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N36)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y40" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_4  (
    .I(\XLXI_27/DataOut<5>/DYMUX_2305 ),
    .CE(\XLXI_27/DataOut<5>/CEINV_2302 ),
    .CLK(\XLXI_27/DataOut<5>/CLKINV_2303 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_2  (
    .I(\XLXI_21/SClk_Cnt<3>/DYMUX_2325 ),
    .CE(\XLXI_21/SClk_Cnt<3>/CEINV_2322 ),
    .CLK(\XLXI_21/SClk_Cnt<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [2])
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X54Y42" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW11  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/UdBuf[8] ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[9] ),
    .O(N37)
  );
  X_FF #(
    .LOC ( "SLICE_X66Y40" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_5  (
    .I(\XLXI_27/DataOut<5>/DXMUX_2311 ),
    .CE(\XLXI_27/DataOut<5>/CEINV_2302 ),
    .CLK(\XLXI_27/DataOut<5>/CLKINV_2303 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y38" ),
    .INIT ( 1'b1 ))
  \XLXI_27/DataOut_6  (
    .I(\XLXI_27/DataOut<7>/DYMUX_2369 ),
    .CE(\XLXI_27/DataOut<7>/CEINV_2366 ),
    .CLK(\XLXI_27/DataOut<7>/CLKINV_2367 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/DataOut [6])
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X65Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW4  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[15] ),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(\XLXI_21/UdBuf[14] ),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW8  (
    .ADR0(\XLXI_21/UdBuf[10] ),
    .ADR1(\XLXI_21/SClk_Cnt [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[11] ),
    .O(N33)
  );
  X_FF #(
    .LOC ( "SLICE_X51Y57" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_10  (
    .I(\XLXI_21/InBuf<10>/DYMUX_2435 ),
    .CE(\XLXI_21/InBuf<10>/CEINV_2432 ),
    .CLK(\XLXI_21/InBuf<10>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[10] )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW9  (
    .ADR0(\XLXI_21/UdBuf[10] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/UdBuf[11] ),
    .O(N34)
  );
  X_FF #(
    .LOC ( "SLICE_X48Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_14  (
    .I(\XLXI_21/InBuf<14>/DYMUX_792 ),
    .CE(\XLXI_21/InBuf<14>/CEINV_789 ),
    .CLK(\XLXI_21/InBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[14] )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_12  (
    .I(\XLXI_21/InBuf<12>/DYMUX_768 ),
    .CE(\XLXI_21/InBuf<12>/CEINV_765 ),
    .CLK(\XLXI_21/InBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[12] )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_13  (
    .I(\XLXI_21/InBuf<13>/DYMUX_780 ),
    .CE(\XLXI_21/InBuf<13>/CEINV_777 ),
    .CLK(\XLXI_21/InBuf<13>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[13] )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y53" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_11  (
    .I(\XLXI_21/InBuf<11>/DYMUX_756 ),
    .CE(\XLXI_21/InBuf<11>/CEINV_753 ),
    .CLK(\XLXI_21/InBuf<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[11] )
  );
  X_LUT4 #(
    .INIT ( 16'h0008 ),
    .LOC ( "SLICE_X52Y44" ))
  \XLXI_21/InBuf_0_and00001  (
    .ADR0(\XLXI_21/N111_0 ),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_0_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_3  (
    .I(\XLXI_21/DataOut<3>/DXMUX_868 ),
    .CE(\XLXI_21/DataOut<3>/CEINV_859 ),
    .CLK(\XLXI_21/DataOut<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/UdBuf_10_mux00001  (
    .ADR0(\XLXI_21/State_FSM_FFd2_642 ),
    .ADR1(N11_0),
    .ADR2(\XLXI_21/State_FSM_FFd3_643 ),
    .ADR3(\XLXI_21/State_FSM_FFd4_644 ),
    .O(\XLXI_21/N01_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y53" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_4  (
    .I(\XLXI_21/DataOut<5>/DYMUX_936 ),
    .CE(\XLXI_21/DataOut<5>/CEINV_933 ),
    .CLK(\XLXI_21/DataOut<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y51" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_0  (
    .I(\XLXI_21/DataOut<1>/DYMUX_818 ),
    .CE(\XLXI_21/DataOut<1>/CEINV_815 ),
    .CLK(\XLXI_21/DataOut<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y53" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_5  (
    .I(\XLXI_21/DataOut<5>/DXMUX_942 ),
    .CE(\XLXI_21/DataOut<5>/CEINV_933 ),
    .CLK(\XLXI_21/DataOut<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X48Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_15  (
    .I(\XLXI_21/InBuf<15>/DYMUX_804 ),
    .CE(\XLXI_21/InBuf<15>/CEINV_801 ),
    .CLK(\XLXI_21/InBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[15] )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X52Y44" ))
  \XLXI_21/InBuf_3_and00001  (
    .ADR0(\XLXI_21/N111_0 ),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_3_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X51Y55" ))
  \XLXI_21/InBuf_11_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/N10_0 ),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_11_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ),
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/UdBuf_7_mux00001  (
    .ADR0(\XLXI_27/DataOut_cmp_eq0000 ),
    .ADR1(\XLXI_21/State_FSM_FFd6_639 ),
    .ADR2(\XLXI_21/UdBuf[7] ),
    .ADR3(\XLXI_21/N01 ),
    .O(\XLXI_21/UdBuf_7_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_2  (
    .I(\XLXI_21/DataOut<3>/DYMUX_862 ),
    .CE(\XLXI_21/DataOut<3>/CEINV_859 ),
    .CLK(\XLXI_21/DataOut<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y51" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_1  (
    .I(\XLXI_21/DataOut<1>/DXMUX_824 ),
    .CE(\XLXI_21/DataOut<1>/CEINV_815 ),
    .CLK(\XLXI_21/DataOut<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_7  (
    .I(\XLXI_21/UdBuf<7>/DXMUX_923 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[7] )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X51Y55" ))
  \XLXI_21/InBuf_10_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/N10_0 ),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_10_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_7  (
    .I(\XLXI_21/DataOut<7>/DXMUX_995 ),
    .CE(\XLXI_21/DataOut<7>/CEINV_986 ),
    .CLK(\XLXI_21/DataOut<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [7])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_21/UdBuf_10_mux00001_SW0  (
    .ADR0(\XLXI_21/State_FSM_FFd8_654 ),
    .ADR1(\XLXI_21/State_FSM_FFd7_653 ),
    .ADR2(\XLXI_21/State_FSM_FFd1_650 ),
    .ADR3(\XLXI_21/State_FSM_FFd5_652 ),
    .O(N11)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/xSClk_1  (
    .I(\XLXI_21/xSClk<1>/DXMUX_1048 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSClk<1>/CLKINV_1041 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSClk [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y46" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd1  (
    .I(\XLXI_21/State_FSM_FFd1/DXMUX_975 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd1/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/State_FSM_FFd1/SRINV_959 ),
    .SRST(GND),
    .O(\XLXI_21/State_FSM_FFd1_650 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_6  (
    .I(\XLXI_21/DataOut<7>/DYMUX_989 ),
    .CE(\XLXI_21/DataOut<7>/CEINV_986 ),
    .CLK(\XLXI_21/DataOut<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/xSClk_0  (
    .I(\XLXI_21/xSClk<1>/DYMUX_1043 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSClk<1>/CLKINV_1041 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSClk [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_21/InBuf_12_and00001  (
    .ADR0(\XLXI_21/N8_0 ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_12_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hBA8A ),
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<3>17  (
    .ADR0(\XLXI_21/SClk_Cnt [3]),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/SClk_Count [3]),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>17_1066 )
  );
  X_LUT4 #(
    .INIT ( 16'h4500 ),
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/SClk_Count_and00001  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSS [1]),
    .O(\XLXI_21/SClk_Count_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/InBuf_14_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/N8_0 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_14_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/InBuf_15_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/N8_0 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_15_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4F0 ),
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_9  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(N31_0),
    .ADR2(N30_0),
    .ADR3(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/Mmux__varindex0000_9_1119 )
  );
  X_SFF #(
    .LOC ( "SLICE_X53Y49" ),
    .INIT ( 1'b1 ))
  \XLXI_21/WE_net  (
    .I(\XLXI_21/WE_net/DYMUX_1031 ),
    .CE(VCC),
    .CLK(\XLXI_21/WE_net/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/WE_net/SRINV_1029 ),
    .O(\XLXI_21/WE_net_661 )
  );
  X_LUT4 #(
    .INIT ( 16'hD0D0 ),
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_21/State_FSM_FFd1-In11  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(\XLXI_21/xSS [1]),
    .ADR2(\XLXI_21/State_FSM_FFd1_650 ),
    .ADR3(VCC),
    .O(\XLXI_21/State_FSM_FFd1-In1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_21/InBuf_13_and00001  (
    .ADR0(\XLXI_21/N8_0 ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_13_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCE4 ),
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/Mmux__varindex0000_91  (
    .ADR0(\XLXI_21/xSClk [0]),
    .ADR1(N33_0),
    .ADR2(N34_0),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/Mmux__varindex0000_91_1152 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0D8 ),
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/Mmux__varindex0000_8  (
    .ADR0(\XLXI_21/xSClk [0]),
    .ADR1(N28_0),
    .ADR2(N27_0),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/Mmux__varindex0000_8_1128 )
  );
  X_LUT4 #(
    .INIT ( 16'hD8CC ),
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/Mmux__varindex0000_101  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(N36_0),
    .ADR2(N37_0),
    .ADR3(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/Mmux__varindex0000_101_1145 )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \SPI_MOSI/IFF/IMUX  (
    .I(\SPI_MOSI/INBUF ),
    .O(SPI_MOSI_IBUF_613)
  );
  X_LUT4 #(
    .INIT ( 16'hB333 ),
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/State_FSM_FFd8-In_SW1  (
    .ADR0(\XLXI_21/xSClk [0]),
    .ADR1(\XLXI_21/State_FSM_FFd8_654 ),
    .ADR2(\XLXI_21/State_cmp_eq0001 ),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd8-In_SW1/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X51Y45" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW0_G  (
    .ADR0(\XLXI_21/UdBuf[6] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(\XLXI_21/UdBuf[7] ),
    .O(N45)
  );
  X_LUT4 #(
    .INIT ( 16'h1D0F ),
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<3>132  (
    .ADR0(\XLXI_21/SClk_Count [3]),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/SClk_Cnt [3]),
    .ADR3(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA50 ),
    .LOC ( "SLICE_X53Y45" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120  (
    .ADR0(\XLXI_21/SClk_Cnt_mux0000<2>_0 ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/UdBuf[0] ),
    .ADR3(\XLXI_21/Mmux__varindex0000_9_f5/O ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>120_1405 )
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y41" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_2  (
    .I(\XLXI_21/SClk_Count<3>/DYMUX_1461 ),
    .CE(\XLXI_21/SClk_Count<3>/CEINV_1450 ),
    .CLK(\XLXI_21/SClk_Count<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<3>/SRINV_1452 ),
    .O(\XLXI_21/SClk_Count [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/Mcount_SClk_Count_xor<3>11  (
    .ADR0(\XLXI_21/SClk_Count [3]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/Result [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF0D8 ),
    .LOC ( "SLICE_X53Y45" ))
  \XLXI_21/Mmux__varindex0000_9_f5  (
    .ADR0(\XLXI_21/xSClk [0]),
    .ADR1(N40),
    .ADR2(N39),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h3FC0 ),
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/Mcount_SClk_Count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/Result [2])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y46" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd8  (
    .I(\XLXI_21/State_FSM_FFd8/DXMUX_1380 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd8/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd8_654 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X51Y45" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW0_F  (
    .ADR0(\XLXI_21/UdBuf[4] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(\XLXI_21/UdBuf[5] ),
    .O(N44)
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X51Y44" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW1_G  (
    .ADR0(\XLXI_21/UdBuf[6] ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[7] ),
    .O(N47)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<3>145  (
    .ADR0(\XLXI_21/SClk_Cnt_mux0000<3>17_0 ),
    .ADR1(\XLXI_21/SClk_Cnt_mux0000<3>120_0 ),
    .ADR2(\XLXI_21/Mmux__varindex0000_6_f6 ),
    .ADR3(\XLXI_21/SClk_Cnt_mux0000<3>132/O ),
    .O(\XLXI_21/_varindex0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/MISO  (
    .I(\XLXI_21/MISO/DXMUX_1434 ),
    .CE(VCC),
    .CLK(\XLXI_21/MISO/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/MISO_691 )
  );
  X_LUT4 #(
    .INIT ( 16'h33B3 ),
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/State_FSM_FFd8-In  (
    .ADR0(\XLXI_21/State_FSM_FFd9_708 ),
    .ADR1(\XLXI_21/State_FSM_FFd8-In_SW1/O ),
    .ADR2(\XLXI_21/xSS [1]),
    .ADR3(\XLXI_21/xSS [0]),
    .O(\XLXI_21/State_FSM_FFd8-In_1377 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X51Y44" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW1_F  (
    .ADR0(\XLXI_21/UdBuf[4] ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[5] ),
    .O(N46)
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X50Y44" ))
  \XLXI_21/UdBuf_5_mux00001  (
    .ADR0(\XLXI_21/N01 ),
    .ADR1(\XLXI_27/DataOut_cmp_eq0000 ),
    .ADR2(\XLXI_21/UdBuf[5] ),
    .ADR3(\XLXI_21/State_FSM_FFd6_639 ),
    .O(\XLXI_21/UdBuf_5_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_11  (
    .I(\XLXI_21/UdBuf<12>/DYMUX_1606 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[11] )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_12  (
    .I(\XLXI_21/UdBuf<12>/DXMUX_1617 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[12] )
  );
  X_LUT4 #(
    .INIT ( 16'hCE0C ),
    .LOC ( "SLICE_X54Y45" ))
  \XLXI_21/State_FSM_FFd9-In1  (
    .ADR0(\XLXI_21/State_FSM_FFd1_650 ),
    .ADR1(\XLXI_21/State_FSM_FFd9_708 ),
    .ADR2(\XLXI_21/xSS [1]),
    .ADR3(\XLXI_21/xSS [0]),
    .O(\XLXI_21/State_FSM_FFd9-In )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/UdBuf_4_mux00001  (
    .ADR0(\XLXI_21/N01 ),
    .ADR1(\XLXI_27/DataOut_cmp_eq0000 ),
    .ADR2(\XLXI_21/UdBuf[4] ),
    .ADR3(\XLXI_21/State_FSM_FFd6_639 ),
    .O(\XLXI_21/UdBuf_4_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_10  (
    .I(\XLXI_21/UdBuf<15>/DYMUX_1538 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[10] )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_21/UdBuf_11_mux0000  (
    .ADR0(\XLXI_27/DataOut [4]),
    .ADR1(\XLXI_21/N01 ),
    .ADR2(N3),
    .ADR3(\XLXI_21/UdBuf[11] ),
    .O(\XLXI_21/UdBuf_11_mux0000_1603 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf_10_mux0000  (
    .ADR0(\XLXI_21/N01 ),
    .ADR1(\XLXI_27/DataOut [5]),
    .ADR2(N3),
    .ADR3(\XLXI_21/UdBuf[10] ),
    .O(\XLXI_21/UdBuf_10_mux0000_1535 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/State_cmp_eq00001  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/xSS [1]),
    .ADR2(\XLXI_21/xSS [0]),
    .ADR3(VCC),
    .O(\XLXI_21/State_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf_15_mux0000  (
    .ADR0(\XLXI_21/N01 ),
    .ADR1(N3),
    .ADR2(\XLXI_27/DataOut [0]),
    .ADR3(\XLXI_21/UdBuf[15] ),
    .O(\XLXI_21/UdBuf_15_mux0000_1546 )
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y41" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_3  (
    .I(\XLXI_21/SClk_Count<3>/DXMUX_1474 ),
    .CE(\XLXI_21/SClk_Count<3>/CEINV_1450 ),
    .CLK(\XLXI_21/SClk_Count<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<3>/SRINV_1452 ),
    .O(\XLXI_21/SClk_Count [3])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/UdBuf_8_mux0000  (
    .ADR0(\XLXI_21/N01 ),
    .ADR1(\XLXI_27/DataOut [7]),
    .ADR2(N3),
    .ADR3(\XLXI_21/UdBuf[8] ),
    .O(\XLXI_21/UdBuf_8_mux0000_1580 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_8  (
    .I(\XLXI_21/UdBuf<8>/DXMUX_1583 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[8] )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_21/UdBuf_12_mux0000  (
    .ADR0(N3),
    .ADR1(\XLXI_21/N01 ),
    .ADR2(\XLXI_21/UdBuf[12] ),
    .ADR3(\XLXI_27/DataOut [3]),
    .O(\XLXI_21/UdBuf_12_mux0000_1614 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_0  (
    .I(\XLXI_21/UdBuf<0>/DYMUX_1514 ),
    .CE(\XLXI_21/UdBuf<0>/CEINV_1503 ),
    .CLK(\XLXI_21/UdBuf<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_4  (
    .I(\XLXI_21/UdBuf<8>/DYMUX_1572 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[4] )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_15  (
    .I(\XLXI_21/UdBuf<15>/DXMUX_1549 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[15] )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y45" ),
    .INIT ( 1'b1 ))
  \XLXI_21/State_FSM_FFd9  (
    .I(\XLXI_21/State_FSM_FFd9/DYMUX_1494 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd9/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd9_708 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_13  (
    .I(\XLXI_21/UdBuf<14>/DYMUX_1674 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[13] )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X53Y46" ))
  \XLXI_21/InBuf_2_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/N111_0 ),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_2_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_14  (
    .I(\XLXI_21/UdBuf<14>/DXMUX_1685 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[14] )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_5  (
    .I(\XLXI_21/UdBuf<6>/DYMUX_1640 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<6>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[5] )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ),
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/UdBuf_13_mux0000  (
    .ADR0(\XLXI_21/UdBuf[13] ),
    .ADR1(\XLXI_21/N01 ),
    .ADR2(\XLXI_27/DataOut [2]),
    .ADR3(N3),
    .O(\XLXI_21/UdBuf_13_mux0000_1671 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X50Y44" ))
  \XLXI_21/UdBuf_6_mux00001  (
    .ADR0(\XLXI_21/N01 ),
    .ADR1(\XLXI_27/DataOut_cmp_eq0000 ),
    .ADR2(\XLXI_21/State_FSM_FFd6_639 ),
    .ADR3(\XLXI_21/UdBuf[6] ),
    .O(\XLXI_21/UdBuf_6_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/InBuf_1_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/N111_0 ),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_1_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_6  (
    .I(\XLXI_21/UdBuf<6>/DXMUX_1651 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<6>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[6] )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/UdBuf_14_mux0000  (
    .ADR0(\XLXI_27/DataOut [1]),
    .ADR1(\XLXI_21/N01 ),
    .ADR2(\XLXI_21/UdBuf[14] ),
    .ADR3(N3),
    .O(\XLXI_21/UdBuf_14_mux0000_1682 )
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y43" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_0  (
    .I(\XLXI_21/SClk_Count<0>/DXMUX_1728 ),
    .CE(\XLXI_21/SClk_Count<0>/CEINV_1702 ),
    .CLK(\XLXI_21/SClk_Count<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<0>/SRINV_1704 ),
    .O(\XLXI_21/SClk_Count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h55AA ),
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/Mcount_SClk_Count_xor<1>11  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/Result [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y43" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_1  (
    .I(\XLXI_21/SClk_Count<0>/DYMUX_1714 ),
    .CE(\XLXI_21/SClk_Count<0>/CEINV_1702 ),
    .CLK(\XLXI_21/SClk_Count<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<0>/SRINV_1704 ),
    .O(\XLXI_21/SClk_Count [1])
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X53Y46" ))
  \XLXI_21/InBuf_8_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/N10_0 ),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_8_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_0  (
    .I(\XLXI_21/InBuf<0>/DYMUX_1765 ),
    .CE(\XLXI_21/InBuf<0>/CEINV_1762 ),
    .CLK(\XLXI_21/InBuf<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_1  (
    .I(\XLXI_21/InBuf<1>/DYMUX_1777 ),
    .CE(\XLXI_21/InBuf<1>/CEINV_1774 ),
    .CLK(\XLXI_21/InBuf<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[1] )
  );
  X_LUT4 #(
    .INIT ( 16'h000F ),
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/InBuf_0_and000021  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [3]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/N111 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_0  (
    .I(\XLXI_21/AdrBus<1>/DYMUX_1931 ),
    .CE(\XLXI_21/AdrBus<1>/CEINV_1928 ),
    .CLK(\XLXI_21/AdrBus<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [0])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd3  (
    .I(\XLXI_21/State_FSM_FFd3/DXMUX_1885 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd3/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd3_643 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_3  (
    .I(\XLXI_21/InBuf<3>/DYMUX_1801 ),
    .CE(\XLXI_21/InBuf<3>/CEINV_1798 ),
    .CLK(\XLXI_21/InBuf<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[3] )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y46" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_2  (
    .I(\XLXI_21/InBuf<2>/DYMUX_1789 ),
    .CE(\XLXI_21/InBuf<2>/CEINV_1786 ),
    .CLK(\XLXI_21/InBuf<2>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[2] )
  );
  X_LUT4 #(
    .INIT ( 16'hAACA ),
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<1>1  (
    .ADR0(\XLXI_21/SClk_Cnt [1]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X54Y47" ))
  \XLXI_21/State_FSM_FFd4-In1  (
    .ADR0(\XLXI_21/State_FSM_FFd5_652 ),
    .ADR1(\XLXI_21/State_cmp_eq0003 ),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd4-In )
  );
  X_LUT4 #(
    .INIT ( 16'hAACA ),
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/SClk_Cnt_mux0000<2>1  (
    .ADR0(\XLXI_21/SClk_Cnt [2]),
    .ADR1(\XLXI_21/SClk_Count [2]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y66" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd2  (
    .I(\XLXI_21/State_FSM_FFd2/DYMUX_1859 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd2/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd2_642 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_8  (
    .I(\XLXI_21/InBuf<8>/DYMUX_1837 ),
    .CE(\XLXI_21/InBuf<8>/CEINV_1834 ),
    .CLK(\XLXI_21/InBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[8] )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y51" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd6  (
    .I(\XLXI_21/State_FSM_FFd6/DYMUX_1894 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd6/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd6_639 )
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/InBuf_10_and000021  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [3]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/N10 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_9  (
    .I(\XLXI_21/InBuf<9>/DYMUX_1849 ),
    .CE(\XLXI_21/InBuf<9>/CEINV_1846 ),
    .CLK(\XLXI_21/InBuf<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf[9] )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y47" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd4  (
    .I(\XLXI_21/State_FSM_FFd3/DYMUX_1880 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd3/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd4_644 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_1  (
    .I(\XLXI_21/AdrBus<1>/DXMUX_1937 ),
    .CE(\XLXI_21/AdrBus<1>/CEINV_1928 ),
    .CLK(\XLXI_21/AdrBus<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [1])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_3  (
    .I(\XLXI_21/AdrBus<3>/DXMUX_1957 ),
    .CE(\XLXI_21/AdrBus<3>/CEINV_1948 ),
    .CLK(\XLXI_21/AdrBus<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [3])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_2  (
    .I(\XLXI_21/AdrBus<3>/DYMUX_1951 ),
    .CE(\XLXI_21/AdrBus<3>/CEINV_1948 ),
    .CLK(\XLXI_21/AdrBus<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [2])
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \led<0>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [0]),
    .O(\led<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led<2>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [2]),
    .O(\led<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD85" ))
  \led<1>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [1]),
    .O(\led<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \led<3>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [3]),
    .O(\led<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \led<6>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [6]),
    .O(\led<6>/O )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \led<4>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [4]),
    .O(\led<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD181" ))
  \led<7>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [7]),
    .O(\led<7>/O )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \SPI_MISO/OUTPUT/OFF/OMUX  (
    .I(\XLXI_21/MISO_691 ),
    .O(\SPI_MISO/O )
  );
  X_BUF #(
    .LOC ( "PAD109" ))
  \led<5>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [5]),
    .O(\led<5>/O )
  );
  X_ZERO   NlwBlock_Design_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_Design_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

