----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:29 04/14/2016 
-- Design Name: 
-- Module Name:    Motor_Pan - Behavioral 
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

entity Motor_Pan is
    Port ( Encoder_Pan 		 : in  STD_LOGIC_VECTOR (1 downto 0);
			  Clk		  			 : in  STD_LOGIC;
			  Sync_Hall			 : in  STD_LOGIC;
           Encoder_Register : out  STD_LOGIC_VECTOR (8 downto 0));
end Motor_Pan;

architecture Behavioral of Motor_Pan is
Signal AB			: 		STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal BC			: 		STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal Counter		:		STD_LOGIC_VECTOR (8 downto 0) := "000000000";
begin

Encoder_Register <= Counter;

GetEncoders: process (Clk)
begin
	if rising_edge(Clk) then
	
		if Sync_Hall = '0' then
			Counter <= "000000000";
		end if;
		AB <= AB(0) & Encoder_Pan(0);
		BC	<=	BC(0) & Encoder_Pan(1);
		
		-- Rising edge Encoder 1
		if AB = "01" and BC = "00" then
		Counter <= Counter + 1;
		elsif AB = "01" and BC = "11" then
		Counter <= Counter - 1;			
		end if;
		
		-- Falling edge Encoder 1
		if AB = "10" and BC = "11" then
		Counter <= Counter + 1;
		elsif AB = "10" and BC = "00" then
		Counter <= Counter - 1;
		end if;
		
		-- Rising Edge Encoder 2
		if BC = "01" and AB = "11" then
		Counter <= Counter + 1;	
		elsif BC = "01" and AB = "00" then
		Counter <= Counter - 1;
		end if;
		
		-- Falling edge Encoder 2
		if BC = "10" and AB = "00" then
		Counter <= Counter + 1;	
		elsif BC = "10" and AB = "11" then
		Counter <= Counter - 1;	
		end if;
	end if;
end process;

end Behavioral;

