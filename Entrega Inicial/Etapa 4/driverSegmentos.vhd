LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY driverSegmentos IS
 PORT( codigoSegmentos : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 HEX0 : OUT std_logic_vector(6 downto 0);
		 HEX1 : OUT std_logic_vector(6 downto 0);
		 HEX2 : OUT std_logic_vector(6 downto 0);
		 HEX3 : OUT std_logic_vector(6 downto 0));
END driverSegmentos;

ARCHITECTURE Structure OF driverSegmentos IS
	component driver7Segmentos IS
	 PORT( codigoCaracter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 bitsCaracter : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
		END component;
BEGIN
	h0: driver7Segmentos port map ( codigoCaracter => codigoSegmentos(3 downto 0), bitsCaracter => HEX0);
	h1: driver7Segmentos port map ( codigoCaracter => codigoSegmentos(7 downto 4), bitsCaracter => HEX1);
	h2: driver7Segmentos port map ( codigoCaracter => codigoSegmentos(11 downto 8), bitsCaracter => HEX2);
	h3: driver7Segmentos port map ( codigoCaracter => codigoSegmentos(15 downto 12), bitsCaracter => HEX3);
 
END Structure; 