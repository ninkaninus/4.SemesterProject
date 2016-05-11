--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Projekt_Data is

--***Module addresses***---
CONSTANT MOTOR_CONTROLLER1_PAN : STD_LOGIC_VECTOR(3 downto 0) := "0001";
CONSTANT POSITIONS_MODUL1_PAN : STD_LOGIC_VECTOR(3 downto 0) := "0010";
CONSTANT MOTOR_CONTROLLER2_TILT : STD_LOGIC_VECTOR(3 downto 0) := "0011";
CONSTANT POSITIONS_MODUL2_TILT : STD_LOGIC_VECTOR(3 downto 0) := "0100";
CONSTANT BLOK1 : INTEGER := 5;

--***Boundaries for the motors***--
CONSTANT PAN_MAX : INTEGER := 2350;--Smack on the rubber ring
CONSTANT PAN_MIN : INTEGER := 1750;--Smack on the rubber ring
CONSTANT TILT_MAX : INTEGER := 4096;--2650;
CONSTANT TILT_MIN : INTEGER := 0;--2000;

--***General constants for the motors***--
CONSTANT ZEROING_POINT : INTEGER := 2048;
CONSTANT ZEROING_PWM : INTEGER := 80;
CONSTANT EMERGENCY_BRAKETIME : INTEGER := 500;

-- type <new_type> is
--  record
--    <type_name>        : std_logic_vector( 7 downto 0);
--    <type_name>        : std_logic;
-- end record;
--
-- Declare constants
--
-- constant <constant_name>		: time := <time_unit> ns;
-- constant <constant_name>		: integer := <value;
--
-- Declare functions and procedure
--
-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;
-- procedure <procedure_name> (<type_declaration> <constant_name>	: in <type_declaration>);
--

end Projekt_Data;

package body Projekt_Data is

---- Example 1
--  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
--    variable <variable_name>     : <type_declaration>;
--  begin
--    <variable_name> := <signal_name> xor <signal_name>;
--    return <variable_name>; 
--  end <function_name>;

---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;

---- Procedure Example
--  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
--    
--  begin
--    
--  end <procedure_name>;
 
end Projekt_Data;
