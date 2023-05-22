LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
    PORT (clk      				: IN  STD_LOGIC;
			 boot						: IN 	STD_LOGIC;
          op       				: IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd      				: IN  STD_LOGIC;
          addr_a   				: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b   				: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d   				: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed    				: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          immed_x2 				: IN  STD_LOGIC;
          datard_m 				: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad  				: IN  STD_LOGIC;
          pc       				: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          in_d     				: IN  STD_LOGIC_VECTOR(2 downto 0);
          addr_m   				: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr  				: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Rb_N		 				: IN	 STD_LOGIC;
			 Z			 				: OUT STD_LOGIC;
			 jump_dir 				: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 rd_io  	 				: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 wr_io	 				: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 sys_a	 				: IN STD_LOGIC;
			 wr_sys	 				: IN STD_LOGIC;
			 int_enabled 			: OUT STD_LOGIC;
			 system_mode			: OUT	STD_LOGIC;
			 reg_op	 				: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 --EXCEPTION SIGNALS
			 exception_id 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 div_zero 				: OUT STD_LOGIC);
END datapath;


ARCHITECTURE Structure OF datapath IS

	COMPONENT alu IS
		 PORT (x  			: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 y  			: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 op 			: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				 w  			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 z	 			: OUT STD_LOGIC;
				 div_zero 	: OUT STD_LOGIC);
	END component;

	COMPONENT regfile IS
		 PORT (clk    					: IN  STD_LOGIC;
				 wrd    					: IN  STD_LOGIC;
				 d      					: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 addr_a 					: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_b 					: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d 					: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				 a      					: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 b      					: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 sys_a  					: IN STD_LOGIC;
				 wr_sys 					: IN STD_LOGIC;
				 int_enabled 			: OUT STD_LOGIC;
				 system_mode	: OUT	STD_LOGIC;
				 reg_op	 				: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
				 exception_id 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0));
	END component;
	
	COMPONENT tlb IS
		PORT (clk				: IN 	STD_LOGIC;
				boot				: IN 	STD_LOGIC;
				addr_in 			: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0); -- bus que contiene el tag la direccion logica que desemamos traducir
				addr_out			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)--; -- bus que contiene el tag de la direccion fisica, ya traducida
--				miss_tlb			: OUT	STD_LOGIC; -- señal que indica si ha habido un miss
--				invalid_page	: OUT	STD_LOGIC; -- señal que indica si la pagina que se ha taducido tiene le bit de invalido	
--				read_only_page	: OUT	STD_LOGIC; -- señal que indica si la pagina que se ha pedido traducir es solo de lectura
--				tlb_op			: IN	STD_LOGIC_VECTOR(1 DOWNTO 0); -- bus que indica que operacion se ha de realizar
--				addr				: IN	STD_LOGIC_VECTOR(2 DOWNTO 0); -- bus que indica el idnice del registro que se va a modificar
--				wr_in				: IN 	STD_LOGIC_VECTOR(5 DOWNTO 0) -- bus de entrada de datos a la tlb
				); 
	END COMPONENT;
	
	signal aTOx : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal TOd : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal mux1 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal TOy : STD_LOGIC_VECTOR(15 downto 0);
	signal wTO : STD_LOGIC_VECTOR(15 downto 0);
	signal bTO : STD_LOGIC_VECTOR(15 downto 0);
	
	signal TLB_pc, TLB_wTO_tag : STD_LOGIC_VECTOR(3 DOWNTO 0); --señales de las direcciones pasadas por la tlb

BEGIN
	
	alu0: alu port map(x => aTOx, y => TOy, op => op, w => wTO, z => Z, div_zero => div_zero);
	reg0: regfile port map(clk => clk, wrd => wrd, d => TOd, addr_a => addr_a, addr_b => addr_b, addr_d => addr_d, a => aTOx, b => bTO,
								  sys_a => sys_a, wr_sys => wr_sys, reg_op => reg_op, int_enabled => int_enabled, exception_id => exception_id, system_mode => system_mode);
								  
	-- metemos por la TLB la salida de la alu, dado que es de donde salen las direcciones de memoria en los loads y stroes
	tlb_dat: tlb port map (clk => clk, boot => boot, addr_in => wTO(15 downto 12), addr_out => TLB_wTO_tag);
	 
	TOy <= bTO when Rb_N = '1' else 
			 immed when immed_x2 = '0' else
			 immed(14 downto 0) & '0'; --multiplica por 2
		
	with in_d select
		TOd <= wTO when "000", -- enviamos  alu
				 datard_m when "001", -- enviamos  load
				 rd_io when "011", -- enviamos salida de in
				 std_logic_vector(unsigned(pc)) when "100",
				 std_logic_vector(unsigned(pc) + 2) when others; -- enviamos pc + 2
				 
	
	--Valor que leeremos en la entrada salida
	wr_io <= bTO;
	
	
	with ins_dad select
		addr_m <= pc when '0',
			       TLB_wTO_tag & wTO(11 DOWNTO 0) when others;
		
	data_wr <= bTO;	
	
	jump_dir <= aTOx;

END Structure;