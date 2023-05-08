LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

package const_sisa is

constant OP_LOG: std_logic_vector(3 downto 0):= "0000";
constant COMP: std_logic_vector(3 downto 0):= "0001";
constant ADDI: std_logic_vector(3 downto 0):= "0010";
constant LOAD: std_logic_vector(3 downto 0):= "0011";
constant STORE: std_logic_vector(3 downto 0):= "0100";
constant MOV: std_logic_vector(3 downto 0):= "0101";
constant BRANCH: std_logic_vector(3 downto 0):= "0110";
constant IN_OUT: std_logic_vector(3 downto 0):= "0111";
constant ARIT_EX: std_logic_vector(3 downto 0):= "1000";
constant JUMPS: std_logic_vector(3 downto 0):= "1010";
constant LOAD_BYTE: std_logic_vector(3 downto 0):= "1101";
constant STORE_BYTE: std_logic_vector(3 downto 0):= "1110";
constant SPECIAL: std_logic_vector(3 downto 0):= "1111";
end package const_sisa;

