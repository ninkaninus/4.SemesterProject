----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:42:26 04/07/2016 
-- Design Name: 
-- Module Name:    SPI_Protocol - Behavioral 
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

entity SPI_Protocol is
    Port ( Ram_bus : inout  STD_LOGIC_VECTOR (7 downto 0);
           SPI_In : in  STD_LOGIC_VECTOR (7 downto 0);
           SPI_Out : out  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
			  Pwm : out STD_LOGIC_VECTOR(7 downto 0);
			  Motor_State : out STD_LOGIC_VECTOR(1 downto 0);
			  DataRdyOut: out STD_LOGIC;
           DataRdyIn : in  STD_LOGIC);
end SPI_Protocol;

architecture Behavioral of SPI_Protocol is

begin


end Behavioral;

