----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:28:05 03/31/2016 
-- Design Name: 
-- Module Name:    Motor_Controller - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Motor_Interface is
	
	 generic (  Adr_Width: natural := 4; --Width in bits of the address bus
					Address: Natural := 2);  --Address of the device

    Port ( clk : in STD_LOGIC;
			  pwm : in  STD_LOGIC;
			  AdrBus :	in   STD_LOGIC_VECTOR ((Adr_Width - 1) downto 0);
			  WE : 		in  	STD_LOGIC;
           DataBusFromSlave : in STD_LOGIC_VECTOR (11 downto 0);
           motor : out  STD_LOGIC_VECTOR(1 downto 0));
end Motor_Interface;

architecture Behavioral of Motor_Interface is

signal DataIn : STD_LOGIC_VECTOR (1 downto 0);

begin

latch_select: process(clk)
begin
	if rising_edge(clk) then	
		if unsigned(AdrBus) = Address then
			if WE='0' then
				DataIn <= DataBusFromSlave(1 downto 0);
			end if;
		end if;
	end if;
end process;	

with DataIn select motor <= 
	'0' & pwm when "01",
	pwm & '0' when "10",
	"00" when others;

end Behavioral;

