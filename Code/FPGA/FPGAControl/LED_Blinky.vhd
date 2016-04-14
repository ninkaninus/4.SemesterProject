----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:24:03 04/14/2016 
-- Design Name: 
-- Module Name:    LED_Blinky - Behavioral 
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

entity LED_Blinky is
    Port ( Input : in  STD_LOGIC_VECTOR (1 downto 0);
           Position : out  STD_LOGIC_VECTOR (7 downto 0));
end LED_Blinky;

architecture Behavioral of LED_Blinky is
begin
with Input select
	Position <= "00000000" when "00",
				"00001111" when "01",
				"11110000" when "10",
				"11111111" when "11",
				"00000000" when others;
				
end Behavioral;

