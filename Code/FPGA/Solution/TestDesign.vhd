-- Vhdl test bench created from schematic D:\Github\4.SemesterProject\Code\FPGA\Solution\Design.sch - Mon Apr 25 12:47:36 2016
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Design_Design_sch_tb IS
END Design_Design_sch_tb;
ARCHITECTURE behavioral OF Design_Design_sch_tb IS 

   COMPONENT Design
   PORT( clk	:	IN	STD_LOGIC; 
          SPI_MOSI	:	IN	STD_LOGIC; 
          SPI_MISO	:	OUT	STD_LOGIC; 
          SPI_SS	:	IN	STD_LOGIC; 
          SPI_Clk	:	IN	STD_LOGIC; 
          motor	:	OUT	STD_LOGIC_VECTOR (1 DOWNTO 0); 
          encoder1	:	IN	STD_LOGIC; 
          seg	:	OUT	STD_LOGIC_VECTOR (0 TO 7); 
          Enable	:	OUT	STD_LOGIC_VECTOR (3 DOWNTO 0); 
          encoder2	:	IN	STD_LOGIC; 
          led	:	OUT	STD_LOGIC_VECTOR (7 DOWNTO 0); 
          sw	:	IN	STD_LOGIC_VECTOR (7 DOWNTO 0));
   END COMPONENT;

   SIGNAL clk	:	STD_LOGIC;
   SIGNAL SPI_MOSI	:	STD_LOGIC;
   SIGNAL SPI_MISO	:	STD_LOGIC;
   SIGNAL SPI_SS	:	STD_LOGIC;
   SIGNAL SPI_Clk	:	STD_LOGIC;
   SIGNAL motor	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
   SIGNAL encoder1	:	STD_LOGIC;
   SIGNAL seg	:	STD_LOGIC_VECTOR (0 TO 7);
   SIGNAL Enable	:	STD_LOGIC_VECTOR (3 DOWNTO 0);
   SIGNAL encoder2	:	STD_LOGIC;
   SIGNAL led	:	STD_LOGIC_VECTOR (7 DOWNTO 0);
   SIGNAL sw	:	STD_LOGIC_VECTOR (7 DOWNTO 0);

	-- Clock period definitions
   constant clk_period : time := 20 ns;
   constant SPI_Clk_period : time := 500 ns;
	constant dataToSend : STD_LOGIC_VECTOR(15 downto 0) := "1001000101011111";

BEGIN

   UUT: Design PORT MAP(
		clk => clk, 
		SPI_MOSI => SPI_MOSI, 
		SPI_MISO => SPI_MISO, 
		SPI_SS => SPI_SS, 
		SPI_Clk => SPI_Clk, 
		motor => motor, 
		encoder1 => encoder1, 
		seg => seg, 
		Enable => Enable, 
		encoder2 => encoder2, 
		led => led, 
		sw => sw
   );
	
	-- Clock process definitions
   Clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
--   SPI_Clk_process :process
--   begin
--		SPI_Clk <= '0';
--		wait for SPI_Clk_period/2;
--		SPI_Clk <= '1';
--		wait for SPI_Clk_period/2;
--   end process;

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
		--Initialization
		SPI_SS <= '1'; 
		
		SPI_MOSI <= '0';
		
		SPI_Clk <= '0';
		
		sw <= "11001110";
		
		wait for 100 ns;
		
		--Start of SPI transmission

		for I in 0 to 1 loop

			SPI_SS <= '0';
			
			wait for SPI_Clk_period/2;
			
			for J in 15 downto 0 loop
				
				SPI_MOSI <= dataToSend(J);
				
				wait for SPI_Clk_period/2;
				
				SPI_Clk <= '1';
				
				wait for SPI_Clk_period/2;
				
				SPI_Clk <= '0';

			end loop;
			
			wait for SPI_Clk_period/2;
			
			SPI_SS <= '1';
			
			SPI_MOSI <= '0';
			
			--End of SPI transmission
		
			wait for SPI_Clk_period/2;
		
		end loop;
		
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
