--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:59:40 05/01/2016
-- Design Name:   
-- Module Name:   D:/Github/4.SemesterProject/Code/FPGA/Solution/bcdTest.vhd
-- Project Name:  Solution
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NumberToBcd
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
 
ENTITY bcdTest IS
END bcdTest;
 
ARCHITECTURE behavior OF bcdTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NumberToBcd
    PORT(
         Number : IN  std_logic_vector(11 downto 0);
         BcdOut : OUT  std_logic_vector(15 downto 0);
         Clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Number : std_logic_vector(11 downto 0) := (others => '0');
   signal Clk : std_logic := '0';

 	--Outputs
   signal BcdOut : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NumberToBcd PORT MAP (
          Number => Number,
          BcdOut => BcdOut,
          Clk => Clk
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;
		
		Number <= "100000000000";
		
		wait for 1 us;

      -- insert stimulus here 

      wait;
   end process;

END;
