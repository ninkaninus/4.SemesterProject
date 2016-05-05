--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:03:42 04/19/2016
-- Design Name:   
-- Module Name:   D:/Github/4.SemesterProject/Code/FPGA/Solution/TSlave.vhd
-- Project Name:  Solution
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPI_Slave3
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TSlave IS
END TSlave;
 
ARCHITECTURE behavior OF TSlave IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_Slave3
    PORT(
         Clk : IN  std_logic;
         SClk : IN  std_logic;
         SS : IN  std_logic;
         MOSI : IN  std_logic;
         MISO : OUT  std_logic;
         AdrBus : OUT  std_logic_vector(3 downto 0);
         WE : OUT  std_logic;
         DataBus : INOUT  std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal SClk : std_logic := '0';
   signal SS : std_logic := '0';
   signal MOSI : std_logic := '0';

	--BiDirs
   signal DataBus : std_logic_vector(11 downto 0);

 	--Outputs
   signal MISO : std_logic;
   signal AdrBus : std_logic_vector(3 downto 0);
   signal WE : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
   constant SClk_period : time := 500 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_Slave3 PORT MAP (
          Clk => Clk,
          SClk => SClk,
          SS => SS,
          MOSI => MOSI,
          MISO => MISO,
          AdrBus => AdrBus,
          WE => WE,
          DataBus => DataBus
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 
   SClk_process :process
   begin
		SClk <= '0';
		wait for SClk_period/2;
		SClk <= '1';
		wait for SClk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		SS <= '1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;
		
		DataBus <= "010101010111";
		
		--wait for 1 us;
		
		wait for 250 ns;
		
		SS <= '0';

      -- insert stimulus here 

		wait for SClk_period*17;

		SS <= '1';

      wait;
   end process;

END;
