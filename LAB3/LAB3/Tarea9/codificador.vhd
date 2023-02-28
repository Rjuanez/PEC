LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY codificador IS
 PORT( codigoCaracter : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		 bitsHex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 bitsMorse : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
		 final : OUT integer);
END codificador;

ARCHITECTURE Structure OF codificador IS
BEGIN
	with codigoCaracter select
	bitsHex <=  "0001000" when "000", -- A
					"0000011" when "001", -- b
					"1000110" when "010", -- C
					"0100001" when "011", -- D
					"0000110" when "100", -- E
					"0001110" when "101", -- F
					"0010000" when "110", -- G
					"0001001" when others;-- H
with codigoCaracter select
	bitsMorse <= "000000Z011101" when "000", -- A . -
					 "00Z0101010111" when "001", -- b - . . .
					 "Z010111010111" when "010", -- C - . - .
					 "0000Z01010111" when "011", -- D - . .
					 "0000000000Z01" when "100", -- E .
					 "00Z0101110101" when "101", -- F . . - .
					 "00Z0101110111" when "110", -- G - - .
					 "0000Z01010101" when others;-- H . . . .
with codigoCaracter select
	final <=  6 when "000", -- A . -
				  10 when "001", -- b - . . .
				  12 when "010", -- C - . - .
				   8 when "011", -- D - . .
				   2 when "100", -- E .
				  10 when "101", -- F . . - .
				  10 when "110", -- G - - .
					8 when others;-- H . . . .

 
END Structure; 