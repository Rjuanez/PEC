LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
    PORT (clk      : IN  STD_LOGIC;
          op       : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd      : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
          addr_a   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          immed_x2 : IN  STD_LOGIC;
          datard_m : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad  : IN  STD_LOGIC;
          pc       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          in_d     : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
          addr_m   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Rb_N		 : IN	 STD_LOGIC;
			 Z			 : OUT STD_LOGIC;
			 jump_dir : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 rd_io  	 : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 int_act  : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 wr_io	 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END datapath;


ARCHITECTURE Structure OF datapath IS

	COMPONENT alu IS
    PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
          w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z	 : OUT STD_LOGIC);
	END component;

	COMPONENT regfile IS
    PORT (clk    : IN  STD_LOGIC;
          wrd    : IN  STD_LOGIC_VECTOR(1 downto 0);
          d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 b      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 int_act: IN STD_LOGIC_VECTOR(2 downto 0));
	END component;
	
	signal aTOx : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal TOd : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal mux1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal TOy : STD_LOGIC_VECTOR(15 downto 0);
	signal wTO : STD_LOGIC_VECTOR(15 downto 0);
	signal bTO : STD_LOGIC_VECTOR(15 downto 0);

BEGIN
	
	alu0: alu port map(x => aTOx, y => TOy, op => op, w => wTO, z => Z);
	reg0: regfile port map(clk => clk, wrd => wrd, d => TOd, addr_a => addr_a, addr_b => addr_b, addr_d => addr_d, a => aTOx, b => bTO, int_act => int_act);
	 
	 
	-- USO: entrada "y" de la alu,
	-- FUNC:  se pone en la entrada de la alu "y" la salida de el banco de registros cuando hay operaciones que requiren entrar en la alu, Rb_N vien de control_l,
	-- sino entra o bien el inmediato de la instruccion con extension de signo o el inmediato multiplicado por dos con extenison de signo. 
	TOy <= bTO when Rb_N = '1' else 
			 immed when immed_x2 = '0' else
			 immed(14 downto 0) & '0'; --multiplica por 2
			 
	-- USO: selecciona la entrada del BR dependiendo de la instruccion que estamos ejecutando
	-- FUNC: camino des de control_l,"00": ALU op,  "01" : LD, LDB; "10" : JAL; "11" : IN
	with in_d select
		TOd <= wTO when "00", -- enviamos  alu
				 datard_m when "01", -- enviamos  load, load byte
				 rd_io when "11", -- enviamos salida de in
				 std_logic_vector(unsigned(pc) + 2) when others; -- enviamos pc + 2
				 
	
	-- USO: valor que queremos escribir a un determinado dispositivo de IO
	-- FUNC: Camino des de datapath hasta Control_IO para pdoer escribir los registros de los dispositivos de salida, sale unicamente de la salida b de BR
	wr_io <= bTO;
	
	
	-- USO : seleccion de direccion de escritura y lectura de memoria 
	-- FUNC: dado que tenemos la memoira de instrucciones y la de datos unificados, se usa la señal ins_dad viene de la grafo de control "multi" de la etapa, para poder distinguir si tenemos que leer/escribir un dato o leer una instruccion.
	--	En caso que estemos en la etapa de fetch se lee de memoria la siguiente instruccion que se ejecutara, en caso contrario se usa la salida de la alu para poder ejecutar las intrucciones de ST, LS, STB y LDB.
	with ins_dad select
		addr_m <= pc when '0',
			       wTo when others;
	

	-- USO: unico camino hacia los datos que se escriben a memoria
	-- FUNC: camino de escritura de memoria que va des de la salida "b" del BR hasta la entrada de datos del controlador de memoria 
	data_wr <= bTO;	
	
	-- USO: direccion a la que salta el PC cuando se ejecuta un salto absoluto
	-- FUNC: la direccion esta almacenada en el BR y sale por la salida "a", este camino llega a la unidad_control para poder actualizar el PC en el salto absoluto en caso necesario
	-- RAZ: se crea un nuevo camino en vez de usar la salida de la alu dado que la alu esta siendo usada para comprobar si se hace el salto o no, por tanto, si quisieramos usar la salida de la alu "w",
	-- tendriamos que crear una nueva operacion en la alu que solo dejara pasar los datos de la "y", que es de donde sale el registro que se compara para saber si se salta o no.
	jump_dir <= aTOx;

END Structure;