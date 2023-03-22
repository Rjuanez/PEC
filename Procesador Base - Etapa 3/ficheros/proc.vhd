LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ProcesadorBase IS
    PORT (clk       : IN  STD_LOGIC;
          boot      : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_m    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC);
END ProcesadorBase;


ARCHITECTURE Structure OF ProcesadorBase IS

    -- Aqui iria la declaracion de las entidades que vamos a usar
    -- Usaremos la palabra reservada COMPONENT ...
    -- Tambien crearemos los cables/buses (signals) necesarios para unir las entidades

	 COMPONENT datapath IS
    PORT (clk      : IN  STD_LOGIC;
          op       : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd      : IN  STD_LOGIC;
          addr_a   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d   : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          immed_x2 : IN  STD_LOGIC;
          datard_m : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad  : IN  STD_LOGIC;
          pc       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          in_d     : IN  STD_LOGIC;
          addr_m   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Rb_N		 : IN	 STD_LOGIC);
	 END COMPONENT;
	 
	 COMPONENT unidad_control IS
    PORT (boot      : IN  STD_LOGIC;
          clk       : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC;
          immed_x2  : OUT STD_LOGIC;
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC);
	 END COMPONENT;
	 
	 SIGNAL opTOop : STD_LOGIC_VECTOR(4 DOWNTO 0);
	 SIGNAL wrdTOwrd : STD_LOGIC;
	 SIGNAL adaTOada : STD_LOGIC_VECTOR(2 DOWNTO 0);
	 SIGNAL adbTOadb : STD_LOGIC_VECTOR(2 DOWNTO 0);
	 SIGNAL addTOadd : STD_LOGIC_VECTOR(2 DOWNTO 0);
	 SIGNAL immTOimm : STD_LOGIC_VECTOR(15 DOWNTO 0);
	 SIGNAL pcTOpc : STD_LOGIC_VECTOR(15 DOWNTO 0);
	 SIGNAL immed_x2TOimmed_x2 : STD_LOGIC;
	 SIGNAL ins_dadTOins_dad : STD_LOGIC;
	 SIGNAL in_dTOin_d : STD_LOGIC;
	 SIGNAL Rb_NTORb_N : STD_LOGIC;
BEGIN

    -- Aqui iria la declaracion del "mapeo" (PORT MAP) de los nombres de las entradas/salidas de los componentes
    -- En los esquemas de la documentacion a la instancia del DATAPATH le hemos llamado e0 y a la de la unidad de control le hemos llamado c0
	cu0 : unidad_control port map(
		boot => boot, 
		clk => clk, 
		datard_m => datard_m, 
		op => opTOop, 
		wrd => wrdTOwrd, 
		addr_a => adaTOada,
		addr_b => adbTOadb,
		addr_d => addTOadd, 
		immed => immTOimm, 
		pc => pcTOpc,
		ins_dad => ins_dadTOins_dad,
		in_d => in_dTOin_d,
		immed_x2 => immed_x2TOimmed_x2,
		wr_m => wr_m,
		word_byte => word_byte,
		Rb_N => Rb_NTORb_N);
		
	d0: datapath port map (
		clk => clk, 
		op => opTOop, 
		wrd=> wrdTOwrd, 
		addr_a => adaTOada,
		addr_b => adbTOadb,
		addr_d=> addTOadd, 
		immed => immTOimm,
		immed_x2 => immed_x2TOimmed_x2,
		datard_m => datard_m,
		ins_dad => ins_dadTOins_dad,
		pc => pcTOpc,
		in_d => in_dTOin_d,
		addr_m => addr_m,
		data_wr => data_wr,
		Rb_N => Rb_NTORb_N);
		
END Structure;