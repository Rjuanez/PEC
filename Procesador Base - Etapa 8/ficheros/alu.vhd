LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use work.const_alu.all;


ENTITY alu IS
    PORT (x  			: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  			: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op 			: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
          w  			: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z  			: OUT STD_LOGIC;
			 div_zero 	: OUT STD_LOGIC);
END alu;


ARCHITECTURE Structure OF alu IS
	
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


	-- DETECION DE DIVISON POR 0
	
	div_zero <= '1' when op = DIV and y = (15 downto 0 => '0') else
					'1' when op = DIVU and y = (15 downto 0 => '0') else
					'0';
				
	
	
	
	z <= '1' when y = (15 downto 0 => '0') else '0'; -- '1' cuando la salida de w es igual a 0
	
	-- SHIFTS
	shiftA <= to_stdlogicvector(to_bitvector(x) sll to_integer(unsigned(y(4 downto 0)))) when y(15) = '0' else
				 to_stdlogicvector(to_bitvector(x) sra to_integer(unsigned(not(y(4 downto 0)) + 1)));
	
	shiftL <= to_stdlogicvector(to_bitvector(x) sll to_integer(unsigned(y(4 downto 0)))) when y(15) = '0' else
				 to_stdlogicvector(to_bitvector(x) srl to_integer(unsigned(not(y(4 downto 0)) + 1)));
	
	--COMPARACIONES
	complt <= true_a when signed(x) < signed(y) else 
				false_a;
	
	comple <= true_a when (signed(x) < signed(y)) or  (signed(x) = signed(y)) else 
				false_a;
	
	compeq <= true_a when signed(x) = signed(y) else 
				false_a;
	
	compltu <= true_a when unsigned(x) < unsigned(y) else 
				false_a;
	
	compleu <= true_a when (unsigned(x) < unsigned(y)) or  (unsigned(x) = unsigned(y)) else 
				false_a;
	
	--MULTIPLICACION
	mult <= std_logic_vector(signed(x) * signed(y));
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
			  x - y											when SUB_OP,
			  shiftA											when SHA_OP,
			  shiftL											when SHL_OP,
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
			  x												when OUT_X,
			  x + y 											when others; -- ADD, ADDI, LD, ST, LDB, STB

END Structure;