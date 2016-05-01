----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY TB_Main1 IS
END TB_Main1;
 
ARCHITECTURE behavior OF TB_Main1 IS 
    --------------------------------------- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Main1
    PORT(Clk : IN  std_logic;
         SClk : IN  std_logic;
         SS : IN  std_logic;
         MOSI : IN  std_logic;
         MISO : OUT  std_logic;
         Led : OUT  std_logic_vector(7 downto 0);
         Sw : IN  std_logic_vector(7 downto 0));
    END COMPONENT; 
   ------------------------------------------------------------------Inputs
   signal Clk : std_logic := '0';
   signal SClk : std_logic := '0';
   signal SS : std_logic := '1';
   signal MOSI : std_logic := '0';
   signal Sw : std_logic_vector(7 downto 0) := "10100011";
 	--------------------------------------------------------------- Outputs
   signal MISO : std_logic;
   signal Led : std_logic_vector(7 downto 0);
   -------------------------------------------------------------- Clock period definitions
   constant Clk_period : time := 20 ns;
	
	-- This buffer holds the value which should be send to the Slave
	-- After the simulation will it hold the data from the the Slave
   signal MasterBuffer: std_logic_vector( 15 downto 0) := "1001LHLH01010101";
BEGIN 
	------------------------------------ Instantiate the Unit Under Test (UUT)
   uut: Main1 PORT MAP (
          Clk => Clk,
          SClk => SClk,
          SS => SS,
          MOSI => MOSI,
          MISO => MISO,
          Led => Led,
          Sw => Sw);
   ------------------------------------- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0'; wait for Clk_period/2;
		Clk <= '1';	wait for Clk_period/2;
   end process;

   MOSI <= MasterBuffer(15); -- The MOSI output allways MSBit of MasterBuffer
   
	-- This process generates SClk, SS, MOSI signals and recieves the MISO signal
   -- The timing just an example and properly not compatible with the AVR timing 	
	Master: process
   begin	
	   SS <= '1';
      for i in 0 to 20 loop 	
			wait until rising_edge( Clk);
		end loop;
		SS <= '0';
		wait until rising_edge( Clk);	
      for i in 0 to 15 loop 	
         SClk <= '0';	      	
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);				
			wait until rising_edge( Clk);
			wait until rising_edge( Clk); 			
         SClk <= '1';
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);			
			MasterBuffer <= MasterBuffer(14 downto 0)& MISO;
			wait until rising_edge( Clk);
			wait until rising_edge( Clk);
			MasterBuffer(0) <= MISO;      --- Just to be sure
			wait until rising_edge( Clk); 
			wait until rising_edge( Clk); 
			wait until rising_edge( Clk); 			
		end loop;
		SClk <= '0';
		SS   <= '1';
		wait;
   end process;
END;
