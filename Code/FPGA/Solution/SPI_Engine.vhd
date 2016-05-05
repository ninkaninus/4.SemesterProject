----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:45:46 04/07/2016 
-- Design Name: 
-- Module Name:    SPI_Engine - Behavioral 
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

entity SPI_Engine is
    Port ( Clk : in  STD_LOGIC;
           SPI_Received_Data_Rdy : in  STD_LOGIC;
           SPI_Received_Data : in  STD_LOGIC_VECTOR (7 downto 0);
           SPI_Transmit_Data_Rdy : out  STD_LOGIC;
           SPI_Transmit_Data : out  STD_LOGIC_VECTOR (7 downto 0);
           RAM_Address : out  STD_LOGIC_VECTOR (3 downto 0);
           RAM_Data_Out : out  STD_LOGIC_VECTOR (7 downto 0);
           RAM_Data_In : in  STD_LOGIC_VECTOR (7 downto 0);
           RAM_WE : out  STD_LOGIC;
           RAM_Clk : out  STD_LOGIC);
end SPI_Engine;

architecture Behavioral of SPI_Engine is

begin


end Behavioral;

