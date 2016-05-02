----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:10:56 05/02/2016 
-- Design Name: 
-- Module Name:    Mux2x16_1 - Behavioral 
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

entity Mux2x16_1 is
    Port ( Input0 : in  STD_LOGIC_VECTOR (15 downto 0);
           Input1 : in  STD_LOGIC_VECTOR (15 downto 0);
           Sel : in  STD_LOGIC;
           DataOut : out  STD_LOGIC_VECTOR (15 downto 0));
end Mux2x16_1;

architecture Behavioral of Mux2x16_1 is

begin

with Sel select DataOut <=
	Input0 when '0',
	Input1 when '1',
	(others=>'X') when others;

end Behavioral;

