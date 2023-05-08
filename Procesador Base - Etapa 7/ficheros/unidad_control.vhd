LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
USE work.func_ayuda_control_pkg.all;

ENTITY unidad_control IS
    PORT (boot      : IN  STD_LOGIC;
          clk       : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Z			  : IN  STD_LOGIC;
			 jump_dir  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC_VECTOR(1 downto 0);
          immed_x2  : OUT STD_LOGIC;
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC;
			 addr_io	  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in	  : OUT STD_LOGIC;
			 wr_out	  : OUT STD_LOGIC;
			 int_act   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS
	COMPONENT control_l IS
	 PORT (ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          ldpc      : OUT STD_LOGIC;
          wrd       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC_VECTOR(1 downto 0);
          immed_x2  : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC;
			 addr_io	  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in	  : OUT STD_LOGIC;
			 wr_out	  : OUT STD_LOGIC;
			 int_act   : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END component;
	
	COMPONENT multi is
    port(clk       : IN  STD_LOGIC;
         boot      : IN  STD_LOGIC;
         ldpc_l    : IN  STD_LOGIC;
         wrd_l     : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
         wr_m_l    : IN  STD_LOGIC;
         w_b       : IN  STD_LOGIC;
         ldpc      : OUT STD_LOGIC;
         wrd       : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
         wr_m      : OUT STD_LOGIC;
         ldir      : OUT STD_LOGIC;
         ins_dad   : OUT STD_LOGIC;
         word_byte : OUT STD_LOGIC);
	end component;

    -- Tambien crearemos los cables/buses (signals) necesarios para unir las entidades
    -- Aqui iria la definicion del program counter
	 SIGNAL mux_ldpc : STD_LOGIC;	--señal que indica si se puede incrementar el pc, el halt la pone a 0
	 SIGNAL new_pc : STD_LOGIC_VECTOR(15 DOWNTO 0);
	 
	 SIGNAL ir_actual : std_LOGIC_VECTOR(15 DOWNTO 0);
	 SIGNAL ldpcTOmulti : std_logic;
	 SIGNAL wrd_lTOmulti : std_logic_VECTOR(1 DOWNTO 0);
	 SIGNAL w_bTOmulti : std_logic;
	 SIGNAL wr_m_lTOmulti : std_logic;
	 SIGNAL ldir_aux : std_logic; --para saber si cargamos nuevo ir
	 
	 SIGNAL inm_pc : std_LOGIC_VECTOR(15 DOWNTO 0); --inmediato multiplicado por 2
	 
BEGIN
	 -- Aqui iria la declaracion del "mapeo" (PORT MAP) de los nombres de las entradas/salidas de los componentes
    -- En los esquemas de la documentacion a la instancia de la logica de control le hemos llamado c0
    -- Aqui iria la definicion del comportamiento de la unidad de control y la gestion del PC

	clogic0: control_l port map(
		ir => ir_actual,
		op => op,
		ldpc => ldpcTOmulti,
		wrd => wrd_lTOmulti,
		addr_a => addr_a,
		addr_b => addr_b,
		addr_d => addr_d,
		immed => immed,
		wr_m => wr_m_lTOmulti,
		in_d => in_d,
		immed_x2 => immed_x2,
		word_byte => w_bTOmulti,
		Rb_N => Rb_N,
		addr_io => addr_io,
		rd_in => rd_in,
		wr_out => wr_out,
		int_act => int_act);
	
	ge: multi port map (
		clk => clk,
		boot => boot,
		ldpc_l => ldpcTOmulti,
		wrd_l => wrd_lTOmulti,
		wr_m_l => wr_m_lTOmulti,
		w_b => w_bTOmulti,
		ldpc => mux_ldpc,
		wrd => wrd,
		wr_m => wr_m,
		ldir => ldir_aux,
		ins_dad => ins_dad,
		word_byte => word_byte);
	
	pc <= new_pc;
	
	-- Bus que contiene la direccion de salto relativo, se 
	inm_pc <= (15 downto 9 => ir_actual(7)) & ir_actual(7 downto 0) & '0'; -- multiplicamos por 2 u
	
	update_pc: process(clk) 
	begin
		if rising_edge(clk) then
			if(boot = '1') then --señal de boot a 1 indica que el procesador se reinicia
				new_pc <= x"C000";
			elsif(mux_ldpc = '1') then -- ldpc esta a 1 si hay que cargar nuevo pc
				if hay_que_hacer_salto_relativo(ir => ir_actual, z => Z) then
				new_pc <= new_pc + 2 + inm_pc;
				elsif hay_que_hacer_salto_absoluto(ir => ir_actual, z => Z) then
				new_pc <= jump_dir;
				else
				new_pc <= new_pc + 2;
				end if;
			end if;
		end if;
	end process;
	
	update_ir: process(clk)
	begin
		if rising_edge(clk) then
			if(boot = '1') then
				ir_actual <= x"0000";
			elsif(ldir_aux = '1') then
				ir_actual <= datard_m;
			end if;
		end if;
	end process;
    
END Structure;