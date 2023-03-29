LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


ENTITY alu IS
    PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
          w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END alu;


ARCHITECTURE Structure OF alu IS
BEGIN
	
	with op select
		w <= y when "00", --MOVI
			  (y(7 DOWNTO 0) & x(7 DOWNTO 0)) when "01", --MOVHI
			  x + y when others; --SUMA: "10"

END Structure;