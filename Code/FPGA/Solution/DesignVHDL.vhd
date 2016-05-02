----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:11 05/02/2016 
-- Design Name: 
-- Module Name:    DesignVHDL - Behavioral 
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

library WORK;
use WORK.Projekt_Data.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DesignVHDL is

Port(	Clk : in  STD_LOGIC;
			ToggleDisplay : in STD_LOGIC;
			M1PanZ : in STD_LOGIC;
			M2TiltZ : in STD_LOGIC;
			HallIndex0Pan : in STD_LOGIC;
			HallIndex1Tilt : in STD_LOGIC;
			Motor1HallA : in STD_LOGIC;
			Motor1HallB : in STD_LOGIC;
			Motor2HallA : in STD_LOGIC;
			Motor2HallB : in STD_LOGIC;
			SPI_SS : in STD_LOGIC;
			SPI_MOSI : in STD_LOGIC;
			SPI_CLK : in STD_LOGIC;
			SPI_MISO : out STD_LOGIC;
			Motor1Pan : out STD_LOGIC_VECTOR(1 downto 0);
			Motor2Tilt : out STD_LOGIC_VECTOR(1 downto 0);
			Motor1PanE : out STD_LOGIC;
			Motor2TiltE : out STD_LOGIC;
			MotLed1 : out STD_LOGIC_VECTOR(1 downto 0);
			MotLed2 : out STD_LOGIC_VECTOR(1 downto 0);
			Seg : out STD_LOGIC_VECTOR(7 downto 0);
			Enable : out STD_LOGIC_VECTOR(3 downto 0)
	);

end DesignVHDL;

architecture Behavioral of DesignVHDL is

	signal M1PanZBut_Toggle : STD_LOGIC := '0';
	signal M1PanZBut_Push : STD_LOGIC := '0';
	
	signal M2TiltZ_Toggle : STD_LOGIC := '0';
	signal M2TiltZ_Push : STD_LOGIC := '0';

begin

	Motor1PanZeroButton : entity work.Toggle_Button3 
		port map (
		Clk=>Clk, 
		Button=>M1PanZ, 
		Toggle=>M1PanZBut_Toggle, 
		Deboun=>M1PanZBut_Push, 
		Pulse=>open
	);
	
	Motor2TiltZeroButton : entity work.Toggle_Button3 
		port map (
		Clk=>Clk,
		Button=>M2TiltZ,
		Toggle=>M2TiltZ_Toggle,
		Deboun=>M2TiltZ_Push,
		Pulse=>open
	);

end Behavioral;

