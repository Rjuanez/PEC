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
			 stop_execution	: OUT STD_LOGIC; --seÃ±al para filtrar si se pueden hacer cambios en el estado del procesador: escritura a memoria, escritura a banco de registros
			 data_memory_acces: IN 	STD_LOGIC; -- señal que indica si se esta ejecutando algun ld/ldb o st/stb
			 
			 system_address	: IN	STD_LOGIC; -- señal para saber si la direccion de memoria a la que se esta accediendo es de sistema
			 system_mode		: IN	STD_LOGIC; -- señal para saber si estamos en modo sistema a modo usuario 
			 system_ins			: IN	STD_LOGIC; -- señal que indica si se esta ejecutando alguna instruccion que requiera de modo de sistema
			 sys_call			: IN	STD_LOGIC; --señal que indica si se esta ejecutando una instruccion de tipo calls
			 excep_UP_F			: OUT	STD_LOGIC -- señal para pasar al cilco de sistem des de FETCH
			 ); 
END exception_controller;


ARCHITECTURE Structure OF exception_controller IS

	signal exception_idS : STD_LOGIC_VECTOR(4 DOWNTO 0);


BEGIN
	
	-- señal que levanta las excepciones par pasar a system des del ciclo de FETCH
	excep_UP_F <=	'1' when exception_idS = "01010" else
						'1' when exception_idS = "10001" else
						'0';
	

	excep_UP <=		'1' when exception_idS = "00001" else
						'1' when exception_idS = "01011" else
						'1' when exception_idS = "00000" else
						'1' when exception_idS = "00100" else
						'1' when exception_idS = "01110" else
						'1' when exception_idS = "01101" else
						'1' when exception_idS = "01111" else
						'0';
	-- esto puede dar problemas, dado que permite pasar directamente al ciclo de sistem des de fetch
	stop_execution <= '1' when exception_idS = "00100"  else
							'1' when exception_idS = "00000"  else
							'1' when exception_idS = "00001"  else
							'1' when exception_idS = "10001"  else
							'1' when exception_idS = "01101"  else
							'1' when exception_idS = "01011"  else
							'1' when exception_idS = "01010"  else
							'0';
						
	--esto tiene que serguir un determinado orden, NO REORDENAR sin pensar
	exception_idS <= 	"01011" when system_address = '1' and system_mode = '0' and data_memory_acces = '1' and excep_enabled = '1' and fetch = '0' else
							"01010" when system_address = '1' and system_mode = '0' and excep_enabled = '1' and fetch = '1' else
							"01101" when system_ins = '1' and system_mode = '0' and excep_enabled = '1' and fetch = '0' else
							"00000" when sys_call = '1' and system_mode = '1' and excep_enabled = '1' and fetch = '0'  else --intento de instruccion call dentro de modo sistema
							"01110" when sys_call = '1' and excep_enabled = '1'  and fetch = '0' else
							"00100" when div_zero = '1' and excep_enabled = '1' and fetch = '0' else
							"00000" when illegal_inst = '1' and excep_enabled = '1' and fetch = '0' else
							"10001" when invalid_address = '1' and fetch = '1' and excep_enabled = '1' else
							"00001" when invalid_address = '1' and isLDorST = '1' and excep_enabled = '1' and fetch = '0' else
							"01111" when intr = '1' and excep_enabled = '1' else --interrupciones
							"10000"; -- valor arbitrario
		
				
	-- realmente no se si hace falta el proceso, pero dado que cuando se entra en el ciclo de systema siempre tiene que haber un rising edge tampoco pasa nada si esta
	process (clk) begin
		if rising_edge(clk) then
			--if system_act = '1' then
				exception_id <= exception_idS(3 DOWNTO 0);
				
			--end if;
		end if;
	end process;
	
	
END Structure;