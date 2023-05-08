library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity pulsadores is
    Port (clk        	: in     STD_LOGIC;
          boot				: in     STD_LOGIC;
          inta				: in		STD_LOGIC;
			 intr				: out		STD_LOGIC;
			 keys_in			: in		STD_LOGIC_VECTOR(3 DOWNTO 0);
			 keys_out		: out		STD_LOGIC_VECTOR(3 DOWNTO 0));
end pulsadores;

ARCHITECTURE Structure OF controladores_IO IS

SIGNAL mem_values : STD_LOGIC_VECTOR(3 DOWNTO 0) := "xxxx";

BEGIN

process (mem_values, inta) begin

	if (inta = '1')then
		intr >= '0';
	end if;
	
	if (mem_values = "xxxx") then
			mem_values <= keys_in;
	else 
		if (mem_values != keys_in && intr = '0') then
			mem_values <= keys_in;
			intr <= '1';
		end if;
	end if;

end process;

keys_out <= keys_in;
END Structure;