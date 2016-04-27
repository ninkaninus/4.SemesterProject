////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Design_timesim.v
// /___/   /\     Timestamp: Thu Apr 28 01:24:37 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf Design.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Design.ncd Design_timesim.v 
// Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: Design.ncd
// Output file	: D:\Github\4.SemesterProject\Code\FPGA\Solution\netgen\par\Design_timesim.v
// # of Modules	: 1
// Design Name	: Design
// Xilinx        : D:\Programs\Xilinx\14.7\ISE_DS\ISE\
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
  wire clk_BUFGP;
  wire \XLXI_21/State_FSM_FFd9_753 ;
  wire \XLXI_21/State_FSM_FFd1_754 ;
  wire \XLXI_21/SClk_Count_and0000_0 ;
  wire \XLXI_27/Led_not0001 ;
  wire \XLXI_21/WE_net_757 ;
  wire \XLXI_27/CS_759 ;
  wire \DataBus<1>_0 ;
  wire \DataBus<0>_0 ;
  wire \DataBus<3>_0 ;
  wire \DataBus<2>_0 ;
  wire \DataBus<5>_0 ;
  wire \DataBus<4>_0 ;
  wire \DataBus<7>_0 ;
  wire \DataBus<6>_0 ;
  wire \XLXI_21/UdBuf[0] ;
  wire \XLXI_21/State_FSM_FFd6_792 ;
  wire \XLXI_21/UdBuf[15] ;
  wire N01;
  wire \XLXI_21/UdBuf[10] ;
  wire \XLXI_21/UdBuf[12] ;
  wire \XLXI_21/UdBuf[11] ;
  wire \XLXI_21/UdBuf[14] ;
  wire \XLXI_21/UdBuf[13] ;
  wire \XLXI_21/UdBuf[4] ;
  wire \XLXI_21/UdBuf[8] ;
  wire N121_0;
  wire \XLXI_21/State_cmp_eq0004 ;
  wire \XLXI_21/UdBuf[5] ;
  wire \XLXI_21/UdBuf[7] ;
  wire N111_0;
  wire N14_0;
  wire N13_0;
  wire SPI_MOSI_IBUF_821;
  wire \XLXI_21/SClk_Cnt_mux0000<3>17_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<1>_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<2>_0 ;
  wire \XLXI_21/State_FSM_FFd3_846 ;
  wire \XLXI_21/State_FSM_FFd2_847 ;
  wire \XLXI_21/State_FSM_FFd4_848 ;
  wire \XLXI_21/State_cmp_eq0003 ;
  wire \XLXI_21/State_FSM_FFd5_850 ;
  wire \XLXI_21/State_FSM_FFd4-In_0 ;
  wire \XLXI_21/State_FSM_FFd7_852 ;
  wire \XLXI_21/State_FSM_FFd7-In_0 ;
  wire \XLXI_21/State_FSM_FFd8_858 ;
  wire \XLXI_21/State_cmp_eq0001 ;
  wire \XLXI_27/DataOut_not0001_0 ;
  wire N131_0;
  wire N12_0;
  wire N16_0;
  wire N15_0;
  wire \XLXI_21/UdBuf[9] ;
  wire N22_0;
  wire N21_0;
  wire N19_0;
  wire N18_0;
  wire N02_0;
  wire \XLXI_21/UdBuf[6] ;
  wire \XLXI_21/Mmux__varindex0000_7_f5 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6 ;
  wire \XLXI_21/MISO_903 ;
  wire N24;
  wire N25;
  wire \XLXI_21/State_FSM_FFd8-In_SW1/O ;
  wire \XLXI_21/Mmux__varindex0000_9_f5/O ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>120_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>132/O ;
  wire \XLXI_21/SClk_Count_and0000 ;
  wire \XLXI_21/State_FSM_FFd9/DYMUX_929 ;
  wire \XLXI_21/State_FSM_FFd9-In ;
  wire \XLXI_21/State_FSM_FFd9/CLKINVNOT ;
  wire \XLXI_21/DataOut<1>/DXMUX_2125 ;
  wire \XLXI_21/DataOut<1>/DYMUX_2119 ;
  wire \XLXI_21/DataOut<1>/CLKINVNOT ;
  wire \XLXI_21/DataOut<1>/CEINV_2116 ;
  wire \XLXI_21/InBuf_9_and0000 ;
  wire \XLXI_21/State_cmp_eq0004_pack_1 ;
  wire \XLXI_21/InBuf<11>/DYMUX_2057 ;
  wire \XLXI_21/InBuf<11>/CLKINVNOT ;
  wire \XLXI_21/InBuf<11>/CEINV_2054 ;
  wire \XLXI_21/InBuf<14>/DYMUX_2093 ;
  wire \XLXI_21/InBuf<14>/CLKINVNOT ;
  wire \XLXI_21/InBuf<14>/CEINV_2090 ;
  wire \XLXI_27/DataOut<5>/DXMUX_1909 ;
  wire \XLXI_27/DataOut<5>/DYMUX_1903 ;
  wire \XLXI_27/DataOut<5>/SRINV_1901 ;
  wire \XLXI_27/DataOut<5>/CLKINV_1900 ;
  wire N22;
  wire N21;
  wire \XLXI_21/InBuf<10>/DYMUX_2045 ;
  wire \XLXI_21/InBuf<10>/CLKINVNOT ;
  wire \XLXI_21/InBuf<10>/CEINV_2042 ;
  wire \XLXI_27/DataOut<7>/DXMUX_1973 ;
  wire \XLXI_27/DataOut<7>/DYMUX_1967 ;
  wire \XLXI_27/DataOut<7>/SRINV_1965 ;
  wire \XLXI_27/DataOut<7>/CLKINV_1964 ;
  wire \XLXI_21/InBuf<12>/DYMUX_2069 ;
  wire \XLXI_21/InBuf<12>/CLKINVNOT ;
  wire \XLXI_21/InBuf<12>/CEINV_2066 ;
  wire \XLXI_21/InBuf<13>/DYMUX_2081 ;
  wire \XLXI_21/InBuf<13>/CLKINVNOT ;
  wire \XLXI_21/InBuf<13>/CEINV_2078 ;
  wire N111;
  wire N131;
  wire N12;
  wire \XLXI_21/InBuf<15>/DYMUX_2105 ;
  wire \XLXI_21/InBuf<15>/CLKINVNOT ;
  wire \XLXI_21/InBuf<15>/CEINV_2102 ;
  wire \XLXI_21/State_FSM_FFd5/DXMUX_1729 ;
  wire \XLXI_21/State_FSM_FFd5-In1 ;
  wire \XLXI_21/State_cmp_eq0003_pack_2 ;
  wire \XLXI_21/State_FSM_FFd5/SRINV_1714 ;
  wire \XLXI_21/State_FSM_FFd5/CLKINVNOT ;
  wire \XLXI_21/xSS<1>/DXMUX_1770 ;
  wire \XLXI_21/xSS<1>/DYMUX_1765 ;
  wire \XLXI_21/xSS<1>/CLKINV_1763 ;
  wire \XLXI_27/DataOut<1>/DXMUX_1801 ;
  wire \XLXI_27/DataOut<1>/DYMUX_1795 ;
  wire \XLXI_27/DataOut<1>/SRINV_1793 ;
  wire \XLXI_27/DataOut<1>/CLKINV_1792 ;
  wire \XLXI_21/SClk_Cnt<1>/DXMUX_1841 ;
  wire \XLXI_21/SClk_Cnt<1>/DYMUX_1835 ;
  wire \XLXI_21/SClk_Cnt<1>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt<1>/CEINV_1832 ;
  wire \XLXI_21/InBuf_2_and0000 ;
  wire \XLXI_21/InBuf_1_and0000 ;
  wire N16;
  wire N15;
  wire N19;
  wire N18;
  wire \XLXI_27/DataOut<8>/DYMUX_2033 ;
  wire \XLXI_27/DataOut<8>/BYINV_2032 ;
  wire \XLXI_27/DataOut<8>/SRINV_2031 ;
  wire \XLXI_27/DataOut<8>/CLKINV_2030 ;
  wire \XLXI_21/SClk_Cnt<3>/DXMUX_1929 ;
  wire \XLXI_21/SClk_Cnt<3>/DYMUX_1923 ;
  wire \XLXI_21/SClk_Cnt<3>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt<3>/CEINV_1920 ;
  wire \XLXI_27/DataOut<3>/DXMUX_1821 ;
  wire \XLXI_27/DataOut<3>/DYMUX_1815 ;
  wire \XLXI_27/DataOut<3>/SRINV_1813 ;
  wire \XLXI_27/DataOut<3>/CLKINV_1812 ;
  wire \XLXI_21/State_FSM_FFd7/DXMUX_1697 ;
  wire \XLXI_21/State_FSM_FFd7/FXMUX_1696 ;
  wire \XLXI_21/State_FSM_FFd7-In ;
  wire \XLXI_21/State_cmp_eq0001_pack_1 ;
  wire \XLXI_21/State_FSM_FFd7/CLKINVNOT ;
  wire \XLXI_27/Led<7>/DXMUX_1095 ;
  wire \XLXI_27/Led<7>/FXMUX_1094 ;
  wire \XLXI_27/Led<7>/DYMUX_1083 ;
  wire \XLXI_27/Led<7>/GYMUX_1082 ;
  wire \XLXI_27/Led<7>/CLKINV_1075 ;
  wire \XLXI_27/Led<7>/CEINV_1074 ;
  wire \XLXI_27/Led<1>/DXMUX_975 ;
  wire \XLXI_27/Led<1>/FXMUX_974 ;
  wire \XLXI_27/Led<1>/DYMUX_963 ;
  wire \XLXI_27/Led<1>/GYMUX_962 ;
  wire \XLXI_27/Led<1>/CLKINV_955 ;
  wire \XLXI_27/Led<1>/CEINV_954 ;
  wire \XLXI_21/UdBuf<0>/DYMUX_1116 ;
  wire \XLXI_21/State_cmp_eq0000 ;
  wire \XLXI_21/UdBuf<0>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<0>/CEINV_1105 ;
  wire \XLXI_27/Led<5>/DXMUX_1055 ;
  wire \XLXI_27/Led<5>/FXMUX_1054 ;
  wire \XLXI_27/Led<5>/DYMUX_1043 ;
  wire \XLXI_27/Led<5>/GYMUX_1042 ;
  wire \XLXI_27/Led<5>/CLKINV_1035 ;
  wire \XLXI_27/Led<5>/CEINV_1034 ;
  wire \XLXI_21/UdBuf<12>/DXMUX_1185 ;
  wire \XLXI_21/UdBuf_12_mux0000 ;
  wire \XLXI_21/UdBuf<12>/DYMUX_1174 ;
  wire \XLXI_21/UdBuf_11_mux0000 ;
  wire \XLXI_21/UdBuf<12>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<15>/DXMUX_1151 ;
  wire \XLXI_21/UdBuf_15_mux0000 ;
  wire \XLXI_21/UdBuf<15>/DYMUX_1140 ;
  wire \XLXI_21/UdBuf_10_mux0000 ;
  wire \XLXI_21/UdBuf<15>/CLKINVNOT ;
  wire \XLXI_27/Led<3>/DXMUX_1015 ;
  wire \XLXI_27/Led<3>/FXMUX_1014 ;
  wire \XLXI_27/Led<3>/DYMUX_1003 ;
  wire \XLXI_27/Led<3>/GYMUX_1002 ;
  wire \XLXI_27/Led<3>/CLKINV_995 ;
  wire \XLXI_27/Led<3>/CEINV_994 ;
  wire \XLXI_21/State_FSM_FFd3/DXMUX_1617 ;
  wire \XLXI_21/State_FSM_FFd3/DYMUX_1612 ;
  wire \XLXI_21/State_FSM_FFd3/GYMUX_1611 ;
  wire \XLXI_21/State_FSM_FFd4-In ;
  wire \XLXI_21/State_FSM_FFd3/CLKINVNOT ;
  wire \XLXI_21/AdrBus<3>/DXMUX_1665 ;
  wire \XLXI_21/AdrBus<3>/DYMUX_1659 ;
  wire \XLXI_21/AdrBus<3>/CLKINVNOT ;
  wire \XLXI_21/AdrBus<3>/CEINV_1656 ;
  wire \XLXI_21/InBuf<4>/DYMUX_1497 ;
  wire \XLXI_21/InBuf<4>/CLKINVNOT ;
  wire \XLXI_21/InBuf<4>/CEINV_1494 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>17_1487 ;
  wire \XLXI_21/InBuf<8>/DYMUX_1569 ;
  wire \XLXI_21/InBuf<8>/CLKINVNOT ;
  wire \XLXI_21/InBuf<8>/CEINV_1566 ;
  wire \XLXI_21/AdrBus<1>/DXMUX_1645 ;
  wire \XLXI_21/AdrBus<1>/DYMUX_1639 ;
  wire \XLXI_21/AdrBus<1>/CLKINVNOT ;
  wire \XLXI_21/AdrBus<1>/CEINV_1636 ;
  wire \XLXI_21/InBuf<6>/DYMUX_1521 ;
  wire \XLXI_21/InBuf<6>/CLKINVNOT ;
  wire \XLXI_21/InBuf<6>/CEINV_1518 ;
  wire N13;
  wire \XLXI_21/InBuf<3>/DYMUX_1461 ;
  wire \XLXI_21/InBuf<3>/CLKINVNOT ;
  wire \XLXI_21/InBuf<3>/CEINV_1458 ;
  wire \XLXI_21/InBuf<7>/DYMUX_1533 ;
  wire \XLXI_21/InBuf<7>/CLKINVNOT ;
  wire \XLXI_21/InBuf<7>/CEINV_1530 ;
  wire \XLXI_21/InBuf<5>/DYMUX_1509 ;
  wire \XLXI_21/InBuf<5>/CLKINVNOT ;
  wire \XLXI_21/InBuf<5>/CEINV_1506 ;
  wire \XLXI_21/State_FSM_FFd2/DYMUX_1591 ;
  wire \XLXI_21/State_FSM_FFd2/CLKINVNOT ;
  wire N14;
  wire N121;
  wire \XLXI_21/State_FSM_FFd6/DYMUX_1626 ;
  wire \XLXI_21/State_FSM_FFd6/CLKINVNOT ;
  wire \XLXI_21/InBuf<9>/DYMUX_1581 ;
  wire \XLXI_21/InBuf<9>/CLKINVNOT ;
  wire \XLXI_21/InBuf<9>/CEINV_1578 ;
  wire \XLXI_21/InBuf_10_and0000 ;
  wire \XLXI_21/InBuf_8_and0000 ;
  wire \XLXI_21/UdBuf_5_mux00000_1298 ;
  wire \XLXI_21/UdBuf_7_mux00000_1289 ;
  wire \XLXI_21/UdBuf<14>/DXMUX_1219 ;
  wire \XLXI_21/UdBuf_14_mux0000 ;
  wire \XLXI_21/UdBuf<14>/DYMUX_1208 ;
  wire \XLXI_21/UdBuf_13_mux0000 ;
  wire \XLXI_21/UdBuf<14>/CLKINVNOT ;
  wire \XLXI_21/InBuf<0>/DYMUX_1401 ;
  wire \XLXI_21/InBuf<0>/CLKINVNOT ;
  wire \XLXI_21/InBuf<0>/CEINV_1398 ;
  wire \XLXI_21/InBuf<1>/DYMUX_1413 ;
  wire \XLXI_21/InBuf<1>/CLKINVNOT ;
  wire \XLXI_21/InBuf<1>/CEINV_1410 ;
  wire \XLXI_21/InBuf_12_and0000 ;
  wire \XLXI_21/InBuf_15_and0000 ;
  wire \XLXI_21/SClk_Count<0>/DXMUX_1364 ;
  wire \XLXI_21/InBuf_0_and0000 ;
  wire \XLXI_21/SClk_Count<0>/DYMUX_1350 ;
  wire \XLXI_21/SClk_Count<0>/SRINV_1340 ;
  wire \XLXI_21/SClk_Count<0>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<0>/CEINV_1338 ;
  wire \XLXI_21/InBuf<2>/DYMUX_1425 ;
  wire \XLXI_21/InBuf<2>/CLKINVNOT ;
  wire \XLXI_21/InBuf<2>/CEINV_1422 ;
  wire \XLXI_21/UdBuf_4_mux00000_1250 ;
  wire \XLXI_21/UdBuf<8>/DYMUX_1240 ;
  wire \XLXI_21/UdBuf_8_mux0000 ;
  wire \XLXI_21/UdBuf<8>/CLKINVNOT ;
  wire \XLXI_21/InBuf_4_and0000 ;
  wire \XLXI_21/InBuf_7_and0000 ;
  wire \clk/INBUF ;
  wire \XLXI_27/CS/DYMUX_2307 ;
  wire \XLXI_27/CS/BYINV_2306 ;
  wire \XLXI_27/CS/SRINV_2305 ;
  wire \XLXI_27/CS/CLKINV_2304 ;
  wire \XLXI_21/InBuf_11_and0000 ;
  wire \XLXI_21/InBuf_3_and0000 ;
  wire \XLXI_21/xSClk<1>/DXMUX_2372 ;
  wire \XLXI_21/xSClk<1>/DYMUX_2367 ;
  wire \XLXI_21/xSClk<1>/CLKINV_2365 ;
  wire \XLXI_21/WE_net/DYMUX_2355 ;
  wire \XLXI_21/WE_net/BYINV_2354 ;
  wire \XLXI_21/WE_net/SRINV_2353 ;
  wire \XLXI_21/WE_net/CLKINVNOT ;
  wire \XLXI_21/DataOut<11>/DXMUX_2403 ;
  wire \XLXI_21/DataOut<11>/DYMUX_2397 ;
  wire \XLXI_21/DataOut<11>/CLKINVNOT ;
  wire \XLXI_21/DataOut<11>/CEINV_2394 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/F5MUX_2438 ;
  wire \XLXI_21/Mmux__varindex0000_8_2436 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/BXINV_2431 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/F6MUX_2429 ;
  wire \XLXI_21/Mmux__varindex0000_9_2427 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/BYINV_2422 ;
  wire \XLXI_21/DataOut<9>/DXMUX_2271 ;
  wire \XLXI_21/DataOut<9>/DYMUX_2265 ;
  wire \XLXI_21/DataOut<9>/CLKINVNOT ;
  wire \XLXI_21/DataOut<9>/CEINV_2262 ;
  wire \led<2>/O ;
  wire \XLXI_21/UdBuf_6_mux00000_2385 ;
  wire \XLXI_21/DataOut<3>/DXMUX_2169 ;
  wire \XLXI_21/DataOut<3>/DYMUX_2163 ;
  wire \XLXI_21/DataOut<3>/CLKINVNOT ;
  wire \XLXI_21/DataOut<3>/CEINV_2160 ;
  wire \XLXI_21/UdBuf<9>/DXMUX_2200 ;
  wire \XLXI_21/UdBuf_9_mux0000 ;
  wire N01_pack_2;
  wire \XLXI_21/UdBuf<9>/CLKINVNOT ;
  wire \XLXI_21/Mmux__varindex0000_8_f5/F5MUX_2462 ;
  wire \XLXI_21/Mmux__varindex0000_91_2460 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5/BXINV_2455 ;
  wire \XLXI_21/Mmux__varindex0000_101_2453 ;
  wire \XLXI_21/InBuf_6_and0000 ;
  wire \XLXI_21/InBuf_5_and0000 ;
  wire \led<0>/O ;
  wire \led<1>/O ;
  wire \XLXI_21/DataOut<5>/DXMUX_2219 ;
  wire \XLXI_21/DataOut<5>/DYMUX_2213 ;
  wire \XLXI_21/DataOut<5>/CLKINVNOT ;
  wire \XLXI_21/DataOut<5>/CEINV_2210 ;
  wire \XLXI_21/InBuf_14_and0000 ;
  wire \XLXI_21/InBuf_13_and0000 ;
  wire N02;
  wire \XLXI_21/DataOut<7>/DXMUX_2251 ;
  wire \XLXI_21/DataOut<7>/DYMUX_2245 ;
  wire \XLXI_21/DataOut<7>/CLKINVNOT ;
  wire \XLXI_21/DataOut<7>/CEINV_2242 ;
  wire \XLXI_27/DataOut_not0001 ;
  wire \led<4>/O ;
  wire \led<5>/O ;
  wire \led<3>/O ;
  wire \XLXI_21/UdBuf<6>/DXMUX_2709 ;
  wire \XLXI_21/UdBuf<6>/F5MUX_2707 ;
  wire \XLXI_21/UdBuf_6_mux0000241 ;
  wire \XLXI_21/UdBuf<6>/BXINV_2699 ;
  wire \XLXI_21/UdBuf_6_mux00002411_2697 ;
  wire \XLXI_21/UdBuf<6>/SRINV_2692 ;
  wire \XLXI_21/UdBuf<6>/CLKINVNOT ;
  wire \N24/F5MUX_2762 ;
  wire N30;
  wire \N24/BXINV_2754 ;
  wire N29;
  wire \SPI_MOSI/INBUF ;
  wire \sw<1>/INBUF ;
  wire \XLXI_21/UdBuf<5>/DXMUX_2675 ;
  wire \XLXI_21/UdBuf<5>/F5MUX_2673 ;
  wire \XLXI_21/UdBuf_5_mux0000241 ;
  wire \XLXI_21/UdBuf<5>/BXINV_2665 ;
  wire \XLXI_21/UdBuf_5_mux00002411_2663 ;
  wire \XLXI_21/UdBuf<5>/SRINV_2658 ;
  wire \XLXI_21/UdBuf<5>/CLKINVNOT ;
  wire \SPI_SS/INBUF ;
  wire \sw<5>/INBUF ;
  wire \N25/F5MUX_2787 ;
  wire N32;
  wire \N25/BXINV_2779 ;
  wire N31;
  wire \sw<0>/INBUF ;
  wire \XLXI_27/Led_not0001/F5MUX_2737 ;
  wire \XLXI_27/Led_not0001/F ;
  wire \XLXI_27/Led_not0001/BXINV_2726 ;
  wire \XLXI_27/Led_not00011_2724 ;
  wire \sw<3>/INBUF ;
  wire \sw<2>/INBUF ;
  wire \sw<6>/INBUF ;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \sw<7>/INBUF ;
  wire \SPI_Clk/INBUF ;
  wire \XLXI_21/UdBuf<4>/DXMUX_2641 ;
  wire \XLXI_21/UdBuf<4>/F5MUX_2639 ;
  wire \XLXI_21/UdBuf_4_mux0000241 ;
  wire \XLXI_21/UdBuf<4>/BXINV_2631 ;
  wire \XLXI_21/UdBuf_4_mux00002411_2629 ;
  wire \XLXI_21/UdBuf<4>/SRINV_2624 ;
  wire \XLXI_21/UdBuf<4>/CLKINVNOT ;
  wire \sw<4>/INBUF ;
  wire \led<7>/O ;
  wire \SPI_MISO/O ;
  wire \led<6>/O ;
  wire \XLXI_21/State_FSM_FFd8/DXMUX_2849 ;
  wire \XLXI_21/State_FSM_FFd8-In_2846 ;
  wire \XLXI_21/State_FSM_FFd8-In_SW1/O_pack_2 ;
  wire \XLXI_21/State_FSM_FFd8/CLKINVNOT ;
  wire \XLXI_21/State_FSM_FFd1/DYMUX_2965 ;
  wire \XLXI_21/State_FSM_FFd1-In1 ;
  wire \XLXI_21/State_FSM_FFd1/SRINV_2956 ;
  wire \XLXI_21/State_FSM_FFd1/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<3>/DXMUX_2943 ;
  wire \XLXI_21/SClk_Count<3>/DYMUX_2930 ;
  wire \XLXI_21/SClk_Count<3>/SRINV_2921 ;
  wire \XLXI_21/SClk_Count<3>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<3>/CEINV_2919 ;
  wire \XLXI_21/UdBuf<7>/DXMUX_2818 ;
  wire \XLXI_21/UdBuf<7>/F5MUX_2816 ;
  wire \XLXI_21/UdBuf_7_mux0000241 ;
  wire \XLXI_21/UdBuf<7>/BXINV_2808 ;
  wire \XLXI_21/UdBuf_7_mux00002411_2806 ;
  wire \XLXI_21/UdBuf<7>/SRINV_2801 ;
  wire \XLXI_21/UdBuf<7>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>120_2874 ;
  wire \XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 ;
  wire \XLXI_21/MISO/DXMUX_2903 ;
  wire \XLXI_21/_varindex0000 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 ;
  wire \XLXI_21/MISO/CLKINVNOT ;
  wire GND;
  wire VCC;
  wire [1 : 0] \XLXI_21/xSClk ;
  wire [1 : 0] \XLXI_21/xSS ;
  wire [8 : 0] \XLXI_27/DataOut ;
  wire [11 : 0] \XLXI_21/DataOut ;
  wire [7 : 0] \XLXI_27/Led ;
  wire [3 : 0] \XLXI_21/SClk_Count ;
  wire [15 : 0] \XLXI_21/InBuf ;
  wire [3 : 0] \XLXI_21/SClk_Cnt ;
  wire [3 : 0] \XLXI_21/AdrBus ;
  wire [7 : 0] DataBus;
  wire [2 : 1] \XLXI_21/SClk_Cnt_mux0000 ;
  wire [3 : 1] \XLXI_21/Result ;
  initial $sdf_annotate("netgen/par/design_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/State_FSM_FFd9/XUSED  (
    .I(\XLXI_21/SClk_Count_and0000 ),
    .O(\XLXI_21/SClk_Count_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/State_FSM_FFd9/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd9-In ),
    .O(\XLXI_21/State_FSM_FFd9/DYMUX_929 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/State_FSM_FFd9/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd9/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_21/DataOut<1>/DXMUX  (
    .I(\XLXI_21/InBuf [14]),
    .O(\XLXI_21/DataOut<1>/DXMUX_2125 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_21/DataOut<1>/DYMUX  (
    .I(\XLXI_21/InBuf [15]),
    .O(\XLXI_21/DataOut<1>/DYMUX_2119 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_21/DataOut<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y44" ))
  \XLXI_21/DataOut<1>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<1>/CEINV_2116 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y34" ))
  \XLXI_21/InBuf_9_and0000/YUSED  (
    .I(\XLXI_21/State_cmp_eq0004_pack_1 ),
    .O(\XLXI_21/State_cmp_eq0004 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/InBuf<11>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<11>/DYMUX_2057 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/InBuf<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<11>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/InBuf<11>/CEINV  (
    .I(\XLXI_21/InBuf_11_and0000 ),
    .O(\XLXI_21/InBuf<11>/CEINV_2054 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_21/InBuf<14>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<14>/DYMUX_2093 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_21/InBuf<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<14>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_21/InBuf<14>/CEINV  (
    .I(\XLXI_21/InBuf_14_and0000 ),
    .O(\XLXI_21/InBuf<14>/CEINV_2090 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y41" ))
  \XLXI_27/DataOut<5>/DXMUX  (
    .I(\sw<5>/INBUF ),
    .O(\XLXI_27/DataOut<5>/DXMUX_1909 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y41" ))
  \XLXI_27/DataOut<5>/DYMUX  (
    .I(\sw<4>/INBUF ),
    .O(\XLXI_27/DataOut<5>/DYMUX_1903 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y41" ))
  \XLXI_27/DataOut<5>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<5>/SRINV_1901 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y41" ))
  \XLXI_27/DataOut<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<5>/CLKINV_1900 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \N22/XUSED  (
    .I(N22),
    .O(N22_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y36" ))
  \N22/YUSED  (
    .I(N21),
    .O(N21_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \XLXI_21/InBuf<10>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<10>/DYMUX_2045 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y40" ))
  \XLXI_21/InBuf<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<10>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \XLXI_21/InBuf<10>/CEINV  (
    .I(\XLXI_21/InBuf_10_and0000 ),
    .O(\XLXI_21/InBuf<10>/CEINV_2042 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \XLXI_27/DataOut<7>/DXMUX  (
    .I(\sw<7>/INBUF ),
    .O(\XLXI_27/DataOut<7>/DXMUX_1973 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \XLXI_27/DataOut<7>/DYMUX  (
    .I(\sw<6>/INBUF ),
    .O(\XLXI_27/DataOut<7>/DYMUX_1967 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \XLXI_27/DataOut<7>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<7>/SRINV_1965 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y39" ))
  \XLXI_27/DataOut<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<7>/CLKINV_1964 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/InBuf<12>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<12>/DYMUX_2069 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/InBuf<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<12>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/InBuf<12>/CEINV  (
    .I(\XLXI_21/InBuf_12_and0000 ),
    .O(\XLXI_21/InBuf<12>/CEINV_2066 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_21/InBuf<13>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<13>/DYMUX_2081 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_21/InBuf<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<13>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_21/InBuf<13>/CEINV  (
    .I(\XLXI_21/InBuf_13_and0000 ),
    .O(\XLXI_21/InBuf<13>/CEINV_2078 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y38" ))
  \N111/XUSED  (
    .I(N111),
    .O(N111_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \N131/XUSED  (
    .I(N131),
    .O(N131_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \N131/YUSED  (
    .I(N12),
    .O(N12_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/InBuf<15>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<15>/DYMUX_2105 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/InBuf<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<15>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y45" ))
  \XLXI_21/InBuf<15>/CEINV  (
    .I(\XLXI_21/InBuf_15_and0000 ),
    .O(\XLXI_21/InBuf<15>/CEINV_2102 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y38" ))
  \XLXI_21/State_FSM_FFd5/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd5-In1 ),
    .O(\XLXI_21/State_FSM_FFd5/DXMUX_1729 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y38" ))
  \XLXI_21/State_FSM_FFd5/YUSED  (
    .I(\XLXI_21/State_cmp_eq0003_pack_2 ),
    .O(\XLXI_21/State_cmp_eq0003 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y38" ))
  \XLXI_21/State_FSM_FFd5/SRINV  (
    .I(\XLXI_21/State_FSM_FFd6_792 ),
    .O(\XLXI_21/State_FSM_FFd5/SRINV_1714 )
  );
  X_INV #(
    .LOC ( "SLICE_X50Y38" ))
  \XLXI_21/State_FSM_FFd5/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd5/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y35" ))
  \XLXI_21/xSS<1>/DXMUX  (
    .I(\XLXI_21/xSS [0]),
    .O(\XLXI_21/xSS<1>/DXMUX_1770 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y35" ))
  \XLXI_21/xSS<1>/DYMUX  (
    .I(\SPI_SS/INBUF ),
    .O(\XLXI_21/xSS<1>/DYMUX_1765 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y35" ))
  \XLXI_21/xSS<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/xSS<1>/CLKINV_1763 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_27/DataOut<1>/DXMUX  (
    .I(\sw<1>/INBUF ),
    .O(\XLXI_27/DataOut<1>/DXMUX_1801 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_27/DataOut<1>/DYMUX  (
    .I(\sw<0>/INBUF ),
    .O(\XLXI_27/DataOut<1>/DYMUX_1795 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_27/DataOut<1>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<1>/SRINV_1793 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_27/DataOut<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<1>/CLKINV_1792 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/SClk_Cnt<1>/DXMUX  (
    .I(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/SClk_Cnt<1>/DXMUX_1841 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/SClk_Cnt<1>/DYMUX  (
    .I(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/SClk_Cnt<1>/DYMUX_1835 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/SClk_Cnt<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Cnt<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/SClk_Cnt<1>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Cnt<1>/CEINV_1832 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y36" ))
  \N16/XUSED  (
    .I(N16),
    .O(N16_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y36" ))
  \N16/YUSED  (
    .I(N15),
    .O(N15_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y37" ))
  \N19/XUSED  (
    .I(N19),
    .O(N19_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y37" ))
  \N19/YUSED  (
    .I(N18),
    .O(N18_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \XLXI_27/DataOut<8>/DYMUX  (
    .I(\XLXI_27/DataOut<8>/BYINV_2032 ),
    .O(\XLXI_27/DataOut<8>/DYMUX_2033 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \XLXI_27/DataOut<8>/BYINV  (
    .I(1'b1),
    .O(\XLXI_27/DataOut<8>/BYINV_2032 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \XLXI_27/DataOut<8>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<8>/SRINV_2031 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y43" ))
  \XLXI_27/DataOut<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<8>/CLKINV_2030 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/SClk_Cnt<3>/DXMUX  (
    .I(\XLXI_21/SClk_Count [3]),
    .O(\XLXI_21/SClk_Cnt<3>/DXMUX_1929 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/SClk_Cnt<3>/DYMUX  (
    .I(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/SClk_Cnt<3>/DYMUX_1923 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/SClk_Cnt<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Cnt<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/SClk_Cnt<3>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Cnt<3>/CEINV_1920 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_27/DataOut<3>/DXMUX  (
    .I(\sw<3>/INBUF ),
    .O(\XLXI_27/DataOut<3>/DXMUX_1821 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_27/DataOut<3>/DYMUX  (
    .I(\sw<2>/INBUF ),
    .O(\XLXI_27/DataOut<3>/DYMUX_1815 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_27/DataOut<3>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<3>/SRINV_1813 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_27/DataOut<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<3>/CLKINV_1812 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd7/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd7/FXMUX_1696 ),
    .O(\XLXI_21/State_FSM_FFd7/DXMUX_1697 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd7/XUSED  (
    .I(\XLXI_21/State_FSM_FFd7/FXMUX_1696 ),
    .O(\XLXI_21/State_FSM_FFd7-In_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd7/FXMUX  (
    .I(\XLXI_21/State_FSM_FFd7-In ),
    .O(\XLXI_21/State_FSM_FFd7/FXMUX_1696 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd7/YUSED  (
    .I(\XLXI_21/State_cmp_eq0001_pack_1 ),
    .O(\XLXI_21/State_cmp_eq0001 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd7/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd7/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/DXMUX  (
    .I(\XLXI_27/Led<7>/FXMUX_1094 ),
    .O(\XLXI_27/Led<7>/DXMUX_1095 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/XUSED  (
    .I(\XLXI_27/Led<7>/FXMUX_1094 ),
    .O(\DataBus<7>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/FXMUX  (
    .I(DataBus[7]),
    .O(\XLXI_27/Led<7>/FXMUX_1094 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/DYMUX  (
    .I(\XLXI_27/Led<7>/GYMUX_1082 ),
    .O(\XLXI_27/Led<7>/DYMUX_1083 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/YUSED  (
    .I(\XLXI_27/Led<7>/GYMUX_1082 ),
    .O(\DataBus<6>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/GYMUX  (
    .I(DataBus[6]),
    .O(\XLXI_27/Led<7>/GYMUX_1082 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<7>/CLKINV_1075 )
  );
  X_BUF #(
    .LOC ( "SLICE_X50Y41" ))
  \XLXI_27/Led<7>/CEINV  (
    .I(\XLXI_27/Led_not0001 ),
    .O(\XLXI_27/Led<7>/CEINV_1074 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/DXMUX  (
    .I(\XLXI_27/Led<1>/FXMUX_974 ),
    .O(\XLXI_27/Led<1>/DXMUX_975 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/XUSED  (
    .I(\XLXI_27/Led<1>/FXMUX_974 ),
    .O(\DataBus<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/FXMUX  (
    .I(DataBus[1]),
    .O(\XLXI_27/Led<1>/FXMUX_974 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/DYMUX  (
    .I(\XLXI_27/Led<1>/GYMUX_962 ),
    .O(\XLXI_27/Led<1>/DYMUX_963 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/YUSED  (
    .I(\XLXI_27/Led<1>/GYMUX_962 ),
    .O(\DataBus<0>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/GYMUX  (
    .I(DataBus[0]),
    .O(\XLXI_27/Led<1>/GYMUX_962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<1>/CLKINV_955 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_27/Led<1>/CEINV  (
    .I(\XLXI_27/Led_not0001 ),
    .O(\XLXI_27/Led<1>/CEINV_954 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y34" ))
  \XLXI_21/UdBuf<0>/DYMUX  (
    .I(\XLXI_21/State_cmp_eq0000 ),
    .O(\XLXI_21/UdBuf<0>/DYMUX_1116 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y34" ))
  \XLXI_21/UdBuf<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y34" ))
  \XLXI_21/UdBuf<0>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd9_753 ),
    .O(\XLXI_21/UdBuf<0>/CEINV_1105 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/DXMUX  (
    .I(\XLXI_27/Led<5>/FXMUX_1054 ),
    .O(\XLXI_27/Led<5>/DXMUX_1055 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/XUSED  (
    .I(\XLXI_27/Led<5>/FXMUX_1054 ),
    .O(\DataBus<5>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/FXMUX  (
    .I(DataBus[5]),
    .O(\XLXI_27/Led<5>/FXMUX_1054 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/DYMUX  (
    .I(\XLXI_27/Led<5>/GYMUX_1042 ),
    .O(\XLXI_27/Led<5>/DYMUX_1043 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/YUSED  (
    .I(\XLXI_27/Led<5>/GYMUX_1042 ),
    .O(\DataBus<4>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/GYMUX  (
    .I(DataBus[4]),
    .O(\XLXI_27/Led<5>/GYMUX_1042 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<5>/CLKINV_1035 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y40" ))
  \XLXI_27/Led<5>/CEINV  (
    .I(\XLXI_27/Led_not0001 ),
    .O(\XLXI_27/Led<5>/CEINV_1034 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/UdBuf<12>/DXMUX  (
    .I(\XLXI_21/UdBuf_12_mux0000 ),
    .O(\XLXI_21/UdBuf<12>/DXMUX_1185 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/UdBuf<12>/DYMUX  (
    .I(\XLXI_21/UdBuf_11_mux0000 ),
    .O(\XLXI_21/UdBuf<12>/DYMUX_1174 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/UdBuf<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<12>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/UdBuf<15>/DXMUX  (
    .I(\XLXI_21/UdBuf_15_mux0000 ),
    .O(\XLXI_21/UdBuf<15>/DXMUX_1151 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/UdBuf<15>/DYMUX  (
    .I(\XLXI_21/UdBuf_10_mux0000 ),
    .O(\XLXI_21/UdBuf<15>/DYMUX_1140 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/UdBuf<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<15>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/DXMUX  (
    .I(\XLXI_27/Led<3>/FXMUX_1014 ),
    .O(\XLXI_27/Led<3>/DXMUX_1015 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/XUSED  (
    .I(\XLXI_27/Led<3>/FXMUX_1014 ),
    .O(\DataBus<3>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/FXMUX  (
    .I(DataBus[3]),
    .O(\XLXI_27/Led<3>/FXMUX_1014 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/DYMUX  (
    .I(\XLXI_27/Led<3>/GYMUX_1002 ),
    .O(\XLXI_27/Led<3>/DYMUX_1003 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/YUSED  (
    .I(\XLXI_27/Led<3>/GYMUX_1002 ),
    .O(\DataBus<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/GYMUX  (
    .I(DataBus[2]),
    .O(\XLXI_27/Led<3>/GYMUX_1002 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<3>/CLKINV_995 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_27/Led<3>/CEINV  (
    .I(\XLXI_27/Led_not0001 ),
    .O(\XLXI_27/Led<3>/CEINV_994 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/State_FSM_FFd3/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd4_848 ),
    .O(\XLXI_21/State_FSM_FFd3/DXMUX_1617 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/State_FSM_FFd3/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd3/GYMUX_1611 ),
    .O(\XLXI_21/State_FSM_FFd3/DYMUX_1612 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/State_FSM_FFd3/YUSED  (
    .I(\XLXI_21/State_FSM_FFd3/GYMUX_1611 ),
    .O(\XLXI_21/State_FSM_FFd4-In_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/State_FSM_FFd3/GYMUX  (
    .I(\XLXI_21/State_FSM_FFd4-In ),
    .O(\XLXI_21/State_FSM_FFd3/GYMUX_1611 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/State_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd3/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y41" ))
  \XLXI_21/AdrBus<3>/DXMUX  (
    .I(\XLXI_21/InBuf [0]),
    .O(\XLXI_21/AdrBus<3>/DXMUX_1665 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y41" ))
  \XLXI_21/AdrBus<3>/DYMUX  (
    .I(\XLXI_21/InBuf [1]),
    .O(\XLXI_21/AdrBus<3>/DYMUX_1659 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y41" ))
  \XLXI_21/AdrBus<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/AdrBus<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y41" ))
  \XLXI_21/AdrBus<3>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd7-In_0 ),
    .O(\XLXI_21/AdrBus<3>/CEINV_1656 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y35" ))
  \XLXI_21/InBuf<4>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<4>/DYMUX_1497 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y35" ))
  \XLXI_21/InBuf<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<4>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y35" ))
  \XLXI_21/InBuf<4>/CEINV  (
    .I(\XLXI_21/InBuf_4_and0000 ),
    .O(\XLXI_21/InBuf<4>/CEINV_1494 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/SClk_Cnt_mux0000<3>17/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>17_1487 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>17_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/SClk_Cnt_mux0000<3>17/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000 [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \XLXI_21/InBuf<8>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<8>/DYMUX_1569 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y41" ))
  \XLXI_21/InBuf<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<8>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \XLXI_21/InBuf<8>/CEINV  (
    .I(\XLXI_21/InBuf_8_and0000 ),
    .O(\XLXI_21/InBuf<8>/CEINV_1566 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/AdrBus<1>/DXMUX  (
    .I(\XLXI_21/InBuf [2]),
    .O(\XLXI_21/AdrBus<1>/DXMUX_1645 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/AdrBus<1>/DYMUX  (
    .I(\XLXI_21/InBuf [3]),
    .O(\XLXI_21/AdrBus<1>/DYMUX_1639 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/AdrBus<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/AdrBus<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/AdrBus<1>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd7-In_0 ),
    .O(\XLXI_21/AdrBus<1>/CEINV_1636 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/InBuf<6>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<6>/DYMUX_1521 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/InBuf<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<6>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/InBuf<6>/CEINV  (
    .I(\XLXI_21/InBuf_6_and0000 ),
    .O(\XLXI_21/InBuf<6>/CEINV_1518 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y35" ))
  \N13/XUSED  (
    .I(N13),
    .O(N13_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y35" ))
  \N13/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000 [2]),
    .O(\XLXI_21/SClk_Cnt_mux0000<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/InBuf<3>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<3>/DYMUX_1461 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/InBuf<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/InBuf<3>/CEINV  (
    .I(\XLXI_21/InBuf_3_and0000 ),
    .O(\XLXI_21/InBuf<3>/CEINV_1458 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/InBuf<7>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<7>/DYMUX_1533 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/InBuf<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/InBuf<7>/CEINV  (
    .I(\XLXI_21/InBuf_7_and0000 ),
    .O(\XLXI_21/InBuf<7>/CEINV_1530 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y42" ))
  \XLXI_21/InBuf<5>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<5>/DYMUX_1509 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y42" ))
  \XLXI_21/InBuf<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<5>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y42" ))
  \XLXI_21/InBuf<5>/CEINV  (
    .I(\XLXI_21/InBuf_5_and0000 ),
    .O(\XLXI_21/InBuf<5>/CEINV_1506 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y38" ))
  \XLXI_21/State_FSM_FFd2/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd3_846 ),
    .O(\XLXI_21/State_FSM_FFd2/DYMUX_1591 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y38" ))
  \XLXI_21/State_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd2/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y36" ))
  \N14/XUSED  (
    .I(N14),
    .O(N14_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y36" ))
  \N14/YUSED  (
    .I(N121),
    .O(N121_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y40" ))
  \XLXI_21/State_FSM_FFd6/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd7_852 ),
    .O(\XLXI_21/State_FSM_FFd6/DYMUX_1626 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y40" ))
  \XLXI_21/State_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd6/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y34" ))
  \XLXI_21/InBuf<9>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<9>/DYMUX_1581 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y34" ))
  \XLXI_21/InBuf<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y34" ))
  \XLXI_21/InBuf<9>/CEINV  (
    .I(\XLXI_21/InBuf_9_and0000 ),
    .O(\XLXI_21/InBuf<9>/CEINV_1578 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/UdBuf<14>/DXMUX  (
    .I(\XLXI_21/UdBuf_14_mux0000 ),
    .O(\XLXI_21/UdBuf<14>/DXMUX_1219 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/UdBuf<14>/DYMUX  (
    .I(\XLXI_21/UdBuf_13_mux0000 ),
    .O(\XLXI_21/UdBuf<14>/DYMUX_1208 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/UdBuf<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<14>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_21/InBuf<0>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<0>/DYMUX_1401 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_21/InBuf<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_21/InBuf<0>/CEINV  (
    .I(\XLXI_21/InBuf_0_and0000 ),
    .O(\XLXI_21/InBuf<0>/CEINV_1398 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/InBuf<1>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<1>/DYMUX_1413 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/InBuf<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/InBuf<1>/CEINV  (
    .I(\XLXI_21/InBuf_1_and0000 ),
    .O(\XLXI_21/InBuf<1>/CEINV_1410 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/SClk_Count<0>/DXMUX  (
    .I(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/SClk_Count<0>/DXMUX_1364 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/SClk_Count<0>/DYMUX  (
    .I(\XLXI_21/Result [1]),
    .O(\XLXI_21/SClk_Count<0>/DYMUX_1350 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/SClk_Count<0>/SRINV  (
    .I(\XLXI_21/SClk_Count_and0000_0 ),
    .O(\XLXI_21/SClk_Count<0>/SRINV_1340 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/SClk_Count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Count<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/SClk_Count<0>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Count<0>/CEINV_1338 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/InBuf<2>/DYMUX  (
    .I(SPI_MOSI_IBUF_821),
    .O(\XLXI_21/InBuf<2>/DYMUX_1425 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/InBuf<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<2>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/InBuf<2>/CEINV  (
    .I(\XLXI_21/InBuf_2_and0000 ),
    .O(\XLXI_21/InBuf<2>/CEINV_1422 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/UdBuf<8>/DYMUX  (
    .I(\XLXI_21/UdBuf_8_mux0000 ),
    .O(\XLXI_21/UdBuf<8>/DYMUX_1240 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/UdBuf<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<8>/CLKINVNOT )
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
    .LOC ( "SLICE_X51Y40" ))
  \XLXI_27/CS/DYMUX  (
    .I(\XLXI_27/CS/BYINV_2306 ),
    .O(\XLXI_27/CS/DYMUX_2307 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \XLXI_27/CS/BYINV  (
    .I(1'b1),
    .O(\XLXI_27/CS/BYINV_2306 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \XLXI_27/CS/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/CS/SRINV_2305 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y40" ))
  \XLXI_27/CS/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/CS/CLKINV_2304 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y37" ))
  \XLXI_21/xSClk<1>/DXMUX  (
    .I(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/xSClk<1>/DXMUX_2372 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y37" ))
  \XLXI_21/xSClk<1>/DYMUX  (
    .I(\SPI_Clk/INBUF ),
    .O(\XLXI_21/xSClk<1>/DYMUX_2367 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y37" ))
  \XLXI_21/xSClk<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/xSClk<1>/CLKINV_2365 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/WE_net/DYMUX  (
    .I(\XLXI_21/WE_net/BYINV_2354 ),
    .O(\XLXI_21/WE_net/DYMUX_2355 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/WE_net/BYINV  (
    .I(1'b1),
    .O(\XLXI_21/WE_net/BYINV_2354 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/WE_net/SRINV  (
    .I(\XLXI_21/State_FSM_FFd4_848 ),
    .O(\XLXI_21/WE_net/SRINV_2353 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/WE_net/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/WE_net/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y43" ))
  \XLXI_21/DataOut<11>/DXMUX  (
    .I(\XLXI_21/InBuf [4]),
    .O(\XLXI_21/DataOut<11>/DXMUX_2403 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y43" ))
  \XLXI_21/DataOut<11>/DYMUX  (
    .I(\XLXI_21/InBuf [5]),
    .O(\XLXI_21/DataOut<11>/DYMUX_2397 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y43" ))
  \XLXI_21/DataOut<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<11>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y43" ))
  \XLXI_21/DataOut<11>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<11>/CEINV_2394 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F5USED  (
    .I(\XLXI_21/Mmux__varindex0000_6_f6/F5MUX_2438 ),
    .O(\XLXI_21/Mmux__varindex0000_7_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F5MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_9_2427 ),
    .IB(\XLXI_21/Mmux__varindex0000_8_2436 ),
    .SEL(\XLXI_21/Mmux__varindex0000_6_f6/BXINV_2431 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/F5MUX_2438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_6_f6/BXINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<1>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/BXINV_2431 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_6_f6/YUSED  (
    .I(\XLXI_21/Mmux__varindex0000_6_f6/F6MUX_2429 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F6MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_8_f5 ),
    .IB(\XLXI_21/Mmux__varindex0000_7_f5 ),
    .SEL(\XLXI_21/Mmux__varindex0000_6_f6/BYINV_2422 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/F6MUX_2429 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_6_f6/BYINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<2>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/BYINV_2422 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/DataOut<9>/DXMUX  (
    .I(\XLXI_21/InBuf [6]),
    .O(\XLXI_21/DataOut<9>/DXMUX_2271 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/DataOut<9>/DYMUX  (
    .I(\XLXI_21/InBuf [7]),
    .O(\XLXI_21/DataOut<9>/DYMUX_2265 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/DataOut<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/DataOut<9>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<9>/CEINV_2262 )
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
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/DataOut<3>/DXMUX  (
    .I(\XLXI_21/InBuf [12]),
    .O(\XLXI_21/DataOut<3>/DXMUX_2169 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/DataOut<3>/DYMUX  (
    .I(\XLXI_21/InBuf [13]),
    .O(\XLXI_21/DataOut<3>/DYMUX_2163 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/DataOut<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/DataOut<3>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<3>/CEINV_2160 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y39" ))
  \XLXI_21/UdBuf<9>/DXMUX  (
    .I(\XLXI_21/UdBuf_9_mux0000 ),
    .O(\XLXI_21/UdBuf<9>/DXMUX_2200 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y39" ))
  \XLXI_21/UdBuf<9>/YUSED  (
    .I(N01_pack_2),
    .O(N01)
  );
  X_INV #(
    .LOC ( "SLICE_X48Y39" ))
  \XLXI_21/UdBuf<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/Mmux__varindex0000_8_f5/F5USED  (
    .I(\XLXI_21/Mmux__varindex0000_8_f5/F5MUX_2462 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/Mmux__varindex0000_8_f5/F5MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_101_2453 ),
    .IB(\XLXI_21/Mmux__varindex0000_91_2460 ),
    .SEL(\XLXI_21/Mmux__varindex0000_8_f5/BXINV_2455 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5/F5MUX_2462 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/Mmux__varindex0000_8_f5/BXINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<1>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5/BXINV_2455 )
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
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/DataOut<5>/DXMUX  (
    .I(\XLXI_21/InBuf [10]),
    .O(\XLXI_21/DataOut<5>/DXMUX_2219 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/DataOut<5>/DYMUX  (
    .I(\XLXI_21/InBuf [11]),
    .O(\XLXI_21/DataOut<5>/DYMUX_2213 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/DataOut<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<5>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/DataOut<5>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<5>/CEINV_2210 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y38" ))
  \N02/XUSED  (
    .I(N02),
    .O(N02_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \XLXI_21/DataOut<7>/DXMUX  (
    .I(\XLXI_21/InBuf [8]),
    .O(\XLXI_21/DataOut<7>/DXMUX_2251 )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \XLXI_21/DataOut<7>/DYMUX  (
    .I(\XLXI_21/InBuf [9]),
    .O(\XLXI_21/DataOut<7>/DYMUX_2245 )
  );
  X_INV #(
    .LOC ( "SLICE_X51Y41" ))
  \XLXI_21/DataOut<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X51Y41" ))
  \XLXI_21/DataOut<7>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd4-In_0 ),
    .O(\XLXI_21/DataOut<7>/CEINV_2242 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_27/DataOut_not0001/YUSED  (
    .I(\XLXI_27/DataOut_not0001 ),
    .O(\XLXI_27/DataOut_not0001_0 )
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
  X_BUF #(
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf<6>/DXMUX  (
    .I(\XLXI_21/UdBuf<6>/F5MUX_2707 ),
    .O(\XLXI_21/UdBuf<6>/DXMUX_2709 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf<6>/F5MUX  (
    .IA(\XLXI_21/UdBuf_6_mux00002411_2697 ),
    .IB(\XLXI_21/UdBuf_6_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<6>/BXINV_2699 ),
    .O(\XLXI_21/UdBuf<6>/F5MUX_2707 )
  );
  X_BUF #(
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf<6>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<6>/BXINV_2699 )
  );
  X_BUF #(
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf<6>/SRINV  (
    .I(\XLXI_21/UdBuf_6_mux00000_2385 ),
    .O(\XLXI_21/UdBuf<6>/SRINV_2692 )
  );
  X_INV #(
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<6>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y43" ))
  \N24/XUSED  (
    .I(\N24/F5MUX_2762 ),
    .O(N24)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X48Y43" ))
  \N24/F5MUX  (
    .IA(N29),
    .IB(N30),
    .SEL(\N24/BXINV_2754 ),
    .O(\N24/F5MUX_2762 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y43" ))
  \N24/BXINV  (
    .I(\XLXI_21/SClk_Cnt [1]),
    .O(\N24/BXINV_2754 )
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
  X_BUF #(
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf<5>/DXMUX  (
    .I(\XLXI_21/UdBuf<5>/F5MUX_2673 ),
    .O(\XLXI_21/UdBuf<5>/DXMUX_2675 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf<5>/F5MUX  (
    .IA(\XLXI_21/UdBuf_5_mux00002411_2663 ),
    .IB(\XLXI_21/UdBuf_5_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<5>/BXINV_2665 ),
    .O(\XLXI_21/UdBuf<5>/F5MUX_2673 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf<5>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<5>/BXINV_2665 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf<5>/SRINV  (
    .I(\XLXI_21/UdBuf_5_mux00000_1298 ),
    .O(\XLXI_21/UdBuf<5>/SRINV_2658 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<5>/CLKINVNOT )
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
  X_BUF #(
    .LOC ( "SLICE_X49Y42" ))
  \N25/XUSED  (
    .I(\N25/F5MUX_2787 ),
    .O(N25)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X49Y42" ))
  \N25/F5MUX  (
    .IA(N31),
    .IB(N32),
    .SEL(\N25/BXINV_2779 ),
    .O(\N25/F5MUX_2787 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y42" ))
  \N25/BXINV  (
    .I(\XLXI_21/SClk_Count [1]),
    .O(\N25/BXINV_2779 )
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
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_27/Led_not0001/XUSED  (
    .I(\XLXI_27/Led_not0001/F5MUX_2737 ),
    .O(\XLXI_27/Led_not0001 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_27/Led_not0001/F5MUX  (
    .IA(\XLXI_27/Led_not00011_2724 ),
    .IB(\XLXI_27/Led_not0001/F ),
    .SEL(\XLXI_27/Led_not0001/BXINV_2726 ),
    .O(\XLXI_27/Led_not0001/F5MUX_2737 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_27/Led_not0001/BXINV  (
    .I(\XLXI_21/WE_net_757 ),
    .O(\XLXI_27/Led_not0001/BXINV_2726 )
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
  X_BUF #(
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf<4>/DXMUX  (
    .I(\XLXI_21/UdBuf<4>/F5MUX_2639 ),
    .O(\XLXI_21/UdBuf<4>/DXMUX_2641 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf<4>/F5MUX  (
    .IA(\XLXI_21/UdBuf_4_mux00002411_2629 ),
    .IB(\XLXI_21/UdBuf_4_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<4>/BXINV_2631 ),
    .O(\XLXI_21/UdBuf<4>/F5MUX_2639 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf<4>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<4>/BXINV_2631 )
  );
  X_BUF #(
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf<4>/SRINV  (
    .I(\XLXI_21/UdBuf_4_mux00000_1250 ),
    .O(\XLXI_21/UdBuf<4>/SRINV_2624 )
  );
  X_INV #(
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<4>/CLKINVNOT )
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
  X_BUF #(
    .LOC ( "SLICE_X55Y39" ))
  \XLXI_21/State_FSM_FFd8/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd8-In_2846 ),
    .O(\XLXI_21/State_FSM_FFd8/DXMUX_2849 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y39" ))
  \XLXI_21/State_FSM_FFd8/YUSED  (
    .I(\XLXI_21/State_FSM_FFd8-In_SW1/O_pack_2 ),
    .O(\XLXI_21/State_FSM_FFd8-In_SW1/O )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y39" ))
  \XLXI_21/State_FSM_FFd8/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd8/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd1/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd1-In1 ),
    .O(\XLXI_21/State_FSM_FFd1/DYMUX_2965 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd1/SRINV  (
    .I(\XLXI_21/State_FSM_FFd2_847 ),
    .O(\XLXI_21/State_FSM_FFd1/SRINV_2956 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd1/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/SClk_Count<3>/DXMUX  (
    .I(\XLXI_21/Result [3]),
    .O(\XLXI_21/SClk_Count<3>/DXMUX_2943 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/SClk_Count<3>/DYMUX  (
    .I(\XLXI_21/Result [2]),
    .O(\XLXI_21/SClk_Count<3>/DYMUX_2930 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/SClk_Count<3>/SRINV  (
    .I(\XLXI_21/SClk_Count_and0000_0 ),
    .O(\XLXI_21/SClk_Count<3>/SRINV_2921 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/SClk_Count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Count<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/SClk_Count<3>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Count<3>/CEINV_2919 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf<7>/DXMUX  (
    .I(\XLXI_21/UdBuf<7>/F5MUX_2816 ),
    .O(\XLXI_21/UdBuf<7>/DXMUX_2818 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf<7>/F5MUX  (
    .IA(\XLXI_21/UdBuf_7_mux00002411_2806 ),
    .IB(\XLXI_21/UdBuf_7_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<7>/BXINV_2808 ),
    .O(\XLXI_21/UdBuf<7>/F5MUX_2816 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf<7>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<7>/BXINV_2808 )
  );
  X_BUF #(
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf<7>/SRINV  (
    .I(\XLXI_21/UdBuf_7_mux00000_1289 ),
    .O(\XLXI_21/UdBuf<7>/SRINV_2801 )
  );
  X_INV #(
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>120_2874 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>120_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120/YUSED  (
    .I(\XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 ),
    .O(\XLXI_21/Mmux__varindex0000_9_f5/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/MISO/DXMUX  (
    .I(\XLXI_21/_varindex0000 ),
    .O(\XLXI_21/MISO/DXMUX_2903 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/MISO/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>132/O )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/MISO/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/MISO/CLKINVNOT )
  );
  X_LUT4 #(
    .INIT ( 16'h5C00 ),
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf_7_mux00002412  (
    .ADR0(\XLXI_27/CS_759 ),
    .ADR1(\XLXI_21/DataOut [8]),
    .ADR2(\XLXI_21/WE_net_757 ),
    .ADR3(\XLXI_21/State_FSM_FFd6_792 ),
    .O(\XLXI_21/UdBuf_7_mux00002411_2806 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE00 ),
    .LOC ( "SLICE_X48Y45" ))
  \XLXI_21/UdBuf_7_mux00002411  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_21/DataOut [8]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/State_FSM_FFd6_792 ),
    .O(\XLXI_21/UdBuf_7_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'h08FF ),
    .LOC ( "SLICE_X55Y39" ))
  \XLXI_21/State_FSM_FFd8-In  (
    .ADR0(\XLXI_21/State_FSM_FFd9_753 ),
    .ADR1(\XLXI_21/xSS [1]),
    .ADR2(\XLXI_21/xSS [0]),
    .ADR3(\XLXI_21/State_FSM_FFd8-In_SW1/O ),
    .O(\XLXI_21/State_FSM_FFd8-In_2846 )
  );
  X_LUT4 #(
    .INIT ( 16'hAACA ),
    .LOC ( "SLICE_X55Y36" ))
  \XLXI_21/Mmux__varindex0000_9_f5  (
    .ADR0(N24),
    .ADR1(N25),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hD555 ),
    .LOC ( "SLICE_X55Y39" ))
  \XLXI_21/State_FSM_FFd8-In_SW1  (
    .ADR0(\XLXI_21/State_FSM_FFd8_858 ),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/State_cmp_eq0001 ),
    .O(\XLXI_21/State_FSM_FFd8-In_SW1/O_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd8  (
    .I(\XLXI_21/State_FSM_FFd8/DXMUX_2849 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd8/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd8_858 )
  );
  X_LUT4 #(
    .INIT ( 16'h0B4F ),
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/SClk_Cnt_mux0000<3>132  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/SClk_Cnt [3]),
    .ADR3(\XLXI_21/SClk_Count [3]),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X47Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_6  (
    .I(\XLXI_21/UdBuf<6>/DXMUX_2709 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<6>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<6>/SRINV_2692 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[6] )
  );
  X_LUT4 #(
    .INIT ( 16'hCCF0 ),
    .LOC ( "SLICE_X48Y43" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW0_G  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[7] ),
    .ADR2(\XLXI_21/UdBuf[6] ),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N30)
  );
  X_LUT4 #(
    .INIT ( 16'hACAC ),
    .LOC ( "SLICE_X49Y42" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW1_G  (
    .ADR0(\XLXI_21/UdBuf[7] ),
    .ADR1(\XLXI_21/UdBuf[6] ),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(VCC),
    .O(N32)
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_27/Led_not00011  (
    .ADR0(\XLXI_21/AdrBus [2]),
    .ADR1(\XLXI_21/AdrBus [0]),
    .ADR2(\XLXI_21/AdrBus [1]),
    .ADR3(\XLXI_21/AdrBus [3]),
    .O(\XLXI_27/Led_not00011_2724 )
  );
  X_LUT4 #(
    .INIT ( 16'hAFA0 ),
    .LOC ( "SLICE_X49Y42" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW1_F  (
    .ADR0(\XLXI_21/UdBuf[5] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/UdBuf[4] ),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'hF0AA ),
    .LOC ( "SLICE_X55Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120  (
    .ADR0(\XLXI_21/UdBuf[0] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/Mmux__varindex0000_9_f5/O ),
    .ADR3(\XLXI_21/SClk_Cnt_mux0000<2>_0 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>120_2874 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0CC ),
    .LOC ( "SLICE_X48Y43" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW0_F  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[4] ),
    .ADR2(\XLXI_21/UdBuf[5] ),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N29)
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_7  (
    .I(\XLXI_21/UdBuf<7>/DXMUX_2818 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<7>/SRINV_2801 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[7] )
  );
  X_LUT4 #(
    .INIT ( 16'hB0B0 ),
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd1-In11  (
    .ADR0(\XLXI_21/xSS [1]),
    .ADR1(\XLXI_21/xSS [0]),
    .ADR2(\XLXI_21/State_FSM_FFd1_754 ),
    .ADR3(VCC),
    .O(\XLXI_21/State_FSM_FFd1-In1 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_21/MISO  (
    .I(\XLXI_21/MISO/DXMUX_2903 ),
    .CE(VCC),
    .CLK(\XLXI_21/MISO/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/MISO_903 )
  );
  X_SFF #(
    .LOC ( "SLICE_X67Y36" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_2  (
    .I(\XLXI_21/SClk_Count<3>/DYMUX_2930 ),
    .CE(\XLXI_21/SClk_Count<3>/CEINV_2919 ),
    .CLK(\XLXI_21/SClk_Count<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<3>/SRINV_2921 ),
    .O(\XLXI_21/SClk_Count [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ),
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/Mcount_SClk_Count_xor<3>11  (
    .ADR0(\XLXI_21/SClk_Count [2]),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/Result [3])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ),
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/SClk_Cnt_mux0000<3>145  (
    .ADR0(\XLXI_21/SClk_Cnt_mux0000<3>17_0 ),
    .ADR1(\XLXI_21/Mmux__varindex0000_6_f6 ),
    .ADR2(\XLXI_21/SClk_Cnt_mux0000<3>120_0 ),
    .ADR3(\XLXI_21/SClk_Cnt_mux0000<3>132/O ),
    .O(\XLXI_21/_varindex0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h5AAA ),
    .LOC ( "SLICE_X67Y36" ))
  \XLXI_21/Mcount_SClk_Count_xor<2>11  (
    .ADR0(\XLXI_21/SClk_Count [2]),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/Result [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X67Y36" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_3  (
    .I(\XLXI_21/SClk_Count<3>/DXMUX_2943 ),
    .CE(\XLXI_21/SClk_Count<3>/CEINV_2919 ),
    .CLK(\XLXI_21/SClk_Count<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<3>/SRINV_2921 ),
    .O(\XLXI_21/SClk_Count [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X54Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd1  (
    .I(\XLXI_21/State_FSM_FFd1/DYMUX_2965 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd1/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/State_FSM_FFd1/SRINV_2956 ),
    .SRST(GND),
    .O(\XLXI_21/State_FSM_FFd1_754 )
  );
  X_LUT4 #(
    .INIT ( 16'h5100 ),
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/SClk_Count_and00001  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(\XLXI_21/xSS [1]),
    .O(\XLXI_21/SClk_Count_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFA72 ),
    .LOC ( "SLICE_X55Y43" ))
  \DataBus<2>LogicTrst1  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_27/CS_759 ),
    .ADR2(\XLXI_21/DataOut [2]),
    .ADR3(\XLXI_27/DataOut [2]),
    .O(DataBus[2])
  );
  X_LUT4 #(
    .INIT ( 16'hCFAA ),
    .LOC ( "SLICE_X54Y44" ))
  \DataBus<1>LogicTrst1  (
    .ADR0(\XLXI_21/DataOut [1]),
    .ADR1(\XLXI_27/DataOut [1]),
    .ADR2(\XLXI_27/CS_759 ),
    .ADR3(\XLXI_21/WE_net_757 ),
    .O(DataBus[1])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_1  (
    .I(\XLXI_27/Led<1>/DXMUX_975 ),
    .CE(\XLXI_27/Led<1>/CEINV_954 ),
    .CLK(\XLXI_27/Led<1>/CLKINV_955 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [1])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_2  (
    .I(\XLXI_27/Led<3>/DYMUX_1003 ),
    .CE(\XLXI_27/Led<3>/CEINV_994 ),
    .CLK(\XLXI_27/Led<3>/CLKINV_995 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [2])
  );
  X_LUT4 #(
    .INIT ( 16'hAFCC ),
    .LOC ( "SLICE_X54Y44" ))
  \DataBus<0>LogicTrst1  (
    .ADR0(\XLXI_27/DataOut [0]),
    .ADR1(\XLXI_21/DataOut [0]),
    .ADR2(\XLXI_27/CS_759 ),
    .ADR3(\XLXI_21/WE_net_757 ),
    .O(DataBus[0])
  );
  X_LUT4 #(
    .INIT ( 16'hEE4E ),
    .LOC ( "SLICE_X55Y43" ))
  \DataBus<3>LogicTrst1  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_21/DataOut [3]),
    .ADR2(\XLXI_27/CS_759 ),
    .ADR3(\XLXI_27/DataOut [3]),
    .O(DataBus[3])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_3  (
    .I(\XLXI_27/Led<3>/DXMUX_1015 ),
    .CE(\XLXI_27/Led<3>/CEINV_994 ),
    .CLK(\XLXI_27/Led<3>/CLKINV_995 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [3])
  );
  X_LUT4 #(
    .INIT ( 16'hE2EE ),
    .LOC ( "SLICE_X53Y40" ))
  \DataBus<4>LogicTrst1  (
    .ADR0(\XLXI_21/DataOut [4]),
    .ADR1(\XLXI_21/WE_net_757 ),
    .ADR2(\XLXI_27/DataOut [4]),
    .ADR3(\XLXI_27/CS_759 ),
    .O(DataBus[4])
  );
  X_LUT4 #(
    .INIT ( 16'hAF08 ),
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/State_FSM_FFd9-In1  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(\XLXI_21/State_FSM_FFd1_754 ),
    .ADR2(\XLXI_21/xSS [1]),
    .ADR3(\XLXI_21/State_FSM_FFd9_753 ),
    .O(\XLXI_21/State_FSM_FFd9-In )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y40" ),
    .INIT ( 1'b1 ))
  \XLXI_21/State_FSM_FFd9  (
    .I(\XLXI_21/State_FSM_FFd9/DYMUX_929 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd9/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd9_753 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_0  (
    .I(\XLXI_27/Led<1>/DYMUX_963 ),
    .CE(\XLXI_27/Led<1>/CEINV_954 ),
    .CLK(\XLXI_27/Led<1>/CLKINV_955 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [0])
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ),
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/UdBuf_10_mux00002  (
    .ADR0(\DataBus<5>_0 ),
    .ADR1(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR2(\XLXI_21/UdBuf[10] ),
    .ADR3(N01),
    .O(\XLXI_21/UdBuf_10_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2EE ),
    .LOC ( "SLICE_X53Y40" ))
  \DataBus<5>LogicTrst1  (
    .ADR0(\XLXI_21/DataOut [5]),
    .ADR1(\XLXI_21/WE_net_757 ),
    .ADR2(\XLXI_27/DataOut [5]),
    .ADR3(\XLXI_27/CS_759 ),
    .O(DataBus[5])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_5  (
    .I(\XLXI_27/Led<5>/DXMUX_1055 ),
    .CE(\XLXI_27/Led<5>/CEINV_1034 ),
    .CLK(\XLXI_27/Led<5>/CLKINV_1035 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [5])
  );
  X_LUT4 #(
    .INIT ( 16'hCAFA ),
    .LOC ( "SLICE_X50Y41" ))
  \DataBus<7>LogicTrst1  (
    .ADR0(\XLXI_21/DataOut [7]),
    .ADR1(\XLXI_27/DataOut [7]),
    .ADR2(\XLXI_21/WE_net_757 ),
    .ADR3(\XLXI_27/CS_759 ),
    .O(DataBus[7])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_4  (
    .I(\XLXI_27/Led<5>/DYMUX_1043 ),
    .CE(\XLXI_27/Led<5>/CEINV_1034 ),
    .CLK(\XLXI_27/Led<5>/CLKINV_1035 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [4])
  );
  X_LUT4 #(
    .INIT ( 16'hBFB0 ),
    .LOC ( "SLICE_X50Y41" ))
  \DataBus<6>LogicTrst1  (
    .ADR0(\XLXI_27/DataOut [6]),
    .ADR1(\XLXI_27/CS_759 ),
    .ADR2(\XLXI_21/WE_net_757 ),
    .ADR3(\XLXI_21/DataOut [6]),
    .O(DataBus[6])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_0  (
    .I(\XLXI_21/UdBuf<0>/DYMUX_1116 ),
    .CE(\XLXI_21/UdBuf<0>/CEINV_1105 ),
    .CLK(\XLXI_21/UdBuf<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[0] )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_15  (
    .I(\XLXI_21/UdBuf<15>/DXMUX_1151 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[15] )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_11  (
    .I(\XLXI_21/UdBuf<12>/DYMUX_1174 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[11] )
  );
  X_FF #(
    .LOC ( "SLICE_X50Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_7  (
    .I(\XLXI_27/Led<7>/DXMUX_1095 ),
    .CE(\XLXI_27/Led<7>/CEINV_1074 ),
    .CLK(\XLXI_27/Led<7>/CLKINV_1075 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [7])
  );
  X_FF #(
    .LOC ( "SLICE_X50Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_6  (
    .I(\XLXI_27/Led<7>/DYMUX_1083 ),
    .CE(\XLXI_27/Led<7>/CEINV_1074 ),
    .CLK(\XLXI_27/Led<7>/CLKINV_1075 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [6])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/UdBuf_11_mux00001  (
    .ADR0(\XLXI_21/UdBuf[11] ),
    .ADR1(\DataBus<4>_0 ),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(N01),
    .O(\XLXI_21/UdBuf_11_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/UdBuf_15_mux00001  (
    .ADR0(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR1(N01),
    .ADR2(\XLXI_21/UdBuf[15] ),
    .ADR3(\DataBus<0>_0 ),
    .O(\XLXI_21/UdBuf_15_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/UdBuf_12_mux00001  (
    .ADR0(\DataBus<3>_0 ),
    .ADR1(\XLXI_21/UdBuf[12] ),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(N01),
    .O(\XLXI_21/UdBuf_12_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_12  (
    .I(\XLXI_21/UdBuf<12>/DXMUX_1185 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[12] )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_10  (
    .I(\XLXI_21/UdBuf<15>/DYMUX_1140 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[10] )
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X67Y34" ))
  \XLXI_21/State_cmp_eq00001  (
    .ADR0(\XLXI_21/xSS [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\XLXI_21/xSS [0]),
    .O(\XLXI_21/State_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/UdBuf_13_mux00001  (
    .ADR0(\XLXI_21/UdBuf[13] ),
    .ADR1(\DataBus<2>_0 ),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(N01),
    .O(\XLXI_21/UdBuf_13_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X64Y35" ))
  \XLXI_21/InBuf_7_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(N121_0),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_7_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/InBuf_15_and00001  (
    .ADR0(N111_0),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_15_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X48Y44" ))
  \XLXI_21/UdBuf_7_mux00000  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[7] ),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_7_mux00000_1289 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_13  (
    .I(\XLXI_21/UdBuf<14>/DYMUX_1208 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[13] )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ),
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/UdBuf_4_mux00000  (
    .ADR0(N01),
    .ADR1(\XLXI_21/UdBuf[4] ),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_4_mux00000_1250 )
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/InBuf_0_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(N14_0),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_0_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X48Y41" ))
  \XLXI_21/UdBuf_8_mux00001  (
    .ADR0(N01),
    .ADR1(\DataBus<7>_0 ),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(\XLXI_21/UdBuf[8] ),
    .O(\XLXI_21/UdBuf_8_mux0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y36" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_0  (
    .I(\XLXI_21/SClk_Count<0>/DXMUX_1364 ),
    .CE(\XLXI_21/SClk_Count<0>/CEINV_1338 ),
    .CLK(\XLXI_21/SClk_Count<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<0>/SRINV_1340 ),
    .O(\XLXI_21/SClk_Count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X64Y35" ))
  \XLXI_21/InBuf_4_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(N121_0),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_4_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ),
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/InBuf_12_and00001  (
    .ADR0(N111_0),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_12_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_14  (
    .I(\XLXI_21/UdBuf<14>/DXMUX_1219 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[14] )
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ),
    .LOC ( "SLICE_X66Y36" ))
  \XLXI_21/Mcount_SClk_Count_xor<1>11  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_21/Result [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y36" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_1  (
    .I(\XLXI_21/SClk_Count<0>/DYMUX_1350 ),
    .CE(\XLXI_21/SClk_Count<0>/CEINV_1338 ),
    .CLK(\XLXI_21/SClk_Count<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<0>/SRINV_1340 ),
    .O(\XLXI_21/SClk_Count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hECA0 ),
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/UdBuf_14_mux00001  (
    .ADR0(\DataBus<1>_0 ),
    .ADR1(N01),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(\XLXI_21/UdBuf[14] ),
    .O(\XLXI_21/UdBuf_14_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X48Y44" ))
  \XLXI_21/UdBuf_5_mux00000  (
    .ADR0(\XLXI_21/UdBuf[5] ),
    .ADR1(VCC),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_5_mux00000_1298 )
  );
  X_FF #(
    .LOC ( "SLICE_X48Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_8  (
    .I(\XLXI_21/UdBuf<8>/DYMUX_1240 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[8] )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X67Y37" ))
  \XLXI_21/InBuf_10_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(N13_0),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_10_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X67Y37" ))
  \XLXI_21/InBuf_8_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(N13_0),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_8_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h000F ),
    .LOC ( "SLICE_X64Y36" ))
  \XLXI_21/InBuf_0_and000021  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [3]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X64Y36" ))
  \XLXI_21/InBuf_4_and000011  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Count [3]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(N121)
  );
  X_LUT4 #(
    .INIT ( 16'hCCAC ),
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/SClk_Cnt_mux0000<1>1  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(\XLXI_21/SClk_Cnt [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y35" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_4  (
    .I(\XLXI_21/InBuf<4>/DYMUX_1497 ),
    .CE(\XLXI_21/InBuf<4>/CEINV_1494 ),
    .CLK(\XLXI_21/InBuf<4>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [4])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_1  (
    .I(\XLXI_21/InBuf<1>/DYMUX_1413 ),
    .CE(\XLXI_21/InBuf<1>/CEINV_1410 ),
    .CLK(\XLXI_21/InBuf<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [1])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_5  (
    .I(\XLXI_21/InBuf<5>/DYMUX_1509 ),
    .CE(\XLXI_21/InBuf<5>/CEINV_1506 ),
    .CLK(\XLXI_21/InBuf<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [5])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_0  (
    .I(\XLXI_21/InBuf<0>/DYMUX_1401 ),
    .CE(\XLXI_21/InBuf<0>/CEINV_1398 ),
    .CLK(\XLXI_21/InBuf<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [0])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_2  (
    .I(\XLXI_21/InBuf<2>/DYMUX_1425 ),
    .CE(\XLXI_21/InBuf<2>/CEINV_1422 ),
    .CLK(\XLXI_21/InBuf<2>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [2])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_3  (
    .I(\XLXI_21/InBuf<3>/DYMUX_1461 ),
    .CE(\XLXI_21/InBuf<3>/CEINV_1458 ),
    .CLK(\XLXI_21/InBuf<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [3])
  );
  X_LUT4 #(
    .INIT ( 16'hEF20 ),
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/SClk_Cnt_mux0000<3>17  (
    .ADR0(\XLXI_21/SClk_Count [3]),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/SClk_Cnt [3]),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>17_1487 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_8  (
    .I(\XLXI_21/InBuf<8>/DYMUX_1569 ),
    .CE(\XLXI_21/InBuf<8>/CEINV_1566 ),
    .CLK(\XLXI_21/InBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [8])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_9  (
    .I(\XLXI_21/InBuf<9>/DYMUX_1581 ),
    .CE(\XLXI_21/InBuf<9>/CEINV_1578 ),
    .CLK(\XLXI_21/InBuf<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [9])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_0  (
    .I(\XLXI_21/AdrBus<1>/DYMUX_1639 ),
    .CE(\XLXI_21/AdrBus<1>/CEINV_1636 ),
    .CLK(\XLXI_21/AdrBus<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [0])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_1  (
    .I(\XLXI_21/AdrBus<1>/DXMUX_1645 ),
    .CE(\XLXI_21/AdrBus<1>/CEINV_1636 ),
    .CLK(\XLXI_21/AdrBus<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [1])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd4  (
    .I(\XLXI_21/State_FSM_FFd3/DYMUX_1612 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd3/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd4_848 )
  );
  X_FF #(
    .LOC ( "SLICE_X48Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd6  (
    .I(\XLXI_21/State_FSM_FFd6/DYMUX_1626 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd6/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd6_792 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_7  (
    .I(\XLXI_21/InBuf<7>/DYMUX_1533 ),
    .CE(\XLXI_21/InBuf<7>/CEINV_1530 ),
    .CLK(\XLXI_21/InBuf<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [7])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_6  (
    .I(\XLXI_21/InBuf<6>/DYMUX_1521 ),
    .CE(\XLXI_21/InBuf<6>/CEINV_1518 ),
    .CLK(\XLXI_21/InBuf<6>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [6])
  );
  X_LUT4 #(
    .INIT ( 16'h5500 ),
    .LOC ( "SLICE_X54Y35" ))
  \XLXI_21/InBuf_10_and000021  (
    .ADR0(\XLXI_21/SClk_Count [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [3]),
    .O(N13)
  );
  X_FF #(
    .LOC ( "SLICE_X65Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd3  (
    .I(\XLXI_21/State_FSM_FFd3/DXMUX_1617 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd3/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd3_846 )
  );
  X_FF #(
    .LOC ( "SLICE_X48Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd2  (
    .I(\XLXI_21/State_FSM_FFd2/DYMUX_1591 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd2/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd2_847 )
  );
  X_LUT4 #(
    .INIT ( 16'hDC8C ),
    .LOC ( "SLICE_X54Y35" ))
  \XLXI_21/SClk_Cnt_mux0000<2>1  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/SClk_Cnt [2]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/SClk_Cnt_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/State_FSM_FFd4-In1  (
    .ADR0(\XLXI_21/xSClk [0]),
    .ADR1(\XLXI_21/State_cmp_eq0003 ),
    .ADR2(\XLXI_21/State_FSM_FFd5_850 ),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd4-In )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd7  (
    .I(\XLXI_21/State_FSM_FFd7/DXMUX_1697 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd7/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd7_852 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_cmp_eq00011  (
    .ADR0(\XLXI_21/SClk_Cnt [3]),
    .ADR1(\XLXI_21/SClk_Cnt [2]),
    .ADR2(\XLXI_21/SClk_Cnt [1]),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(\XLXI_21/State_cmp_eq0001_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X64Y34" ))
  \XLXI_21/InBuf_9_and00001  (
    .ADR0(N13_0),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_9_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd7-In1  (
    .ADR0(\XLXI_21/State_FSM_FFd8_858 ),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/State_cmp_eq0001 ),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd7-In )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y35" ),
    .INIT ( 1'b1 ))
  \XLXI_21/xSS_1  (
    .I(\XLXI_21/xSS<1>/DXMUX_1770 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSS<1>/CLKINV_1763 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSS [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_0  (
    .I(\XLXI_27/DataOut<1>/DYMUX_1795 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<1>/CLKINV_1792 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<1>/SRINV_1793 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [0])
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X67Y38" ))
  \XLXI_21/InBuf_12_and000011  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [2]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [3]),
    .O(N111)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X50Y38" ))
  \XLXI_21/State_cmp_eq00031  (
    .ADR0(\XLXI_21/SClk_Cnt [0]),
    .ADR1(\XLXI_21/SClk_Cnt [2]),
    .ADR2(\XLXI_21/SClk_Cnt [3]),
    .ADR3(\XLXI_21/SClk_Cnt [1]),
    .O(\XLXI_21/State_cmp_eq0003_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y35" ),
    .INIT ( 1'b1 ))
  \XLXI_21/xSS_0  (
    .I(\XLXI_21/xSS<1>/DYMUX_1765 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSS<1>/CLKINV_1763 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSS [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_1  (
    .I(\XLXI_27/DataOut<1>/DXMUX_1801 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<1>/CLKINV_1792 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<1>/SRINV_1793 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_3  (
    .I(\XLXI_21/AdrBus<3>/DXMUX_1665 ),
    .CE(\XLXI_21/AdrBus<3>/CEINV_1656 ),
    .CLK(\XLXI_21/AdrBus<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd5  (
    .I(\XLXI_21/State_FSM_FFd5/DXMUX_1729 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd5/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/State_FSM_FFd5/SRINV_1714 ),
    .SRST(GND),
    .O(\XLXI_21/State_FSM_FFd5_850 )
  );
  X_LUT4 #(
    .INIT ( 16'h0C0C ),
    .LOC ( "SLICE_X64Y34" ))
  \XLXI_21/State_cmp_eq00041  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(VCC),
    .O(\XLXI_21/State_cmp_eq0004_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hA2AA ),
    .LOC ( "SLICE_X50Y38" ))
  \XLXI_21/State_FSM_FFd5-In11  (
    .ADR0(\XLXI_21/State_FSM_FFd5_850 ),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(\XLXI_21/State_cmp_eq0003 ),
    .O(\XLXI_21/State_FSM_FFd5-In1 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_2  (
    .I(\XLXI_21/AdrBus<3>/DYMUX_1659 ),
    .CE(\XLXI_21/AdrBus<3>/CEINV_1656 ),
    .CLK(\XLXI_21/AdrBus<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [2])
  );
  X_LUT4 #(
    .INIT ( 16'hAAF0 ),
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW4  (
    .ADR0(\XLXI_21/UdBuf[15] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/UdBuf[14] ),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N12)
  );
  X_SFF #(
    .LOC ( "SLICE_X54Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_2  (
    .I(\XLXI_27/DataOut<3>/DYMUX_1815 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<3>/CLKINV_1812 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<3>/SRINV_1813 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/InBuf_2_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(N14_0),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_2_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_3  (
    .I(\XLXI_21/SClk_Cnt<3>/DXMUX_1929 ),
    .CE(\XLXI_21/SClk_Cnt<3>/CEINV_1920 ),
    .CLK(\XLXI_21/SClk_Cnt<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X52Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW6  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[12] ),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(\XLXI_21/UdBuf[13] ),
    .O(N15)
  );
  X_FF #(
    .LOC ( "SLICE_X53Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_0  (
    .I(\XLXI_21/SClk_Cnt<1>/DYMUX_1835 ),
    .CE(\XLXI_21/SClk_Cnt<1>/CEINV_1832 ),
    .CLK(\XLXI_21/SClk_Cnt<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [0])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_2  (
    .I(\XLXI_21/SClk_Cnt<3>/DYMUX_1923 ),
    .CE(\XLXI_21/SClk_Cnt<3>/CEINV_1920 ),
    .CLK(\XLXI_21/SClk_Cnt<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [2])
  );
  X_LUT4 #(
    .INIT ( 16'hEE44 ),
    .LOC ( "SLICE_X52Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW7  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/UdBuf[12] ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[13] ),
    .O(N16)
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW5  (
    .ADR0(\XLXI_21/UdBuf[14] ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/UdBuf[15] ),
    .ADR3(VCC),
    .O(N131)
  );
  X_FF #(
    .LOC ( "SLICE_X53Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_1  (
    .I(\XLXI_21/SClk_Cnt<1>/DXMUX_1841 ),
    .CE(\XLXI_21/SClk_Cnt<1>/CEINV_1832 ),
    .CLK(\XLXI_21/SClk_Cnt<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_4  (
    .I(\XLXI_27/DataOut<5>/DYMUX_1903 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<5>/CLKINV_1900 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<5>/SRINV_1901 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/InBuf_1_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(N14_0),
    .O(\XLXI_21/InBuf_1_and0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X54Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_3  (
    .I(\XLXI_27/DataOut<3>/DXMUX_1821 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<3>/CLKINV_1812 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<3>/SRINV_1813 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_5  (
    .I(\XLXI_27/DataOut<5>/DXMUX_1909 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<5>/CLKINV_1900 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<5>/SRINV_1901 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [5])
  );
  X_LUT4 #(
    .INIT ( 16'hF0CC ),
    .LOC ( "SLICE_X52Y37" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW8  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[10] ),
    .ADR2(\XLXI_21/UdBuf[11] ),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N18)
  );
  X_FF #(
    .LOC ( "SLICE_X65Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_11  (
    .I(\XLXI_21/InBuf<11>/DYMUX_2057 ),
    .CE(\XLXI_21/InBuf<11>/CEINV_2054 ),
    .CLK(\XLXI_21/InBuf<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [11])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_12  (
    .I(\XLXI_21/InBuf<12>/DYMUX_2069 ),
    .CE(\XLXI_21/InBuf<12>/CEINV_2066 ),
    .CLK(\XLXI_21/InBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [12])
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_7  (
    .I(\XLXI_27/DataOut<7>/DXMUX_1973 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<7>/CLKINV_1964 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<7>/SRINV_1965 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [7])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_13  (
    .I(\XLXI_21/InBuf<13>/DYMUX_2081 ),
    .CE(\XLXI_21/InBuf<13>/CEINV_2078 ),
    .CLK(\XLXI_21/InBuf<13>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [13])
  );
  X_LUT4 #(
    .INIT ( 16'hCCAA ),
    .LOC ( "SLICE_X51Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW11  (
    .ADR0(\XLXI_21/UdBuf[8] ),
    .ADR1(\XLXI_21/UdBuf[9] ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(N22)
  );
  X_LUT4 #(
    .INIT ( 16'hCCAA ),
    .LOC ( "SLICE_X51Y36" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW10  (
    .ADR0(\XLXI_21/UdBuf[8] ),
    .ADR1(\XLXI_21/UdBuf[9] ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N21)
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_8  (
    .I(\XLXI_27/DataOut<8>/DYMUX_2033 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<8>/CLKINV_2030 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<8>/SRINV_2031 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [8])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_10  (
    .I(\XLXI_21/InBuf<10>/DYMUX_2045 ),
    .CE(\XLXI_21/InBuf<10>/CEINV_2042 ),
    .CLK(\XLXI_21/InBuf<10>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [10])
  );
  X_FF #(
    .LOC ( "SLICE_X66Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_14  (
    .I(\XLXI_21/InBuf<14>/DYMUX_2093 ),
    .CE(\XLXI_21/InBuf<14>/CEINV_2090 ),
    .CLK(\XLXI_21/InBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [14])
  );
  X_SFF #(
    .LOC ( "SLICE_X50Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_6  (
    .I(\XLXI_27/DataOut<7>/DYMUX_1967 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<7>/CLKINV_1964 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<7>/SRINV_1965 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [6])
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X52Y37" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW9  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/UdBuf[10] ),
    .ADR2(\XLXI_21/UdBuf[11] ),
    .ADR3(VCC),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X52Y38" ))
  \XLXI_21/UdBuf_10_mux00001_SW0  (
    .ADR0(\XLXI_21/State_FSM_FFd7_852 ),
    .ADR1(\XLXI_21/State_FSM_FFd8_858 ),
    .ADR2(\XLXI_21/State_FSM_FFd4_848 ),
    .ADR3(\XLXI_21/State_FSM_FFd5_850 ),
    .O(N02)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/InBuf_3_and00001  (
    .ADR0(N14_0),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_3_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/InBuf_11_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(N13_0),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_11_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_3  (
    .I(\XLXI_21/DataOut<3>/DXMUX_2169 ),
    .CE(\XLXI_21/DataOut<3>/CEINV_2160 ),
    .CLK(\XLXI_21/DataOut<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [3])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_1  (
    .I(\XLXI_21/DataOut<1>/DXMUX_2125 ),
    .CE(\XLXI_21/DataOut<1>/CEINV_2116 ),
    .CLK(\XLXI_21/DataOut<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [1])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_2  (
    .I(\XLXI_21/DataOut<3>/DYMUX_2163 ),
    .CE(\XLXI_21/DataOut<3>/CEINV_2160 ),
    .CLK(\XLXI_21/DataOut<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_4  (
    .I(\XLXI_21/DataOut<5>/DYMUX_2213 ),
    .CE(\XLXI_21/DataOut<5>/CEINV_2210 ),
    .CLK(\XLXI_21/DataOut<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [4])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_0  (
    .I(\XLXI_21/DataOut<1>/DYMUX_2119 ),
    .CE(\XLXI_21/DataOut<1>/CEINV_2116 ),
    .CLK(\XLXI_21/DataOut<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_5  (
    .I(\XLXI_21/DataOut<5>/DXMUX_2219 ),
    .CE(\XLXI_21/DataOut<5>/CEINV_2210 ),
    .CLK(\XLXI_21/DataOut<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [5])
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X48Y39" ))
  \XLXI_21/UdBuf_9_mux00001  (
    .ADR0(\DataBus<6>_0 ),
    .ADR1(\XLXI_21/UdBuf[9] ),
    .ADR2(N01),
    .ADR3(\XLXI_21/State_FSM_FFd6_792 ),
    .O(\XLXI_21/UdBuf_9_mux0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_15  (
    .I(\XLXI_21/InBuf<15>/DYMUX_2105 ),
    .CE(\XLXI_21/InBuf<15>/CEINV_2102 ),
    .CLK(\XLXI_21/InBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [15])
  );
  X_FF #(
    .LOC ( "SLICE_X48Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_9  (
    .I(\XLXI_21/UdBuf<9>/DXMUX_2200 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[9] )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X48Y39" ))
  \XLXI_21/UdBuf_10_mux00001  (
    .ADR0(N02_0),
    .ADR1(\XLXI_21/State_FSM_FFd1_754 ),
    .ADR2(\XLXI_21/State_FSM_FFd3_846 ),
    .ADR3(\XLXI_21/State_FSM_FFd2_847 ),
    .O(N01_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_9  (
    .I(\XLXI_21/DataOut<9>/DXMUX_2271 ),
    .CE(\XLXI_21/DataOut<9>/CEINV_2262 ),
    .CLK(\XLXI_21/DataOut<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [9])
  );
  X_LUT4 #(
    .INIT ( 16'hAA00 ),
    .LOC ( "SLICE_X46Y44" ))
  \XLXI_21/UdBuf_6_mux00000  (
    .ADR0(N01),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[6] ),
    .O(\XLXI_21/UdBuf_6_mux00000_2385 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/xSClk_1  (
    .I(\XLXI_21/xSClk<1>/DXMUX_2372 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSClk<1>/CLKINV_2365 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSClk [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X51Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_27/CS  (
    .I(\XLXI_27/CS/DYMUX_2307 ),
    .CE(VCC),
    .CLK(\XLXI_27/CS/CLKINV_2304 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_27/CS/SRINV_2305 ),
    .O(\XLXI_27/CS_759 )
  );
  X_FF #(
    .LOC ( "SLICE_X51Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_7  (
    .I(\XLXI_21/DataOut<7>/DXMUX_2251 ),
    .CE(\XLXI_21/DataOut<7>/CEINV_2242 ),
    .CLK(\XLXI_21/DataOut<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [7])
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/InBuf_5_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(N121_0),
    .O(\XLXI_21/InBuf_5_and0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X54Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/WE_net  (
    .I(\XLXI_21/WE_net/DYMUX_2355 ),
    .CE(VCC),
    .CLK(\XLXI_21/WE_net/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/WE_net/SRINV_2353 ),
    .O(\XLXI_21/WE_net_757 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/InBuf_13_and00001  (
    .ADR0(N111_0),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_13_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFF ),
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_27/DataOut_not00011  (
    .ADR0(\XLXI_21/AdrBus [2]),
    .ADR1(\XLXI_21/AdrBus [0]),
    .ADR2(\XLXI_21/AdrBus [1]),
    .ADR3(\XLXI_21/AdrBus [3]),
    .O(\XLXI_27/DataOut_not0001 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/xSClk_0  (
    .I(\XLXI_21/xSClk<1>/DYMUX_2367 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSClk<1>/CLKINV_2365 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSClk [0])
  );
  X_FF #(
    .LOC ( "SLICE_X51Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_6  (
    .I(\XLXI_21/DataOut<7>/DYMUX_2245 ),
    .CE(\XLXI_21/DataOut<7>/CEINV_2242 ),
    .CLK(\XLXI_21/DataOut<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_8  (
    .I(\XLXI_21/DataOut<9>/DYMUX_2265 ),
    .CE(\XLXI_21/DataOut<9>/CEINV_2262 ),
    .CLK(\XLXI_21/DataOut<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [8])
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X64Y43" ))
  \XLXI_21/InBuf_6_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(N121_0),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_6_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/InBuf_14_and00001  (
    .ADR0(N111_0),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/InBuf_14_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_11  (
    .I(\XLXI_21/DataOut<11>/DXMUX_2403 ),
    .CE(\XLXI_21/DataOut<11>/CEINV_2394 ),
    .CLK(\XLXI_21/DataOut<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [11])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_10  (
    .I(\XLXI_21/DataOut<11>/DYMUX_2397 ),
    .CE(\XLXI_21/DataOut<11>/CEINV_2394 ),
    .CLK(\XLXI_21/DataOut<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [10])
  );
  X_LUT4 #(
    .INIT ( 16'hBA8A ),
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/Mmux__varindex0000_101  (
    .ADR0(N21_0),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(N22_0),
    .O(\XLXI_21/Mmux__varindex0000_101_2453 )
  );
  X_LUT4 #(
    .INIT ( 16'hBA8A ),
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_9  (
    .ADR0(N15_0),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(N16_0),
    .O(\XLXI_21/Mmux__varindex0000_9_2427 )
  );
  X_LUT4 #(
    .INIT ( 16'hEF20 ),
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/Mmux__varindex0000_91  (
    .ADR0(N19_0),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(N18_0),
    .O(\XLXI_21/Mmux__varindex0000_91_2460 )
  );
  X_LUT4 #(
    .INIT ( 16'hBA8A ),
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/Mmux__varindex0000_8  (
    .ADR0(N12_0),
    .ADR1(\XLXI_21/xSClk [1]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(N131_0),
    .O(\XLXI_21/Mmux__varindex0000_8_2436 )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \SPI_MOSI/IFF/IMUX  (
    .I(\SPI_MOSI/INBUF ),
    .O(SPI_MOSI_IBUF_821)
  );
  X_LUT4 #(
    .INIT ( 16'h4E00 ),
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf_6_mux00002412  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_21/DataOut [9]),
    .ADR2(\XLXI_27/CS_759 ),
    .ADR3(\XLXI_21/State_FSM_FFd6_792 ),
    .O(\XLXI_21/UdBuf_6_mux00002411_2697 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE00 ),
    .LOC ( "SLICE_X47Y45" ))
  \XLXI_21/UdBuf_6_mux00002411  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_21/DataOut [9]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/State_FSM_FFd6_792 ),
    .O(\XLXI_21/UdBuf_6_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC88 ),
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf_4_mux00002411  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/DataOut [11]),
    .O(\XLXI_21/UdBuf_4_mux0000241 )
  );
  X_SFF #(
    .LOC ( "SLICE_X49Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_4  (
    .I(\XLXI_21/UdBuf<4>/DXMUX_2641 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<4>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<4>/SRINV_2624 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[4] )
  );
  X_LUT4 #(
    .INIT ( 16'h50C0 ),
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf_5_mux00002412  (
    .ADR0(\XLXI_27/CS_759 ),
    .ADR1(\XLXI_21/DataOut [10]),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(\XLXI_21/WE_net_757 ),
    .O(\XLXI_21/UdBuf_5_mux00002411_2663 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0C0 ),
    .LOC ( "SLICE_X48Y42" ))
  \XLXI_21/UdBuf_5_mux00002411  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/DataOut [10]),
    .ADR2(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR3(\XLXI_21/WE_net_757 ),
    .O(\XLXI_21/UdBuf_5_mux0000241 )
  );
  X_SFF #(
    .LOC ( "SLICE_X48Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_5  (
    .I(\XLXI_21/UdBuf<5>/DXMUX_2675 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<5>/SRINV_2658 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h4C08 ),
    .LOC ( "SLICE_X49Y43" ))
  \XLXI_21/UdBuf_4_mux00002412  (
    .ADR0(\XLXI_21/WE_net_757 ),
    .ADR1(\XLXI_21/State_FSM_FFd6_792 ),
    .ADR2(\XLXI_27/CS_759 ),
    .ADR3(\XLXI_21/DataOut [11]),
    .O(\XLXI_21/UdBuf_4_mux00002411_2629 )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led<2>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [2]),
    .O(\led<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \led<0>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [0]),
    .O(\led<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD85" ))
  \led<1>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [1]),
    .O(\led<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \led<4>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [4]),
    .O(\led<4>/O )
  );
  X_BUF #(
    .LOC ( "PAD109" ))
  \led<5>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [5]),
    .O(\led<5>/O )
  );
  X_BUF #(
    .LOC ( "PAD89" ))
  \led<3>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [3]),
    .O(\led<3>/O )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ),
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_27/Led_not0001/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_27/Led_not0001/F )
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
    .I(\XLXI_21/MISO_903 ),
    .O(\SPI_MISO/O )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \led<6>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [6]),
    .O(\led<6>/O )
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

