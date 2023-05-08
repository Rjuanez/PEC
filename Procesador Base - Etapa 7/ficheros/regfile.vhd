LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; --Esta libreria sera necesaria si usais conversiones CONV_INTEGER

ENTITY regfile IS
    PORT (clk    : IN  STD_LOGIC;
          wrd    : IN  STD_LOGIC_VECTOR(1 DOWNTO 0); --se usa un bus para definir si se da permiso de escritura de registro de sistema o registro normal. Posicion 0 corresponde a los registros y posicion 1 a los registros de sistema
          a_sys  : IN  STD_LOGIC; -- señal para difrenciar si la salida "a" corresponde a el banco de regustros o al banco de resgitros de sistema
			 d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
          a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 b      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		    int_act: IN STD_LOGIC_VECTOR(2 downto 0)); --bus para determinar si tenemos que hacer alguna operacion relacionada con interrupciones. Se usa un bus en vez de señales para reducir las señales a mapear
			-- "001" : preparamos registros especiales para interrupcion, "010": ei (permitir interrupciones), "011" (di), "100" reti
		--F	PCup    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
END regfile;


ARCHITECTURE Structure OF regfile IS

	
	-- el tamaño del br viene definido por la sinstruciones de la practia
   type BANCO_REGISTROS is array (7 downto 0) of std_logic_vector(15 downto 0);
   signal registro          : BANCO_REGISTROS;
	
	-- FUNC: usamos el mismo tamaño de banco de registros ya que necesitamos 8 registros para implementar interrupciones
	signal registro_sistema : BANCO_REGISTROS;
	
	
	 
BEGIN
	escritura: process(clk) 
	begin
		if rising_edge(clk) then 
			if wrd(0) = '1' then
				registro(conv_integer(addr_d)) <= d;
			end if;
			if wrd(1) = '1' then
				registro_sistema(conv_integer(addr_d)) <= d;
			end if;
			-- handling instruciones especial de interrupciones
			case int_act is
				when "001" =>
					registro_sistema(0) <= registro_sistema(7);
					registro_sistema(1) <= d; --PUEDE ESTAR MAL
					registro_sistema(2) <= x"000F";
					registro_sistema(7)(1) <= '0';
				when "010" => 
					registro_sistema(7)(1) <= '1';
				when "011" => 
					registro_sistema(7)(1) <= '0';
				when "100" => 
					registro_sistema(7) <= registro_sistema(0);
				when others =>
					NULL;
			end case;
		end if;
	end process escritura;

	a <= registro_sistema(5) when int_act = "001" else -- inicializacion de la interrupcion, tenemos que enviar la direccion de la primera instruccion de servicio a la interrupcion
		  registro_sistema(1) when int_act = "100" else
	     registro(conv_integer(addr_a)) when a_sys = '0' else
	     registro_sistema(conv_integer(addr_a));
	 
	b <= registro(conv_integer(addr_b));

END Structure;