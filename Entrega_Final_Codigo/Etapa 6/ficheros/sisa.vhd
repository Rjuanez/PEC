LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY sisa IS
    PORT (CLOCK_50  : IN    STD_LOGIC;
          SRAM_ADDR : out   std_logic_vector(17 downto 0);
          SRAM_DQ   : inout std_logic_vector(15 downto 0);
          SRAM_UB_N : out   std_logic;
          SRAM_LB_N : out   std_logic;
          SRAM_CE_N : out   std_logic := '1';
          SRAM_OE_N : out   std_logic := '1';
          SRAM_WE_N : out   std_logic := '1';
			 LEDG		  : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
			 LEDR		  : OUT	 STD_LOGIC_VECTOR(7 DOWNTO 0);
			 HEX0 	  : OUT std_logic_vector(6 downto 0);
			 HEX1 	  : OUT std_logic_vector(6 downto 0);
			 HEX2 	  : OUT std_logic_vector(6 downto 0);
			 HEX3 	  : OUT std_logic_vector(6 downto 0);
			 SW 		  : IN STD_LOGIC_VECTOR(9 DOWNTO 0); 
			 KEY		  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 PS2_CLK   : INOUT std_LOGIC;
			 PS2_DAT   : INOUT std_LOGIC;
			 VGA_R	  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 VGA_G	  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 VGA_B	  : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			 VGA_HS	  : OUT STD_LOGIC;
			 VGA_VS	  : OUT STD_LOGIC);
			 
END sisa;

ARCHITECTURE Structure OF sisa IS

	COMPONENT ProcesadorBase IS
		 PORT (clk       : IN  STD_LOGIC;
				 boot      : IN  STD_LOGIC;
				 datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 addr_m    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 data_wr   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 wr_m      : OUT STD_LOGIC;
				 word_byte : OUT STD_LOGIC;
				 rd_io  	  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
				 wr_io	  : OUT  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 addr_io	  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
				 rd_in	  : OUT STD_LOGIC;
				 wr_out	  : OUT STD_LOGIC);
	END component;

	COMPONENT MemoryController is
		 port (CLOCK_50  : in  std_logic;
				 addr      : in  std_logic_vector(15 downto 0);
				 wr_data   : in  std_logic_vector(15 downto 0);
				 rd_data   : out std_logic_vector(15 downto 0);
				 we        : in  std_logic;
				 byte_m    : in  std_logic;
				 -- señales para la placa de desarrollo
				 SRAM_ADDR : out   std_logic_vector(17 downto 0);
				 SRAM_DQ   : inout std_logic_vector(15 downto 0);
				 SRAM_UB_N : out   std_logic;
				 SRAM_LB_N : out   std_logic;
				 SRAM_CE_N : out   std_logic := '1';
				 SRAM_OE_N : out   std_logic := '1';
				 SRAM_WE_N : out   std_logic := '1';
				 vga_addr  : out std_logic_vector(12 downto 0);
				 vga_we 	  : out std_logic;
				 vga_wr_data : out std_logic_vector(15 downto 0);
				 vga_rd_data : in std_logic_vector(15 downto 0);
				 vga_byte_m: out std_logic);
	end COMPONENT;
	
	COMPONENT driverSegmentos IS
	PORT( codigoSegmentos : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			visors_enabled  : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 HEX0 : OUT std_logic_vector(6 downto 0);
			 HEX1 : OUT std_logic_vector(6 downto 0);
			 HEX2 : OUT std_logic_vector(6 downto 0);
			 HEX3 : OUT std_logic_vector(6 downto 0));
	END component;
	
	COMPONENT controladores_IO IS
	PORT (boot 			: IN STD_LOGIC;
			CLOCK_50 	: IN std_logic;
			addr_io 		: IN std_logic_vector(7 downto 0);
			wr_io 		: in std_logic_vector(15 downto 0);
			rd_io 		: out std_logic_vector(15 downto 0);
			wr_out 		: in std_logic;
			rd_in 		: in std_logic;
			led_verdes 	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			led_rojos 	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			visores 		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			visor_enable: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			pulsadors 	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			switches 	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			ps2_clk 		: INOUT std_LOGIC;
			ps2_data		: INOUT std_LOGIC;
			vga_cursor	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			vga_cursor_enable : OUT STD_LOGIC);
	END component;
	
	COMPONENT vga_controller is
    port(clk_50mhz      : in  std_logic; -- system clock signal
         reset          : in  std_logic; -- system reset
         blank_out      : out std_logic; -- vga control signal
         csync_out      : out std_logic; -- vga control signal
         red_out        : out std_logic_vector(7 downto 0); -- vga red pixel value
         green_out      : out std_logic_vector(7 downto 0); -- vga green pixel value
         blue_out       : out std_logic_vector(7 downto 0); -- vga blue pixel value
         horiz_sync_out : out std_logic; -- vga control signal
         vert_sync_out  : out std_logic; -- vga control signal
         --
         addr_vga          : in std_logic_vector(12 downto 0);
         we                : in std_logic;
         wr_data           : in std_logic_vector(15 downto 0);
         rd_data           : out std_logic_vector(15 downto 0);
         byte_m            : in std_logic;
         vga_cursor        : in std_logic_vector(15 downto 0);  -- simplemente lo ignoramos, este controlador no lo tiene implementado
         vga_cursor_enable : in std_logic);                     -- simplemente lo ignoramos, este controlador no lo tiene implementado
	end component;
	
	SIGNAL word_byteTObyte_m, wr_mTOwe : std_logic;
	SIGNAL addr_mTOaddr, data_wrTOwr_data, rd_dataTOdatard_m: std_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL counter_clock : std_LOGIC_VECTOR(2 DOWNTO 0):="000";
	SIGNAL clock_6 : std_LOGIC;
	
	--Señales de conexión controladores_IO y procesador
	SIGNAL addr_ioTOaddr_io : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL wr_ioTOwr_io, rd_ioTOrd_io : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL wr_outTOwr_out, rd_inTOrd_in : STD_LOGIC;
	SIGNAL visoresTO : STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL visorenableTO : STD_LOGIC_VECTOR(3 downto 0);
	
	--Señales de conexión MemoryController y vga_controller
	SIGNAL addr_memTOvga : STD_LOGIC_VECTOR(12 downto 0);
	SIGNAL we_memTOvga, byte_m_memTOvga : std_logic;
	SIGNAL wrdat_memTOvga, rddat_memTOvga : STD_LOGIC_VECTOR(15 downto 0);
	
	--Señales de conexión controladores_IO y vga_controller
	SIGNAL cursor_IOTOvga : STD_LOGIC_VECTOR(15 downto 0);
	SIGNAL enable_IOTOvga : STD_LOGIC;
	
	--Señales conversión colores vga
	SIGNAL red, green, blue : STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN
	clk_counter: process(CLOCK_50) 
	begin
		if rising_edge(CLOCK_50) then
			counter_clock <= counter_clock + 1;
		end if;
	end process;
	
	clock_6 <= counter_clock(2);
	
--SRAM_WE_N <='1';
	
	proc0: ProcesadorBase port map(clk => clock_6, 
						 boot => SW(9), 
						 datard_m => rd_dataTOdatard_m, 
						 addr_m => addr_mTOaddr, 
						 data_wr => data_wrTOwr_data, 
						 wr_m => wr_mTOwe, 
						 word_byte => word_byteTObyte_m,
						 rd_io => rd_ioTOrd_io,
						 wr_io => wr_ioTOwr_io,
						 addr_io => addr_ioTOaddr_io,
						 wr_out => wr_outTOwr_out,
						 rd_in => rd_inTOrd_in);
	
	memory0: MemoryController port map(CLOCK_50 => CLOCK_50, 
							addr => addr_mTOaddr,
							wr_data => data_wrTOwr_data,
							rd_data => rd_dataTOdatard_m,
							we => wr_mTOwe,
							byte_m => word_byteTObyte_m,
							SRAM_ADDR => SRAM_ADDR,
							SRAM_DQ => SRAM_DQ,
							SRAM_UB_N => SRAM_UB_N,
							SRAM_LB_N => SRAM_LB_N,
							SRAM_CE_N => SRAM_CE_N,
							SRAM_OE_N => SRAM_OE_N,
							SRAM_WE_N => SRAM_WE_N,
							vga_addr => addr_memTOvga,
							vga_we => we_memTOvga,
							vga_wr_data => wrdat_memTOvga,
							vga_rd_data => rddat_memTOvga,
							vga_byte_m => byte_m_memTOvga);
							
	controladosIO: controladores_IO port map(boot => SW(9),
														  CLOCK_50 => CLOCK_50,
														  rd_io => rd_ioTOrd_io,
														  wr_io => wr_ioTOwr_io,
														  addr_io => addr_ioTOaddr_io,
														  wr_out => wr_outTOwr_out,
														  rd_in => rd_inTOrd_in,
														  led_verdes => LEDG,
														  led_rojos => LEDR,
														  visores => visoresTO,
														  visor_enable => visorenableTO,
														  pulsadors => KEY,
														  switches => SW(7 downto 0),
														  ps2_clk => PS2_CLK,
														  ps2_data => PS2_DAT,
														  vga_cursor => cursor_IOTOvga,
														  vga_cursor_enable => enable_IOTOvga);
	
	video_controller: vga_controller port map(clk_50mhz => CLOCK_50,
															reset => SW(9),
															blank_out => open, --USAMOS DE1
															csync_out => open,
															red_out => red,
															green_out => green,
															blue_out => blue,
															horiz_sync_out => VGA_HS,
															vert_sync_out => VGA_VS,
															addr_vga => addr_memTOvga,
															we => we_memTOvga,
															wr_data => wrdat_memTOvga,
															rd_data => rddat_memTOvga,
															byte_m => byte_m_memTOvga,
															vga_cursor => cursor_IOTOvga,
															vga_cursor_enable => enable_IOTOvga);
	
	VGA_R <= red(3 DOWNTO 0);
	VGA_G <= green(3 DOWNTO 0);
	VGA_B <= blue(3 DOWNTO 0);
	
	Segments: driverSegmentos port map (codigoSegmentos => visoresTO, 
													visors_enabled => visorenableTO,
													HEX0 => HEX0, 
													HEX1 => HEX1, 
													HEX2 => HEX2, 
													HEX3 => HEX3);
	
END Structure;