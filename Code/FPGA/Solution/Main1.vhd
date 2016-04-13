----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main1 is
    Port ( Clk : 	in  STD_LOGIC;
           SClk : in  STD_LOGIC;
           SS : 	in  STD_LOGIC;
           MOSI : in  STD_LOGIC;
           MISO : out STD_LOGIC;
           Led : 	out STD_LOGIC_VECTOR (7 downto 0);
           Sw : 	in  STD_LOGIC_VECTOR (7 downto 0));
end Main1;

architecture Behavioral of Main1 is
	COMPONENT SPI_Slave3
	PORT(
		Clk : 	IN std_logic;
		SClk : 	IN std_logic;
		SS : 		IN std_logic;
		MOSI : 	IN std_logic;    
		DataBus :INOUT std_logic_vector(11 downto 0);      
		MISO : 	OUT std_logic;
		AdrBus : OUT std_logic_vector(3 downto 0);
		WE : 		OUT std_logic );
	END COMPONENT;
	
	COMPONENT Blok1
	PORT(
		Clk : 	IN std_logic;
		AdrBus : IN std_logic_vector(3 downto 0);
		WE : 		IN std_logic;
		Sw : 		IN std_logic_vector(7 downto 0);    
		DataBus :INOUT std_logic_vector(11 downto 0);      
		Led : 	OUT std_logic_vector(7 downto 0));
	END COMPONENT;
	
	Signal DataBus: std_logic_vector(11 downto 0); 
	Signal AdrBus:  std_logic_vector(3 downto 0);
	Signal We:      std_logic; 
begin
   -- Note the order of signal must match the port of the component
	U1_SPI_Slave3: SPI_Slave3 PORT MAP(Clk, SClk, SS, MOSI, DataBus, MISO, AdrBus, WE);
	
	-- Note the order dosn't need to match the component
	U2_Blok1: Blok1 PORT MAP(
		Clk 	 => Clk,
		AdrBus => AdrBus,
		WE 	 => WE,
		DataBus => DataBus,
		Led 	 => Led,
		Sw 	 => Sw);	

end Behavioral;

