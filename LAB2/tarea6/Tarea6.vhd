LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Tarea6 IS
 PORT( KEY : IN std_logic_vector(3 downto 3);
		 SW : IN std_logic_vector(0 downto 0);
		 HEX0 : OUT std_logic_vector(6 downto 0);
		 HEX1 : OUT std_logic_vector(6 downto 0);
		 HEX2 : OUT std_logic_vector(6 downto 0);
		 HEX3 : OUT std_logic_vector(6 downto 0);
		 LEDR : OUT std_logic_vector(2 downto 0));
END Tarea6;

ARCHITECTURE Structure OF Tarea6 IS
	component driver7Segmentos IS
	PORT( codigoCaracter : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			bitsCaracter : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END component;
	
	SIGNAL codigoGeneral : STD_LOGIC_VECTOR(23 DOWNTO 0) := "111111111111000001010011";
--SIGNAL codigoGeneral : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000001010011";
	SIGNAL contador : STD_LOGIC_VECTOR(2 DOWNTO 0):="000";
	

BEGIN
	
	contador_p : process(KEY(3)) begin 
		if falling_edge(KEY(3)) then 
			if (SW(0) = '1') then 
				contador <= contador - 1;
				codigoGeneral <= to_stdlogicvector(to_bitvector(codigoGeneral) ROR 3);
			else
				contador <= contador + 1;
				codigoGeneral <=  to_stdlogicvector(to_bitvector(codigoGeneral) ROL 3);
			end if;
		end if;
		
	end process contador_p;
	
	
	LEDR <= contador;
	
	
--	with contador select
--		codigoGeneral <= "000001010011" when "000",
--								"001010011111" when "001",
--								"010011111111" when "010",
--								"011111111111" when "011",
--								"111111111111" when "100",
--								"111111111000" when "101",
--								"111111000001" when "110",
--								"111000001010" when others;			
			
	
	Seg0: driver7Segmentos
		Port Map(codigoCaracter=> codigoGeneral(2 DOWNTO 0),
					bitsCaracter => HEX0);
	Seg1: driver7Segmentos
		Port Map(codigoCaracter=> codigoGeneral(5 DOWNTO 3),
					bitsCaracter => HEX1);
	Seg2: driver7Segmentos
		Port Map(codigoCaracter=> codigoGeneral(8 DOWNTO 6),
					bitsCaracter => HEX2);
	Seg3: driver7Segmentos
		Port Map(codigoCaracter=> codigoGeneral(11 DOWNTO 9),
					bitsCaracter => HEX3);
	
END Structure; 