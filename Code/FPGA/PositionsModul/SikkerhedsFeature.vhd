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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SikkerhedsFeature is

		Generic( 
			Boundary1 : integer range 0 to 4096 := 2000;
			Boundary2 : integer range 0 to 4096 := 2650
		);

    Port ( Motor_Ticks : in  STD_LOGIC_VECTOR (11 downto 0);
           Stop : out  STD_LOGIC);
end SikkerhedsFeature;

architecture Behavioral of SikkerhedsFeature is
begin

Stop <= '1' when (Motor_Ticks > Boundary2) OR (Motor_Ticks < Boundary1) else '0';

end Behavioral;