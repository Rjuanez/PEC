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
			led_rojos : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			visores 	 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			pulsadors : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			switches : IN STD_LOGIC_VECTOR(7 DOWNTO 0));
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS
	--type BR_IO is array (255 downto 0) of std_logic_vector(15 downto 0);
	type BR_IO is array (32 downto 0) of std_logic_vector(15 downto 0) ; --quizas haria falta inicializar los valores a 0
   signal registro_io          : BR_IO;
	
BEGIN
	escritura: process(CLOCK_50) 
		variable not_wr : std_logic := '0';
	begin
		case addr_io(3 downto 0) is
			when "0111" => -- pulsadores 7
				not_wr := '1';
			when "1000" => --switches 8
				not_wr := '1';
			when others => 
				not_wr := '0';
		end case;
			
		if rising_edge(CLOCK_50) then 
			-- Actualizamos los pulsadores y switches
			registro_io(7)(3 downto 0) <= pulsadors;
			registro_io(8)(7 downto 0) <= switches;
			if wr_out = '1'  and not_wr = '0' then
				registro_io(conv_integer(addr_io)) <= wr_io;
			end if;
		end if;
	end process escritura;
	
	rd_io <= registro_io(conv_integer(addr_io));
	
	led_verdes <= registro_io(5)(7 downto 0);
	led_rojos <= registro_io(6)(7 downto 0);
	visores <= registro_io(10);
	
END Structure; 