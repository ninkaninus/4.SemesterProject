----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:21 05/03/2016 
-- Design Name: 
-- Module Name:    Edge_Detect - Behavioral 
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

entity Edge_Detect is
	Port (
		Clk : in STD_LOGIC;
		Input : in  STD_LOGIC;
		Edge_Out : out  STD_LOGIC_VECTOR (1 downto 0)
	);
end Edge_Detect;

architecture Behavioral of Edge_Detect is

signal state : STD_LOGIC_VECTOR(1 downto 0) := "00";

begin

EdgeDetector : process( Clk)
begin
	if rising_edge( Clk) then
		state <= xSClk(0) & SClk;    -- SClk detection (SClk << 25 MHz)
	end if;
end process;

end Behavioral;

