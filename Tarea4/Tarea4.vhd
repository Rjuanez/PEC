LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Tarea4 IS
 PORT( SW : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END Tarea4;

ARCHITECTURE Structure OF Tarea4 IS
BEGIN
	HEX0 <= "0111111" when SW="000" else
			  "1111001" when SW="001" else
			  "0100100" when SW="010" else
			  "0110000" when SW="011" else
			  "0011001" when SW="100" else
			  "0010010" when SW="101" else
			  "0000010" when SW="110" else
			  "1111000";
END Structure; 