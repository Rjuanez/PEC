LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY controladores_IO IS
	PORT (boot 			: IN STD_LOGIC;
			CLOCK_50 	: IN std_logic;
			addr_io 		: IN std_logic_vector(7 downto 0);
			wr_io 		: in std_logic_vector(15 downto 0);
			rd_io 		: out std_logic_vector(15 downto 0);
			wr_out 		: in std_logic;
			rd_in 		: in std_logic;
			led_verdes 	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			led_rojos 	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			visores 	 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			visor_enable: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			pulsadors 	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			switches 	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			ps2_clk 		: INOUT std_LOGIC;
			ps2_data		: INOUT std_LOGIC;
			vga_cursor	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			vga_cursor_enable : OUT STD_LOGIC;
			intr			: OUT STD_LOGIC;
			inta 			: IN STD_LOGIC);
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS

	component keyboard_controller is
    Port (clk        : in    STD_LOGIC;
          reset      : in    STD_LOGIC;
          ps2_clk    : inout STD_LOGIC;
          ps2_data   : inout STD_LOGIC;
          read_char  : out   STD_LOGIC_VECTOR (7 downto 0);
          clear_char : in    STD_LOGIC;
          data_ready : out   STD_LOGIC;
			 inta 		: in	  STD_LOGIC;
			 intr       : out 	  STD_LOGIC);
	end component;
	
	component controlador_interrupciones IS
	Port (boot 			: IN STD_LOGIC;
			clk 			: IN std_logic;
			inta			: IN STD_LOGIC;
			intr			: OUT STD_LOGIC;
			key_inta		: OUT STD_LOGIC;
			key_intr		: IN STD_LOGIC;
			switch_inta	: OUT STD_LOGIC;
			switch_intr	: IN STD_LOGIC;
			ps2_inta		: OUT STD_LOGIC;
			ps2_intr		: IN STD_LOGIC;
			tim_inta		: OUT STD_LOGIC;
			tim_intr		: IN STD_LOGIC;
			iid			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
	end component;
	
	component int_controller is
		Generic (
				IN_VEC_SIZE : integer := 8
		);
		Port (clk        		: in     STD_LOGIC;
				boot				: in     STD_LOGIC;
				inta				: in		STD_LOGIC;
				intr				: out		STD_LOGIC;
				value_in			: in		STD_LOGIC_VECTOR(IN_VEC_SIZE-1 DOWNTO 0));
	end component;
	
	component timmer IS
	generic (
		numero_inicial: natural := 500000000
	);
	PORT( 
		Clock_in : IN std_logic;
		intr		: OUT std_logic;
		inta		: IN std_logic);
	END component;


	--type BR_IO is array (255 downto 0) of std_logic_vector(15 downto 0); DESCOMENTAR ENTREGA
	-- BANCO DE REGISTROS DE ENTRADA SALIDA
	type BR_IO is array (32 downto 0) of std_logic_vector(15 downto 0) ; --quizas haria falta inicializar los valores a 0
   signal registro_io : BR_IO;
	
	signal char_key : STD_LOGIC_VECTOR (7 downto 0);
	signal clear_reg: STD_LOGIC := '0';
	signal ack_key	 : STD_LOGIC := '0';
	
	signal contador_ciclos : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
	signal contador_milisegundos : STD_LOGIC_VECTOR(15 downto 0):=x"0000";
	
	signal intrS, intaS : STD_LOGIC; -- temp
	
	signal intr_keyboard, inta_keyboard : STD_LOGIC; 
	signal intr_pusladores, inta_pusladores : STD_LOGIC; 
	signal intr_interruptores, inta_interruptores : STD_LOGIC;
	signal intr_timmer, inta_timmer : STD_LOGIC;
	signal iidTO : STD_LOGIC_VECTOR(7 DOWNTO 0);
	
BEGIN
	
--Proceso de escritura en los registros del BR del controlador de entrada salida
	escritura: process(CLOCK_50) 
		variable not_wr : std_logic := '0';
	begin
		case addr_io is
			when "00000111" => -- pulsadores 7
				not_wr := '1';
			when "00001000" => --switches 8
				not_wr := '1';
			when others => 
				not_wr := '0';
		end case;
			
		if rising_edge(CLOCK_50) then
		
			--INICIALIZACIÓN DE LOS VISORES
			if boot = '1' then
				registro_io(9)(3 DOWNTO 0) <= "0000"; --APAGADOS al iniciar el dispositivo
				registro_io(16) <= x"0000";
			end if;

			clear_reg <= '0';
			
			if contador_ciclos=0 then
				contador_ciclos<=x"C350"; -- tiempo de ciclo=20ns(50Mhz) 1ms=50000ciclos
				if contador_milisegundos>0 then
					contador_milisegundos <= contador_milisegundos-1;
				end if;
			else
				contador_ciclos <= contador_ciclos-1;
			end if;
			
			-- Actualizamos los pulsadores y switches
			registro_io(7)(3 downto 0) <= pulsadors;
			registro_io(8)(7 downto 0) <= switches;
			
			-- registros del keyboard
			if ack_key = '1' then 
				registro_io(15)(7 downto 0) <= char_key;
				registro_io(16)<="000000000000000"&ack_key;
			end if;
			
			--escritura a registros 
			if wr_out = '1'  and not_wr = '0' then
				registro_io(conv_integer(addr_io)) <= wr_io; 
				
				if addr_io = 16 then
					clear_reg <= '1';
					registro_io(16)<=X"0000";
				elsif addr_io = 21 then
					contador_milisegundos <= wr_io;
				end if;
			end if;
			registro_io(20) <= contador_ciclos;
			registro_io(21) <= contador_milisegundos;
			
			
			-- SI SE ESTA EJECUANTANDO getiid SE ENVIA EL IID POR RD_IO
			-- el rd_io llega hasta datapath y entra por d para guardar el valor del iid en cualquier registro
			-- sino se envia el valor de los registros de entrad/salida
			if inta = '1' then
				rd_io <= (15 downto 8 => '0')&iidTO;
			else 
				rd_io <= registro_io(conv_integer(addr_io));
			end if;
		end if;
		
		
	end process escritura;
	

	
	--LECTURAS
	led_verdes <= registro_io(5)(7 downto 0);
	led_rojos <= registro_io(6)(7 downto 0);
	visores <= registro_io(10);
	visor_enable <= registro_io(9)(3 DOWNTO 0);
	
	--USAMOS VGA1 
	vga_cursor <= x"0000";
	vga_cursor_enable <= '0';
	
	prio_int_controller: controlador_interrupciones
	port map(boot 			=> boot,
				clk  			=> CLOCK_50,
				inta 			=> inta,
				intr 			=> intr,
				key_inta		=> inta_pusladores,
				key_intr		=> intr_pusladores,
				switch_inta	=> inta_interruptores,
				switch_intr	=>	intr_interruptores,
				ps2_inta		=> inta_keyboard,
				ps2_intr		=> intr_keyboard,
				tim_inta		=> inta_timmer,
				tim_intr		=> intr_timmer,
				iid			=> iidTO);
				
	int_pulsadores: int_controller
	generic map(IN_VEC_SIZE => 4)
	port map(boot 			=> boot,
				clk  			=> CLOCK_50,
				inta 			=> inta_pusladores,
				intr 			=> intr_pusladores,
				value_in		=> pulsadors);
				
	int_interruptores: int_controller			
	generic map(IN_VEC_SIZE => 8)
	port map(boot 			=> boot,
				clk  			=> CLOCK_50,
				inta 			=> inta_interruptores,
				intr 			=> intr_interruptores,
				value_in		=> switches);
				
	int_timmer: timmer			
	generic map(numero_inicial => 1250000)
	port map(Clock_in  	=> CLOCK_50,
				boot 			=> boot, --linea no testada
				inta 			=> inta_timmer,
				intr 			=> intr_timmer);
	
	controladorKeyboard: keyboard_controller port map(clk => CLOCK_50,
																  reset => boot,
																  ps2_clk => ps2_clk,
																  ps2_data => ps2_data,
																  read_char => char_key,
																  clear_char => clear_reg,
																  data_ready => ack_key,
																  inta => inta_keyboard,
																  intr => intr_keyboard);
	
END Structure; 