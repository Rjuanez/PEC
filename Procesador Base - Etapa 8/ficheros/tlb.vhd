LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all; --Esta libreria sera necesaria si usais conversiones CONV_INTEGER

ENTITY tlb IS
PORT (clk				: IN 	STD_LOGIC;
		boot				: IN 	STD_LOGIC;
		addr_in 			: IN 	STD_LOGIC_VECTOR(3 DOWNTO 0); -- bus que contiene el tag la direccion logica que desemamos traducir
		addr_out			: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)--; -- bus que contiene el tag de la direccion fisica, ya traducida
--		miss_tlb			: OUT	STD_LOGIC; -- señal que indica si ha habido un miss
--		invalid_page	: OUT	STD_LOGIC; -- señal que indica si la pagina que se ha taducido tiene le bit de invalido	
--		read_only_page	: OUT	STD_LOGIC; -- señal que indica si la pagina que se ha pedido traducir es solo de lectura
--		tlb_op			: IN	STD_LOGIC_VECTOR(1 DOWNTO 0); -- bus que indica que operacion se ha de realizar
--		addr				: IN	STD_LOGIC_VECTOR(2 DOWNTO 0); -- bus que indica el idnice del registro que se va a modificar
--		wr_in				: IN 	STD_LOGIC_VECTOR(5 DOWNTO 0) -- bus de entrada de datos a la tlb
		); 
END tlb;

ARCHITECTURE Structure of tlb is
	-- ORGANIZACION DEL VECTOR |9| -> v |8| -> r |7-4| -> dir fisica |3-0| dir logica
	type TLB is array (7 DOWNTO 0) of std_LOGIC_VECTOR(9 DOWNTO 0);
	
	-- registros deonde estaran cargadas las traduciones de la TLB, inicializados segun la especificacion del Documento
	signal registro_tlb	: TLB := ( "1000000000","1000010001", "1000100010", "1010001000", "1011001100", "1011011101", "1011101110", "1011111111");
	
	-- indice que indica que vector es el que contiene la direccion logica que se quiere pedir, en caso de que NO se encuentre en la tlb vale 9
	signal entrada : integer := 9;
	
BEGIN
	
	process(clk) begin
	
	if rising_edge(clk) then
		if boot = '1' then
			registro_tlb(0) <= "1000000000"; 
			registro_tlb(1) <= "1000010001"; 
			registro_tlb(2) <= "1000100010"; 
			registro_tlb(3) <= "1010001000"; 
			registro_tlb(4) <= "1011001100"; 
			registro_tlb(5) <= "1011011101"; 
			registro_tlb(6) <= "1011101110"; 
			registro_tlb(7) <= "1011111111"; 
					 
		end if;
--		if tlb_op = "01" then --write phisical address
--			registro_tlb(conv_integer(addr))(9 downto 4) <= wr_in; 
--		elsif tlb_op = "10" then --write logical address
--			registro_tlb(conv_integer(addr))(3 downto 0) <= wr_in(3 DOWNTO 0); 
--		
----		elsif tlb_op = "11" then -- pra flush
--		
--		end if;
	end if;
	 
		
	end process;
	
	-- cambiar a bucles
	--Comprobamos si alguna entrada de la TLB coincide con el tag de la direccion logica que entra a la TLB
		entrada <= 0 when registro_tlb(0)(3 DOWNTO 0) = addr_in else 
					  1 when registro_tlb(1)(3 DOWNTO 0) = addr_in else 
					  2 when registro_tlb(2)(3 DOWNTO 0) = addr_in else 
					  3 when registro_tlb(3)(3 DOWNTO 0) = addr_in else 
					  4 when registro_tlb(4)(3 DOWNTO 0) = addr_in else 
					  5 when registro_tlb(5)(3 DOWNTO 0) = addr_in else 
					  6 when registro_tlb(6)(3 DOWNTO 0) = addr_in else 
					  7 when registro_tlb(7)(3 DOWNTO 0) = addr_in else 
					  9;
					 
					 
	-- sale por la tlb la traduccion de la direccion logica, en caso que este en la TLB. Si NO esta en la TLB sale el valor: "0000"
	addr_out <= "0000" when entrada > 7 else registro_tlb(entrada)(7 DOWNTO 4);
						
--	-- si el valor del indice que indica que registro de la TLB contiene la traduccion del tag que entra esta fuera de rango, es un miss
--	miss_tlb <= '1' when entrada > 7 else '0';
--	
--	-- si hay un miss y por tanto el valor de el indice es > 7, por las demas excepciones sacamos 0, para que no de error de index out of bounds
--	
--	-- indica si la pagina es invalida y por tanto es el contrario del bit de valideza de cada registro
--	invalid_page <='0' when entrada > 7 else not registro_tlb(entrada)(9);	
--	
--	read_only_page <= '0' when entrada > 7 else registro_tlb(entrada)(8);
		

				 
END Structure;