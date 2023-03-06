LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; --Esta libreria sera necesaria si usais conversiones CONV_INTEGER

ENTITY regfile IS
    PORT (clk    : IN  STD_LOGIC;
          wrd    : IN  STD_LOGIC;
          d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END regfile;


ARCHITECTURE Structure OF regfile IS
	
   type BANCO_REGISTROS is array (7 downto 0) of std_logic_vector(15 downto 0);
   signal registro          : BANCO_REGISTROS;
	 
BEGIN
	escritura: process(clk) 
	begin
		if rising_edge(clk) then 
			if wrd = '1' then
				registro(conv_integer(addr_d)) <= d;
			end if;
		end if;
	end process escritura;

	a <= registro(conv_integer(addr_a));

END Structure;