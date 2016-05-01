----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:41:51 04/14/2016 
-- Design Name: 
-- Module Name:    Clock_scale - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Clock_scale is
    Port ( Clk : in  STD_LOGIC;
			  Fake_Encoder_pan : out  STD_LOGIC_VECTOR (8 downto 0) := "000000000";
			  Fake_Encoder_Tilt : out  STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
           Clk_100hz : out  STD_LOGIC);
end Clock_scale;

architecture Behavioral of Clock_scale is
Signal Scale	:	Integer range 0 to 500000 := 0;
Signal Counter_Pan	:		STD_LOGIC_VECTOR (8 downto 0) := "000000000";
Signal Counter_Tilt	:		STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
begin

Fake_Encoder_pan <= Counter_Pan;
Fake_Encoder_Tilt <= Counter_Tilt;

Clock_scaler: process (Clk)
begin
	if rising_edge (Clk) then
		if Counter_Pan = "111111111" then
		Counter_Pan <= "000000000";
		end if;
		
		if Counter_Tilt = "11111111111" then
		Counter_Tilt <= "00000000000";
		end if;
		
		
		if Scale = 500000 then
		Scale <= 0;
		Clk_100hz <= '1';
		Counter_Pan <= Counter_Pan + 1;
		Counter_Tilt <= Counter_Tilt + 1;
		else
		Scale <= Scale + 1;
		Clk_100hz <= '0';
		end if;
	end if;
end process;

end Behavioral;

