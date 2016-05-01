----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;
use WORK.Projekt_Data.all;

entity Blok1 is
	 
	 generic ( Nb: natural := 2);  -- Number of bytes	
	 
    Port ( Clk : 		in  	STD_LOGIC;
           AdrBus : 	in  	STD_LOGIC_VECTOR (3 downto 0);
           WE : 		in  	STD_LOGIC;
           DataBusToSlave : out STD_LOGIC_VECTOR (11 downto 0);
			  DataBusFromSlave : in STD_LOGIC_VECTOR (11 downto 0);
           Led : 		out  	STD_LOGIC_VECTOR (7 downto 0);
           Sw : 		in  	STD_LOGIC_VECTOR (7 downto 0));
end Blok1;

architecture Behavioral of Blok1 is
   signal DataIn :            STD_LOGIC_VECTOR (11 downto 0) := (others=>'H');  -- Input from DataBus
   signal DataOut :           STD_LOGIC_VECTOR (11 downto 0) := (others=>'H');  -- Output to DataBus
	signal CS:                 STD_LOGIC := '0'; 								-- Active High Chip Select
begin

   DataIn  <= DataBusFromSlave;   -- Read from DataBus
   DataBusToSlave <= DataOut;		 -- Write to DataBus

	process( Clk)
	begin
		if rising_edge( CLk) then
			CS      <= '0';
			--DataOut <= (others => 'H');
			if AdrBus = "1001" then
				CS <= '1';
				DataOut <= "1111"&Sw;
				--Led <= "01010101";
				if WE='0' then
					Led <= DataIn( 7 downto 0);
				end if;
			end if;
		end if;
	end process;

end Behavioral;

