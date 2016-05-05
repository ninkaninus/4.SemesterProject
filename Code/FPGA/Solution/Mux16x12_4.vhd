----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:29 04/28/2016 
-- Design Name: 
-- Module Name:    Mux16x12_4 - Behavioral 
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

entity Mux16x12_4 is
    Port ( input0 : in  STD_LOGIC_VECTOR (11 downto 0);
           input1 : in  STD_LOGIC_VECTOR (11 downto 0);
           input2 : in  STD_LOGIC_VECTOR (11 downto 0);
           input3 : in  STD_LOGIC_VECTOR (11 downto 0);
           input4 : in  STD_LOGIC_VECTOR (11 downto 0);
           input5 : in  STD_LOGIC_VECTOR (11 downto 0);
           input6 : in  STD_LOGIC_VECTOR (11 downto 0);
           input7 : in  STD_LOGIC_VECTOR (11 downto 0);
           input8 : in  STD_LOGIC_VECTOR (11 downto 0);
           input9 : in  STD_LOGIC_VECTOR (11 downto 0);
           input10 : in  STD_LOGIC_VECTOR (11 downto 0);
           input11 : in  STD_LOGIC_VECTOR (11 downto 0);
           input12 : in  STD_LOGIC_VECTOR (11 downto 0);
           input13 : in  STD_LOGIC_VECTOR (11 downto 0);
           input14 : in  STD_LOGIC_VECTOR (11 downto 0);
           input15 : in  STD_LOGIC_VECTOR (11 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (11 downto 0);
           sel : in  STD_LOGIC_VECTOR (3 downto 0));
end Mux16x12_4;

architecture Behavioral of Mux16x12_4 is

begin

with sel select dataOut <=
	input0 when "0000",
	input1 when "0001",
	input2 when "0010",
	input3 when "0011",
	input4 when "0100",
	input5 when "0101",
	input6 when "0110",
	input7 when "0111",
	input8 when "1000",
	input9 when "1001",
	input10 when "1010",
	input11 when "1011",
	input12 when "1100",
	input13 when "1101",
	input14 when "1110",
	input15 when "1111",
	(others=>'X') when others;

end Behavioral;

