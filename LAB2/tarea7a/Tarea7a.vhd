LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Tarea7a IS
 PORT( CLOCK_50 : IN std_logic;
		 HEX0 : OUT std_logic_vector(6 downto 0));
END Tarea7a;

ARCHITECTURE Structure OF Tarea7a IS
		
		SIGNAL prescaler : STD_logic_vector(24 downto 0);
		
BEGIN
	contador_p : process(CLOCK_50) begin 
		if raising_edge(CLOCK_50) then 
			prescaler <= prescaler + 1;
			if (prescaler = 0)
		end if;
		
	end process contador_p;
	
END Structure; 