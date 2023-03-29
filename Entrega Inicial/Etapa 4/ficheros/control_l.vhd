LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use work.const_alu.all;

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
          in_d      : OUT STD_LOGIC_VECTOR(1 downto 0);
          immed_x2  : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC);
END control_l;


ARCHITECTURE Structure OF control_l IS
	SIGNAL arit    : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL cmp     : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL ext_arit: STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL mov		: STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN

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
				 '0'; -- Stores
				 
	with ir(15 DOWNTO 12) select -- Permiso escritura de memoria
		wr_m <='1' when "0100", --Store
				 '1' when "1110",  -- Store Byte
				 '0' when others;
				 
	 -- Entrada del banco de regitros: 01 : memoria, 00: alu, 10: pc
		in_d <="01" when ir(15 DOWNTO 12) = "0011" else --Load
				 "01" when ir(15 DOWNTO 12) = "1101" else --Load Byte
				 "10" when ir(15 DOWNTO 12) = "1010" and ir(2 DOWNTO 0) = "100" else -- JAL
				 "00" ;
				 
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
					 ir(8 DOWNTO 6) when others; --Loads, Stores, arit, cmp, ext_arit and Jxx
				 
	with ir(15 DOWNTO 12) select
		addr_b <= ir(11 DOWNTO 9) when "0100", -- Store
					 ir(11 DOWNTO 9) when "0110", -- branch
					 ir(11 DOWNTO 9) when "1010", -- Jxx
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