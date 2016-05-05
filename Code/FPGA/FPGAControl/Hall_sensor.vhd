----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:58 04/14/2016 
-- Design Name: 
-- Module Name:    Hall_sensor - Behavioral 
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

entity Hall_sensor is
    Port ( Hall_sens : in  STD_LOGIC_VECTOR (1 downto 0);
			  Pan_Hall	  : out STD_LOGIC;
			  Tilt_Hall	  : out STD_LOGIC
			);
end Hall_sensor;
architecture Behavioral of Hall_sensor is
begin

Pan_hall <= '1' when Hall_sens = "01" else '0';
Tilt_hall <= '1' when Hall_sens = "10" else '0';

end Behavioral;