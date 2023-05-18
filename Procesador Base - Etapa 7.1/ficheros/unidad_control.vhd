LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;


ENTITY unidad_control IS
    PORT (boot      	: IN  STD_LOGIC;
          clk       	: IN  STD_LOGIC;
          datard_m  	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Z			  	: IN  STD_LOGIC;
			 jump_dir  	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        	: OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd       	: OUT STD_LOGIC;
          addr_a    	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc        	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   	: OUT STD_LOGIC;
          in_d      	: OUT STD_LOGIC_VECTOR(2 downto 0);
          immed_x2  	: OUT STD_LOGIC;
          wr_m      	: OUT STD_LOGIC;
          word_byte 	: OUT STD_LOGIC;
			 Rb_N		  	: OUT STD_LOGIC;
			 addr_io	  	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in	  	: OUT STD_LOGIC;
			 wr_out	  	: OUT STD_LOGIC;
			 sys_a	  	: OUT STD_LOGIC; -- señal que viene des de control_l y controla si sale el registo de sistema por el a del regfile
			 wr_sys	  	: OUT STD_LOGIC;  -- señal que viene des de control_l y controla si se puede escribir en el registro ed sistema
			 reg_op	  	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0); --señal que indica las operaciones que tiene que hacer la alu
			 to_system	: IN STD_LOGIC;
			 inta		  : OUT STD_LOGIC);
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS
	COMPONENT control_l IS
	 PORT (ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          ldpc      : OUT STD_LOGIC;
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC_VECTOR(2 downto 0);
          immed_x2  : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC;
			 addr_io	  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in	  : OUT STD_LOGIC;
			 wr_out	  : OUT STD_LOGIC;
			 tknbr	  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
			 Z			  : IN  STD_LOGIC;
			 sys_a	  : OUT STD_LOGIC;
			 wr_sys	  : OUT STD_LOGIC;
			 system_act: IN  STD_LOGIC;
			 inta		  : OUT STD_LOGIC;
			 reg_op	  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END component;
	
	COMPONENT multi is
    port(clk       : IN  STD_LOGIC;
         boot      : IN  STD_LOGIC;
         ldpc_l    : IN  STD_LOGIC;
         wrd_l     : IN  STD_LOGIC;
         wr_m_l    : IN  STD_LOGIC;
         w_b       : IN  STD_LOGIC;
         ldpc      : OUT STD_LOGIC;
         wrd       : OUT STD_LOGIC;
         wr_m      : OUT STD_LOGIC;
         ldir      : OUT STD_LOGIC;
         ins_dad   : OUT STD_LOGIC;
         word_byte : OUT STD_LOGIC;
			to_system : IN  STD_LOGIC;
			system_act: OUT STD_LOGIC);
	end component;

    -- Tambien crearemos los cables/buses (signals) necesarios para unir las entidades
    -- Aqui iria la definicion del program counter
	 SIGNAL mux_ldpc : STD_LOGIC;	--señal que indica si se puede incrementar el pc, el halt la pone a 0
	 SIGNAL new_pc, temp_pc : STD_LOGIC_VECTOR(15 DOWNTO 0);
	 
	 SIGNAL ir_actual : std_LOGIC_VECTOR(15 DOWNTO 0);
	 SIGNAL ldpcTOmulti : std_logic;
	 SIGNAL wrd_lTOmulti : std_logic;
	 SIGNAL w_bTOmulti : std_logic;
	 SIGNAL wr_m_lTOmulti : std_logic;
	 SIGNAL ldir_aux : std_logic; --para saber si cargamos nuevo ir
	 
	 SIGNAL tknbrS : STD_LOGIC_VECTOR(1 DOWNTO 0);
	 
	 SIGNAL inm_pc : std_LOGIC_VECTOR(15 DOWNTO 0); --inmediato multiplicado por 2
	 
	 
	 SIGNAL system_actTOsystem_act : STD_LOGIC;
	 
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
		tknbr => tknbrS,
		Z => Z,
		sys_a => sys_a,
		wr_sys => wr_sys,
		reg_op => reg_op,
		system_act => system_actTOsystem_act,
		inta => inta);
	
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
		word_byte => word_byte,
		to_system => to_system,
		system_act => system_actTOsystem_act);
	
	pc <= new_pc;
	

	inm_pc <= (15 downto 9 => ir_actual(7)) & ir_actual(7 downto 0) & '0'; -- multiplicamos por 2 u
	-- se usa la señal tknb que viene de control_l para determinar el siguiente pc, se hace asi para tener toda la logica de control en un mismo fichero
	

	
	with tknbrS select
		temp_pc <= new_pc + 2 + inm_pc when "01",
					  jump_dir 				 when "10",
					  new_pc + 2			 when others;
	
	
	update_pc: process(clk) 
	begin
		if rising_edge(clk) then
			if(boot = '1') then --señal de boot a 1 indica que el procesador se reinicia
				new_pc <= x"C000";
			elsif(mux_ldpc = '1') then -- ldpc esta a 1 si hay que cargar nuevo pc
				new_pc <= temp_pc;
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