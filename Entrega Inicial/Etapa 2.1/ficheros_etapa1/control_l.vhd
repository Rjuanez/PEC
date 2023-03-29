LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY control_l IS
    PORT (ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          ldpc      : OUT STD_LOGIC;
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          in_d      : OUT STD_LOGIC;
          immed_x2  : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC);
END control_l;


ARCHITECTURE Structure OF control_l IS
BEGIN
	with ir(15 DOWNTO 12) select
		wrd <= '1' when "0101", -- MOVI, MOVHI
				 '1' when "0011", --Load
				 '1' when "0100", --Store
				 '1' when "1101", --Load Byte
				 '1' when "1110",  -- Sotre Byte
				 '0' when others;
				 
	with ir(15 DOWNTO 12) select
		in_d <= '1' when "0100", --Store
				 '1' when "1110",  -- Sotre Byte
				 '0' when others;
				 
	with ir(15 DOWNTO 12) select
		immed_x2 <= '1' when "0011", --Load
						'1' when "0100", --Store
						'0' when others;
		
	with ir(15 DOWNTO 12) select
		word_byte <= '1' when "1101", --Load Byte
						 '1' when "1110",  -- Sotre Byte
						 '0' when others;
				 
	addr_a <= ir(11 DOWNTO 9);
	addr_d <= ir(11 DOWNTO 9);
	
	with ir(15 DOWNTO 0) select
		ldpc <= '0' when "1111111111111111",
				  '1' when others;

	immed(7 downto 0)  <=ir(7 downto 0);
	immed(15 downto 8) <=(others => ir(7));

	op <= ir(8);
	
	with 
	
END Structure;