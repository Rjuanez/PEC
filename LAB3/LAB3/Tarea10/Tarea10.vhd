LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Tarea10 IS
 PORT ( CLOCK_50 : IN STD_LOGIC;
		  KEY : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		  LEDR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END Tarea10;

ARCHITECTURE Structure OF Tarea10 IS
BEGIN
	 process (CLOCK_50) begin
		 if (rising_edge(CLOCK_50)) then
			LEDR(1) <= SW(1);
			if (SW(0) = '0') then
				LEDR(0) <= not(KEY(0)) and not(KEY(1));
			else
				LEDR(0) <= not(KEY(0)) or not(KEY(1));
			end if;
		 end if;
	 end process;
END Structure; 