LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;


ENTITY alu IS
    PORT (x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
          w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END alu;


ARCHITECTURE Structure OF alu IS
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
	
	SIGNAL true : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000001";
	SIGNAL false: STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
	
	SIGNAL shiftA : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL shiftL : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	SIGNAL complt : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL comple : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL compeq : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL compltu : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL compleu : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
	SIGNAL mult : STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL multu : STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL divi : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL diviu : STD_LOGIC_VECTOR(15 DOWNTO 0);
	
BEGIN
	-- SHIFTS
	shiftA <= to_stdlogicvector(to_bitvector(x) sll to_integer(unsigned(y))) when y(15) = '0' else
				 to_stdlogicvector(to_bitvector(x) sra to_integer(unsigned(not(y) + 1)));
	
	shiftL <= to_stdlogicvector(to_bitvector(x) sll to_integer(unsigned(y))) when y(15) = '0' else
				 to_stdlogicvector(to_bitvector(x) srl to_integer(unsigned(not(y) + 1)));
	
	--COMPARACIONES
	complt <= true when signed(x) < signed(y) else 
				false;
	
	comple <= true when (signed(x) < signed(y)) or  (signed(x) = signed(y)) else 
				false;
	
	compeq <= true when signed(x) = signed(y) else 
				false;
	
	compltu <= true when unsigned(x) < unsigned(y) else 
				false;
	
	compleu <= true when (unsigned(x) < unsigned(y)) or  (unsigned(x) = unsigned(y)) else 
				false;
	
	--MULTIPLICACION
	mult <= x * y;
	multu <= std_logic_vector(unsigned(x) * unsigned(y));
	
	--DIVISION
	divi <= std_logic_vector(signed(x) / signed(y));
	diviu <= std_logic_vector(unsigned(x) / unsigned(y));
	
	--OUTPUT ALU
	with op select
		w <= y 												when MOVI, 
			  (y(7 DOWNTO 0) & x(7 DOWNTO 0)) 		when MOVHI, 
			  x and y										when AND_OP,
			  x or y 										when OR_OP,
			  x xor y										when XOR_OP,
			  not x											when NOT_OP,
			  x - y											when SUB,
			  shiftA											when SHA,
			  shiftL											when SHL,
			  complt											when CMPLT,
			  comple											when CMPLE,
			  compeq											when CMPEQ,
			  compltu										when CMPLTU,
			  compleu										when CMPLEU,
			  mult(15 DOWNTO 0)							when MUL, --ESTA MAL CREO
			  mult(31 DOWNTO 16)							when MULH,
			  multu(31 DOWNTO 16)						when MULHU,
			  divi											when DIV,
			  diviu											when DIVU,
			  x + y 											when others; -- ADD, ADDI, LD, ST, LDB, STB

END Structure;