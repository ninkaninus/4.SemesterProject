library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PositionsModul is
	port(Clk 	  :	in STD_LOGIC;
		  Position :	out STD_LOGIC_VECTOR (7 downto 0);
		  Encoder1 :	in STD_LOGIC;
		  Encoder2 :	in STD_LOGIC;
		  Bcd		  :	out STD_LOGIC_VECTOR (15 downto 0));
		  
end PositionsModul;

architecture Behavioral of PositionsModul is
Signal AB			: STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal BC			: STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal EncoderCounts	:	STD_LOGIC_VECTOR (15 downto 0) := x"0000";
signal Ciffer_et	:		integer range 0 to 15 := 0;
signal Ciffer_ti	:		integer range 0 to 15 := 0;
signal Ciffer_hun	:		integer range 0 to 15 := 0;
signal Ciffer_tu	:		integer range 0 to 15 := 0;
begin

	position <= EncoderCounts(15 downto 8);
	--Bcd <= EncoderCounts(15 downto 0);
	Bcd <= Conv_std_logic_vector(Ciffer_tu,4) & 
			 Conv_std_logic_vector(Ciffer_hun,4) &
			 Conv_std_logic_vector(Ciffer_ti,4)&
			 Conv_std_logic_vector(Ciffer_et,4);
	
GetEncoders: process (clk)
begin
	if rising_edge(clk) then
		AB <= AB(0) & Encoder1;
		BC	<=	BC(0) & Encoder2;
		
		if Ciffer_et = 9 and Ciffer_ti = 9 and Ciffer_hun = 9 and Ciffer_tu = 9 then
			Ciffer_et <= 0;
			Ciffer_ti <= 0;
			Ciffer_hun <= 0;
			Ciffer_tu <= 0;
		else
		end if;
		
		if AB = "01" and BC = "00" then
			Ciffer_et <= Ciffer_et + 1;
			if Ciffer_et > 8 then
				Ciffer_et <= 0;
				Ciffer_ti <= Ciffer_ti + 1;
				if Ciffer_ti > 8 then
					Ciffer_ti <= 0;
					Ciffer_hun <= Ciffer_hun + 1;
					if Ciffer_hun > 8 then
						Ciffer_hun <= 0;
						Ciffer_tu <= Ciffer_tu + 1;
					end if;
				end if;
			end if;
		elsif AB = "01" and BC = "11" then
			Ciffer_et <= Ciffer_et - 1;
			if Ciffer_et < 1 then
				Ciffer_et <= 9;
				Ciffer_ti <= Ciffer_ti - 1;
				if	Ciffer_ti < 1 then
					Ciffer_ti <= 9;
					Ciffer_hun <= Ciffer_hun - 1;
					if Ciffer_hun < 1 then
						Ciffer_hun <= 9;
						Ciffer_tu <= Ciffer_tu -1;
					end if;
				end if;
			end if;
		end if;
		
		-- Falling edge Encoder 1
		if AB = "10" and BC = "11" then
			Ciffer_et <= Ciffer_et + 1;
			if Ciffer_et > 8 then
				Ciffer_et <= 0;
				Ciffer_ti <= Ciffer_ti + 1;
				if Ciffer_ti > 8 then
					Ciffer_ti <= 0;
					Ciffer_hun <= Ciffer_hun + 1;
					if Ciffer_hun > 8 then
						Ciffer_hun <= 0;
						Ciffer_tu <= Ciffer_tu + 1;
					end if;
				end if;
			end if;
		elsif AB = "10" and BC = "00" then
			Ciffer_et <= Ciffer_et - 1;
			if Ciffer_et < 1 then
				Ciffer_et <= 9;
				Ciffer_ti <= Ciffer_ti - 1;
				if	Ciffer_ti < 1 then
					Ciffer_ti <= 9;
					Ciffer_hun <= Ciffer_hun - 1;
					if Ciffer_hun < 1 then
						Ciffer_hun <= 9;
						Ciffer_tu <= Ciffer_tu -1;
					end if;
				end if;
			end if;
		end if;
		
		-- Rising Edge Encoder 2
		if BC = "01" and AB = "11" then
			Ciffer_et <= Ciffer_et + 1;
			if Ciffer_et > 8 then
				Ciffer_et <= 0;
				Ciffer_ti <= Ciffer_ti + 1;
				if Ciffer_ti > 8 then
					Ciffer_ti <= 0;
					Ciffer_hun <= Ciffer_hun + 1;
					if Ciffer_hun > 8 then
						Ciffer_hun <= 0;
						Ciffer_tu <= Ciffer_tu + 1;
					end if;
				end if;
			end if;
		elsif BC = "01" and AB = "00" then
			Ciffer_et <= Ciffer_et - 1;
			if Ciffer_et < 1 then
				Ciffer_et <= 9;
				Ciffer_ti <= Ciffer_ti - 1;
				if	Ciffer_ti < 1 then
					Ciffer_ti <= 9;
					Ciffer_hun <= Ciffer_hun - 1;
					if Ciffer_hun < 1 then
						Ciffer_hun <= 9;
						Ciffer_tu <= Ciffer_tu -1;
					end if;
				end if;
			end if;
		end if;
		
		-- Falling edge Encoder 2
		if BC = "10" and AB = "00" then
			Ciffer_et <= Ciffer_et + 1;
			if Ciffer_et > 8 then
				Ciffer_et <= 0;
				Ciffer_ti <= Ciffer_ti + 1;
				if Ciffer_ti > 8 then
					Ciffer_ti <= 0;
					Ciffer_hun <= Ciffer_hun + 1;
					if Ciffer_hun > 8 then
						Ciffer_hun <= 0;
						Ciffer_tu <= Ciffer_tu + 1;
					end if;
				end if;
			end if;
		elsif BC = "10" and AB = "11" then
			Ciffer_et <= Ciffer_et - 1;
			if Ciffer_et < 1 then
				Ciffer_et <= 9;
				Ciffer_ti <= Ciffer_ti - 1;
				if	Ciffer_ti < 1 then
					Ciffer_ti <= 9;
					Ciffer_hun <= Ciffer_hun - 1;
					if Ciffer_hun < 1 then
						Ciffer_hun <= 9;
						Ciffer_tu <= Ciffer_tu -1;
					end if;
				end if;
			end if;
		end if;
		
		-- Rising Edge Encoder 1
--		if AB = "01" and BC = "00" then
--			if EncoderCounts = x"FFFF" then
--				EncoderCounts <= x"0000";
--			else
--				EncoderCounts <= EncoderCounts + 1;
--			end if;
--		elsif AB = "01" and BC = "11" then
--				EncoderCounts <= EncoderCounts - 1;
--		end if;
--		
--		-- Falling edge Encoder 1
--		if AB = "10" and BC = "11" then
--			if EncoderCounts = x"FFFF" then
--				EncoderCounts <= x"0000";
--			else
--				EncoderCounts <= EncoderCounts + 1;
--			end if;
--		elsif AB = "10" and BC = "00" then
--			EncoderCounts <= EncoderCounts - 1;
--		end if;
--		
--		-- Rising Edge Encoder 2
--		if BC = "01" and AB = "11" then
--			if EncoderCounts = x"FFFF" then
--				EncoderCounts <= x"0000";
--			else
--				EncoderCounts <= EncoderCounts + 1;
--			end if;
--		elsif BC = "01" and AB = "00" then
--				EncoderCounts <= EncoderCounts - 1;
--		end if;
--		
--		-- Falling edge Encoder 2
--		if BC = "10" and AB = "00" then
--			if EncoderCounts = x"FFFF" then
--				EncoderCounts <= x"0000";
--			else
--				EncoderCounts <= EncoderCounts + 1;
--			end if;
--		elsif BC = "10" and AB = "11" then
--			EncoderCounts <= EncoderCounts - 1;
--		end if;
	end if;
end process;
end Behavioral;