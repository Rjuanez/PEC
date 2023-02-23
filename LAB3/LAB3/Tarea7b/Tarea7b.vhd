LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
ENTITY Tarea7b IS
 PORT( CLOCK_50 : IN std_logic;
 HEX0 : OUT std_logic_vector(6 downto 0);
 HEX1 : OUT std_logic_vector(6 downto 0);
 HEX2 : OUT std_logic_vector(6 downto 0);
 HEX3 : OUT std_logic_vector(6 downto 0);
 KEY : IN std_LOGIC_VECTOR(0 downto 0));
END Tarea7b;

ARCHITECTURE Structure OF Tarea7b IS
	COMPONENT driverSegmentos IS
	 PORT( codigoSegmentos : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 HEX0 : OUT std_logic_vector(6 downto 0);
			 HEX1 : OUT std_logic_vector(6 downto 0);
			 HEX2 : OUT std_logic_vector(6 downto 0);
			 HEX3 : OUT std_logic_vector(6 downto 0));
	END COMPONENT;
	
	COMPONENT Reloj IS
	PORT( 
		Clock_in : IN std_logic;
		Clock : OUT std_logic );
	END COMPONENT;
	
	SIGNAL clock_1Hz : std_logic; 
	SIGNAL counter : std_LOGIC_VECTOR(15 downto 0);
	SIGNAL ack : std_logic := '0';
	SIGNAL req : std_logic := '0';
	
BEGIN
	Reloj1 : Reloj port map (Clock_in => Clock_50, Clock => clock_1Hz);
	Segments: driverSegmentos port map (codigoSegmentos => counter, HEX0 => HEX0, HEX1 => HEX1, HEX2 => HEX2, HEX3 => HEX3);
	
	contador_p: process(clock_1Hz)
	begin
--		if rising_edge(clock_1Hz) and req = '0' then
--			counter <= counter + 1;
--			ack <= '0';
--		elsif req = '1' then
--			counter <= (others => '0');
--			ack <= '1';
--		end if;
		if rising_edge(clock_1Hz) then
			if req = '0' then
				counter <= counter + 1;
				ack <= '0';
			else 
				counter <= (others => '0');
				ack <= '1';
			end if;
		end if;


		
	end process;
	
	reset_p: process(KEY(0), ack)
	begin
		if falling_edge(KEY(0)) then
			req <= '1';
		end if;
		if ack = '1' then
			req <= '0';
		end if;
		
	end process;

	
END Structure;