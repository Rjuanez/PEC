LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY timmer IS
	generic (
		numero_inicial: natural := 500000000
	);
PORT( 
	boot		: IN STD_logic;
	Clock_in : IN std_logic;
--	Clock    : OUT std_logic := '0';
	intr		: OUT std_logic;
	inta		: IN std_logic);
END Timmer;

ARCHITECTURE Structure OF Timmer IS
	SIGNAL counter : natural := numero_inicial;
	SIGNAL internal_clock, tick : std_logic := '0';
BEGIN
--	clock <= internal_clock;

	 process (inta, tick) begin
		if inta = '1' then
			intr <= '0';
		elsif tick = '1' then
			intr <= '1';
		end if;
	end process;
	
	
	contador_p : process (Clock_in)
	begin
		if rising_edge(Clock_in) then
		if boot = '1' then
			counter <= numero_inicial;
		end if;
		tick <= '0';
			if counter = 0 then
				counter <= numero_inicial;
				internal_clock <= not internal_clock;
				if internal_clock = '0' then -- el valor es invertido dado que al ser un proces no se hace el cambio hasta que se acaba
					tick <= '1';
				end if;
			else 
				counter <= counter - 1;
			end if;
		end if;
		
	end process;
 
END Structure; 