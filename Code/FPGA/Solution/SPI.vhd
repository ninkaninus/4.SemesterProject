----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:02:57 03/31/2016 
-- Design Name: 
-- Module Name:    SPI - Behavioral 
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

entity SPI is
    Port ( clk : in  STD_LOGIC;
			  spi_clk : in STD_LOGIC;
           mosi : in  STD_LOGIC;
           miso : out  STD_LOGIC;
           ss : in  STD_LOGIC;
			  dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end SPI;

architecture Behavioral of SPI is
signal iterator : integer range 0 to 8 := 0;
signal data : STD_LOGIC_VECTOR (7 downto 0);

begin

	counter : process(clk)
	begin
		if rising_edge(clk) then
			if(ss = '1') then
				iterator <= 0;
				--data <= "00000000";
				dataOut <= data;
			elsif(spi_clk = '1') then
				if iterator = 8 then 
					iterator <= 1;
				else
					iterator <= iterator+1;
				end if;
			data <= data(6 downto 0) & mosi;
			end if;
		end if;
	end process;

--	latchOutData : process(iterator, data)
--	begin
--		if(iterator = 8) then
--			dataOut <= data;
--		end if;
--	end process;

end Behavioral;

