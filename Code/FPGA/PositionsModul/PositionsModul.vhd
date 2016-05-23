library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.Projekt_Data.all;

entity PositionsModul is
	
	generic (Address : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0'));  --Address of the device

	port(Clk 	  :	in STD_LOGIC;
		  HallA    :	in STD_LOGIC;
		  HallB    :	in STD_LOGIC;
		  HallIndex : in STD_LOGIC;
        DataBusToSlave : out STD_LOGIC_VECTOR (11 downto 0);
		  MotorZeroed : in STD_LOGIC;
		  HallOut : out STD_LOGIC_VECTOR(1 downto 0)
		  );
		  
end PositionsModul;

architecture Behavioral of PositionsModul is
Signal HallAState		: 		STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal HallBState		: 		STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal ticks			:		integer range 0 to 4096 := 0;
signal HallIndexEdge : STD_LOGIC_VECTOR(1 downto 0) := "11";
signal HallOutput : STD_LOGIC_VECTOR(1 downto 0) := "00";

type States is(
	Init,
	ZeroMotor,
	RunMode
); 
						 
signal State: States := Init;

--signal Ciffer_et	:		integer range 0 to 15 := 0;
--signal Ciffer_ti	:		integer range 0 to 15 := 0;
--signal Ciffer_hun	:		integer range 0 to 15 := 0;
--signal Ciffer_tu	:		integer range 0 to 15 := 0;
begin

HallOut <= HallA & HallB;


--	Bcd <= Conv_std_logic_vector(Ciffer_tu,4) & 
--			 Conv_std_logic_vector(Ciffer_hun,4) &
--			 Conv_std_logic_vector(Ciffer_ti,4)&
--			 Conv_std_logic_vector(Ciffer_et,4);



DataBustoSlave <= STD_LOGIC_VECTOR(TO_UNSIGNED(ticks, DataBusToSlave'length));

GetEncoders: process (clk)
variable newTicks : integer range 0 to 4096 := 0;
variable difference : integer range 0 to 4096 := 0;

begin
	if falling_edge(clk) then
		
		HallIndexEdge <= HallIndexEdge(0) & (NOT HallIndex);
	
		newTicks := ticks;
	
		HallAState <= HallAState(0) & HallA;
		HallbState <= HallBState(0) & HallB;
		
		if HallAState = "01" and HallBState = "00" then
			newTicks := newTicks + 1;
		elsif HallAState = "01" and HallBState = "11" then
			newTicks := newTicks - 1;
		elsif HallAState = "10" and HallBState = "00" then
			newTicks := newTicks - 1;
		elsif HallAState = "10" and HallBState = "11" then
			newTicks := newTicks + 1;
		elsif HallBState = "01" and HallAState = "00" then
			newTicks := newTicks - 1;
		elsif HallBState = "01" and HallAState = "11" then
			newTicks := newTicks + 1;
		elsif HallBState = "10" and HallAState = "00" then
			newTicks := newTicks + 1;
		elsif HallBState = "10" and HallAState = "11" then
			newTicks := newTicks - 1;
		end if;
		
		case State is
			when Init =>
				if HallIndexEdge = "01" then
					newTicks := ZEROING_POINT;
					State <= ZeroMotor;
				end if;
				
			when ZeroMotor =>
				if MotorZeroed = '1' then
					
--					difference := newTicks - ZEROING_POINT;
--					
--					difference := difference/2;
--					
--					newTicks := newTicks - difference;
					
					State <= RunMode;
				end if;
				
			when RunMode =>
				if MotorZeroed = '0' then
					State <= Init;
				end if;
			
		end case;
	end if;

	ticks <= newTicks;
	
end process;
end Behavioral;

--		if Ciffer_et = 9 and Ciffer_ti = 9 and Ciffer_hun = 9 and Ciffer_tu = 9 then
--			Ciffer_et <= 0;
--			Ciffer_ti <= 0;
--			Ciffer_hun <= 0;
--			Ciffer_tu <= 0;
--		else
--		end if;
		
--		if AB = "01" and BC = "00" then
--			Ciffer_et <= Ciffer_et + 1;
--			if Ciffer_et > 8 then
--				Ciffer_et <= 0;
--				Ciffer_ti <= Ciffer_ti + 1;
--				if Ciffer_ti > 8 then
--					Ciffer_ti <= 0;
--					Ciffer_hun <= Ciffer_hun + 1;
--					if Ciffer_hun > 8 then
--						Ciffer_hun <= 0;
--						Ciffer_tu <= Ciffer_tu + 1;
--					end if;
--				end if;
--			end if;
--		elsif AB = "01" and BC = "11" then
--			Ciffer_et <= Ciffer_et - 1;
--			if Ciffer_et < 1 then
--				Ciffer_et <= 9;
--				Ciffer_ti <= Ciffer_ti - 1;
--				if	Ciffer_ti < 1 then
--					Ciffer_ti <= 9;
--					Ciffer_hun <= Ciffer_hun - 1;
--					if Ciffer_hun < 1 then
--						Ciffer_hun <= 9;
--						Ciffer_tu <= Ciffer_tu -1;
--					end if;
--				end if;
--			end if;
--		end if;
--		
--		-- Falling edge Encoder 1
--		if AB = "10" and BC = "11" then
--			Ciffer_et <= Ciffer_et + 1;
--			if Ciffer_et > 8 then
--				Ciffer_et <= 0;
--				Ciffer_ti <= Ciffer_ti + 1;
--				if Ciffer_ti > 8 then
--					Ciffer_ti <= 0;
--					Ciffer_hun <= Ciffer_hun + 1;
--					if Ciffer_hun > 8 then
--						Ciffer_hun <= 0;
--						Ciffer_tu <= Ciffer_tu + 1;
--					end if;
--				end if;
--			end if;
--		elsif AB = "10" and BC = "00" then
--			Ciffer_et <= Ciffer_et - 1;
--			if Ciffer_et < 1 then
--				Ciffer_et <= 9;
--				Ciffer_ti <= Ciffer_ti - 1;
--				if	Ciffer_ti < 1 then
--					Ciffer_ti <= 9;
--					Ciffer_hun <= Ciffer_hun - 1;
--					if Ciffer_hun < 1 then
--						Ciffer_hun <= 9;
--						Ciffer_tu <= Ciffer_tu -1;
--					end if;
--				end if;
--			end if;
--		end if;
--		
--		-- Rising Edge Encoder 2
--		if BC = "01" and AB = "11" then
--			Ciffer_et <= Ciffer_et + 1;
--			if Ciffer_et > 8 then
--				Ciffer_et <= 0;
--				Ciffer_ti <= Ciffer_ti + 1;
--				if Ciffer_ti > 8 then
--					Ciffer_ti <= 0;
--					Ciffer_hun <= Ciffer_hun + 1;
--					if Ciffer_hun > 8 then
--						Ciffer_hun <= 0;
--						Ciffer_tu <= Ciffer_tu + 1;
--					end if;
--				end if;
--			end if;
--		elsif BC = "01" and AB = "00" then
--			Ciffer_et <= Ciffer_et - 1;
--			if Ciffer_et < 1 then
--				Ciffer_et <= 9;
--				Ciffer_ti <= Ciffer_ti - 1;
--				if	Ciffer_ti < 1 then
--					Ciffer_ti <= 9;
--					Ciffer_hun <= Ciffer_hun - 1;
--					if Ciffer_hun < 1 then
--						Ciffer_hun <= 9;
--						Ciffer_tu <= Ciffer_tu -1;
--					end if;
--				end if;
--			end if;
--		end if;
--		
--		-- Falling edge Encoder 2
--		if BC = "10" and AB = "00" then
--			Ciffer_et <= Ciffer_et + 1;
--			if Ciffer_et > 8 then
--				Ciffer_et <= 0;
--				Ciffer_ti <= Ciffer_ti + 1;
--				if Ciffer_ti > 8 then
--					Ciffer_ti <= 0;
--					Ciffer_hun <= Ciffer_hun + 1;
--					if Ciffer_hun > 8 then
--						Ciffer_hun <= 0;
--						Ciffer_tu <= Ciffer_tu + 1;
--					end if;
--				end if;
--			end if;
--		elsif BC = "10" and AB = "11" then
--			Ciffer_et <= Ciffer_et - 1;
--			if Ciffer_et < 1 then
--				Ciffer_et <= 9;
--				Ciffer_ti <= Ciffer_ti - 1;
--				if	Ciffer_ti < 1 then
--					Ciffer_ti <= 9;
--					Ciffer_hun <= Ciffer_hun - 1;
--					if Ciffer_hun < 1 then
--						Ciffer_hun <= 9;
--						Ciffer_tu <= Ciffer_tu -1;
--					end if;
--				end if;
--			end if;
--		end if;
--	end if;
--end process;
--end Behavioral;