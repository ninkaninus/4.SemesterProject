----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;
use WORK.Projekt_Data.all;

entity SPI_Slave3 is
--	 generic ( Nb: natural := 2);  -- Number of bytes
    Port ( Clk : 		in    STD_LOGIC;  -- FPGA 50 MHz clk
           -- The SPI interface
			  SClk : 	in    STD_LOGIC;
           SS : 		in    STD_LOGIC;
           MOSI : 	in    STD_LOGIC;
           MISO : 	out   STD_LOGIC;
			  -- The internal AdrBus, DataBus and Write Enable
           AdrBus :	out   STD_LOGIC_VECTOR (3 downto 0);
           WE : 		out   STD_LOGIC;
           DataBus : inout STD_LOGIC_VECTOR (11 downto 0));
end SPI_Slave3;

architecture Behavioral of SPI_Slave3 is
   -- DataBus buffers for input and output data
   signal DataIn :            STD_LOGIC_VECTOR (11 downto 0);
   signal DataOut :           STD_LOGIC_VECTOR (11 downto 0);
	-- XSClk and xSS used to detect rising and falling edges of SClk and SS
	signal xSClk:      			std_logic_vector( 1 downto 0) := "00";
	signal xSS:        			std_logic_vector( 1 downto 0) := "11";
	-- SClk_Count and _Cnt used to keep track of the number af SClk pulses
   signal SClk_Count: 			std_logic_vector( 2**Nb-1 downto 0) := (others=>'1');	
	shared variable SClk_Cnt:  integer range 0 to (8*Nb)-1 := 0; 
	-------------------------------------------------------------------------------
	signal WE_net: std_logic := '1'; -- Active low
   signal InBuf: 	std_logic_vector( 0 to (8*Nb)-1) := (others=>'L');
   signal UdBuf:  std_logic_vector( 0 to (8*Nb)-1) := (others=>'L');	
   alias  Adr:    std_logic_vector( 3 downto 0) is InBuf( 0 to 3); 

	type States is (Wait_for_SS_low, 
	                Wait_for_Adr,
						 Wait_state1,
						 Load_UdBuf,
						 Wait_for_Databits,
						 Set_WE0,
						 Set_WE1,
						 Wait_for_SS_high);
	signal State: States := Wait_for_SS_low;
begin
	-- SClk_Count <= conv_std_logic_vector( SClk_cnt, SClk_Count'length); --alternativ 
	
   DataIn  <= DataBus;                                    -- Read from DataBus
   DataBus <= DataOut when WE_net='0' else (others=>'Z'); -- Write to DataBus
   WE      <= WE_net;												 -- WE = Active Low

 --##################################################################################
 --# This process detect changes of SS and SClk
 --# SClk_Count will reset by a falling edge of SS
 --# For each rising edge will:  SClk_Count <= SClk_count+1
 --#    InBuf( SClk_cnt) will get to MOSI signal
 --#    MISO will get OutBuf( SClk_cnt) 
 --################################################################################## 	
	SClk_Counter: process( Clk)
	begin
	   if rising_edge( Clk) then
			xSClk <= xSClk(0) & SClk;    -- SClk detection (SClk << 25 MHz)   
			xSS   <= xSS(0) & SS;        -- SS detection		
		end if;
		
		if falling_edge( Clk) then       -- Clk will be 50 MHz 
			if xSS="10" then
				SClk_Count <= (others=>'0'); -- Reset the SClk counter
			end if;
			---------------------------Receive MOSI @ Rising SClk ----------			
			if xSClk="01" then
				SClk_Count <= SClk_Count + 1; -- Count the number of rising SClk's
				SClk_Cnt := conv_integer( SClk_Count); 
				
			   InBuf( SClk_Cnt) <= MOSI;	
			end if;
			MISO <= UdBuf( SClk_Cnt);
		end if;
	end process;

 --##################################################################################
 --# This State Machine controls the basic timing between the SPI interface and 
 --# the internal bus-system
 --################################################################################## 
   State_Machine:	process( Clk)
	begin
		if falling_edge( Clk) then
			WE_net <= '1';
			case State is
				when Wait_for_SS_low => 
						 
	

	         when Wait_for_Adr =>
							
							
				when Wait_state1 =>            -- Extra wait state 
							               
							
				when Load_UdBuf =>
						
							
				when Wait_for_Databits =>
							

							
				when Set_WE0 =>
							
							
				when Set_WE1 =>
							
							
				when Wait_for_SS_high =>
				         				
			end case;
		end if;
	end process;
end Behavioral;

