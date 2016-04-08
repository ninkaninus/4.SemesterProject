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
           mosi : in  STD_LOGIC;
           miso : out  STD_LOGIC;
			  ss : in STD_LOGIC;
			  sclk : in STD_LOGIC;
			  dataReceivedRdy : out STD_LOGIC;
			  dataToSendRdy : in STD_LOGIC;
			  dataReceived : out STD_LOGIC_VECTOR (7 downto 0);
			  dataToSend : in STD_LOGIC_VECTOR (7 downto 0));
end SPI;

architecture Behavioral of SPI is
signal Rbuf : STD_LOGIC_VECTOR( 7 downto 0) := "00000000";
signal Tbuf : STD_LOGIC_VECTOR( 7 downto 0) := "00000000";
signal Rcount : integer range 0 to 7 := 0;
signal Tcount : integer range 0 to 7 := 0;

signal SClk_edge : STD_LOGIC_VECTOR(2 downto 0) := "HL0";
signal SS_edge : STD_LOGIC_VECTOR( 2 downto 0) := "1LH";

begin

	miso <= Tbuf( Tcount) when SS='0' else 'Z';

	SPI_in : process(clk)
	begin
		if rising_edge(clk) then
		
			SClk_edge <= SClk_edge (1 downto 0) & sclk;
			SS_edge <= SS_edge (1 downto 0) & ss;
		
			if SClk_edge = "011" then
				Rbuf(Rcount) <= mosi;
				
				if Rcount > 0 then
					Rcount <= Rcount-1;
				end if;
				if Tcount > 0 then
					Tcount <= Tcount-1;
				end if;
			end if;
			
			if SS_edge = "110" then
				Tbuf <= dataToSend;
				Rcount <= 7;
				Tcount <= 7;
			end if;
			
			if SS_edge = "011" then
				dataReceived <= Rbuf;
			end if;
			
		end if;
	end process;

end Behavioral;

