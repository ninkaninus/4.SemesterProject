////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Design_timesim.v
// /___/   /\     Timestamp: Wed Apr 27 01:00:20 2016
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
  wire \XLXI_21/SClk_Cnt_mux0000<1>_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<2>_0 ;
  wire N10_0;
  wire N11_0;
  wire N131_0;
  wire N141_0;
  wire \XLXI_21/Mmux__varindex0000_7_f5 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6 ;
  wire N16_0;
  wire N17_0;
  wire N19_0;
  wire N20_0;
  wire \XLXI_21/MISO_832 ;
  wire SPI_MOSI_IBUF_837;
  wire clk_BUFGP;
  wire \XLXI_21/State_FSM_FFd5_848 ;
  wire \XLXI_21/WE_net_849 ;
  wire \XLXI_27/CS_851 ;
  wire \XLXI_21/UdBuf[8] ;
  wire \XLXI_21/UdBuf[14] ;
  wire \XLXI_21/UdBuf[4] ;
  wire \XLXI_21/UdBuf[10] ;
  wire \XLXI_21/UdBuf[9] ;
  wire \XLXI_21/UdBuf[15] ;
  wire \XLXI_21/UdBuf[5] ;
  wire \XLXI_21/UdBuf[11] ;
  wire \XLXI_21/UdBuf[6] ;
  wire \XLXI_21/UdBuf[7] ;
  wire N22;
  wire N23;
  wire \XLXI_21/UdBuf[12] ;
  wire \XLXI_21/UdBuf[13] ;
  wire \XLXI_21/State_FSM_FFd8_902 ;
  wire \XLXI_21/State_FSM_FFd7-In_SW1/O ;
  wire \XLXI_21/State_cmp_eq0001 ;
  wire \XLXI_21/State_FSM_FFd7_905 ;
  wire \XLXI_21/UdBuf[0] ;
  wire \XLXI_21/Mmux__varindex0000_9_f5/O ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>120_0 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>132/O ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>17_0 ;
  wire \XLXI_21/State_cmp_eq0004 ;
  wire \XLXI_21/SClk_Count_and0000_0 ;
  wire \XLXI_21/State_FSM_FFd2_916 ;
  wire \XLXI_21/State_FSM_FFd1_917 ;
  wire \XLXI_21/State_FSM_FFd4_918 ;
  wire \XLXI_21/State_cmp_eq0003 ;
  wire \XLXI_21/State_FSM_FFd3-In_0 ;
  wire \XLXI_21/State_FSM_FFd3_921 ;
  wire \XLXI_27/Led_cmp_eq0000_0 ;
  wire N13_0;
  wire N01;
  wire N121_0;
  wire N15_0;
  wire N14_0;
  wire \XLXI_21/State_FSM_FFd6_952 ;
  wire \XLXI_21/State_FSM_FFd6-In_0 ;
  wire \XLXI_27/DataOut_not0001_0 ;
  wire N02_0;
  wire \XLXI_21/Mmux__varindex0000_8_f5/F5MUX_1023 ;
  wire \XLXI_21/Mmux__varindex0000_91_1021 ;
  wire \XLXI_21/Mmux__varindex0000_8_f5/BXINV_1016 ;
  wire \XLXI_21/Mmux__varindex0000_101_1014 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/F5MUX_999 ;
  wire \XLXI_21/Mmux__varindex0000_8_997 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/BXINV_992 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/F6MUX_990 ;
  wire \XLXI_21/Mmux__varindex0000_9_988 ;
  wire \XLXI_21/Mmux__varindex0000_6_f6/BYINV_983 ;
  wire \led<0>/O ;
  wire \led<1>/O ;
  wire \clk/INBUF ;
  wire \led<3>/O ;
  wire \led<2>/O ;
  wire \XLXI_21/UdBuf<12>/DXMUX_1558 ;
  wire \XLXI_21/UdBuf<12>/F5MUX_1556 ;
  wire \XLXI_21/UdBuf_12_mux0000241 ;
  wire \XLXI_21/UdBuf<12>/BXINV_1548 ;
  wire \XLXI_21/UdBuf_12_mux00002411_1546 ;
  wire \XLXI_21/UdBuf<12>/SRINV_1541 ;
  wire \XLXI_21/UdBuf<12>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<9>/DXMUX_1338 ;
  wire \XLXI_21/UdBuf<9>/F5MUX_1336 ;
  wire \XLXI_21/UdBuf_9_mux0000241 ;
  wire \XLXI_21/UdBuf<9>/BXINV_1328 ;
  wire \XLXI_21/UdBuf_9_mux00002411_1326 ;
  wire \XLXI_21/UdBuf<9>/SRINV_1321 ;
  wire \XLXI_21/UdBuf<9>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<6>/DXMUX_1474 ;
  wire \XLXI_21/UdBuf<6>/F5MUX_1472 ;
  wire \XLXI_21/UdBuf_6_mux0000241 ;
  wire \XLXI_21/UdBuf<6>/BXINV_1464 ;
  wire \XLXI_21/UdBuf_6_mux00002411_1462 ;
  wire \XLXI_21/UdBuf<6>/SRINV_1457 ;
  wire \XLXI_21/UdBuf<6>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<15>/DXMUX_1372 ;
  wire \XLXI_21/UdBuf<15>/F5MUX_1370 ;
  wire \XLXI_21/UdBuf_15_mux0000241 ;
  wire \XLXI_21/UdBuf<15>/BXINV_1362 ;
  wire \XLXI_21/UdBuf_15_mux00002411_1360 ;
  wire \XLXI_21/UdBuf<15>/SRINV_1355 ;
  wire \XLXI_21/UdBuf<15>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<5>/DXMUX_1406 ;
  wire \XLXI_21/UdBuf<5>/F5MUX_1404 ;
  wire \XLXI_21/UdBuf_5_mux0000241 ;
  wire \XLXI_21/UdBuf<5>/BXINV_1396 ;
  wire \XLXI_21/UdBuf_5_mux00002411_1394 ;
  wire \XLXI_21/UdBuf<5>/SRINV_1389 ;
  wire \XLXI_21/UdBuf<5>/CLKINVNOT ;
  wire \N22/F5MUX_1502 ;
  wire N28;
  wire \N22/BXINV_1494 ;
  wire N27;
  wire \N23/F5MUX_1527 ;
  wire N30;
  wire \N23/BXINV_1519 ;
  wire N29;
  wire \XLXI_21/UdBuf<11>/DXMUX_1440 ;
  wire \XLXI_21/UdBuf<11>/F5MUX_1438 ;
  wire \XLXI_21/UdBuf_11_mux0000241 ;
  wire \XLXI_21/UdBuf<11>/BXINV_1430 ;
  wire \XLXI_21/UdBuf_11_mux00002411_1428 ;
  wire \XLXI_21/UdBuf<11>/SRINV_1423 ;
  wire \XLXI_21/UdBuf<11>/CLKINVNOT ;
  wire \XLXI_21/InBuf_4_and0000 ;
  wire \XLXI_21/InBuf_7_and0000 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>120_1682 ;
  wire \XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 ;
  wire \XLXI_21/State_FSM_FFd8/DYMUX_1835 ;
  wire \XLXI_21/State_FSM_FFd8-In ;
  wire \XLXI_21/State_FSM_FFd8/CLKINVNOT ;
  wire \XLXI_27/Led<3>/DXMUX_1910 ;
  wire \XLXI_27/Led<3>/DYMUX_1896 ;
  wire \XLXI_27/Led<3>/CLKINV_1886 ;
  wire \XLXI_27/Led<3>/CEINV_1885 ;
  wire \XLXI_21/State_FSM_FFd7/DXMUX_1657 ;
  wire \XLXI_21/State_FSM_FFd7-In_1654 ;
  wire \XLXI_21/State_FSM_FFd7-In_SW1/O_pack_2 ;
  wire \XLXI_21/State_FSM_FFd7/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>17_1818 ;
  wire \XLXI_21/State_FSM_FFd3/DYMUX_1810 ;
  wire \XLXI_21/State_FSM_FFd3/GYMUX_1809 ;
  wire \XLXI_21/State_FSM_FFd3-In ;
  wire \XLXI_21/State_FSM_FFd3/CLKINVNOT ;
  wire \XLXI_21/UdBuf<13>/DXMUX_1626 ;
  wire \XLXI_21/UdBuf<13>/F5MUX_1624 ;
  wire \XLXI_21/UdBuf_13_mux0000241 ;
  wire \XLXI_21/UdBuf<13>/BXINV_1616 ;
  wire \XLXI_21/UdBuf_13_mux00002411_1614 ;
  wire \XLXI_21/UdBuf<13>/SRINV_1609 ;
  wire \XLXI_21/UdBuf<13>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<3>/DXMUX_1751 ;
  wire \XLXI_21/SClk_Count<3>/DYMUX_1738 ;
  wire \XLXI_21/SClk_Count<3>/SRINV_1729 ;
  wire \XLXI_21/SClk_Count<3>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<3>/CEINV_1727 ;
  wire \XLXI_27/Led<5>/DXMUX_1948 ;
  wire \XLXI_27/Led<5>/DYMUX_1934 ;
  wire \XLXI_27/Led<5>/CLKINV_1924 ;
  wire \XLXI_27/Led<5>/CEINV_1923 ;
  wire \XLXI_21/MISO/DXMUX_1711 ;
  wire \XLXI_21/_varindex0000 ;
  wire \XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 ;
  wire \XLXI_21/MISO/CLKINVNOT ;
  wire \XLXI_27/Led<7>/DXMUX_1986 ;
  wire \XLXI_27/Led<7>/DYMUX_1972 ;
  wire \XLXI_27/Led<7>/CLKINV_1962 ;
  wire \XLXI_27/Led<7>/CEINV_1961 ;
  wire \XLXI_21/UdBuf<0>/DYMUX_2007 ;
  wire \XLXI_21/State_cmp_eq0000 ;
  wire \XLXI_21/UdBuf<0>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<0>/CEINV_1996 ;
  wire \XLXI_21/SClk_Count_and0000 ;
  wire \XLXI_21/State_FSM_FFd1/DYMUX_1778 ;
  wire \XLXI_21/State_FSM_FFd1-In1 ;
  wire \XLXI_21/State_FSM_FFd1/SRINV_1769 ;
  wire \XLXI_21/State_FSM_FFd1/CLKINVNOT ;
  wire \XLXI_27/Led<1>/DXMUX_1872 ;
  wire \XLXI_27/Led<1>/DYMUX_1858 ;
  wire \XLXI_27/Led<1>/CLKINV_1848 ;
  wire \XLXI_27/Led<1>/CEINV_1847 ;
  wire \XLXI_21/UdBuf<7>/DXMUX_1592 ;
  wire \XLXI_21/UdBuf<7>/F5MUX_1590 ;
  wire \XLXI_21/UdBuf_7_mux0000241 ;
  wire \XLXI_21/UdBuf<7>/BXINV_1582 ;
  wire \XLXI_21/UdBuf_7_mux00002411_1580 ;
  wire \XLXI_21/UdBuf<7>/SRINV_1575 ;
  wire \XLXI_21/UdBuf<7>/CLKINVNOT ;
  wire \sw<5>/INBUF ;
  wire \SPI_MISO/O ;
  wire \sw<2>/INBUF ;
  wire \led<5>/O ;
  wire \SPI_MOSI/INBUF ;
  wire \led<4>/O ;
  wire \led<7>/O ;
  wire \sw<4>/INBUF ;
  wire \led<6>/O ;
  wire \sw<1>/INBUF ;
  wire \sw<3>/INBUF ;
  wire \sw<0>/INBUF ;
  wire \XLXI_21/InBuf<7>/DYMUX_2364 ;
  wire \XLXI_21/InBuf<7>/CLKINVNOT ;
  wire \XLXI_21/InBuf<7>/CEINV_2361 ;
  wire \XLXI_21/InBuf<5>/DYMUX_2340 ;
  wire \XLXI_21/InBuf<5>/CLKINVNOT ;
  wire \XLXI_21/InBuf<5>/CEINV_2337 ;
  wire \XLXI_21/InBuf_12_and0000 ;
  wire \XLXI_21/InBuf_15_and0000 ;
  wire \XLXI_21/SClk_Count<0>/DXMUX_2147 ;
  wire \XLXI_21/InBuf_0_and0000 ;
  wire \XLXI_21/SClk_Count<0>/DYMUX_2133 ;
  wire \XLXI_21/SClk_Count<0>/SRINV_2123 ;
  wire \XLXI_21/SClk_Count<0>/CLKINVNOT ;
  wire \XLXI_21/SClk_Count<0>/CEINV_2121 ;
  wire \XLXI_21/InBuf<3>/DYMUX_2292 ;
  wire \XLXI_21/InBuf<3>/CLKINVNOT ;
  wire \XLXI_21/InBuf<3>/CEINV_2289 ;
  wire \XLXI_21/InBuf<2>/DYMUX_2256 ;
  wire \XLXI_21/InBuf<2>/CLKINVNOT ;
  wire \XLXI_21/InBuf<2>/CEINV_2253 ;
  wire \XLXI_21/UdBuf_10_mux00000_2057 ;
  wire \XLXI_21/UdBuf_14_mux00000_2048 ;
  wire \XLXI_21/UdBuf_12_mux00000_2222 ;
  wire \XLXI_21/UdBuf_15_mux00000_2213 ;
  wire N15;
  wire N13;
  wire \XLXI_21/InBuf<4>/DYMUX_2328 ;
  wire \XLXI_21/InBuf<4>/CLKINVNOT ;
  wire \XLXI_21/InBuf<4>/CEINV_2325 ;
  wire \XLXI_21/InBuf<8>/DYMUX_2376 ;
  wire \XLXI_21/InBuf<8>/CLKINVNOT ;
  wire \XLXI_21/InBuf<8>/CEINV_2373 ;
  wire \XLXI_21/UdBuf_13_mux00000_2246 ;
  wire \XLXI_21/UdBuf_8_mux00000_2237 ;
  wire \XLXI_21/InBuf<6>/DYMUX_2352 ;
  wire \XLXI_21/InBuf<6>/CLKINVNOT ;
  wire \XLXI_21/InBuf<6>/CEINV_2349 ;
  wire \XLXI_21/State_FSM_FFd2/DYMUX_2398 ;
  wire \XLXI_21/State_FSM_FFd2/CLKINVNOT ;
  wire \XLXI_21/InBuf<0>/DYMUX_2184 ;
  wire \XLXI_21/InBuf<0>/CLKINVNOT ;
  wire \XLXI_21/InBuf<0>/CEINV_2181 ;
  wire \XLXI_21/InBuf<1>/DYMUX_2196 ;
  wire \XLXI_21/InBuf<1>/CLKINVNOT ;
  wire \XLXI_21/InBuf<1>/CEINV_2193 ;
  wire \XLXI_21/UdBuf_11_mux00000_2081 ;
  wire \XLXI_21/UdBuf_7_mux00000_2072 ;
  wire \XLXI_21/InBuf_10_and0000 ;
  wire \XLXI_21/InBuf_8_and0000 ;
  wire \XLXI_21/State_FSM_FFd6/DXMUX_2436 ;
  wire \XLXI_21/State_FSM_FFd6/FXMUX_2435 ;
  wire \XLXI_21/State_FSM_FFd6-In ;
  wire \XLXI_21/State_FSM_FFd6/DYMUX_2425 ;
  wire \XLXI_21/State_cmp_eq0001_pack_2 ;
  wire \XLXI_21/State_FSM_FFd6/CLKINVNOT ;
  wire \XLXI_21/InBuf<9>/DYMUX_2388 ;
  wire \XLXI_21/InBuf<9>/CLKINVNOT ;
  wire \XLXI_21/InBuf<9>/CEINV_2385 ;
  wire N121;
  wire N14;
  wire \XLXI_21/AdrBus<1>/DXMUX_2479 ;
  wire \XLXI_21/AdrBus<1>/DYMUX_2473 ;
  wire \XLXI_21/AdrBus<1>/CLKINVNOT ;
  wire \XLXI_21/AdrBus<1>/CEINV_2470 ;
  wire \XLXI_21/State_FSM_FFd4/DXMUX_2532 ;
  wire \XLXI_21/State_FSM_FFd4-In1 ;
  wire \XLXI_21/State_cmp_eq0003_pack_2 ;
  wire \XLXI_21/State_FSM_FFd4/SRINV_2517 ;
  wire \XLXI_21/State_FSM_FFd4/CLKINVNOT ;
  wire \XLXI_21/AdrBus<3>/DXMUX_2499 ;
  wire \XLXI_21/AdrBus<3>/DYMUX_2493 ;
  wire \XLXI_21/AdrBus<3>/CLKINVNOT ;
  wire \XLXI_21/AdrBus<3>/CEINV_2490 ;
  wire \XLXI_27/DataOut<3>/DXMUX_2612 ;
  wire \XLXI_27/DataOut<3>/DYMUX_2606 ;
  wire \XLXI_27/DataOut<3>/SRINV_2604 ;
  wire \XLXI_27/DataOut<3>/CLKINV_2603 ;
  wire \XLXI_21/InBuf<10>/DYMUX_2836 ;
  wire \XLXI_21/InBuf<10>/CLKINVNOT ;
  wire \XLXI_21/InBuf<10>/CEINV_2833 ;
  wire \XLXI_27/DataOut<1>/DXMUX_2592 ;
  wire \XLXI_27/DataOut<1>/DYMUX_2586 ;
  wire \XLXI_27/DataOut<1>/SRINV_2584 ;
  wire \XLXI_27/DataOut<1>/CLKINV_2583 ;
  wire \XLXI_21/SClk_Cnt<3>/DXMUX_2720 ;
  wire \XLXI_21/SClk_Cnt<3>/DYMUX_2714 ;
  wire \XLXI_21/SClk_Cnt<3>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt<3>/CEINV_2711 ;
  wire \XLXI_27/DataOut<5>/DXMUX_2700 ;
  wire \XLXI_27/DataOut<5>/DYMUX_2694 ;
  wire \XLXI_27/DataOut<5>/SRINV_2692 ;
  wire \XLXI_27/DataOut<5>/CLKINV_2691 ;
  wire \XLXI_21/InBuf_9_and0000 ;
  wire \XLXI_21/State_cmp_eq0004_pack_1 ;
  wire N20;
  wire N19;
  wire \XLXI_21/SClk_Cnt<1>/DXMUX_2632 ;
  wire \XLXI_21/SClk_Cnt<1>/DYMUX_2626 ;
  wire \XLXI_21/SClk_Cnt<1>/CLKINVNOT ;
  wire \XLXI_21/SClk_Cnt<1>/CEINV_2623 ;
  wire \XLXI_27/DataOut<8>/DYMUX_2824 ;
  wire \XLXI_27/DataOut<8>/BYINV_2823 ;
  wire \XLXI_27/DataOut<8>/SRINV_2822 ;
  wire \XLXI_27/DataOut<8>/CLKINV_2821 ;
  wire \XLXI_27/DataOut<7>/DXMUX_2764 ;
  wire \XLXI_27/DataOut<7>/DYMUX_2758 ;
  wire \XLXI_27/DataOut<7>/SRINV_2756 ;
  wire \XLXI_27/DataOut<7>/CLKINV_2755 ;
  wire \XLXI_21/xSS<1>/DXMUX_2573 ;
  wire \XLXI_21/xSS<1>/DYMUX_2568 ;
  wire \XLXI_21/xSS<1>/CLKINV_2566 ;
  wire \XLXI_21/InBuf<12>/DYMUX_2884 ;
  wire \XLXI_21/InBuf<12>/CLKINVNOT ;
  wire \XLXI_21/InBuf<12>/CEINV_2881 ;
  wire \XLXI_21/InBuf<14>/DYMUX_2908 ;
  wire \XLXI_21/InBuf<14>/CLKINVNOT ;
  wire \XLXI_21/InBuf<14>/CEINV_2905 ;
  wire \XLXI_21/InBuf_2_and0000 ;
  wire \XLXI_21/InBuf_1_and0000 ;
  wire \XLXI_21/InBuf<15>/DYMUX_2920 ;
  wire \XLXI_21/InBuf<15>/CLKINVNOT ;
  wire \XLXI_21/InBuf<15>/CEINV_2917 ;
  wire \XLXI_21/DataOut<1>/DXMUX_2940 ;
  wire \XLXI_21/DataOut<1>/DYMUX_2934 ;
  wire \XLXI_21/DataOut<1>/CLKINVNOT ;
  wire \XLXI_21/DataOut<1>/CEINV_2931 ;
  wire N17;
  wire N16;
  wire \XLXI_27/DataOut_not0001 ;
  wire \XLXI_27/Led_cmp_eq0000 ;
  wire \XLXI_21/InBuf<13>/DYMUX_2896 ;
  wire \XLXI_21/InBuf<13>/CLKINVNOT ;
  wire \XLXI_21/InBuf<13>/CEINV_2893 ;
  wire N141;
  wire N131;
  wire \XLXI_21/InBuf_11_and0000 ;
  wire \XLXI_21/InBuf_3_and0000 ;
  wire N11;
  wire N10;
  wire \XLXI_21/InBuf<11>/DYMUX_2848 ;
  wire \XLXI_21/InBuf<11>/CLKINVNOT ;
  wire \XLXI_21/InBuf<11>/CEINV_2845 ;
  wire \XLXI_21/DataOut<3>/DXMUX_2984 ;
  wire \XLXI_21/DataOut<3>/DYMUX_2978 ;
  wire \XLXI_21/DataOut<3>/CLKINVNOT ;
  wire \XLXI_21/DataOut<3>/CEINV_2975 ;
  wire \XLXI_21/DataOut<5>/DXMUX_3028 ;
  wire \XLXI_21/DataOut<5>/DYMUX_3022 ;
  wire \XLXI_21/DataOut<5>/CLKINVNOT ;
  wire \XLXI_21/DataOut<5>/CEINV_3019 ;
  wire \XLXI_21/UdBuf_9_mux00000_3010 ;
  wire N01_pack_1;
  wire \clk_BUFGP/BUFG/S_INVNOT ;
  wire \clk_BUFGP/BUFG/I0_INV ;
  wire \sw<7>/INBUF ;
  wire \XLXI_21/UdBuf<14>/DXMUX_1236 ;
  wire \XLXI_21/UdBuf<14>/F5MUX_1234 ;
  wire \XLXI_21/UdBuf_14_mux0000241 ;
  wire \XLXI_21/UdBuf<14>/BXINV_1226 ;
  wire \XLXI_21/UdBuf_14_mux00002411_1224 ;
  wire \XLXI_21/UdBuf<14>/SRINV_1219 ;
  wire \XLXI_21/UdBuf<14>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<10>/DXMUX_1304 ;
  wire \XLXI_21/UdBuf<10>/F5MUX_1302 ;
  wire \XLXI_21/UdBuf_10_mux0000241 ;
  wire \XLXI_21/UdBuf<10>/BXINV_1294 ;
  wire \XLXI_21/UdBuf_10_mux00002411_1292 ;
  wire \XLXI_21/UdBuf<10>/SRINV_1287 ;
  wire \XLXI_21/UdBuf<10>/CLKINVNOT ;
  wire \sw<6>/INBUF ;
  wire \SPI_SS/INBUF ;
  wire \XLXI_21/UdBuf<4>/DXMUX_1270 ;
  wire \XLXI_21/UdBuf<4>/F5MUX_1268 ;
  wire \XLXI_21/UdBuf_4_mux0000241 ;
  wire \XLXI_21/UdBuf<4>/BXINV_1260 ;
  wire \XLXI_21/UdBuf_4_mux00002411_1258 ;
  wire \XLXI_21/UdBuf<4>/SRINV_1253 ;
  wire \XLXI_21/UdBuf<4>/CLKINVNOT ;
  wire \XLXI_21/UdBuf<8>/DXMUX_1202 ;
  wire \XLXI_21/UdBuf<8>/F5MUX_1200 ;
  wire \XLXI_21/UdBuf_8_mux0000241 ;
  wire \XLXI_21/UdBuf<8>/BXINV_1192 ;
  wire \XLXI_21/UdBuf_8_mux00002411_1190 ;
  wire \XLXI_21/UdBuf<8>/SRINV_1185 ;
  wire \XLXI_21/UdBuf<8>/CLKINVNOT ;
  wire \SPI_Clk/INBUF ;
  wire \XLXI_21/WE_net/DYMUX_3176 ;
  wire \XLXI_21/WE_net/BYINV_3175 ;
  wire \XLXI_21/WE_net/SRINV_3174 ;
  wire \XLXI_21/WE_net/CLKINVNOT ;
  wire \XLXI_21/DataOut<7>/DXMUX_3060 ;
  wire \XLXI_21/DataOut<7>/DYMUX_3054 ;
  wire \XLXI_21/DataOut<7>/CLKINVNOT ;
  wire \XLXI_21/DataOut<7>/CEINV_3051 ;
  wire \XLXI_27/CS/DYMUX_3140 ;
  wire \XLXI_27/CS/BYINV_3139 ;
  wire \XLXI_27/CS/SRINV_3138 ;
  wire \XLXI_27/CS/CLKINV_3137 ;
  wire \XLXI_21/DataOut<9>/DXMUX_3080 ;
  wire \XLXI_21/DataOut<9>/DYMUX_3074 ;
  wire \XLXI_21/DataOut<9>/CLKINVNOT ;
  wire \XLXI_21/DataOut<9>/CEINV_3071 ;
  wire \XLXI_21/InBuf_6_and0000 ;
  wire \XLXI_21/InBuf_5_and0000 ;
  wire N02;
  wire \XLXI_21/InBuf_14_and0000 ;
  wire \XLXI_21/InBuf_13_and0000 ;
  wire \XLXI_21/UdBuf_6_mux00000_3206 ;
  wire \XLXI_21/DataOut<11>/DXMUX_3224 ;
  wire \XLXI_21/DataOut<11>/DYMUX_3218 ;
  wire \XLXI_21/DataOut<11>/CLKINVNOT ;
  wire \XLXI_21/DataOut<11>/CEINV_3215 ;
  wire \XLXI_21/xSClk<1>/DXMUX_3193 ;
  wire \XLXI_21/xSClk<1>/DYMUX_3188 ;
  wire \XLXI_21/xSClk<1>/CLKINV_3186 ;
  wire \XLXI_21/UdBuf_5_mux00000_3106 ;
  wire \XLXI_21/UdBuf_4_mux00000_3097 ;
  wire GND;
  wire VCC;
  wire [1 : 0] \XLXI_21/xSClk ;
  wire [7 : 0] \XLXI_27/Led ;
  wire [8 : 0] \XLXI_27/DataOut ;
  wire [11 : 0] \XLXI_21/DataOut ;
  wire [3 : 0] \XLXI_21/SClk_Cnt ;
  wire [3 : 0] \XLXI_21/SClk_Count ;
  wire [1 : 0] \XLXI_21/xSS ;
  wire [15 : 0] \XLXI_21/InBuf ;
  wire [3 : 0] \XLXI_21/AdrBus ;
  wire [7 : 0] \XLXI_27/Led_mux0001 ;
  wire [3 : 1] \XLXI_21/Result ;
  wire [2 : 1] \XLXI_21/SClk_Cnt_mux0000 ;
  initial $sdf_annotate("netgen/par/design_timesim.sdf");
  X_BUF #(
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/Mmux__varindex0000_8_f5/F5USED  (
    .I(\XLXI_21/Mmux__varindex0000_8_f5/F5MUX_1023 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/Mmux__varindex0000_8_f5/F5MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_101_1014 ),
    .IB(\XLXI_21/Mmux__varindex0000_91_1021 ),
    .SEL(\XLXI_21/Mmux__varindex0000_8_f5/BXINV_1016 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5/F5MUX_1023 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/Mmux__varindex0000_8_f5/BXINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<1>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_8_f5/BXINV_1016 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F5USED  (
    .I(\XLXI_21/Mmux__varindex0000_6_f6/F5MUX_999 ),
    .O(\XLXI_21/Mmux__varindex0000_7_f5 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F5MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_9_988 ),
    .IB(\XLXI_21/Mmux__varindex0000_8_997 ),
    .SEL(\XLXI_21/Mmux__varindex0000_6_f6/BXINV_992 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/F5MUX_999 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_6_f6/BXINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<1>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/BXINV_992 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_6_f6/YUSED  (
    .I(\XLXI_21/Mmux__varindex0000_6_f6/F6MUX_990 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_6_f6/F6MUX  (
    .IA(\XLXI_21/Mmux__varindex0000_8_f5 ),
    .IB(\XLXI_21/Mmux__varindex0000_7_f5 ),
    .SEL(\XLXI_21/Mmux__varindex0000_6_f6/BYINV_983 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/F6MUX_990 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_6_f6/BYINV  (
    .I(\XLXI_21/SClk_Cnt_mux0000<2>_0 ),
    .O(\XLXI_21/Mmux__varindex0000_6_f6/BYINV_983 )
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
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<12>/DXMUX  (
    .I(\XLXI_21/UdBuf<12>/F5MUX_1556 ),
    .O(\XLXI_21/UdBuf<12>/DXMUX_1558 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<12>/F5MUX  (
    .IA(\XLXI_21/UdBuf_12_mux00002411_1546 ),
    .IB(\XLXI_21/UdBuf_12_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<12>/BXINV_1548 ),
    .O(\XLXI_21/UdBuf<12>/F5MUX_1556 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<12>/BXINV  (
    .I(\XLXI_27/DataOut [3]),
    .O(\XLXI_21/UdBuf<12>/BXINV_1548 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<12>/SRINV  (
    .I(\XLXI_21/UdBuf_12_mux00000_2222 ),
    .O(\XLXI_21/UdBuf<12>/SRINV_1541 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<12>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf<9>/DXMUX  (
    .I(\XLXI_21/UdBuf<9>/F5MUX_1336 ),
    .O(\XLXI_21/UdBuf<9>/DXMUX_1338 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf<9>/F5MUX  (
    .IA(\XLXI_21/UdBuf_9_mux00002411_1326 ),
    .IB(\XLXI_21/UdBuf_9_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<9>/BXINV_1328 ),
    .O(\XLXI_21/UdBuf<9>/F5MUX_1336 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf<9>/BXINV  (
    .I(\XLXI_27/DataOut [6]),
    .O(\XLXI_21/UdBuf<9>/BXINV_1328 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf<9>/SRINV  (
    .I(\XLXI_21/UdBuf_9_mux00000_3010 ),
    .O(\XLXI_21/UdBuf<9>/SRINV_1321 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf<6>/DXMUX  (
    .I(\XLXI_21/UdBuf<6>/F5MUX_1472 ),
    .O(\XLXI_21/UdBuf<6>/DXMUX_1474 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf<6>/F5MUX  (
    .IA(\XLXI_21/UdBuf_6_mux00002411_1462 ),
    .IB(\XLXI_21/UdBuf_6_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<6>/BXINV_1464 ),
    .O(\XLXI_21/UdBuf<6>/F5MUX_1472 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf<6>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<6>/BXINV_1464 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf<6>/SRINV  (
    .I(\XLXI_21/UdBuf_6_mux00000_3206 ),
    .O(\XLXI_21/UdBuf<6>/SRINV_1457 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<6>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf<15>/DXMUX  (
    .I(\XLXI_21/UdBuf<15>/F5MUX_1370 ),
    .O(\XLXI_21/UdBuf<15>/DXMUX_1372 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf<15>/F5MUX  (
    .IA(\XLXI_21/UdBuf_15_mux00002411_1360 ),
    .IB(\XLXI_21/UdBuf_15_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<15>/BXINV_1362 ),
    .O(\XLXI_21/UdBuf<15>/F5MUX_1370 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf<15>/BXINV  (
    .I(\XLXI_27/DataOut [0]),
    .O(\XLXI_21/UdBuf<15>/BXINV_1362 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf<15>/SRINV  (
    .I(\XLXI_21/UdBuf_15_mux00000_2213 ),
    .O(\XLXI_21/UdBuf<15>/SRINV_1355 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<15>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf<5>/DXMUX  (
    .I(\XLXI_21/UdBuf<5>/F5MUX_1404 ),
    .O(\XLXI_21/UdBuf<5>/DXMUX_1406 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf<5>/F5MUX  (
    .IA(\XLXI_21/UdBuf_5_mux00002411_1394 ),
    .IB(\XLXI_21/UdBuf_5_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<5>/BXINV_1396 ),
    .O(\XLXI_21/UdBuf<5>/F5MUX_1404 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf<5>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<5>/BXINV_1396 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf<5>/SRINV  (
    .I(\XLXI_21/UdBuf_5_mux00000_3106 ),
    .O(\XLXI_21/UdBuf<5>/SRINV_1389 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<5>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y50" ))
  \N22/XUSED  (
    .I(\N22/F5MUX_1502 ),
    .O(N22)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X55Y50" ))
  \N22/F5MUX  (
    .IA(N27),
    .IB(N28),
    .SEL(\N22/BXINV_1494 ),
    .O(\N22/F5MUX_1502 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y50" ))
  \N22/BXINV  (
    .I(\XLXI_21/SClk_Cnt [1]),
    .O(\N22/BXINV_1494 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y51" ))
  \N23/XUSED  (
    .I(\N23/F5MUX_1527 ),
    .O(N23)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X54Y51" ))
  \N23/F5MUX  (
    .IA(N29),
    .IB(N30),
    .SEL(\N23/BXINV_1519 ),
    .O(\N23/F5MUX_1527 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y51" ))
  \N23/BXINV  (
    .I(\XLXI_21/SClk_Count [1]),
    .O(\N23/BXINV_1519 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf<11>/DXMUX  (
    .I(\XLXI_21/UdBuf<11>/F5MUX_1438 ),
    .O(\XLXI_21/UdBuf<11>/DXMUX_1440 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf<11>/F5MUX  (
    .IA(\XLXI_21/UdBuf_11_mux00002411_1428 ),
    .IB(\XLXI_21/UdBuf_11_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<11>/BXINV_1430 ),
    .O(\XLXI_21/UdBuf<11>/F5MUX_1438 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf<11>/BXINV  (
    .I(\XLXI_27/DataOut [4]),
    .O(\XLXI_21/UdBuf<11>/BXINV_1430 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf<11>/SRINV  (
    .I(\XLXI_21/UdBuf_11_mux00000_2081 ),
    .O(\XLXI_21/UdBuf<11>/SRINV_1423 )
  );
  X_INV #(
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<11>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>120_1682 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>120_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120/YUSED  (
    .I(\XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 ),
    .O(\XLXI_21/Mmux__varindex0000_9_f5/O )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y33" ))
  \XLXI_21/State_FSM_FFd8/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd8-In ),
    .O(\XLXI_21/State_FSM_FFd8/DYMUX_1835 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y33" ))
  \XLXI_21/State_FSM_FFd8/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd8/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_27/Led<3>/DXMUX  (
    .I(\XLXI_27/Led_mux0001 [3]),
    .O(\XLXI_27/Led<3>/DXMUX_1910 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_27/Led<3>/DYMUX  (
    .I(\XLXI_27/Led_mux0001 [2]),
    .O(\XLXI_27/Led<3>/DYMUX_1896 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_27/Led<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<3>/CLKINV_1886 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_27/Led<3>/CEINV  (
    .I(\XLXI_27/Led_cmp_eq0000_0 ),
    .O(\XLXI_27/Led<3>/CEINV_1885 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y33" ))
  \XLXI_21/State_FSM_FFd7/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd7-In_1654 ),
    .O(\XLXI_21/State_FSM_FFd7/DXMUX_1657 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y33" ))
  \XLXI_21/State_FSM_FFd7/YUSED  (
    .I(\XLXI_21/State_FSM_FFd7-In_SW1/O_pack_2 ),
    .O(\XLXI_21/State_FSM_FFd7-In_SW1/O )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y33" ))
  \XLXI_21/State_FSM_FFd7/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd7/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd3/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>17_1818 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>17_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd3/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd3/GYMUX_1809 ),
    .O(\XLXI_21/State_FSM_FFd3/DYMUX_1810 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd3/YUSED  (
    .I(\XLXI_21/State_FSM_FFd3/GYMUX_1809 ),
    .O(\XLXI_21/State_FSM_FFd3-In_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd3/GYMUX  (
    .I(\XLXI_21/State_FSM_FFd3-In ),
    .O(\XLXI_21/State_FSM_FFd3/GYMUX_1809 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd3/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd3/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf<13>/DXMUX  (
    .I(\XLXI_21/UdBuf<13>/F5MUX_1624 ),
    .O(\XLXI_21/UdBuf<13>/DXMUX_1626 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf<13>/F5MUX  (
    .IA(\XLXI_21/UdBuf_13_mux00002411_1614 ),
    .IB(\XLXI_21/UdBuf_13_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<13>/BXINV_1616 ),
    .O(\XLXI_21/UdBuf<13>/F5MUX_1624 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf<13>/BXINV  (
    .I(\XLXI_27/DataOut [2]),
    .O(\XLXI_21/UdBuf<13>/BXINV_1616 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf<13>/SRINV  (
    .I(\XLXI_21/UdBuf_13_mux00000_2246 ),
    .O(\XLXI_21/UdBuf<13>/SRINV_1609 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<13>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Count<3>/DXMUX  (
    .I(\XLXI_21/Result [3]),
    .O(\XLXI_21/SClk_Count<3>/DXMUX_1751 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Count<3>/DYMUX  (
    .I(\XLXI_21/Result [2]),
    .O(\XLXI_21/SClk_Count<3>/DYMUX_1738 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Count<3>/SRINV  (
    .I(\XLXI_21/SClk_Count_and0000_0 ),
    .O(\XLXI_21/SClk_Count<3>/SRINV_1729 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Count<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Count<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/SClk_Count<3>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Count<3>/CEINV_1727 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_27/Led<5>/DXMUX  (
    .I(\XLXI_27/Led_mux0001 [5]),
    .O(\XLXI_27/Led<5>/DXMUX_1948 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_27/Led<5>/DYMUX  (
    .I(\XLXI_27/Led_mux0001 [4]),
    .O(\XLXI_27/Led<5>/DYMUX_1934 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_27/Led<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<5>/CLKINV_1924 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_27/Led<5>/CEINV  (
    .I(\XLXI_27/Led_cmp_eq0000_0 ),
    .O(\XLXI_27/Led<5>/CEINV_1923 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/MISO/DXMUX  (
    .I(\XLXI_21/_varindex0000 ),
    .O(\XLXI_21/MISO/DXMUX_1711 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/MISO/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>132/O )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/MISO/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/MISO/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y34" ))
  \XLXI_27/Led<7>/DXMUX  (
    .I(\XLXI_27/Led_mux0001 [7]),
    .O(\XLXI_27/Led<7>/DXMUX_1986 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y34" ))
  \XLXI_27/Led<7>/DYMUX  (
    .I(\XLXI_27/Led_mux0001 [6]),
    .O(\XLXI_27/Led<7>/DYMUX_1972 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y34" ))
  \XLXI_27/Led<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<7>/CLKINV_1962 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y34" ))
  \XLXI_27/Led<7>/CEINV  (
    .I(\XLXI_27/Led_cmp_eq0000_0 ),
    .O(\XLXI_27/Led<7>/CEINV_1961 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y33" ))
  \XLXI_21/UdBuf<0>/DYMUX  (
    .I(\XLXI_21/State_cmp_eq0000 ),
    .O(\XLXI_21/UdBuf<0>/DYMUX_2007 )
  );
  X_INV #(
    .LOC ( "SLICE_X65Y33" ))
  \XLXI_21/UdBuf<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y33" ))
  \XLXI_21/UdBuf<0>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd8_902 ),
    .O(\XLXI_21/UdBuf<0>/CEINV_1996 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/State_FSM_FFd1/XUSED  (
    .I(\XLXI_21/SClk_Count_and0000 ),
    .O(\XLXI_21/SClk_Count_and0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/State_FSM_FFd1/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd1-In1 ),
    .O(\XLXI_21/State_FSM_FFd1/DYMUX_1778 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/State_FSM_FFd1/SRINV  (
    .I(\XLXI_21/State_FSM_FFd2_916 ),
    .O(\XLXI_21/State_FSM_FFd1/SRINV_1769 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/State_FSM_FFd1/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd1/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \XLXI_27/Led<1>/DXMUX  (
    .I(\XLXI_27/Led_mux0001 [1]),
    .O(\XLXI_27/Led<1>/DXMUX_1872 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \XLXI_27/Led<1>/DYMUX  (
    .I(\XLXI_27/Led_mux0001 [0]),
    .O(\XLXI_27/Led<1>/DYMUX_1858 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \XLXI_27/Led<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/Led<1>/CLKINV_1848 )
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y45" ))
  \XLXI_27/Led<1>/CEINV  (
    .I(\XLXI_27/Led_cmp_eq0000_0 ),
    .O(\XLXI_27/Led<1>/CEINV_1847 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf<7>/DXMUX  (
    .I(\XLXI_21/UdBuf<7>/F5MUX_1590 ),
    .O(\XLXI_21/UdBuf<7>/DXMUX_1592 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf<7>/F5MUX  (
    .IA(\XLXI_21/UdBuf_7_mux00002411_1580 ),
    .IB(\XLXI_21/UdBuf_7_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<7>/BXINV_1582 ),
    .O(\XLXI_21/UdBuf<7>/F5MUX_1590 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf<7>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<7>/BXINV_1582 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf<7>/SRINV  (
    .I(\XLXI_21/UdBuf_7_mux00000_2072 ),
    .O(\XLXI_21/UdBuf<7>/SRINV_1575 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<7>/CLKINVNOT )
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
    .LOC ( "SLICE_X55Y48" ))
  \XLXI_21/InBuf<7>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<7>/DYMUX_2364 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y48" ))
  \XLXI_21/InBuf<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y48" ))
  \XLXI_21/InBuf<7>/CEINV  (
    .I(\XLXI_21/InBuf_7_and0000 ),
    .O(\XLXI_21/InBuf<7>/CEINV_2361 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y44" ))
  \XLXI_21/InBuf<5>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<5>/DYMUX_2340 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y44" ))
  \XLXI_21/InBuf<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<5>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y44" ))
  \XLXI_21/InBuf<5>/CEINV  (
    .I(\XLXI_21/InBuf_5_and0000 ),
    .O(\XLXI_21/InBuf<5>/CEINV_2337 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Count<0>/DXMUX  (
    .I(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/SClk_Count<0>/DXMUX_2147 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Count<0>/DYMUX  (
    .I(\XLXI_21/Result [1]),
    .O(\XLXI_21/SClk_Count<0>/DYMUX_2133 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Count<0>/SRINV  (
    .I(\XLXI_21/SClk_Count_and0000_0 ),
    .O(\XLXI_21/SClk_Count<0>/SRINV_2123 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Count<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Count<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/SClk_Count<0>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Count<0>/CEINV_2121 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y36" ))
  \XLXI_21/InBuf<3>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<3>/DYMUX_2292 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y36" ))
  \XLXI_21/InBuf<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y36" ))
  \XLXI_21/InBuf<3>/CEINV  (
    .I(\XLXI_21/InBuf_3_and0000 ),
    .O(\XLXI_21/InBuf<3>/CEINV_2289 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y36" ))
  \XLXI_21/InBuf<2>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<2>/DYMUX_2256 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y36" ))
  \XLXI_21/InBuf<2>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<2>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y36" ))
  \XLXI_21/InBuf<2>/CEINV  (
    .I(\XLXI_21/InBuf_2_and0000 ),
    .O(\XLXI_21/InBuf<2>/CEINV_2253 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y46" ))
  \N15/XUSED  (
    .I(N15),
    .O(N15_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y46" ))
  \N15/YUSED  (
    .I(N13),
    .O(N13_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/InBuf<4>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<4>/DYMUX_2328 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/InBuf<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<4>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y43" ))
  \XLXI_21/InBuf<4>/CEINV  (
    .I(\XLXI_21/InBuf_4_and0000 ),
    .O(\XLXI_21/InBuf<4>/CEINV_2325 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/InBuf<8>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<8>/DYMUX_2376 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/InBuf<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<8>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y41" ))
  \XLXI_21/InBuf<8>/CEINV  (
    .I(\XLXI_21/InBuf_8_and0000 ),
    .O(\XLXI_21/InBuf<8>/CEINV_2373 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/InBuf<6>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<6>/DYMUX_2352 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/InBuf<6>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<6>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y42" ))
  \XLXI_21/InBuf<6>/CEINV  (
    .I(\XLXI_21/InBuf_6_and0000 ),
    .O(\XLXI_21/InBuf<6>/CEINV_2349 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y32" ))
  \XLXI_21/State_FSM_FFd2/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd3_921 ),
    .O(\XLXI_21/State_FSM_FFd2/DYMUX_2398 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y32" ))
  \XLXI_21/State_FSM_FFd2/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd2/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/InBuf<0>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<0>/DYMUX_2184 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/InBuf<0>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<0>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y38" ))
  \XLXI_21/InBuf<0>/CEINV  (
    .I(\XLXI_21/InBuf_0_and0000 ),
    .O(\XLXI_21/InBuf<0>/CEINV_2181 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y37" ))
  \XLXI_21/InBuf<1>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<1>/DYMUX_2196 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y37" ))
  \XLXI_21/InBuf<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y37" ))
  \XLXI_21/InBuf<1>/CEINV  (
    .I(\XLXI_21/InBuf_1_and0000 ),
    .O(\XLXI_21/InBuf<1>/CEINV_2193 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/SClk_Cnt_mux0000<2>/XUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000 [2]),
    .O(\XLXI_21/SClk_Cnt_mux0000<2>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/SClk_Cnt_mux0000<2>/YUSED  (
    .I(\XLXI_21/SClk_Cnt_mux0000 [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd6/FXMUX_2435 ),
    .O(\XLXI_21/State_FSM_FFd6/DXMUX_2436 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6/XUSED  (
    .I(\XLXI_21/State_FSM_FFd6/FXMUX_2435 ),
    .O(\XLXI_21/State_FSM_FFd6-In_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6/FXMUX  (
    .I(\XLXI_21/State_FSM_FFd6-In ),
    .O(\XLXI_21/State_FSM_FFd6/FXMUX_2435 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6/DYMUX  (
    .I(\XLXI_21/State_FSM_FFd6_952 ),
    .O(\XLXI_21/State_FSM_FFd6/DYMUX_2425 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6/YUSED  (
    .I(\XLXI_21/State_cmp_eq0001_pack_2 ),
    .O(\XLXI_21/State_cmp_eq0001 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd6/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/InBuf<9>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<9>/DYMUX_2388 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/InBuf<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y39" ))
  \XLXI_21/InBuf<9>/CEINV  (
    .I(\XLXI_21/InBuf_9_and0000 ),
    .O(\XLXI_21/InBuf<9>/CEINV_2385 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y48" ))
  \N121/XUSED  (
    .I(N121),
    .O(N121_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y48" ))
  \N121/YUSED  (
    .I(N14),
    .O(N14_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/AdrBus<1>/DXMUX  (
    .I(\XLXI_21/InBuf [2]),
    .O(\XLXI_21/AdrBus<1>/DXMUX_2479 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/AdrBus<1>/DYMUX  (
    .I(\XLXI_21/InBuf [3]),
    .O(\XLXI_21/AdrBus<1>/DYMUX_2473 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/AdrBus<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/AdrBus<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y34" ))
  \XLXI_21/AdrBus<1>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd6-In_0 ),
    .O(\XLXI_21/AdrBus<1>/CEINV_2470 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd4/DXMUX  (
    .I(\XLXI_21/State_FSM_FFd4-In1 ),
    .O(\XLXI_21/State_FSM_FFd4/DXMUX_2532 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd4/YUSED  (
    .I(\XLXI_21/State_cmp_eq0003_pack_2 ),
    .O(\XLXI_21/State_cmp_eq0003 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd4/SRINV  (
    .I(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/State_FSM_FFd4/SRINV_2517 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd4/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/State_FSM_FFd4/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/AdrBus<3>/DXMUX  (
    .I(\XLXI_21/InBuf [0]),
    .O(\XLXI_21/AdrBus<3>/DXMUX_2499 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/AdrBus<3>/DYMUX  (
    .I(\XLXI_21/InBuf [1]),
    .O(\XLXI_21/AdrBus<3>/DYMUX_2493 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/AdrBus<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/AdrBus<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y35" ))
  \XLXI_21/AdrBus<3>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd6-In_0 ),
    .O(\XLXI_21/AdrBus<3>/CEINV_2490 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_27/DataOut<3>/DXMUX  (
    .I(\sw<3>/INBUF ),
    .O(\XLXI_27/DataOut<3>/DXMUX_2612 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_27/DataOut<3>/DYMUX  (
    .I(\sw<2>/INBUF ),
    .O(\XLXI_27/DataOut<3>/DYMUX_2606 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_27/DataOut<3>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<3>/SRINV_2604 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y38" ))
  \XLXI_27/DataOut<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<3>/CLKINV_2603 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/InBuf<10>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<10>/DYMUX_2836 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/InBuf<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<10>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y42" ))
  \XLXI_21/InBuf<10>/CEINV  (
    .I(\XLXI_21/InBuf_10_and0000 ),
    .O(\XLXI_21/InBuf<10>/CEINV_2833 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_27/DataOut<1>/DXMUX  (
    .I(\sw<1>/INBUF ),
    .O(\XLXI_27/DataOut<1>/DXMUX_2592 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_27/DataOut<1>/DYMUX  (
    .I(\sw<0>/INBUF ),
    .O(\XLXI_27/DataOut<1>/DYMUX_2586 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_27/DataOut<1>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<1>/SRINV_2584 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y46" ))
  \XLXI_27/DataOut<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<1>/CLKINV_2583 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/SClk_Cnt<3>/DXMUX  (
    .I(\XLXI_21/SClk_Count [3]),
    .O(\XLXI_21/SClk_Cnt<3>/DXMUX_2720 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/SClk_Cnt<3>/DYMUX  (
    .I(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/SClk_Cnt<3>/DYMUX_2714 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/SClk_Cnt<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Cnt<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y40" ))
  \XLXI_21/SClk_Cnt<3>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Cnt<3>/CEINV_2711 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_27/DataOut<5>/DXMUX  (
    .I(\sw<5>/INBUF ),
    .O(\XLXI_27/DataOut<5>/DXMUX_2700 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_27/DataOut<5>/DYMUX  (
    .I(\sw<4>/INBUF ),
    .O(\XLXI_27/DataOut<5>/DYMUX_2694 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_27/DataOut<5>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<5>/SRINV_2692 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y37" ))
  \XLXI_27/DataOut<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<5>/CLKINV_2691 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/InBuf_9_and0000/YUSED  (
    .I(\XLXI_21/State_cmp_eq0004_pack_1 ),
    .O(\XLXI_21/State_cmp_eq0004 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y40" ))
  \N20/XUSED  (
    .I(N20),
    .O(N20_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y40" ))
  \N20/YUSED  (
    .I(N19),
    .O(N19_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Cnt<1>/DXMUX  (
    .I(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/SClk_Cnt<1>/DXMUX_2632 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Cnt<1>/DYMUX  (
    .I(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/SClk_Cnt<1>/DYMUX_2626 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Cnt<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/SClk_Cnt<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y41" ))
  \XLXI_21/SClk_Cnt<1>/CEINV  (
    .I(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/SClk_Cnt<1>/CEINV_2623 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y37" ))
  \XLXI_27/DataOut<8>/DYMUX  (
    .I(\XLXI_27/DataOut<8>/BYINV_2823 ),
    .O(\XLXI_27/DataOut<8>/DYMUX_2824 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y37" ))
  \XLXI_27/DataOut<8>/BYINV  (
    .I(1'b1),
    .O(\XLXI_27/DataOut<8>/BYINV_2823 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y37" ))
  \XLXI_27/DataOut<8>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<8>/SRINV_2822 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y37" ))
  \XLXI_27/DataOut<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<8>/CLKINV_2821 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y31" ))
  \XLXI_27/DataOut<7>/DXMUX  (
    .I(\sw<7>/INBUF ),
    .O(\XLXI_27/DataOut<7>/DXMUX_2764 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y31" ))
  \XLXI_27/DataOut<7>/DYMUX  (
    .I(\sw<6>/INBUF ),
    .O(\XLXI_27/DataOut<7>/DYMUX_2758 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y31" ))
  \XLXI_27/DataOut<7>/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/DataOut<7>/SRINV_2756 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y31" ))
  \XLXI_27/DataOut<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/DataOut<7>/CLKINV_2755 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y32" ))
  \XLXI_21/xSS<1>/DXMUX  (
    .I(\XLXI_21/xSS [0]),
    .O(\XLXI_21/xSS<1>/DXMUX_2573 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y32" ))
  \XLXI_21/xSS<1>/DYMUX  (
    .I(\SPI_SS/INBUF ),
    .O(\XLXI_21/xSS<1>/DYMUX_2568 )
  );
  X_BUF #(
    .LOC ( "SLICE_X65Y32" ))
  \XLXI_21/xSS<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/xSS<1>/CLKINV_2566 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/InBuf<12>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<12>/DYMUX_2884 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/InBuf<12>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<12>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y40" ))
  \XLXI_21/InBuf<12>/CEINV  (
    .I(\XLXI_21/InBuf_12_and0000 ),
    .O(\XLXI_21/InBuf<12>/CEINV_2881 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/InBuf<14>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<14>/DYMUX_2908 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/InBuf<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<14>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y49" ))
  \XLXI_21/InBuf<14>/CEINV  (
    .I(\XLXI_21/InBuf_14_and0000 ),
    .O(\XLXI_21/InBuf<14>/CEINV_2905 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/InBuf<15>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<15>/DYMUX_2920 )
  );
  X_INV #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/InBuf<15>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<15>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y43" ))
  \XLXI_21/InBuf<15>/CEINV  (
    .I(\XLXI_21/InBuf_15_and0000 ),
    .O(\XLXI_21/InBuf<15>/CEINV_2917 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/DataOut<1>/DXMUX  (
    .I(\XLXI_21/InBuf [14]),
    .O(\XLXI_21/DataOut<1>/DXMUX_2940 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/DataOut<1>/DYMUX  (
    .I(\XLXI_21/InBuf [15]),
    .O(\XLXI_21/DataOut<1>/DYMUX_2934 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/DataOut<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<1>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y44" ))
  \XLXI_21/DataOut<1>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd3-In_0 ),
    .O(\XLXI_21/DataOut<1>/CEINV_2931 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \N17/XUSED  (
    .I(N17),
    .O(N17_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y40" ))
  \N17/YUSED  (
    .I(N16),
    .O(N16_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y35" ))
  \XLXI_27/DataOut_not0001/XUSED  (
    .I(\XLXI_27/DataOut_not0001 ),
    .O(\XLXI_27/DataOut_not0001_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X54Y35" ))
  \XLXI_27/DataOut_not0001/YUSED  (
    .I(\XLXI_27/Led_cmp_eq0000 ),
    .O(\XLXI_27/Led_cmp_eq0000_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_21/InBuf<13>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<13>/DYMUX_2896 )
  );
  X_INV #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_21/InBuf<13>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<13>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y45" ))
  \XLXI_21/InBuf<13>/CEINV  (
    .I(\XLXI_21/InBuf_13_and0000 ),
    .O(\XLXI_21/InBuf<13>/CEINV_2893 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \N141/XUSED  (
    .I(N141),
    .O(N141_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y41" ))
  \N141/YUSED  (
    .I(N131),
    .O(N131_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \N11/XUSED  (
    .I(N11),
    .O(N11_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X67Y40" ))
  \N11/YUSED  (
    .I(N10),
    .O(N10_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y43" ))
  \XLXI_21/InBuf<11>/DYMUX  (
    .I(SPI_MOSI_IBUF_837),
    .O(\XLXI_21/InBuf<11>/DYMUX_2848 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y43" ))
  \XLXI_21/InBuf<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/InBuf<11>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y43" ))
  \XLXI_21/InBuf<11>/CEINV  (
    .I(\XLXI_21/InBuf_11_and0000 ),
    .O(\XLXI_21/InBuf<11>/CEINV_2845 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/DataOut<3>/DXMUX  (
    .I(\XLXI_21/InBuf [12]),
    .O(\XLXI_21/DataOut<3>/DXMUX_2984 )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/DataOut<3>/DYMUX  (
    .I(\XLXI_21/InBuf [13]),
    .O(\XLXI_21/DataOut<3>/DYMUX_2978 )
  );
  X_INV #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/DataOut<3>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<3>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X64Y42" ))
  \XLXI_21/DataOut<3>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd3-In_0 ),
    .O(\XLXI_21/DataOut<3>/CEINV_2975 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y44" ))
  \XLXI_21/DataOut<5>/DXMUX  (
    .I(\XLXI_21/InBuf [10]),
    .O(\XLXI_21/DataOut<5>/DXMUX_3028 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y44" ))
  \XLXI_21/DataOut<5>/DYMUX  (
    .I(\XLXI_21/InBuf [11]),
    .O(\XLXI_21/DataOut<5>/DYMUX_3022 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y44" ))
  \XLXI_21/DataOut<5>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<5>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y44" ))
  \XLXI_21/DataOut<5>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd3-In_0 ),
    .O(\XLXI_21/DataOut<5>/CEINV_3019 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/UdBuf_9_mux00000/YUSED  (
    .I(N01_pack_1),
    .O(N01)
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
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf<14>/DXMUX  (
    .I(\XLXI_21/UdBuf<14>/F5MUX_1234 ),
    .O(\XLXI_21/UdBuf<14>/DXMUX_1236 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf<14>/F5MUX  (
    .IA(\XLXI_21/UdBuf_14_mux00002411_1224 ),
    .IB(\XLXI_21/UdBuf_14_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<14>/BXINV_1226 ),
    .O(\XLXI_21/UdBuf<14>/F5MUX_1234 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf<14>/BXINV  (
    .I(\XLXI_27/DataOut [1]),
    .O(\XLXI_21/UdBuf<14>/BXINV_1226 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf<14>/SRINV  (
    .I(\XLXI_21/UdBuf_14_mux00000_2048 ),
    .O(\XLXI_21/UdBuf<14>/SRINV_1219 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf<14>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<14>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf<10>/DXMUX  (
    .I(\XLXI_21/UdBuf<10>/F5MUX_1302 ),
    .O(\XLXI_21/UdBuf<10>/DXMUX_1304 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf<10>/F5MUX  (
    .IA(\XLXI_21/UdBuf_10_mux00002411_1292 ),
    .IB(\XLXI_21/UdBuf_10_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<10>/BXINV_1294 ),
    .O(\XLXI_21/UdBuf<10>/F5MUX_1302 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf<10>/BXINV  (
    .I(\XLXI_27/DataOut [5]),
    .O(\XLXI_21/UdBuf<10>/BXINV_1294 )
  );
  X_BUF #(
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf<10>/SRINV  (
    .I(\XLXI_21/UdBuf_10_mux00000_2057 ),
    .O(\XLXI_21/UdBuf<10>/SRINV_1287 )
  );
  X_INV #(
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf<10>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<10>/CLKINVNOT )
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
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf<4>/DXMUX  (
    .I(\XLXI_21/UdBuf<4>/F5MUX_1268 ),
    .O(\XLXI_21/UdBuf<4>/DXMUX_1270 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf<4>/F5MUX  (
    .IA(\XLXI_21/UdBuf_4_mux00002411_1258 ),
    .IB(\XLXI_21/UdBuf_4_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<4>/BXINV_1260 ),
    .O(\XLXI_21/UdBuf<4>/F5MUX_1268 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf<4>/BXINV  (
    .I(\XLXI_27/DataOut [8]),
    .O(\XLXI_21/UdBuf<4>/BXINV_1260 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf<4>/SRINV  (
    .I(\XLXI_21/UdBuf_4_mux00000_3097 ),
    .O(\XLXI_21/UdBuf<4>/SRINV_1253 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf<4>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<4>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf<8>/DXMUX  (
    .I(\XLXI_21/UdBuf<8>/F5MUX_1200 ),
    .O(\XLXI_21/UdBuf<8>/DXMUX_1202 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf<8>/F5MUX  (
    .IA(\XLXI_21/UdBuf_8_mux00002411_1190 ),
    .IB(\XLXI_21/UdBuf_8_mux0000241 ),
    .SEL(\XLXI_21/UdBuf<8>/BXINV_1192 ),
    .O(\XLXI_21/UdBuf<8>/F5MUX_1200 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf<8>/BXINV  (
    .I(\XLXI_27/DataOut [7]),
    .O(\XLXI_21/UdBuf<8>/BXINV_1192 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf<8>/SRINV  (
    .I(\XLXI_21/UdBuf_8_mux00000_2237 ),
    .O(\XLXI_21/UdBuf<8>/SRINV_1185 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf<8>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/UdBuf<8>/CLKINVNOT )
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
    .LOC ( "SLICE_X53Y32" ))
  \XLXI_21/WE_net/DYMUX  (
    .I(\XLXI_21/WE_net/BYINV_3175 ),
    .O(\XLXI_21/WE_net/DYMUX_3176 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y32" ))
  \XLXI_21/WE_net/BYINV  (
    .I(1'b1),
    .O(\XLXI_21/WE_net/BYINV_3175 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y32" ))
  \XLXI_21/WE_net/SRINV  (
    .I(\XLXI_21/State_FSM_FFd3_921 ),
    .O(\XLXI_21/WE_net/SRINV_3174 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y32" ))
  \XLXI_21/WE_net/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/WE_net/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/DataOut<7>/DXMUX  (
    .I(\XLXI_21/InBuf [8]),
    .O(\XLXI_21/DataOut<7>/DXMUX_3060 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/DataOut<7>/DYMUX  (
    .I(\XLXI_21/InBuf [9]),
    .O(\XLXI_21/DataOut<7>/DYMUX_3054 )
  );
  X_INV #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/DataOut<7>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<7>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y39" ))
  \XLXI_21/DataOut<7>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd3-In_0 ),
    .O(\XLXI_21/DataOut<7>/CEINV_3051 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y38" ))
  \XLXI_27/CS/DYMUX  (
    .I(\XLXI_27/CS/BYINV_3139 ),
    .O(\XLXI_27/CS/DYMUX_3140 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y38" ))
  \XLXI_27/CS/BYINV  (
    .I(1'b1),
    .O(\XLXI_27/CS/BYINV_3139 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y38" ))
  \XLXI_27/CS/SRINV  (
    .I(\XLXI_27/DataOut_not0001_0 ),
    .O(\XLXI_27/CS/SRINV_3138 )
  );
  X_BUF #(
    .LOC ( "SLICE_X52Y38" ))
  \XLXI_27/CS/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_27/CS/CLKINV_3137 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/DataOut<9>/DXMUX  (
    .I(\XLXI_21/InBuf [6]),
    .O(\XLXI_21/DataOut<9>/DXMUX_3080 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/DataOut<9>/DYMUX  (
    .I(\XLXI_21/InBuf [7]),
    .O(\XLXI_21/DataOut<9>/DYMUX_3074 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/DataOut<9>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<9>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y49" ))
  \XLXI_21/DataOut<9>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd3-In_0 ),
    .O(\XLXI_21/DataOut<9>/CEINV_3071 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y36" ))
  \N02/XUSED  (
    .I(N02),
    .O(N02_0)
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X53Y50" ))
  \XLXI_21/UdBuf_6_mux00000  (
    .ADR0(\XLXI_21/UdBuf[6] ),
    .ADR1(VCC),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_6_mux00000_3206 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_11  (
    .I(\XLXI_21/DataOut<11>/DXMUX_3224 ),
    .CE(\XLXI_21/DataOut<11>/CEINV_3215 ),
    .CLK(\XLXI_21/DataOut<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [11])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_10  (
    .I(\XLXI_21/DataOut<11>/DYMUX_3218 ),
    .CE(\XLXI_21/DataOut<11>/CEINV_3215 ),
    .CLK(\XLXI_21/DataOut<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [10])
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/DataOut<11>/DXMUX  (
    .I(\XLXI_21/InBuf [4]),
    .O(\XLXI_21/DataOut<11>/DXMUX_3224 )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/DataOut<11>/DYMUX  (
    .I(\XLXI_21/InBuf [5]),
    .O(\XLXI_21/DataOut<11>/DYMUX_3218 )
  );
  X_INV #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/DataOut<11>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/DataOut<11>/CLKINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X53Y48" ))
  \XLXI_21/DataOut<11>/CEINV  (
    .I(\XLXI_21/State_FSM_FFd3-In_0 ),
    .O(\XLXI_21/DataOut<11>/CEINV_3215 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/xSClk_1  (
    .I(\XLXI_21/xSClk<1>/DXMUX_3193 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSClk<1>/CLKINV_3186 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSClk [1])
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/xSClk<1>/DXMUX  (
    .I(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/xSClk<1>/DXMUX_3193 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/xSClk<1>/DYMUX  (
    .I(\SPI_Clk/INBUF ),
    .O(\XLXI_21/xSClk<1>/DYMUX_3188 )
  );
  X_BUF #(
    .LOC ( "SLICE_X55Y41" ))
  \XLXI_21/xSClk<1>/CLKINV  (
    .I(clk_BUFGP),
    .O(\XLXI_21/xSClk<1>/CLKINV_3186 )
  );
  X_LUT4 #(
    .INIT ( 16'hEF40 ),
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/Mmux__varindex0000_101  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(N20_0),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(N19_0),
    .O(\XLXI_21/Mmux__varindex0000_101_1014 )
  );
  X_LUT4 #(
    .INIT ( 16'hFB40 ),
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_9  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(N141_0),
    .ADR3(N131_0),
    .O(\XLXI_21/Mmux__varindex0000_9_988 )
  );
  X_LUT4 #(
    .INIT ( 16'hAEA2 ),
    .LOC ( "SLICE_X65Y38" ))
  \XLXI_21/Mmux__varindex0000_8  (
    .ADR0(N10_0),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(N11_0),
    .O(\XLXI_21/Mmux__varindex0000_8_997 )
  );
  X_LUT4 #(
    .INIT ( 16'hFB40 ),
    .LOC ( "SLICE_X65Y39" ))
  \XLXI_21/Mmux__varindex0000_91  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(N17_0),
    .ADR3(N16_0),
    .O(\XLXI_21/Mmux__varindex0000_91_1021 )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/InBuf_14_and00001  (
    .ADR0(\XLXI_21/State_cmp_eq0004 ),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(N121_0),
    .O(\XLXI_21/InBuf_14_and0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X53Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_8  (
    .I(\XLXI_21/UdBuf<8>/DXMUX_1202 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<8>/SRINV_1185 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[8] )
  );
  X_LUT4 #(
    .INIT ( 16'h20E0 ),
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf_8_mux00002412  (
    .ADR0(\XLXI_21/DataOut [7]),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_27/CS_851 ),
    .O(\XLXI_21/UdBuf_8_mux00002411_1190 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0A0 ),
    .LOC ( "SLICE_X53Y37" ))
  \XLXI_21/UdBuf_8_mux00002411  (
    .ADR0(\XLXI_21/DataOut [7]),
    .ADR1(VCC),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_8_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'h20E0 ),
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf_14_mux00002412  (
    .ADR0(\XLXI_21/DataOut [1]),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_27/CS_851 ),
    .O(\XLXI_21/UdBuf_14_mux00002411_1224 )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \SPI_MOSI/IFF/IMUX  (
    .I(\SPI_MOSI/INBUF ),
    .O(SPI_MOSI_IBUF_837)
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_9  (
    .I(\XLXI_21/UdBuf<9>/DXMUX_1338 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<9>/SRINV_1321 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[9] )
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_14  (
    .I(\XLXI_21/UdBuf<14>/DXMUX_1236 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<14>/SRINV_1219 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[14] )
  );
  X_LUT4 #(
    .INIT ( 16'hAA88 ),
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf_9_mux00002411  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_21/DataOut [6]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_9_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'h7400 ),
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf_5_mux00002412  (
    .ADR0(\XLXI_27/CS_851 ),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_21/DataOut [10]),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_5_mux00002411_1394 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0C0 ),
    .LOC ( "SLICE_X66Y44" ))
  \XLXI_21/UdBuf_14_mux00002411  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/DataOut [1]),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_14_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE00 ),
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf_4_mux00002411  (
    .ADR0(\XLXI_21/DataOut [11]),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_4_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'h3A00 ),
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf_15_mux00002412  (
    .ADR0(\XLXI_21/DataOut [0]),
    .ADR1(\XLXI_27/CS_851 ),
    .ADR2(\XLXI_21/WE_net_849 ),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_15_mux00002411_1360 )
  );
  X_SFF #(
    .LOC ( "SLICE_X67Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_15  (
    .I(\XLXI_21/UdBuf<15>/DXMUX_1372 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<15>/SRINV_1355 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[15] )
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y50" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_4  (
    .I(\XLXI_21/UdBuf<4>/DXMUX_1270 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<4>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<4>/SRINV_1253 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[4] )
  );
  X_LUT4 #(
    .INIT ( 16'h2E00 ),
    .LOC ( "SLICE_X52Y50" ))
  \XLXI_21/UdBuf_4_mux00002412  (
    .ADR0(\XLXI_21/DataOut [11]),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_27/CS_851 ),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_4_mux00002411_1258 )
  );
  X_LUT4 #(
    .INIT ( 16'h40E0 ),
    .LOC ( "SLICE_X52Y34" ))
  \XLXI_21/UdBuf_9_mux00002412  (
    .ADR0(\XLXI_21/WE_net_849 ),
    .ADR1(\XLXI_21/DataOut [6]),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_27/CS_851 ),
    .O(\XLXI_21/UdBuf_9_mux00002411_1326 )
  );
  X_LUT4 #(
    .INIT ( 16'hFC00 ),
    .LOC ( "SLICE_X52Y51" ))
  \XLXI_21/UdBuf_5_mux00002411  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_21/DataOut [10]),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_5_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hEE00 ),
    .LOC ( "SLICE_X67Y44" ))
  \XLXI_21/UdBuf_15_mux00002411  (
    .ADR0(\XLXI_21/WE_net_849 ),
    .ADR1(\XLXI_21/DataOut [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_15_mux0000241 )
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_10  (
    .I(\XLXI_21/UdBuf<10>/DXMUX_1304 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<10>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<10>/SRINV_1287 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[10] )
  );
  X_LUT4 #(
    .INIT ( 16'h4C08 ),
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf_10_mux00002412  (
    .ADR0(\XLXI_21/WE_net_849 ),
    .ADR1(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR2(\XLXI_27/CS_851 ),
    .ADR3(\XLXI_21/DataOut [5]),
    .O(\XLXI_21/UdBuf_10_mux00002411_1292 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0A0 ),
    .LOC ( "SLICE_X66Y39" ))
  \XLXI_21/UdBuf_10_mux00002411  (
    .ADR0(\XLXI_21/WE_net_849 ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_21/DataOut [5]),
    .O(\XLXI_21/UdBuf_10_mux0000241 )
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y49" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_6  (
    .I(\XLXI_21/UdBuf<6>/DXMUX_1474 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<6>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<6>/SRINV_1457 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[6] )
  );
  X_LUT4 #(
    .INIT ( 16'hCCC0 ),
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf_11_mux00002411  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR2(\XLXI_21/DataOut [4]),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_11_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X54Y51" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW1_F  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/UdBuf[4] ),
    .ADR2(\XLXI_21/UdBuf[5] ),
    .ADR3(VCC),
    .O(N29)
  );
  X_SFF #(
    .LOC ( "SLICE_X67Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_12  (
    .I(\XLXI_21/UdBuf<12>/DXMUX_1558 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<12>/SRINV_1541 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[12] )
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X54Y51" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW1_G  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[7] ),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/UdBuf[6] ),
    .O(N30)
  );
  X_LUT4 #(
    .INIT ( 16'h2A20 ),
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf_12_mux00002412  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_27/CS_851 ),
    .ADR2(\XLXI_21/WE_net_849 ),
    .ADR3(\XLXI_21/DataOut [3]),
    .O(\XLXI_21/UdBuf_12_mux00002411_1546 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC88 ),
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf_6_mux00002411  (
    .ADR0(\XLXI_21/DataOut [9]),
    .ADR1(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR2(VCC),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_6_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X55Y50" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW0_G  (
    .ADR0(\XLXI_21/UdBuf[6] ),
    .ADR1(\XLXI_21/SClk_Cnt [0]),
    .ADR2(\XLXI_21/UdBuf[7] ),
    .ADR3(VCC),
    .O(N28)
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y51" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_5  (
    .I(\XLXI_21/UdBuf<5>/DXMUX_1406 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<5>/SRINV_1389 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h0A88 ),
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf_7_mux00002412  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_21/DataOut [8]),
    .ADR2(\XLXI_27/CS_851 ),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_7_mux00002411_1580 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA88 ),
    .LOC ( "SLICE_X52Y48" ))
  \XLXI_21/UdBuf_7_mux00002411  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_21/DataOut [8]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_7_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ),
    .LOC ( "SLICE_X55Y50" ))
  \XLXI_21/Mmux__varindex0000_9_f5_SW0_F  (
    .ADR0(\XLXI_21/SClk_Cnt [0]),
    .ADR1(\XLXI_21/UdBuf[5] ),
    .ADR2(\XLXI_21/UdBuf[4] ),
    .ADR3(VCC),
    .O(N27)
  );
  X_LUT4 #(
    .INIT ( 16'h22A0 ),
    .LOC ( "SLICE_X67Y41" ))
  \XLXI_21/UdBuf_11_mux00002412  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_27/CS_851 ),
    .ADR2(\XLXI_21/DataOut [4]),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_21/UdBuf_11_mux00002411_1428 )
  );
  X_SFF #(
    .LOC ( "SLICE_X67Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_11  (
    .I(\XLXI_21/UdBuf<11>/DXMUX_1440 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<11>/SRINV_1423 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[11] )
  );
  X_LUT4 #(
    .INIT ( 16'h2E00 ),
    .LOC ( "SLICE_X52Y49" ))
  \XLXI_21/UdBuf_6_mux00002412  (
    .ADR0(\XLXI_21/DataOut [9]),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_27/CS_851 ),
    .ADR3(\XLXI_21/State_FSM_FFd5_848 ),
    .O(\XLXI_21/UdBuf_6_mux00002411_1462 )
  );
  X_LUT4 #(
    .INIT ( 16'hA8A8 ),
    .LOC ( "SLICE_X67Y43" ))
  \XLXI_21/UdBuf_12_mux00002411  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_21/DataOut [3]),
    .ADR2(\XLXI_21/WE_net_849 ),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_12_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'h5535 ),
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/SClk_Cnt_mux0000<3>132  (
    .ADR0(\XLXI_21/SClk_Cnt [3]),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>132/O_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2A08 ),
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf_13_mux00002412  (
    .ADR0(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_27/CS_851 ),
    .ADR3(\XLXI_21/DataOut [2]),
    .O(\XLXI_21/UdBuf_13_mux00002411_1614 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/MISO  (
    .I(\XLXI_21/MISO/DXMUX_1711 ),
    .CE(VCC),
    .CLK(\XLXI_21/MISO/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/MISO_832 )
  );
  X_SFF #(
    .LOC ( "SLICE_X64Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_13  (
    .I(\XLXI_21/UdBuf<13>/DXMUX_1626 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<13>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<13>/SRINV_1609 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[13] )
  );
  X_LUT4 #(
    .INIT ( 16'hB333 ),
    .LOC ( "SLICE_X55Y33" ))
  \XLXI_21/State_FSM_FFd7-In_SW1  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/State_FSM_FFd7_905 ),
    .ADR2(\XLXI_21/State_cmp_eq0001 ),
    .ADR3(\XLXI_21/xSClk [0]),
    .O(\XLXI_21/State_FSM_FFd7-In_SW1/O_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h3FC0 ),
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/Mcount_SClk_Count_xor<2>11  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/Result [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y38" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_2  (
    .I(\XLXI_21/SClk_Count<3>/DYMUX_1738 ),
    .CE(\XLXI_21/SClk_Count<3>/CEINV_1727 ),
    .CLK(\XLXI_21/SClk_Count<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<3>/SRINV_1729 ),
    .O(\XLXI_21/SClk_Count [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ),
    .LOC ( "SLICE_X55Y38" ))
  \XLXI_21/Mcount_SClk_Count_xor<3>11  (
    .ADR0(\XLXI_21/SClk_Count [3]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(\XLXI_21/Result [3])
  );
  X_LUT4 #(
    .INIT ( 16'h40FF ),
    .LOC ( "SLICE_X55Y33" ))
  \XLXI_21/State_FSM_FFd7-In  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(\XLXI_21/State_FSM_FFd8_902 ),
    .ADR2(\XLXI_21/xSS [1]),
    .ADR3(\XLXI_21/State_FSM_FFd7-In_SW1/O ),
    .O(\XLXI_21/State_FSM_FFd7-In_1654 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y33" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd7  (
    .I(\XLXI_21/State_FSM_FFd7/DXMUX_1657 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd7/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd7_905 )
  );
  X_LUT4 #(
    .INIT ( 16'hAACA ),
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/Mmux__varindex0000_9_f5  (
    .ADR0(N22),
    .ADR1(N23),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/Mmux__varindex0000_9_f5/O_pack_1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_7  (
    .I(\XLXI_21/UdBuf<7>/DXMUX_1592 ),
    .CE(VCC),
    .CLK(\XLXI_21/UdBuf<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/UdBuf<7>/SRINV_1575 ),
    .SRST(GND),
    .O(\XLXI_21/UdBuf[7] )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y38" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_3  (
    .I(\XLXI_21/SClk_Count<3>/DXMUX_1751 ),
    .CE(\XLXI_21/SClk_Count<3>/CEINV_1727 ),
    .CLK(\XLXI_21/SClk_Count<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<3>/SRINV_1729 ),
    .O(\XLXI_21/SClk_Count [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFA0A ),
    .LOC ( "SLICE_X64Y38" ))
  \XLXI_21/SClk_Cnt_mux0000<3>120  (
    .ADR0(\XLXI_21/UdBuf[0] ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/SClk_Cnt_mux0000<2>_0 ),
    .ADR3(\XLXI_21/Mmux__varindex0000_9_f5/O ),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>120_1682 )
  );
  X_LUT4 #(
    .INIT ( 16'hF0C0 ),
    .LOC ( "SLICE_X64Y37" ))
  \XLXI_21/UdBuf_13_mux00002411  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_21/State_FSM_FFd5_848 ),
    .ADR3(\XLXI_21/DataOut [2]),
    .O(\XLXI_21/UdBuf_13_mux0000241 )
  );
  X_LUT4 #(
    .INIT ( 16'hEAC0 ),
    .LOC ( "SLICE_X64Y39" ))
  \XLXI_21/SClk_Cnt_mux0000<3>145  (
    .ADR0(\XLXI_21/SClk_Cnt_mux0000<3>120_0 ),
    .ADR1(\XLXI_21/Mmux__varindex0000_6_f6 ),
    .ADR2(\XLXI_21/SClk_Cnt_mux0000<3>17_0 ),
    .ADR3(\XLXI_21/SClk_Cnt_mux0000<3>132/O ),
    .O(\XLXI_21/_varindex0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ),
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/State_FSM_FFd3-In1  (
    .ADR0(\XLXI_21/State_FSM_FFd4_918 ),
    .ADR1(\XLXI_21/State_cmp_eq0003 ),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd3-In )
  );
  X_LUT4 #(
    .INIT ( 16'hF540 ),
    .LOC ( "SLICE_X64Y33" ))
  \XLXI_21/State_FSM_FFd8-In1  (
    .ADR0(\XLXI_21/xSS [1]),
    .ADR1(\XLXI_21/State_FSM_FFd1_917 ),
    .ADR2(\XLXI_21/xSS [0]),
    .ADR3(\XLXI_21/State_FSM_FFd8_902 ),
    .O(\XLXI_21/State_FSM_FFd8-In )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd1  (
    .I(\XLXI_21/State_FSM_FFd1/DYMUX_1778 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd1/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/State_FSM_FFd1/SRINV_1769 ),
    .SRST(GND),
    .O(\XLXI_21/State_FSM_FFd1_917 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_2  (
    .I(\XLXI_27/Led<3>/DYMUX_1896 ),
    .CE(\XLXI_27/Led<3>/CEINV_1885 ),
    .CLK(\XLXI_27/Led<3>/CLKINV_1886 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [2])
  );
  X_LUT4 #(
    .INIT ( 16'h5050 ),
    .LOC ( "SLICE_X67Y45" ))
  \XLXI_27/Led_mux0001<1>1  (
    .ADR0(\XLXI_21/WE_net_849 ),
    .ADR1(VCC),
    .ADR2(\XLXI_21/DataOut [1]),
    .ADR3(VCC),
    .O(\XLXI_27/Led_mux0001 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h00F0 ),
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_27/Led_mux0001<3>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/DataOut [3]),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_27/Led_mux0001 [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X53Y32" ),
    .INIT ( 1'b1 ))
  \XLXI_21/WE_net  (
    .I(\XLXI_21/WE_net/DYMUX_3176 ),
    .CE(VCC),
    .CLK(\XLXI_21/WE_net/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/WE_net/SRINV_3174 ),
    .O(\XLXI_21/WE_net_849 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y33" ),
    .INIT ( 1'b1 ))
  \XLXI_21/State_FSM_FFd8  (
    .I(\XLXI_21/State_FSM_FFd8/DYMUX_1835 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd8/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd8_902 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFC ),
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_27/Led_mux0001<4>1  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/WE_net_849 ),
    .ADR2(\XLXI_21/DataOut [4]),
    .ADR3(VCC),
    .O(\XLXI_27/Led_mux0001 [4])
  );
  X_LUT4 #(
    .INIT ( 16'h00B0 ),
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/SClk_Count_and00001  (
    .ADR0(\XLXI_21/xSClk [1]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSS [1]),
    .ADR3(\XLXI_21/xSS [0]),
    .O(\XLXI_21/SClk_Count_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd3  (
    .I(\XLXI_21/State_FSM_FFd3/DYMUX_1810 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd3/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd3_921 )
  );
  X_LUT4 #(
    .INIT ( 16'hAACA ),
    .LOC ( "SLICE_X54Y38" ))
  \XLXI_21/SClk_Cnt_mux0000<3>17  (
    .ADR0(\XLXI_21/SClk_Cnt [3]),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000<3>17_1818 )
  );
  X_FF #(
    .LOC ( "SLICE_X66Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_3  (
    .I(\XLXI_27/Led<3>/DXMUX_1910 ),
    .CE(\XLXI_27/Led<3>/CEINV_1885 ),
    .CLK(\XLXI_27/Led<3>/CLKINV_1886 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [3])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_0  (
    .I(\XLXI_27/Led<1>/DYMUX_1858 ),
    .CE(\XLXI_27/Led<1>/CEINV_1847 ),
    .CLK(\XLXI_27/Led<1>/CLKINV_1848 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [0])
  );
  X_LUT4 #(
    .INIT ( 16'hC4C4 ),
    .LOC ( "SLICE_X55Y37" ))
  \XLXI_21/State_FSM_FFd1-In11  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(\XLXI_21/State_FSM_FFd1_917 ),
    .ADR2(\XLXI_21/xSS [1]),
    .ADR3(VCC),
    .O(\XLXI_21/State_FSM_FFd1-In1 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_1  (
    .I(\XLXI_27/Led<1>/DXMUX_1872 ),
    .CE(\XLXI_27/Led<1>/CEINV_1847 ),
    .CLK(\XLXI_27/Led<1>/CLKINV_1848 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [1])
  );
  X_LUT4 #(
    .INIT ( 16'hFFCC ),
    .LOC ( "SLICE_X66Y43" ))
  \XLXI_27/Led_mux0001<2>1  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/DataOut [2]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_27/Led_mux0001 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ),
    .LOC ( "SLICE_X67Y45" ))
  \XLXI_27/Led_mux0001<0>1  (
    .ADR0(\XLXI_21/WE_net_849 ),
    .ADR1(\XLXI_21/DataOut [0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_27/Led_mux0001 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X54Y42" ))
  \XLXI_21/InBuf_12_and00001  (
    .ADR0(\XLXI_21/State_cmp_eq0004 ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(N121_0),
    .O(\XLXI_21/InBuf_12_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h5500 ),
    .LOC ( "SLICE_X65Y33" ))
  \XLXI_21/State_cmp_eq00001  (
    .ADR0(\XLXI_21/xSS [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\XLXI_21/xSS [1]),
    .O(\XLXI_21/State_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X53Y34" ))
  \XLXI_27/Led_mux0001<7>1  (
    .ADR0(\XLXI_21/DataOut [7]),
    .ADR1(VCC),
    .ADR2(\XLXI_21/WE_net_849 ),
    .ADR3(VCC),
    .O(\XLXI_27/Led_mux0001 [7])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/InBuf_7_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(N13_0),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_7_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ),
    .LOC ( "SLICE_X67Y42" ))
  \XLXI_21/UdBuf_14_mux00000  (
    .ADR0(\XLXI_21/UdBuf[14] ),
    .ADR1(N01),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_14_mux00000_2048 )
  );
  X_FF #(
    .LOC ( "SLICE_X67Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_5  (
    .I(\XLXI_27/Led<5>/DXMUX_1948 ),
    .CE(\XLXI_27/Led<5>/CEINV_1923 ),
    .CLK(\XLXI_27/Led<5>/CLKINV_1924 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [5])
  );
  X_LUT4 #(
    .INIT ( 16'h0040 ),
    .LOC ( "SLICE_X54Y44" ))
  \XLXI_21/InBuf_4_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(N13_0),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_4_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X65Y33" ),
    .INIT ( 1'b0 ))
  \XLXI_21/UdBuf_0  (
    .I(\XLXI_21/UdBuf<0>/DYMUX_2007 ),
    .CE(\XLXI_21/UdBuf<0>/CEINV_1996 ),
    .CLK(\XLXI_21/UdBuf<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/UdBuf[0] )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X67Y47" ))
  \XLXI_21/UdBuf_11_mux00000  (
    .ADR0(VCC),
    .ADR1(N01),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[11] ),
    .O(\XLXI_21/UdBuf_11_mux00000_2081 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y42" ))
  \XLXI_21/InBuf_15_and00001  (
    .ADR0(\XLXI_21/State_cmp_eq0004 ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(N121_0),
    .O(\XLXI_21/InBuf_15_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_7  (
    .I(\XLXI_27/Led<7>/DXMUX_1986 ),
    .CE(\XLXI_27/Led<7>/CEINV_1961 ),
    .CLK(\XLXI_27/Led<7>/CLKINV_1962 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [7])
  );
  X_LUT4 #(
    .INIT ( 16'h00AA ),
    .LOC ( "SLICE_X67Y39" ))
  \XLXI_27/Led_mux0001<5>1  (
    .ADR0(\XLXI_21/DataOut [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_27/Led_mux0001 [5])
  );
  X_FF #(
    .LOC ( "SLICE_X67Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_4  (
    .I(\XLXI_27/Led<5>/DYMUX_1934 ),
    .CE(\XLXI_27/Led<5>/CEINV_1923 ),
    .CLK(\XLXI_27/Led<5>/CLKINV_1924 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [4])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_27/Led_6  (
    .I(\XLXI_27/Led<7>/DYMUX_1972 ),
    .CE(\XLXI_27/Led<7>/CEINV_1961 ),
    .CLK(\XLXI_27/Led<7>/CLKINV_1962 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_27/Led [6])
  );
  X_LUT4 #(
    .INIT ( 16'hFFF0 ),
    .LOC ( "SLICE_X53Y34" ))
  \XLXI_27/Led_mux0001<6>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\XLXI_21/DataOut [6]),
    .ADR3(\XLXI_21/WE_net_849 ),
    .O(\XLXI_27/Led_mux0001 [6])
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X67Y47" ))
  \XLXI_21/UdBuf_7_mux00000  (
    .ADR0(VCC),
    .ADR1(N01),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[7] ),
    .O(\XLXI_21/UdBuf_7_mux00000_2072 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ),
    .LOC ( "SLICE_X67Y42" ))
  \XLXI_21/UdBuf_10_mux00000  (
    .ADR0(\XLXI_21/UdBuf[10] ),
    .ADR1(N01),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_10_mux00000_2057 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_1  (
    .I(\XLXI_21/InBuf<1>/DYMUX_2196 ),
    .CE(\XLXI_21/InBuf<1>/CEINV_2193 ),
    .CLK(\XLXI_21/InBuf<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [1])
  );
  X_LUT4 #(
    .INIT ( 16'h33CC ),
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/Mcount_SClk_Count_xor<1>11  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/Result [1])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_0  (
    .I(\XLXI_21/InBuf<0>/DYMUX_2184 ),
    .CE(\XLXI_21/InBuf<0>/CEINV_2181 ),
    .CLK(\XLXI_21/InBuf<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [0])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X66Y42" ))
  \XLXI_21/UdBuf_12_mux00000  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[12] ),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_12_mux00000_2222 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y43" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_0  (
    .I(\XLXI_21/SClk_Count<0>/DXMUX_2147 ),
    .CE(\XLXI_21/SClk_Count<0>/CEINV_2121 ),
    .CLK(\XLXI_21/SClk_Count<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<0>/SRINV_2123 ),
    .O(\XLXI_21/SClk_Count [0])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/UdBuf_8_mux00000  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[8] ),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_8_mux00000_2237 )
  );
  X_LUT4 #(
    .INIT ( 16'hA0A0 ),
    .LOC ( "SLICE_X65Y36" ))
  \XLXI_21/UdBuf_13_mux00000  (
    .ADR0(\XLXI_21/UdBuf[13] ),
    .ADR1(VCC),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_13_mux00000_2246 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X55Y43" ))
  \XLXI_21/InBuf_0_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(N15_0),
    .O(\XLXI_21/InBuf_0_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/xSClk_0  (
    .I(\XLXI_21/xSClk<1>/DYMUX_3188 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSClk<1>/CLKINV_3186 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSClk [0])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_2  (
    .I(\XLXI_21/InBuf<2>/DYMUX_2256 ),
    .CE(\XLXI_21/InBuf<2>/CEINV_2253 ),
    .CLK(\XLXI_21/InBuf<2>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [2])
  );
  X_LUT4 #(
    .INIT ( 16'h3300 ),
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/InBuf_4_and000011  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X52Y41" ))
  \XLXI_21/InBuf_10_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(N14_0),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_10_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h0400 ),
    .LOC ( "SLICE_X52Y41" ))
  \XLXI_21/InBuf_8_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(N14_0),
    .O(\XLXI_21/InBuf_8_and0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y43" ),
    .INIT ( 1'b1 ))
  \XLXI_21/SClk_Count_1  (
    .I(\XLXI_21/SClk_Count<0>/DYMUX_2133 ),
    .CE(\XLXI_21/SClk_Count<0>/CEINV_2121 ),
    .CLK(\XLXI_21/SClk_Count<0>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_21/SClk_Count<0>/SRINV_2123 ),
    .O(\XLXI_21/SClk_Count [1])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X66Y42" ))
  \XLXI_21/UdBuf_15_mux00000  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[15] ),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_15_mux00000_2213 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_8  (
    .I(\XLXI_21/InBuf<8>/DYMUX_2376 ),
    .CE(\XLXI_21/InBuf<8>/CEINV_2373 ),
    .CLK(\XLXI_21/InBuf<8>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [8])
  );
  X_LUT4 #(
    .INIT ( 16'hAEA2 ),
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/SClk_Cnt_mux0000<1>1  (
    .ADR0(\XLXI_21/SClk_Cnt [1]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(\XLXI_21/SClk_Count [1]),
    .O(\XLXI_21/SClk_Cnt_mux0000 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_9  (
    .I(\XLXI_21/InBuf<9>/DYMUX_2388 ),
    .CE(\XLXI_21/InBuf<9>/CEINV_2385 ),
    .CLK(\XLXI_21/InBuf<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [9])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y32" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd2  (
    .I(\XLXI_21/State_FSM_FFd2/DYMUX_2398 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd2/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd2_916 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ),
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_cmp_eq00011  (
    .ADR0(\XLXI_21/SClk_Cnt [3]),
    .ADR1(\XLXI_21/SClk_Cnt [2]),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(\XLXI_21/SClk_Cnt [1]),
    .O(\XLXI_21/State_cmp_eq0001_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_4  (
    .I(\XLXI_21/InBuf<4>/DYMUX_2328 ),
    .CE(\XLXI_21/InBuf<4>/CEINV_2325 ),
    .CLK(\XLXI_21/InBuf<4>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [4])
  );
  X_LUT4 #(
    .INIT ( 16'h0033 ),
    .LOC ( "SLICE_X54Y46" ))
  \XLXI_21/InBuf_0_and000021  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(N15)
  );
  X_FF #(
    .LOC ( "SLICE_X55Y48" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_7  (
    .I(\XLXI_21/InBuf<7>/DYMUX_2364 ),
    .CE(\XLXI_21/InBuf<7>/CEINV_2361 ),
    .CLK(\XLXI_21/InBuf<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [7])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_6  (
    .I(\XLXI_21/InBuf<6>/DYMUX_2352 ),
    .CE(\XLXI_21/InBuf<6>/CEINV_2349 ),
    .CLK(\XLXI_21/InBuf<6>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [6])
  );
  X_FF #(
    .LOC ( "SLICE_X53Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_3  (
    .I(\XLXI_21/InBuf<3>/DYMUX_2292 ),
    .CE(\XLXI_21/InBuf<3>/CEINV_2289 ),
    .CLK(\XLXI_21/InBuf<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [3])
  );
  X_LUT4 #(
    .INIT ( 16'hFB08 ),
    .LOC ( "SLICE_X65Y41" ))
  \XLXI_21/SClk_Cnt_mux0000<2>1  (
    .ADR0(\XLXI_21/SClk_Count [2]),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(\XLXI_21/xSClk [1]),
    .ADR3(\XLXI_21/SClk_Cnt [2]),
    .O(\XLXI_21/SClk_Cnt_mux0000 [2])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_5  (
    .I(\XLXI_21/InBuf<5>/DYMUX_2340 ),
    .CE(\XLXI_21/InBuf<5>/CEINV_2337 ),
    .CLK(\XLXI_21/InBuf<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [5])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_cmp_eq00031  (
    .ADR0(\XLXI_21/SClk_Cnt [3]),
    .ADR1(\XLXI_21/SClk_Cnt [1]),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(\XLXI_21/SClk_Cnt [2]),
    .O(\XLXI_21/State_cmp_eq0003_pack_2 )
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/State_cmp_eq00041  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/xSClk [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_cmp_eq0004_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC00 ),
    .LOC ( "SLICE_X54Y48" ))
  \XLXI_21/InBuf_12_and000011  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(N121)
  );
  X_LUT4 #(
    .INIT ( 16'h00CC ),
    .LOC ( "SLICE_X54Y48" ))
  \XLXI_21/InBuf_10_and000021  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/SClk_Count [3]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/SClk_Count [2]),
    .O(N14)
  );
  X_FF #(
    .LOC ( "SLICE_X54Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd6  (
    .I(\XLXI_21/State_FSM_FFd6/DXMUX_2436 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd6/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd6_952 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y36" ))
  \XLXI_21/State_FSM_FFd6-In1  (
    .ADR0(\XLXI_21/State_FSM_FFd7_905 ),
    .ADR1(\XLXI_21/State_cmp_eq0001 ),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd6-In )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y35" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_2  (
    .I(\XLXI_21/AdrBus<3>/DYMUX_2493 ),
    .CE(\XLXI_21/AdrBus<3>/CEINV_2490 ),
    .CLK(\XLXI_21/AdrBus<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [2])
  );
  X_LUT4 #(
    .INIT ( 16'hAA2A ),
    .LOC ( "SLICE_X54Y39" ))
  \XLXI_21/State_FSM_FFd4-In11  (
    .ADR0(\XLXI_21/State_FSM_FFd4_918 ),
    .ADR1(\XLXI_21/State_cmp_eq0003 ),
    .ADR2(\XLXI_21/xSClk [0]),
    .ADR3(\XLXI_21/xSClk [1]),
    .O(\XLXI_21/State_FSM_FFd4-In1 )
  );
  X_LUT4 #(
    .INIT ( 16'h0800 ),
    .LOC ( "SLICE_X54Y40" ))
  \XLXI_21/InBuf_9_and00001  (
    .ADR0(N14_0),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_9_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X55Y35" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_3  (
    .I(\XLXI_21/AdrBus<3>/DXMUX_2499 ),
    .CE(\XLXI_21/AdrBus<3>/CEINV_2490 ),
    .CLK(\XLXI_21/AdrBus<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [3])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_0  (
    .I(\XLXI_21/AdrBus<1>/DYMUX_2473 ),
    .CE(\XLXI_21/AdrBus<1>/CEINV_2470 ),
    .CLK(\XLXI_21/AdrBus<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [0])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y34" ),
    .INIT ( 1'b0 ))
  \XLXI_21/AdrBus_1  (
    .I(\XLXI_21/AdrBus<1>/DXMUX_2479 ),
    .CE(\XLXI_21/AdrBus<1>/CEINV_2470 ),
    .CLK(\XLXI_21/AdrBus<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/AdrBus [1])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y36" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd5  (
    .I(\XLXI_21/State_FSM_FFd6/DYMUX_2425 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd6/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/State_FSM_FFd5_848 )
  );
  X_SFF #(
    .LOC ( "SLICE_X54Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/State_FSM_FFd4  (
    .I(\XLXI_21/State_FSM_FFd4/DXMUX_2532 ),
    .CE(VCC),
    .CLK(\XLXI_21/State_FSM_FFd4/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_21/State_FSM_FFd4/SRINV_2517 ),
    .SRST(GND),
    .O(\XLXI_21/State_FSM_FFd4_918 )
  );
  X_FF #(
    .LOC ( "SLICE_X64Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_1  (
    .I(\XLXI_21/SClk_Cnt<1>/DXMUX_2632 ),
    .CE(\XLXI_21/SClk_Cnt<1>/CEINV_2623 ),
    .CLK(\XLXI_21/SClk_Cnt<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [1])
  );
  X_LUT4 #(
    .INIT ( 16'hE2E2 ),
    .LOC ( "SLICE_X67Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW5  (
    .ADR0(\XLXI_21/UdBuf[14] ),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/UdBuf[15] ),
    .ADR3(VCC),
    .O(N11)
  );
  X_FF #(
    .LOC ( "SLICE_X65Y32" ),
    .INIT ( 1'b1 ))
  \XLXI_21/xSS_0  (
    .I(\XLXI_21/xSS<1>/DYMUX_2568 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSS<1>/CLKINV_2566 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSS [0])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/InBuf_1_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(N15_0),
    .O(\XLXI_21/InBuf_1_and0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y46" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_1  (
    .I(\XLXI_27/DataOut<1>/DXMUX_2592 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<1>/CLKINV_2583 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<1>/SRINV_2584 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_2  (
    .I(\XLXI_27/DataOut<3>/DYMUX_2606 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<3>/CLKINV_2603 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<3>/SRINV_2604 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_4  (
    .I(\XLXI_27/DataOut<5>/DYMUX_2694 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<5>/CLKINV_2691 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<5>/SRINV_2692 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_5  (
    .I(\XLXI_27/DataOut<5>/DXMUX_2700 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<5>/CLKINV_2691 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<5>/SRINV_2692 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y46" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_0  (
    .I(\XLXI_27/DataOut<1>/DYMUX_2586 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<1>/CLKINV_2583 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<1>/SRINV_2584 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X65Y32" ),
    .INIT ( 1'b1 ))
  \XLXI_21/xSS_1  (
    .I(\XLXI_21/xSS<1>/DXMUX_2573 ),
    .CE(VCC),
    .CLK(\XLXI_21/xSS<1>/CLKINV_2566 ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/xSS [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X66Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_3  (
    .I(\XLXI_27/DataOut<3>/DXMUX_2612 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<3>/CLKINV_2603 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<3>/SRINV_2604 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X55Y42" ))
  \XLXI_21/InBuf_2_and00001  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/State_cmp_eq0004 ),
    .ADR3(N15_0),
    .O(\XLXI_21/InBuf_2_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hCACA ),
    .LOC ( "SLICE_X67Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW4  (
    .ADR0(\XLXI_21/UdBuf[14] ),
    .ADR1(\XLXI_21/UdBuf[15] ),
    .ADR2(\XLXI_21/SClk_Cnt [0]),
    .ADR3(VCC),
    .O(N10)
  );
  X_FF #(
    .LOC ( "SLICE_X64Y41" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_0  (
    .I(\XLXI_21/SClk_Cnt<1>/DYMUX_2626 ),
    .CE(\XLXI_21/SClk_Cnt<1>/CEINV_2623 ),
    .CLK(\XLXI_21/SClk_Cnt<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [0])
  );
  X_LUT4 #(
    .INIT ( 16'hBB88 ),
    .LOC ( "SLICE_X66Y41" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW6  (
    .ADR0(\XLXI_21/UdBuf[13] ),
    .ADR1(\XLXI_21/SClk_Cnt [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[12] ),
    .O(N131)
  );
  X_LUT4 #(
    .INIT ( 16'hFC0C ),
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW9  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[10] ),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/UdBuf[11] ),
    .O(N17)
  );
  X_FF #(
    .LOC ( "SLICE_X64Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_2  (
    .I(\XLXI_21/SClk_Cnt<3>/DYMUX_2714 ),
    .CE(\XLXI_21/SClk_Cnt<3>/CEINV_2711 ),
    .CLK(\XLXI_21/SClk_Cnt<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [2])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/SClk_Cnt_3  (
    .I(\XLXI_21/SClk_Cnt<3>/DXMUX_2720 ),
    .CE(\XLXI_21/SClk_Cnt<3>/CEINV_2711 ),
    .CLK(\XLXI_21/SClk_Cnt<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/SClk_Cnt [3])
  );
  X_LUT4 #(
    .INIT ( 16'hCFC0 ),
    .LOC ( "SLICE_X66Y41" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW7  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[13] ),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(\XLXI_21/UdBuf[12] ),
    .O(N141)
  );
  X_LUT4 #(
    .INIT ( 16'hF0CC ),
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW10  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[8] ),
    .ADR2(\XLXI_21/UdBuf[9] ),
    .ADR3(\XLXI_21/SClk_Cnt [0]),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'hEE22 ),
    .LOC ( "SLICE_X66Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW8  (
    .ADR0(\XLXI_21/UdBuf[10] ),
    .ADR1(\XLXI_21/SClk_Cnt [0]),
    .ADR2(VCC),
    .ADR3(\XLXI_21/UdBuf[11] ),
    .O(N16)
  );
  X_FF #(
    .LOC ( "SLICE_X53Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_11  (
    .I(\XLXI_21/InBuf<11>/DYMUX_2848 ),
    .CE(\XLXI_21/InBuf<11>/CEINV_2845 ),
    .CLK(\XLXI_21/InBuf<11>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [11])
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ),
    .LOC ( "SLICE_X54Y35" ))
  \XLXI_27/Led_cmp_eq00001  (
    .ADR0(\XLXI_21/AdrBus [3]),
    .ADR1(\XLXI_21/AdrBus [1]),
    .ADR2(\XLXI_21/AdrBus [2]),
    .ADR3(\XLXI_21/AdrBus [0]),
    .O(\XLXI_27/Led_cmp_eq0000 )
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y31" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_6  (
    .I(\XLXI_27/DataOut<7>/DYMUX_2758 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<7>/CLKINV_2755 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<7>/SRINV_2756 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X55Y31" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_7  (
    .I(\XLXI_27/DataOut<7>/DXMUX_2764 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<7>/CLKINV_2755 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<7>/SRINV_2756 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [7])
  );
  X_LUT4 #(
    .INIT ( 16'hE4E4 ),
    .LOC ( "SLICE_X65Y40" ))
  \XLXI_21/SClk_Cnt_mux0000<0>1_SW11  (
    .ADR0(\XLXI_21/SClk_Count [0]),
    .ADR1(\XLXI_21/UdBuf[8] ),
    .ADR2(\XLXI_21/UdBuf[9] ),
    .ADR3(VCC),
    .O(N20)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_10  (
    .I(\XLXI_21/InBuf<10>/DYMUX_2836 ),
    .CE(\XLXI_21/InBuf<10>/CEINV_2833 ),
    .CLK(\XLXI_21/InBuf<10>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y37" ),
    .INIT ( 1'b0 ))
  \XLXI_27/DataOut_8  (
    .I(\XLXI_27/DataOut<8>/DYMUX_2824 ),
    .CE(VCC),
    .CLK(\XLXI_27/DataOut<8>/CLKINV_2821 ),
    .SET(GND),
    .RST(GND),
    .SSET(\XLXI_27/DataOut<8>/SRINV_2822 ),
    .SRST(GND),
    .O(\XLXI_27/DataOut [8])
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ),
    .LOC ( "SLICE_X54Y35" ))
  \XLXI_27/DataOut_not00011  (
    .ADR0(\XLXI_21/AdrBus [3]),
    .ADR1(\XLXI_21/AdrBus [1]),
    .ADR2(\XLXI_21/AdrBus [2]),
    .ADR3(\XLXI_21/AdrBus [0]),
    .O(\XLXI_27/DataOut_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/UdBuf_9_mux00000  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[9] ),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_9_mux00000_3010 )
  );
  X_FF #(
    .LOC ( "SLICE_X54Y43" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_15  (
    .I(\XLXI_21/InBuf<15>/DYMUX_2920 ),
    .CE(\XLXI_21/InBuf<15>/CEINV_2917 ),
    .CLK(\XLXI_21/InBuf<15>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [15])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_0  (
    .I(\XLXI_21/DataOut<1>/DYMUX_2934 ),
    .CE(\XLXI_21/DataOut<1>/CEINV_2931 ),
    .CLK(\XLXI_21/DataOut<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [0])
  );
  X_FF #(
    .LOC ( "SLICE_X55Y45" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_13  (
    .I(\XLXI_21/InBuf<13>/DYMUX_2896 ),
    .CE(\XLXI_21/InBuf<13>/CEINV_2893 ),
    .CLK(\XLXI_21/InBuf<13>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [13])
  );
  X_FF #(
    .LOC ( "SLICE_X54Y49" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_14  (
    .I(\XLXI_21/InBuf<14>/DYMUX_2908 ),
    .CE(\XLXI_21/InBuf<14>/CEINV_2905 ),
    .CLK(\XLXI_21/InBuf<14>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [14])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_1  (
    .I(\XLXI_21/DataOut<1>/DXMUX_2940 ),
    .CE(\XLXI_21/DataOut<1>/CEINV_2931 ),
    .CLK(\XLXI_21/DataOut<1>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y41" ))
  \XLXI_21/InBuf_3_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(N15_0),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_3_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ),
    .LOC ( "SLICE_X54Y41" ))
  \XLXI_21/InBuf_11_and00001  (
    .ADR0(N14_0),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(\XLXI_21/SClk_Count [1]),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_11_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y40" ),
    .INIT ( 1'b0 ))
  \XLXI_21/InBuf_12  (
    .I(\XLXI_21/InBuf<12>/DYMUX_2884 ),
    .CE(\XLXI_21/InBuf<12>/CEINV_2881 ),
    .CLK(\XLXI_21/InBuf<12>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/InBuf [12])
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ),
    .LOC ( "SLICE_X55Y34" ))
  \XLXI_21/UdBuf_10_mux00001  (
    .ADR0(\XLXI_21/State_FSM_FFd1_917 ),
    .ADR1(\XLXI_21/State_FSM_FFd3_921 ),
    .ADR2(N02_0),
    .ADR3(\XLXI_21/State_FSM_FFd2_916 ),
    .O(N01_pack_1)
  );
  X_FF #(
    .LOC ( "SLICE_X64Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_2  (
    .I(\XLXI_21/DataOut<3>/DYMUX_2978 ),
    .CE(\XLXI_21/DataOut<3>/CEINV_2975 ),
    .CLK(\XLXI_21/DataOut<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [2])
  );
  X_FF #(
    .LOC ( "SLICE_X64Y42" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_3  (
    .I(\XLXI_21/DataOut<3>/DXMUX_2984 ),
    .CE(\XLXI_21/DataOut<3>/CEINV_2975 ),
    .CLK(\XLXI_21/DataOut<3>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [3])
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X55Y40" ))
  \XLXI_21/InBuf_13_and00001  (
    .ADR0(\XLXI_21/State_cmp_eq0004 ),
    .ADR1(\XLXI_21/SClk_Count [1]),
    .ADR2(\XLXI_21/SClk_Count [0]),
    .ADR3(N121_0),
    .O(\XLXI_21/InBuf_13_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFC ),
    .LOC ( "SLICE_X55Y36" ))
  \XLXI_21/UdBuf_10_mux00001_SW0  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/State_FSM_FFd7_905 ),
    .ADR2(\XLXI_21/State_FSM_FFd4_918 ),
    .ADR3(\XLXI_21/State_FSM_FFd6_952 ),
    .O(N02)
  );
  X_FF #(
    .LOC ( "SLICE_X52Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_5  (
    .I(\XLXI_21/DataOut<5>/DXMUX_3028 ),
    .CE(\XLXI_21/DataOut<5>/CEINV_3019 ),
    .CLK(\XLXI_21/DataOut<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [5])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y44" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_4  (
    .I(\XLXI_21/DataOut<5>/DYMUX_3022 ),
    .CE(\XLXI_21/DataOut<5>/CEINV_3019 ),
    .CLK(\XLXI_21/DataOut<5>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [4])
  );
  X_SFF #(
    .LOC ( "SLICE_X52Y38" ),
    .INIT ( 1'b0 ))
  \XLXI_27/CS  (
    .I(\XLXI_27/CS/DYMUX_3140 ),
    .CE(VCC),
    .CLK(\XLXI_27/CS/CLKINV_3137 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\XLXI_27/CS/SRINV_3138 ),
    .O(\XLXI_27/CS_851 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y49" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_8  (
    .I(\XLXI_21/DataOut<9>/DYMUX_3074 ),
    .CE(\XLXI_21/DataOut<9>/CEINV_3071 ),
    .CLK(\XLXI_21/DataOut<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [8])
  );
  X_LUT4 #(
    .INIT ( 16'hF000 ),
    .LOC ( "SLICE_X53Y51" ))
  \XLXI_21/UdBuf_5_mux00000  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(N01),
    .ADR3(\XLXI_21/UdBuf[5] ),
    .O(\XLXI_21/UdBuf_5_mux00000_3106 )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ),
    .LOC ( "SLICE_X54Y45" ))
  \XLXI_21/InBuf_5_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(\XLXI_21/State_cmp_eq0004 ),
    .ADR2(N13_0),
    .ADR3(\XLXI_21/SClk_Count [0]),
    .O(\XLXI_21/InBuf_5_and0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h2000 ),
    .LOC ( "SLICE_X54Y45" ))
  \XLXI_21/InBuf_6_and00001  (
    .ADR0(\XLXI_21/SClk_Count [1]),
    .ADR1(\XLXI_21/SClk_Count [0]),
    .ADR2(N13_0),
    .ADR3(\XLXI_21/State_cmp_eq0004 ),
    .O(\XLXI_21/InBuf_6_and0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X53Y49" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_9  (
    .I(\XLXI_21/DataOut<9>/DXMUX_3080 ),
    .CE(\XLXI_21/DataOut<9>/CEINV_3071 ),
    .CLK(\XLXI_21/DataOut<9>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [9])
  );
  X_LUT4 #(
    .INIT ( 16'hC0C0 ),
    .LOC ( "SLICE_X53Y51" ))
  \XLXI_21/UdBuf_4_mux00000  (
    .ADR0(VCC),
    .ADR1(\XLXI_21/UdBuf[4] ),
    .ADR2(N01),
    .ADR3(VCC),
    .O(\XLXI_21/UdBuf_4_mux00000_3097 )
  );
  X_FF #(
    .LOC ( "SLICE_X52Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_6  (
    .I(\XLXI_21/DataOut<7>/DYMUX_3054 ),
    .CE(\XLXI_21/DataOut<7>/CEINV_3051 ),
    .CLK(\XLXI_21/DataOut<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [6])
  );
  X_FF #(
    .LOC ( "SLICE_X52Y39" ),
    .INIT ( 1'b0 ))
  \XLXI_21/DataOut_7  (
    .I(\XLXI_21/DataOut<7>/DXMUX_3060 ),
    .CE(\XLXI_21/DataOut<7>/CEINV_3051 ),
    .CLK(\XLXI_21/DataOut<7>/CLKINVNOT ),
    .SET(GND),
    .RST(GND),
    .O(\XLXI_21/DataOut [7])
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
    .LOC ( "PAD89" ))
  \led<3>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [3]),
    .O(\led<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD90" ))
  \led<2>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [2]),
    .O(\led<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \SPI_MISO/OUTPUT/OFF/OMUX  (
    .I(\XLXI_21/MISO_832 ),
    .O(\SPI_MISO/O )
  );
  X_BUF #(
    .LOC ( "PAD109" ))
  \led<5>/OUTPUT/OFF/OMUX  (
    .I(\XLXI_27/Led [5]),
    .O(\led<5>/O )
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

