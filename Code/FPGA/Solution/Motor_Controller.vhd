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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Motor_Interface is
    Port ( pwm : in  STD_LOGIC;
           motor_State : in  STD_LOGIC_VECTOR(1 downto 0);
           motor : out  STD_LOGIC_VECTOR(1 downto 0));
end Motor_Interface;

architecture Behavioral of Motor_Interface is

begin

with motor_State select motor <= 
	'0' & pwm when "01",
	pwm & '0' when "10",
	"00" when others;

end Behavioral;

