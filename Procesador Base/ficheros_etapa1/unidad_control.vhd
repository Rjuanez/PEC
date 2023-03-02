LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

ENTITY unidad_control IS
    PORT (boot   : IN  STD_LOGIC;
          clk    : IN  STD_LOGIC;
          ir     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op     : OUT STD_LOGIC;
          wrd    : OUT STD_LOGIC;
          addr_a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS
	COMPONENT control_l IS
		 PORT (ir     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 op     : OUT STD_LOGIC;
				 ldpc   : OUT STD_LOGIC;
				 wrd    : OUT STD_LOGIC;
				 addr_a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 immed  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END component;

	SIGNAL mux_ldpc : STD_LOGIC;
    -- Tambien crearemos los cables/buses (signals) necesarios para unir las entidades
    -- Aqui iria la definicion del program counter
	 SIGNAL new_pc : STD_LOGIC_VECTOR(15 DOWNTO 0):= x"c000";
	 
BEGIN
	 -- Aqui iria la declaracion del "mapeo" (PORT MAP) de los nombres de las entradas/salidas de los componentes
    -- En los esquemas de la documentacion a la instancia de la logica de control le hemos llamado c0
    -- Aqui iria la definicion del comportamiento de la unidad de control y la gestion del PC

	c0: control_l port map(ir => ir, op => op, ldpc => mux_ldpc, wrd => wrd, addr_a => addr_a, addr_d => addr_d, immed => immed);
	
	pc <= new_pc;
	
	reset: process(clk) 
	begin
		if rising_edge(clk) then
			new_pc <= new_pc + 2;
			if(ldpc = '0') then
				new_pc <= new_pc;
			end if;
			if(boot = '1') then
				new_pc <= x"c000";
			end if;
		end if;
		
	end process;
    
END Structure;