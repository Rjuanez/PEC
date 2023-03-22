LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY control_l IS
    PORT (ir        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
          ldpc      : OUT STD_LOGIC;
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC; 
          in_d      : OUT STD_LOGIC;
          immed_x2  : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC);
END control_l;


ARCHITECTURE Structure OF control_l IS
	CONSTANT MOVI 	: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; 
	CONSTANT MOVHI : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001"; 
	CONSTANT AND_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00010"; 
	CONSTANT OR_OP : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00011";
	CONSTANT XOR_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00100"; 
	CONSTANT NOT_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00101"; 
	CONSTANT ADD   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00110";
	CONSTANT SUB   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00111"; 
	CONSTANT SHA   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01000"; 
	CONSTANT SHL   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01001"; 
	CONSTANT CMPLT : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01010"; 
	CONSTANT CMPLE : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01011"; 
	CONSTANT CMPEQ : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01100"; 
	CONSTANT CMPLTU: STD_LOGIC_VECTOR(4 DOWNTO 0) := "01101"; 
	CONSTANT CMPLEU: STD_LOGIC_VECTOR(4 DOWNTO 0) := "01110"; 
	CONSTANT ADDI  : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01111"; 
	CONSTANT MUL   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10000";
	CONSTANT MULH  : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10001"; 
	CONSTANT MULHU : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10010"; 
	CONSTANT DIV   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10011"; 
	CONSTANT DIVU  : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10100"; 
	CONSTANT LD    : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10101"; 
	CONSTANT LDB   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10110"; 
	CONSTANT ST    : STD_LOGIC_VECTOR(4 DOWNTO 0) := "10111"; 
	CONSTANT STB   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "11000"; 
	
	SIGNAL arit    : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL cmp     : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL ext_arit: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL mov		: STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
	with ir(15 DOWNTO 12) select --Permiso de escritura en el banco de registros
		wrd <= '1' when "0101", -- MOVI, MOVHI
				 '1' when "0011", -- Load 
				 '1' when "1101", -- Load Byte
				 '1' when "0000", -- Aritmeticas
				 '1' when "0001", -- Comparaciones
				 '1' when "1000", -- Extension aritmetica
				 '0' when others; -- Stores
				 
	with ir(15 DOWNTO 12) select -- Solo los stores escriben en memoria
		wr_m <='1' when "0100", --Store
				 '1' when "1110",  -- Store Byte
				 '0' when others;
				 
	with ir(15 DOWNTO 12) select -- Almacenamos datos de la memoria o de la alu
		in_d <='1' when "0011", --Load
				 '1' when "1101", --Load Byte
				 '0' when others;
				 
	with ir(15 DOWNTO 12) select -- Hay que desplazar el immediato o no a una posición par
		immed_x2 <= '1' when "0011", --Load
						'1' when "0100", --Store
						'0' when others;
		
	with ir(15 DOWNTO 12) select --Acceso a byte o a word
		word_byte <= '1' when "1101", --Load Byte
						 '1' when "1110",  -- Store Byte
						 '0' when others;
	with ir(15 DOWNTO 12) select
		addr_a <= ir(11 DOWNTO 9) when "0101", -- MOVI, MOVHI
					 ir(8 DOWNTO 6) when others; --Loads, Stores, arit, cmp and ext_arit
				 
	with ir(15 DOWNTO 12) select
		addr_b <= ir(11 DOWNTO 9) when "0100", -- Store
					 ir(2 DOWNTO 0) when others; -- Arit, cmp and ext_arit
				 
	addr_d <= ir(11 DOWNTO 9); -- Ever
	
	with ir(15 DOWNTO 0) select
		ldpc <= '0' when "1111111111111111", --HALT
				  '1' when others;
				  
	with ir(15 DOWNTO 12) select
		immed(15 downto 0)  <=(15 downto 8 => ir(7)) & ir(7 downto 0) when "0101", -- MOVI, MOVHI (immed: 8 bits)
									 (15 downto 6 => ir(5)) & ir(5 downto 0) when others; --Loads, Stores and addi (immed: 6 bits)


	with ir(5 DOWNTO 3) select 
		arit <= AND_OP when "000",
				  OR_OP when "001",
				  XOR_OP when "010",
				  NOT_OP when "011",
				  ADD when "100",
				  SUB when "101",
				  SHA when "110",
				  SHL when others;
	
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
		
	with ir(15 DOWNTO 12) select
		op <= mov when "0101", -- MOVI, MOVHI
				arit when "0000",
				cmp when "0001",
				ext_arit when "1000",
				ADDI when "0010",
				LD when "0011",
				ST when "0100",
				LDB when "1101",
				STB when others; 
				
	
	
END Structure;