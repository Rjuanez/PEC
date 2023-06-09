library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MemoryController is
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
end MemoryController;

architecture comportament of MemoryController is
	component SRAMController is
		 port (clk         : in    std_logic;
				 -- señales para la placa de desarrollo
				 SRAM_ADDR   : out   std_logic_vector(17 downto 0);
				 SRAM_DQ     : inout std_logic_vector(15 downto 0); --
				 SRAM_UB_N   : out   std_logic; --Upper-byte control
				 SRAM_LB_N   : out   std_logic; --Lower-byte control
				 SRAM_CE_N   : out   std_logic := '1';--Chip enable input
				 SRAM_OE_N   : out   std_logic := '1';--Output enable input
				 SRAM_WE_N   : out   std_logic := '1';--Write enable input
				 -- señales internas del procesador
				 address     : in    std_logic_vector(15 downto 0) := "0000000000000000";
				 dataReaded  : out   std_logic_vector(15 downto 0);
				 dataToWrite : in    std_logic_vector(15 downto 0);
				 WR          : in    std_logic;
				 byte_m      : in    std_logic := '0');
	end component;
	
	SIGNAL wrTO:   std_logic;
	SIGNAL dataReadMem  : std_logic_vector(15 downto 0);

begin
	--Control que no accedan a las posiciones superiores de la memoria
	wrTO <= we when  addr < x"C000" else '0';

	--VGA
	--Rango memoria de video: 0xA000 - 0xBFFF 
	vga_addr <= addr(12 DOWNTO 0) when addr >= x"A000" and addr <= x"BFFF" else
					(others => '0');
	--Hacemos el control de las escrituras en la señal de permiso de escritura
	vga_we <= we when addr >= x"A000" and addr <= x"BFFF" else '0';
	vga_wr_data <= wr_data;
	vga_byte_m <= byte_m;
	
	sram_controller: SRAMController port map(
													clk => CLOCK_50,
													SRAM_ADDR => SRAM_ADDR,
													SRAM_DQ => SRAM_DQ, 
													SRAM_UB_N => SRAM_UB_N,
													SRAM_LB_N => SRAM_LB_N,
													SRAM_CE_N => SRAM_CE_N,
													SRAM_OE_N => SRAM_OE_N,
													SRAM_WE_N => SRAM_WE_N,
													address => addr, 
													dataReaded => dataReadMem,
													dataToWrite => wr_data, 
													WR => wrTO, 
													byte_m => byte_m);
	
	rd_data <= vga_rd_data when addr >= x"A000" and addr <= x"BFFF" else dataReadMem;
	
end comportament;
