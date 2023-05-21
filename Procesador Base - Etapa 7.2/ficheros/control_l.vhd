LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use work.const_alu.all;
USE work.func_ayuda_control_pkg.all;

ENTITY control_l IS
    PORT (ir        		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        		: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          ldpc      		: OUT STD_LOGIC;
          wrd       		: OUT STD_LOGIC;
          addr_a    		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      		: OUT STD_LOGIC; 
          in_d      		: OUT STD_LOGIC_VECTOR(2 downto 0);
          immed_x2  		: OUT STD_LOGIC;
          word_byte 		: OUT STD_LOGIC;
			 Rb_N		  		: OUT STD_LOGIC;
			 addr_io	  		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in	  		: OUT STD_LOGIC;
			 wr_out	  		: OUT STD_LOGIC;
			 tknbr	  		: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			 Z			  		: IN  STD_LOGIC;
			 sys_a	  		: OUT STD_LOGIC;
			 wr_sys	  		: OUT STD_LOGIC;
			 system_act		: IN  STD_LOGIC;
			 inta		  		: OUT STD_LOGIC;
			 reg_op	  		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 illegal_inst	: OUT STD_LOGIC;
			 system_ins		: OUT	STD_LOGIC;
			 sys_call		: OUT	STD_LOGIC 
			 );
END control_l;


ARCHITECTURE Structure OF control_l IS
	SIGNAL arit    : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL cmp     : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL special : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL jumps : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL ext_arit: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL mov		: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL in_out	: STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
		--CALLS: debe salir por a el registro ra, llegar a la alu y que esta deje pasar el valor para que después entre por la d asigandno como direccion el registro  y darle permisos para que lo escriba
		--señal que indica si llega una instruccion de sys_call
		sys_call <= '1' when ir(15 DOWNTO 12) = "1010" and ir(5 DOWNTO 0) = "000111" else
						'0';
		
		
		-- señal para saber si se esta ejecutando algo instruccion que requiere modo sistema, para que asi excepicon controller pueda tirar una excepcion 
		
		system_ins <=	'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101000" else -- GETIID
							'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100000" else -- EI
							'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100001" else -- DI
							'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100100" else -- RETI
							'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "110000" else -- WRS
							'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101100" else -- RDS
							'0';
		
		-- GETIID: inta = '1' y in_d se pone para que entre rd_io
		inta <= '1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101000" else '0';
		-- MODO SITEMA: cuando esta en el ciclo de sistema, lo primero que tiene que hacer es desactivar las interrupciones
		-- hay que guardar pc en S51
		-- hay que poner S5 en pc, por tanto hay que activat sys_a = '1' y tknbrn 

		--RETI: esta instruccion restaura S0 en S7 y ademas envia el valor del registro especial de S1 a PC. ESto lo hace a traves del jump dir. Por tanto, como jump dir esta conectadao a la salida a,
		-- 	  solo se tiene que hacer que por la salida a salga s1, por tanto sys_a = '1' y reg_op ="100" y que el siguiente pc sea jump_dir

		-- EI /DI envian "001" i "010" respecitvamente, la operacion llega hasta el regflie y segnu sea hace una cosa o otra.
		
		--primero hay que poner la señal de system_act, porque siempre hay instruciones ejecutandose y por tanto hay riesgo que no llegue a activarse la op de registro, dado que
		-- haya coincidencia de instruccion y no llegue a comprovar si system_act esta en "1".
		reg_op <= "101" when system_act = '1' else --SYSTEM
					 "001" when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100000" else -- EI
					 "010" when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100001" else -- DI
					 "100" when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100100" else --RETI
					 "000";
		-- RDS: cuando se quiere leer el banco de registros especiales, se tiene que sacar por a el valor de banco de registros especiales y despues meter por d hacia el banco de registros normal
		-- WRD: cuando se quiere escribir en el banco de registros especiales, se tiene que sacar por a el valor del banco de registro sy meter por d el valor para el banco de regsitros especiales
		-- Para ambas instrucciones se necesita que la alu deje pasar el valor por x hasta w y despues entre la w por la d del regfile. Para eso se usa la operacion de OUT_X, por la alu.
		-- para que la salida de la w llegue a la d, tiene que estar en in_d "00", por tanto no hay que cambiar nada mas, dado que es el valor por defecto.
		
		-- sys_a es la señal que permite que por puerto a del regfile, salga el valor pertinente del registro de sistema
		sys_a	 <=	'1' when system_act = '1' else
						'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101100" else -- RDS
						'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100100" else --RETI
						'0';
						
		wr_sys <=	'1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "110000" else -- WRS
						'1' when ir(15 DOWNTO 12) = "1010" and ir(5 DOWNTO 0) = "000111" else -- CALLS
						'0';
		
		--señal de control del sguiente pc a cargar. "00": pc+2 || "01" pc + 2 + inmediato || "10" pc = jumpdir
		tknbr <= "10" when system_act = '1' else -- cargamos jumpdir cuando estamos en modo sistema
					"01" when hay_que_hacer_salto_relativo(ir => ir, z => Z) else
					"10" when hay_que_hacer_salto_absoluto(ir => ir, z => Z) else
					"10" when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "100100" else --RETI
					"00";
		
		--señal de control de excepción por Instrucción Ilegal
		--Se comprueban todos los caso inexistentes o que no han llegado a ser implementados
		illegal_inst <= '1' when ir(15 DOWNTO 12) = "0001" and (ir(5 DOWNTO 3) = "010" or ir(5 DOWNTO 3) = "110" or ir(5 DOWNTO 3) = "111") else 			-- Comparaciones
							 '1' when ir(15 DOWNTO 12) = "1000" and (ir(5 DOWNTO 3) = "011" or ir(5 DOWNTO 3) = "110" or ir(5 DOWNTO 3) = "111") else 			-- Extension aritmetica
							 '1' when ir(15 DOWNTO 12) = "1001" and ir(5 DOWNTO 3) = "110" else																		  			-- Op/Cmp Float
							 '1' when ir(15 DOWNTO 12) = "1010" and (ir(2 DOWNTO 0) = "010" or ir(2 DOWNTO 0) = "101" or ir(2 DOWNTO 0) = "110") else 			-- Ruptura de secuencia (no implementadas)
							 '1' when ir(15 DOWNTO 12) = "1010" and ir(2 DOWNTO 0) = "011" and ir(11 DOWNTO 9) /= "000" else 								  			-- Ruptura de secuencia (JMP incorrecto)
							 '1' when ir(15 DOWNTO 12) = "1010" and ir(2 DOWNTO 0) = "111" and ir(11 DOWNTO 9) /= "000" else 								  			-- Ruptura de secuencia (CALLS incorrectas)
							 '1' when ir(15 DOWNTO 12) = "1010" and ir(5 DOWNTO 3) /= "000" else 								  									  			-- Reservadas futura ampliación
							 '1' when ir(15 DOWNTO 12) = "1111" and ir(5) = '0' else 								  									  				  			-- Reservadas futura ampliación
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "00010" or ir(4 DOWNTO 0) = "00011") else							  			-- Inst Especiales 1
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "00101" or ir(4 DOWNTO 0) = "00110" or ir(4 DOWNTO 0) = "00111") else	-- Inst Especiales 2
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "01001" or ir(4 DOWNTO 0) = "01010" or ir(4 DOWNTO 0) = "01011") else	-- Inst Especiales 3
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "01101" or ir(4 DOWNTO 0) = "01110" or ir(4 DOWNTO 0) = "01111") else	-- Inst Especiales 4
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "10001" or ir(4 DOWNTO 0) = "10010" or ir(4 DOWNTO 0) = "10011") else	-- Inst Especiales 5
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "11001" or ir(4 DOWNTO 0) = "11010" or ir(4 DOWNTO 0) = "11011") else	-- Inst Especiales 6
							 '1' when ir(15 DOWNTO 12) = "1111" and (ir(4 DOWNTO 0) = "11100" or ir(4 DOWNTO 0) = "11101" or ir(4 DOWNTO 0) = "11110") else	-- Inst Especiales 7
							 '1' when ir(15 DOWNTO 12) = "1111" and ir(11 DOWNTO 6) /= "000000" and (ir(4 DOWNTO 0) = "00000" or ir(4 DOWNTO 0) = "00001" or ir(4 DOWNTO 0) = "00100") else -- Inst Especiales (incorrect: EI, DI, RETI)
							 '1' when ir(15 DOWNTO 12) = "1111" and ir(8 DOWNTO 6) /= "000" and ir(4 DOWNTO 0) = "01000" else 																				 	 -- Inst Especiales (incorrect: GETIID)
							 '1' when ir(15 DOWNTO 12) = "1111" and ir(11 DOWNTO 9) /= "000" and ir(4 DOWNTO 0) = "11000" else 																				 -- Inst Especiales (incorrect: FLUSH)
							 '1' when ir(15 DOWNTO 12) = "1111" and ir(11 DOWNTO 6) /= "111111" and ir(4 DOWNTO 0) = "11111" else 																			 -- Inst Especiales (incorrect: HALT)
							 '0';
							 
		
	with ir(15 DOWNTO 12) select -- Rb_N pone en la entrada y de la alu la salida del banco de registros si es 1
		Rb_N <= '1' when "0000",  	-- Aritmeticas
			'1' when "0001",		  	-- Comparaciones
			'1' when "1000",			--Extension aritmeticas
			'1' when "0110",			-- Branch
			'1' when "1010",			-- Saltos Jxx
			'0' when others;

	 --Permiso de escritura en el banco de registros
		wrd <= '1' when "0101" = ir(15 DOWNTO 12) else  -- MOVI, MOVHI
				 '1' when "0011"  = ir(15 DOWNTO 12) else-- Load 
				 '1' when "1101" = ir(15 DOWNTO 12) else -- Load Byte
				 '1' when "0000" = ir(15 DOWNTO 12) else -- Aritmeticas
				 '1' when "0001" = ir(15 DOWNTO 12) else -- Comparaciones
				 '1' when "1000" = ir(15 DOWNTO 12) else -- Extension aritmetica
				 '1' when "0010" = ir(15 DOWNTO 12) else -- Addi
				 '1' when "1010" = ir(15 DOWNTO 12) and ir(2 DOWNTO 0) = "100"  else --JAL
				 '1' when "0111" = ir(15 DOWNTO 12) and ir(8) = '0'  else --IN
				 '1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101100" else -- RDS
				 '1' when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101000" else --GETIID
				 '0'; -- Stores
				 
	with ir(15 DOWNTO 12) select -- Permiso escritura de memoria
		wr_m <='1' when "0100", --Store
				 '1' when "1110",  -- Store Byte
				 '0' when others;
				 
	 -- Entrada del banco de regitros: 001 : memoria, 000: alu, 010: pc+2
		in_d <="100" when system_act = '1' else
				 "011" when ir(15 DOWNTO 12) = "1111" and ir(5 DOWNTO 0) = "101000" else --GETIID
				 "001" when ir(15 DOWNTO 12) = "0011" else --Load
				 "001" when ir(15 DOWNTO 12) = "1101" else --Load Byte
				 "010" when ir(15 DOWNTO 12) = "1010" and ir(2 DOWNTO 0) = "100" else -- JAL
				 "011" when ir(15 DOWNTO 12) = "0111" else -- IN
				 "000" ; 
				 
	with ir(15 DOWNTO 12) select -- Hay que desplazar el immediato o no a una posición par
		immed_x2 <= '1' when "0011", --Load
						'1' when "0100", --Store
						'0' when others;
		
	with ir(15 DOWNTO 12) select --Si es 1 se accede a un byte
		word_byte <= '1' when "1101", --Load Byte
						 '1' when "1110",  -- Store Byte
						 '0' when others;
	with ir(15 DOWNTO 12) select
		addr_a <= ir(11 DOWNTO 9) when "0101", -- MOVI, MOVHI
					 ir(8 DOWNTO 6) when others; --Loads, Stores, arit, cmp, ext_arit, Jxx, calls
				 
	with ir(15 DOWNTO 12) select
		addr_b <= ir(11 DOWNTO 9) when "0100", -- Store
					 ir(11 DOWNTO 9) when "1110", -- Store Byte
					 ir(11 DOWNTO 9) when "0110", -- branch
					 ir(11 DOWNTO 9) when "1010", -- Jxx
					 ir(11 DOWNTO 9) when "0111", -- IN
					 ir(2 DOWNTO 0) when others; -- Arit, cmp and ext_arit
				 
	addr_d <= 	"011" when ir(15 DOWNTO 12) = "1010" and ir(5 DOWNTO 0) = "000111" else -- en caso de que hagamos una calls, utilizamos el ciclo de DEMW para guardar en s3 el valor de ra, por tanto le decmios la direccion de S3
					ir(11 DOWNTO 9); -- Ever
	
	with ir(15 DOWNTO 0) select
		ldpc <= '0' when "1111111111111111", --HALT
				  '1' when others;
				  
	with ir(15 DOWNTO 12) select
		immed(15 downto 0)  <=(15 downto 8 => ir(7)) & ir(7 downto 0) when "0101", -- MOVI, MOVHI (immed: 8 bits)
									 (15 downto 6 => ir(5)) & ir(5 downto 0) when others; --Loads, Stores and addi (immed: 6 bits)
									 
	-- seleciona la operacion a ejecutar cuando se usan instrucciones especiales
	with ir(5 DOWNTO 0) select 
		special <= OUT_X when "101100", -- RDS : deja pasar el valor que le viene por x hacia w 
					  OUT_X when "110000", -- WRS
					  NO_OP when others;
					  
	with ir(5 DOWNTO 0) select
		jumps <= OUT_X when "000111", -- CALLS
					NO_OP when others;
				  

	with ir(5 DOWNTO 3) select 
		arit <= AND_OP when "000",
				  OR_OP when "001",
				  XOR_OP when "010",
				  NOT_OP when "011",
				  ADD_OP when "100",
				  SUB_OP when "101",
				  SHA_OP when "110",
				  SHL_OP when others;
	
	with ir(5 DOWNTO 3) select 
		cmp <= CMPLT when "000",
				 CMPLE when "001",
				 "XXXXX" when "010", --NOTHING
				 CMPEQ when "011",
				 CMPLTU when "100",
				 CMPLEU when "101",
				 "XXXXX" when "110",
				 "XXXXX" when others;
	
	with ir(5 DOWNTO 3) select 
		ext_arit <= MUL when "000",
					   MULH when "001",
					   MULHU when "010",
					   "XXXXX" when "011",
					   DIV when "100",
					   DIVU when "101",
					   "XXXXX" when "110",
					   "XXXXX" when others;
						
	with ir(8 DOWNTO 8) select 
		mov <= MOVI when "0",
				 MOVHI when others;
	
	with ir(8 DOWNTO 8) select 
		in_out <= IN_OP when "0",
					 OUT_OP when others;
					 
	addr_io <= ir(7 DOWNTO 0); --IN/OUT bus direction
	
	rd_in <= '1' when ir(15 DOWNTO 12) & ir(8) = "01110" else --IN
				'0';
			
	wr_out <= '1' when ir(15 DOWNTO 12) & ir(8) = "01111" else --OUT
				 '0';
		
	with ir(15 DOWNTO 12) select
		op <= mov when "0101", -- MOVI, MOVHI
				special when "1111",
				arit when "0000",
				cmp when "0001",
				ext_arit when "1000",
				in_out when "0111",
				jumps when "1010",
				ADDI when "0010",
				LD when "0011",
				ST when "0100",
				LDB when "1101",
				STB when others;
				
	
	
END Structure;