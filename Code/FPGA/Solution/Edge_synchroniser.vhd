----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:09:08 03/31/2016 
-- Design Name: 
-- Module Name:    Edge_synchroniser - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Edge_synchroniser is
    Port ( reset : in STD_LOGIC;
			  sys_clk : in  STD_LOGIC;
           slow_clk : in  STD_LOGIC;
           rise_out : out  STD_LOGIC;
           fall_out : out  STD_LOGIC);
end Edge_synchroniser;

architecture Behavioral of Edge_synchroniser is

	signal  ffq1    : std_logic;
	signal  ffq2    : std_logic;
	signal  ffq3    : std_logic;

begin

synchronise:
process (sys_clk, reset) is
	begin
		if (reset = '1') then
			ffq1    <=  '0';
			ffq2    <=  '0';
			ffq3    <=  '0';
		elsif rising_edge( sys_clk) then
			ffq1    <=  slow_clk;
			ffq2    <=  ffq1;
			ffq3    <=  ffq2;
		end if;
end process synchronise;

rise_out  <=  ffq2 and (not ffq3);
fall_out  <=  (not ffq2) and ffq3;

end Behavioral;

