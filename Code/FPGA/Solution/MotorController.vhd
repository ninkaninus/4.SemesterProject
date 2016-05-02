----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:33:26 05/02/2016 
-- Design Name: 
-- Module Name:    MotorController - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

library WORK;
use WORK.Projekt_Data.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MotorController is

	generic (Address: Integer := MOTOR_CONTROLLER2_TILT;
				Boundary_Max : integer := 2250;
				Boundary_Min : integer := 1840
				);  
	
	Port(	Clk : in  STD_LOGIC;
			Motor_Ticks : in  STD_LOGIC_VECTOR (11 downto 0);
			DataBusFromSlave : in STD_LOGIC_VECTOR (11 downto 0);
			AdrBus :	in   STD_LOGIC_VECTOR (3 downto 0);
			WE : 		in  	STD_LOGIC;
			HallIndex : in STD_LOGIC;
			ButtonPress : in STD_LOGIC;
			ButtonToggle : in STD_LOGIC;
			MotorEnable : out STD_LOGIC;
			MotorPins : out STD_LOGIC_VECTOR(1 downto 0);
			Zeroed : out STD_LOGIC;
			StateOutput : out STD_LOGIC_VECTOR(1 downto 0)
	);
end MotorController;

architecture Behavioral of MotorController is

	signal pwm_out : STD_LOGIC := '0';
	signal pwm_data_in : STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
	signal runState : STD_LOGIC_VECTOR(1 downto 0) := "00";
	signal dataIn : STD_LOGIC_VECTOR(11 downto 0) := (others=>'0');
	signal ticks : STD_LOGIC_VECTOR(11 downto 0) := (others=>'0');
	
	type States is (Init,
						 Zero_Motor,
						 RunMode,
						 Emergency
						 ); 
						 
	signal State: States := Init;

begin

	pwm : entity work.pwm_driver port map (Clk, pwm_data_in ,pwm_out);
	
	with runState select MotorPins <= 
	'0' & pwm_out when "01",
	pwm_out & '0' when "10",
	"00" when others;
	
	ticks <= Motor_Ticks;
	
	latch_select: process(clk)
	begin
		if rising_edge(clk) then	
			if unsigned(AdrBus) = Address then
				if WE='0' then
					DataIn <= DataBusFromSlave;
				end if;
			end if;
		end if;
	end process;
	
	State_Machine:	process(Clk)
	variable cTicks : integer := 0;
	begin
		if falling_edge( Clk) then 
			
			cTicks := to_integer(unsigned(ticks));
			
			case State is
			
				when Init =>
					StateOutput <= "00";
					pwm_data_in <= "00000000";
					MotorEnable <= '0';
					RunState <= "00";
					Zeroed <= '0';
					
					if ButtonPress = '1' then
						State <= Zero_Motor;
					end if;
				
				when Zero_Motor =>
					StateOutput <= "01";
					if HallIndex = '1' then
						pwm_data_in <= STD_LOGIC_VECTOR(TO_UNSIGNED(ZEROING_PWM, pwm_data_in'length));
						MotorEnable <= '1';
						if ButtonPress = '1' then
							if ButtonToggle = '1' then
								runState <= "01";
							else
								runState <= "10";
							end if;
						else
							runState <= "00";
						end if;
					else 
						runState <= "00";
						pwm_data_in <= "00000000";
						State <= RunMode;
						Zeroed <= '1';
					end if;
				
				when RunMode =>
					StateOutput <= "10";
					if (cTicks > Boundary_Max) OR (cTicks < Boundary_Min) then
						State <= Emergency;
					else
						pwm_data_in <= dataIn(7 downto 0);
						runState <= dataIn(9 downto 8);
						motorEnable <= dataIn(10);
					end if;
					
				when Emergency =>
					StateOutput <= "11";
					pwm_data_in <= (others=>'0');
					runState <= "00";
					
			end case;
		
		end if;
	end process;

end Behavioral;

