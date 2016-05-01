----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:02:43 04/14/2016 
-- Design Name: 
-- Module Name:    SikkerhedsFeature - Behavioral 
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

entity SikkerhedsFeature is
    Port ( Motor_Pan_Hall : in  STD_LOGIC_VECTOR (10 downto 0) := "000000000000";
			  Motor_Tilt_hall: in  STD_LOGIC_VECTOR (8 downto 0) := "000000000000";
           Stop : out  STD_LOGIC_VECTOR (1 downto 0));
end SikkerhedsFeature;

architecture Behavioral of SikkerhedsFeature is
begin

Stop <= "01" when Motor_Pan_Hall > "10000111000" else "00";
Stop <= "10" when Motor_Tilt_hall > "110111000" else "00";

end Behavioral;