--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Schematic_top_module.vhf
-- /___/   /\     Timestamp : 04/14/2016 16:30:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/ChrisM/Desktop/Smartgit/4.SemesterProject/Code/FPGA/PositionsModul/Schematic_top_module.vhf -w C:/Users/ChrisM/Desktop/Smartgit/4.SemesterProject/Code/FPGA/PositionsModul/Schematic_top_module.sch
--Design Name: Schematic_top_module
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Schematic_top_module is
   port ( Clk       : in    std_logic; 
          Encoder1  : in    std_logic; 
          Encoder2  : in    std_logic; 
          Hall_sens : in    std_logic_vector (1 downto 0); 
          Input1    : in    std_logic_vector (11 downto 0); 
          Input2    : in    std_logic_vector (11 downto 0); 
          An        : out   std_logic_vector (3 downto 0); 
          Pan_Hall  : out   std_logic; 
          Seg       : out   std_logic_vector (1 to 8); 
          Tilt_Hall : out   std_logic);
end Schematic_top_module;

architecture BEHAVIORAL of Schematic_top_module is
   signal XLXI_2_Bcd_openSignal : std_logic_vector (15 downto 0);
   component PositionsModul
      port ( Clk      : in    std_logic; 
             Encoder1 : in    std_logic; 
             Encoder2 : in    std_logic; 
             Bcd      : out   std_logic_vector (15 downto 0));
   end component;
   
   component MultiplexDisplay
      port ( Clk_50MHz : in    std_logic; 
             Bcd       : in    std_logic_vector (15 downto 0); 
             Seg       : out   std_logic_vector (1 to 8); 
             An        : out   std_logic_vector (3 downto 0));
   end component;
   
   component Hall_sensor
      port ( Pan_Hall  : out   std_logic; 
             Tilt_Hall : out   std_logic; 
             Hall_sens : in    std_logic_vector (1 downto 0));
   end component;
   
   component SikkerhedsFeature
      port ( Motor_Pan_Hall  : in    std_logic_vector (11 downto 0); 
             Motor_Tilt_hall : in    std_logic_vector (11 downto 0); 
             Stop            : out   std_logic_vector (1 downto 0));
   end component;
   
begin
   XLXI_1 : PositionsModul
      port map (Clk=>Clk,
                Encoder1=>Encoder1,
                Encoder2=>Encoder2,
                Bcd=>open);
   
   XLXI_2 : MultiplexDisplay
      port map (Bcd(15 downto 0)=>XLXI_2_Bcd_openSignal(15 downto 0),
                Clk_50MHz=>Clk,
                An(3 downto 0)=>An(3 downto 0),
                Seg(1 to 8)=>Seg(1 to 8));
   
   XLXI_3 : Hall_sensor
      port map (Hall_sens(1 downto 0)=>Hall_sens(1 downto 0),
                Pan_Hall=>Pan_Hall,
                Tilt_Hall=>Tilt_Hall);
   
   XLXI_5 : SikkerhedsFeature
      port map (Motor_Pan_Hall(11 downto 0)=>Input1(11 downto 0),
                Motor_Tilt_hall(11 downto 0)=>Input2(11 downto 0),
                Stop=>open);
   
end BEHAVIORAL;


