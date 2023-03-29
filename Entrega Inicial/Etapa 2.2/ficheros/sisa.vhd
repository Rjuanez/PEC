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
          SW        : in std_logic_vector(9 downto 9);
			 HEX0 : OUT std_logic_vector(6 downto 0);
			 HEX1 : OUT std_logic_vector(6 downto 0);
			 HEX2 : OUT std_logic_vector(6 downto 0);
			 HEX3 : OUT std_logic_vector(6 downto 0));
			 
END sisa;

ARCHITECTURE Structure OF sisa IS

	COMPONENT ProcesadorBase IS
		 PORT (clk       : IN  STD_LOGIC;
				 boot      : IN  STD_LOGIC;
				 datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 addr_m    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 data_wr   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				 wr_m      : OUT STD_LOGIC;
				 word_byte : OUT STD_LOGIC);
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
				 SRAM_WE_N : out   std_logic := '1');
	end COMPONENT;
	
	COMPONENT driverSegmentos IS
	PORT( codigoSegmentos : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 HEX0 : OUT std_logic_vector(6 downto 0);
			 HEX1 : OUT std_logic_vector(6 downto 0);
			 HEX2 : OUT std_logic_vector(6 downto 0);
			 HEX3 : OUT std_logic_vector(6 downto 0));
	END component;
	
	SIGNAL word_byteTObyte_m, wr_mTOwe : std_logic;
	SIGNAL addr_mTOaddr, data_wrTOwr_data, rd_dataTOdatard_m: std_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL counter_clock : std_LOGIC_VECTOR(2 DOWNTO 0):="000";
	SIGNAL clock_6 : std_LOGIC;
	
--	signal aux: std_LOGIC;
	
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
						 word_byte => word_byteTObyte_m);
	
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
							SRAM_WE_N => SRAM_WE_N);
			
	Segments: driverSegmentos port map (codigoSegmentos => addr_mTOaddr, 
													HEX0 => HEX0, 
													HEX1 => HEX1, 
													HEX2 => HEX2, 
													HEX3 => HEX3);
	
END Structure;