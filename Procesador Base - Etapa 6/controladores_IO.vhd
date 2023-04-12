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
			ps2_data		: INOUT std_LOGIC);
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS

	COMPONENT keyboard_controller is
    Port (clk        : in    STD_LOGIC;
          reset      : in    STD_LOGIC;
          ps2_clk    : inout STD_LOGIC;
          ps2_data   : inout STD_LOGIC;
          read_char  : out   STD_LOGIC_VECTOR (7 downto 0);
          clear_char : in    STD_LOGIC;
          data_ready : out   STD_LOGIC);
	end component;

	--type BR_IO is array (255 downto 0) of std_logic_vector(15 downto 0); DESCOMENTAR ENTREGA
	-- BANCO DE REGISTROS DE ENTRADA SALIDA
	type BR_IO is array (32 downto 0) of std_logic_vector(15 downto 0) ; --quizas haria falta inicializar los valores a 0
   signal registro_io : BR_IO;
	
	signal char_key : STD_LOGIC_VECTOR (7 downto 0);
	signal clear_reg: STD_LOGIC;
	signal ack_key	 : STD_LOGIC;
	
BEGIN
--Proceso de escritura en los registros del BR del controlador de entrada salida
	escritura: process(CLOCK_50) 
		variable not_wr : std_logic := '0';
	begin
		case addr_io(3 downto 0) is
			when "0111" => -- pulsadores 7
				not_wr := '1';
			when "1000" => --switches 8
				not_wr := '1';
			when others => 
				not_wr := '0';
		end case;
			
		if rising_edge(CLOCK_50) then
			--INICIALIZACIÖN DE LOS VISORES
			if boot = '1' then
				registro_io(9)(3 DOWNTO 0) <= "0000"; --APAGADOS al iniciar el dispositivo
			end if;
			
			-- Actualizamos los pulsadores y switches
			registro_io(7)(3 downto 0) <= pulsadors;
			registro_io(8)(7 downto 0) <= switches;
			registro_io(15)(7 downto 0) <= char_key;
			registro_io(16)(0) <= ack_key;
			
			if addr_io = 16 then
				clear_reg <= '1';
			else
				clear_reg <= '0';
			end if;
			
			if wr_out = '1'  and not_wr = '0' then
				registro_io(conv_integer(addr_io(4 DOWNTO 0))) <= wr_io; --QUITAR SELECCIÓN DE 5 BITS AL ENTREGAR
			end if;
		end if;
	end process escritura;
	
	rd_io <= registro_io(conv_integer(addr_io(4 DOWNTO 0))); --QUITAR SELECCIÓN DE 5 BITS AL ENTREGAR
	
	--LECTURAS
	led_verdes <= registro_io(5)(7 downto 0);
	led_rojos <= registro_io(6)(7 downto 0);
	visores <= registro_io(10);
	visor_enable <= registro_io(9)(3 DOWNTO 0);
	
	controladorKeyboard: keyboard_controller port map(clk => CLOCK_50,
																  reset => boot,
																  ps2_clk => ps2_clk,
																  ps2_data => ps2_data,
																  read_char => char_key,
																  clear_char => clear_reg,
																  data_ready => ack_key);
	
END Structure; 