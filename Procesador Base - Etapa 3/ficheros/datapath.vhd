LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY datapath IS
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
END datapath;


ARCHITECTURE Structure OF datapath IS

	COMPONENT alu IS
    PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
          w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END component;

	COMPONENT regfile IS
    PORT (clk    : IN  STD_LOGIC;
          wrd    : IN  STD_LOGIC;
          d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 b      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END component;
	
	signal aTOx : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal TOd : STD_LOGIC_VECTOR(15 DOWNTO 0);
	signal TOy : STD_LOGIC_VECTOR(15 downto 0);
	signal wTO : STD_LOGIC_VECTOR(15 downto 0);
	signal bTOdatw : STD_LOGIC_VECTOR(15 downto 0);

BEGIN
	
	alu0: alu port map(x => aTOx, y => TOy, op => op, w => wTO);
	reg0: regfile port map(clk => clk, wrd => wrd, d => TOd, addr_a => addr_a, addr_b => addr_b, addr_d => addr_d, a => aTOx, b => bTOdatw);
	 
	TOy <= bTOdatw when Rb_N = '1' else 
			 immed when immed_x2 = '0' else
			 immed(14 downto 0) & '0'; --multiplica por 2
		
	with in_d select
		TOd <= wTO when '0', -- enviamos señal alu
				 datard_m when others; -- enviamos señal load
		
	with ins_dad select
		addr_m <= pc when '0',
			       wTo when others;
		
	data_wr <= bTOdatw;	

END Structure;