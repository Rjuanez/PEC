LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Tarea7a IS
 PORT( CLOCK_50 : IN std_logic;
		 HEX0 : OUT std_logic_vector(6 downto 0));
END Tarea7a;

ARCHITECTURE Structure OF Tarea7a IS
		
		component driver7Segmentos IS
		PORT( codigoCaracter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 bitsCaracter : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
		END component;
		
		SIGNAL num : STD_logic_vector(3 downto 0) := "0000";
		SIGNAL contador : STD_logic_vector(25 downto 0):=(others=>'0');

		SIGNAL mi_clock_1Hz : STD_logic;
		
BEGIN
	segment: driver7Segmentos
		port map(	codigoCaracter => num,
						bitsCaracter => HEX0);
						
	contador_p: process(clocK_50)
	begin
			if rising_edge(CLOCK_50) then 
				contador<=contador+1;
				mi_clock_1Hz<=contador(25);
			end if;
	end process;
	
	contadorClock1Hz_p: process(mi_clock_1Hz)
	begin
		if rising_edge(mi_clock_1Hz) then 
			if(num = "1001")then
				num <= "0000";
			else 
				num <= num + 1;
			end if;
		end if;
	end process;
	
END Structure; 