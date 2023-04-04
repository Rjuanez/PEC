LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY controladores_IO IS
	PORT (boot : IN STD_LOGIC;
			CLOCK_50 : IN std_logic;
			addr_io : IN std_logic_vector(7 downto 0);
			wr_io : in std_logic_vector(15 downto 0);
			rd_io : out std_logic_vector(15 downto 0);
			wr_out : in std_logic;
			rd_in : in std_logic;
			led_verdes : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			led_rojos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS
	--type BR_IO is array (255 downto 0) of std_logic_vector(15 downto 0);
	type BR_IO is array (32 downto 0) of std_logic_vector(15 downto 0) ; --quizas haria falta inicializar los valores a 0
   signal registro_io          : BR_IO;
	
BEGIN
	escritura: process(CLOCK_50) 
	begin
		if rising_edge(CLOCK_50) then 
			if wr_out = '1' then
				registro_io(conv_integer(addr_io)) <= wr_io;
			end if;
		end if;
	end process escritura;
	
	rd_io <= registro_io(conv_integer(addr_io)) when rd_in = '1';
	
	led_verdes <= registro_io(5)(7 downto 0);
	led_rojos <= registro_io(6)(7 downto 0);
	
END Structure; 