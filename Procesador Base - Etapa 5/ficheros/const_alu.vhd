library ieee;
use ieee.std_logic_1164.all;

package const_alu is 

CONSTANT MOVI 	: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; 
CONSTANT MOVHI : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001"; 
CONSTANT AND_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00010"; 
CONSTANT OR_OP : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00011";
CONSTANT XOR_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00100"; 
CONSTANT NOT_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00101"; 
CONSTANT ADD_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00110";
CONSTANT SUB_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "00111"; 
CONSTANT SHA_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "01000"; 
CONSTANT SHL_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "01001"; 
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
CONSTANT Jxx   : STD_LOGIC_VECTOR(4 DOWNTO 0) := "11001"; 
CONSTANT IN_OP : STD_LOGIC_VECTOR(4 DOWNTO 0) := "11010"; 
CONSTANT OUT_OP: STD_LOGIC_VECTOR(4 DOWNTO 0) := "11011"; 

CONSTANT true_a : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000001";
CONSTANT false_a: STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";


end package const_alu;