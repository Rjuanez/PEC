LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;



ENTITY exception_controller IS
    PORT (boot					: IN	STD_LOGIC;
			 clk					: IN	STD_LOGIC;
			 exception_id		: OUT	STD_LOGIC_VECTOR(3 DOWNTO 0); --bus que se usa para enviarle el numero de excecion a el regflie
          --system_act			: IN	STD_LOGIC; -- seÃ±al que se usa para saber si estamos en el ciclo de sistema
			 -- SEÃ‘ALES DE ENTRADA DE EXCecion
			 intr					: IN	STD_LOGIC;
			 div_zero			: IN  STD_LOGIC;
			 excep_UP			: OUT	STD_LOGIC; -- seÃ±al que se usa para indicar si hay alguna excepcion
			 excep_enabled		: IN 	STD_LOGIC; -- seÃ±al que viene del banco de registros para saber si estan activadas las excepeciones
			 invalid_address	: IN	STD_LOGIC; -- seÃ±al que viene del memory controller para saber si le ha llegado alguna direccion invalida
			 isLDorST			: IN	STD_LOGIC; -- seÃ±al que viene del control_l para saber si se esta ejecutando un load o un store
			 fetch				: IN	STD_LOGIC; -- seÃ±al que viene de unidad de control (multi) que indiica si se est cargando un nuevo pc
 			 illegal_inst		: IN 	STD_LOGIC; -- seÃ±al que viene de control_l para saber si hay una instruccion ilegal
			 stop_execution	: OUT STD_LOGIC --seÃ±al para filtrar si se pueden hacer cambios en el estado del procesador: escritura a memoria, escritura a banco de registros
			 ); 
END exception_controller;


ARCHITECTURE Structure OF exception_controller IS

	signal exception_idS : STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN

	excep_UP <= '0' when exception_idS = "1000" else
					'1';
					
	stop_execution <= '1' when exception_idS = "0100"  else
							'1' when exception_idS = "0000"  else
							'1' when exception_idS = "0001"  else
							'0';
						
	
	exception_idS <= "0100" when div_zero = '1' and excep_enabled = '1' else
						  "0000" when illegal_inst = '1' and excep_enabled = '1' else
						  "0001" when invalid_address = '1' and fetch = '1' and excep_enabled = '1' else
						  "0001" when invalid_address = '1' and isLDorST = '1' and excep_enabled = '1' else
						  "1111" when intr = '1' and excep_enabled = '1' else --interrupciones
						  "1000"; -- valor arbitrario
		
				
	-- realmente no se si hace falta el proceso, pero dado que cuando se entra en el ciclo de systema siempre tiene que haber un rising edge tampoco pasa nada si esta
	process (clk) begin
		if rising_edge(clk) then
			--if system_act = '1' then
				exception_id <= exception_idS;
				
			--end if;
		end if;
	end process;
	
	
END Structure;