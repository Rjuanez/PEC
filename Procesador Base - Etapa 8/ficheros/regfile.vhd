LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; --Esta libreria sera necesaria si usais conversiones CONV_INTEGER

ENTITY regfile IS
    PORT (clk    					: IN  STD_LOGIC;
          wrd    					: IN  STD_LOGIC;
          d      					: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_a 					: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b 					: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d 					: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          a      					: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 b      					: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 sys_a  					: IN STD_LOGIC;
			 wr_sys 					: IN STD_LOGIC;
			 int_enabled 			: OUT STD_LOGIC; 
			 system_mode			: OUT	STD_LOGIC;
			 reg_op 					: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 exception_id 			: IN STD_LOGIC_VECTOR(3 DOWNTO 0));
END regfile;


ARCHITECTURE Structure OF regfile IS
	
   type BANCO_REGISTROS is array (7 downto 0) of std_logic_vector(15 downto 0);
	--se inicializa los valores para que se este en modo sistema
	signal registro_sistema  : BANCO_REGISTROS := ("0000000000000001","0000000000000000", "0000000000000000" , "0000000000000000" , "0000000000000000", "0000000000000000" , "0000000000000000" , "0000000000000000");
   signal registro          : BANCO_REGISTROS;
	 
BEGIN
	escritura: process(clk) 
	begin
		if rising_edge(clk) then 
			if wrd = '1' then
				registro(conv_integer(addr_d)) <= d;
			end if;
			if wr_sys = '1' then
				registro_sistema(conv_integer(addr_d)) <= d;
			end if;
			-- cambiar a constantes
			if reg_op = "001" then  -- EI
				registro_sistema(7)(1) <= '1';
			elsif reg_op = "010" then -- DI
				registro_sistema(7)(1) <= '0';
			elsif reg_op = "100" then -- RETI
				registro_sistema(7) <= registro_sistema(0);
			elsif reg_op = "101" then -- SISTEMA
				registro_sistema(0) <= registro_sistema(7);
				registro_sistema(1) <= d;
				registro_sistema(2) <= (15 downto 4 => '0') & exception_id;
				registro_sistema(7)(1 downto 0) <= "01"; --desactivamos las interrupciones y activamos el modo sistema (1): int, (0):sys_mode
			end if;
		end if;
	end process escritura;

	a <= registro(conv_integer(addr_a)) when sys_a = '0' else
			--para que salgan a partir de aqui recorcordar que sys_a tiene que valer '1'
			registro_sistema(5) when reg_op = "101" else --Ciclo de sistema
		   registro_sistema(1) when reg_op = "100" else --RETI
		   registro_sistema(conv_integer(addr_a));
	b <= registro(conv_integer(addr_b));
	
	--señal para saber si hay que ir a system o no, dado que determina si las interrupciones estan activadas, se usa en unidad de control para filtrar intr
	int_enabled <= registro_sistema(7)(1);
	--señal que indica si estamos en modo sistema o en modo usuario
	system_mode <= registro_sistema(7)(0);

END Structure;