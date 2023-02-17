LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Tarea2 IS
 PORT( SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
 KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 LEDR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END Tarea2;

ARCHITECTURE Structure OF Tarea2 IS
BEGIN
		with SW  select
			LEDR(1) <= not(KEY(0)) when "00",
						  not(KEY(1)) when "01",
						  not(KEY(2)) when "10",
						  not(KEY(3)) when others;

		LEDR(0) <= not(KEY(0)) when SW(0)='0' and SW(1)='0' else
					  not(KEY(1)) when SW(0)='1' and SW(1)='0' else
					  not(KEY(2)) when SW(0)='0' and SW(1)='1' else
					  not(KEY(3));
END Structure; 