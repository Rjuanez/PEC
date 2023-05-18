LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;



ENTITY exception_controller IS
    PORT (boot					: IN	STD_LOGIC;
			 clk					: IN	STD_LOGIC;
			 exception_id		: OUT	STD_LOGIC_VECTOR(3 DOWNTO 0); --bus que se usa para enviarle el numero de excecion a el regflie
          --system_act			: IN	STD_LOGIC; -- señal que se usa para saber si estamos en el ciclo de sistema
			 -- SEÑALES DE ENTRADA DE EXCecion
			 intr					: IN	STD_LOGIC;
			 div_zero			: IN  STD_LOGIC;
			 
			 excep_UP			: OUT	STD_LOGIC; -- señal que se usa para indicar si hay alguna excepcion
			 excep_enabled		: IN 	STD_LOGIC -- señal que viene del banco de registros para saber si estan activadas las excepeciones
 			 );
END exception_controller;


ARCHITECTURE Structure OF exception_controller IS

	signal exception_idS : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

	excep_UP <= '0' when exception_idS = "0000" else
					'1';
	
	exception_idS <= "1111" when intr = '1' and excep_enabled = '1' else --interrupciones
						  "0100" when div_zero = '1' and excep_enabled = '1' else
						  "0000";
		
				
	-- realmente no se si hace falta el proceso, pero dado que cuando se entra en el ciclo de systema siempre tiene que haber un rising edge tampoco pasa nada si esta
	process (clk) begin
		if rising_edge(clk) then
			--if system_act = '1' then
				exception_id <= exception_idS;
			--end if;
		end if;
	end process;
	
	
END Structure;