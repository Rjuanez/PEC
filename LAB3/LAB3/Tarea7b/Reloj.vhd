LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY Reloj IS
	generic (
		numero_bits : integer := 26;
		numero_inicial: natural := 25000000
	);
PORT( 
	Clock_in : IN std_logic;
	Clock : OUT std_logic := '0');
END Reloj;

ARCHITECTURE Structure OF Reloj IS
	SIGNAL counter : natural := numero_inicial;
	SIGNAL internal_clock : std_logic := '0';
BEGIN
	clock <= internal_clock;
	contador_p : process (Clock_in)
	begin
		if rising_edge(Clock_in) then
			if counter = 0 then
				counter <= numero_inicial;
				internal_clock <= not internal_clock;
			else 
				counter <= counter - 1;
			end if;
		end if;
		
	end process;
 
END Structure; 