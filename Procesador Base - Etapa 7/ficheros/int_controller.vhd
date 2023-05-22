library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity int_controller is
		Generic (
				IN_VEC_SIZE : integer := 8
		);
		Port (clk        		: in     STD_LOGIC;
				boot				: in     STD_LOGIC;
				inta				: in		STD_LOGIC;
				intr				: out		STD_LOGIC;
				value_in			: in		STD_LOGIC_VECTOR(IN_VEC_SIZE-1 DOWNTO 0);
				value_out		: out		STD_LOGIC_VECTOR(IN_VEC_SIZE-1 DOWNTO 0));
end int_controller;

ARCHITECTURE Structure OF int_controller IS

SIGNAL mem_values : STD_LOGIC_VECTOR(IN_VEC_SIZE-1 DOWNTO 0) := (others =>'X');
type estat_type is (REQUEST, IDLE); 
	 
	 --Definimos signal estado
	 signal estat : estat_type := IDLE;

BEGIN

process (boot, mem_values, inta, value_in) begin

	if (inta = '1')then
		intr <= '0';
		estat <= IDLE;
	end if;
	
	if (boot='1') then
			mem_values <= value_in;
			intr <= '0';
			estat <= IDLE;
	else 
		if (mem_values /= value_in and estat = IDLE) then
			mem_values <= value_in;
			intr <= '1';
			estat <= REQUEST;
		end if;
	end if;

end process;

value_out <= value_in;
END Structure;