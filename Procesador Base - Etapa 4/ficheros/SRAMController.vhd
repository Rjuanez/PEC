library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity SRAMController is
    port (clk         : in    std_logic;
          -- señales para la placa de desarrollo
          SRAM_ADDR   : out   std_logic_vector(17 downto 0); -- Direccion
          SRAM_DQ     : inout std_logic_vector(15 downto 0); -- Dato
          SRAM_UB_N   : out   std_logic; --Upper-byte control
          SRAM_LB_N   : out   std_logic; --Lower-byte control
          SRAM_CE_N   : out   std_logic := '1';--Chip enable input
          SRAM_OE_N   : out   std_logic := '1';--Output enable input
          SRAM_WE_N   : out   std_logic := '1';--Write enable input
          -- señales internas del procesador
          address     : in    std_logic_vector(15 downto 0) := "0000000000000000";
          dataReaded  : out   std_logic_vector(15 downto 0);
          dataToWrite : in    std_logic_vector(15 downto 0);
          WR          : in    std_logic := '0';
          byte_m      : in    std_logic := '0');
end SRAMController;

architecture comportament of SRAMController is

	-- Creamos un nuevo tipo de variable numérica para los estados
	 type estat_type is (WRITING, NOTHING, WAITING); --F = Fetch
	 
	 --Definimos signal estado
	 signal estat : estat_type := NOTHING;
	 
	 signal wait_one : std_LOGIC := '0';

begin
	--SIGNALS BOARD: Disabled = 1; Enabled = 0;
	SRAM_CE_N <= '0';
	SRAM_OE_N <= '0';
	
	SRAM_UB_N <= '1' when WR = '1' and byte_m = '1' and address(0) = '0' else --disabled when write low byte
					 '0'; 
					 
	SRAM_LB_N <= '1' when WR = '1' and byte_m = '1' and address(0) = '1' else --disabled when write high byte
					 '0'; 
					 
--	SRAM_WE_N <= '0' when estat = WRITING else --WRITE
--					'1'; --LOAD or nothing
	
	SRAM_ADDR <= "000"&address(15 DOWNTO 1);
	SRAM_DQ <= (others=>'Z')when WR = '0' else --LOAD
				  dataToWrite when byte_m = '0' else --WRITE WORD
				  (15 DOWNTO 8 =>'Z') & dataToWrite(7 DOWNTO 0) when address(0) = '0' else --WRITE LOW BYTE
				  dataToWrite(7 DOWNTO 0) & (7 DOWNTO 0 =>'Z'); --WRITE UPPER BYTE
				  
	dataReaded <= SRAM_DQ when byte_m = '0' else --LOAD WORD
					  (15 DOWNTO 8 => SRAM_DQ(7)) & SRAM_DQ(7 DOWNTO 0) when address(0) = '0' else --LOAD BYTE PAR
					  (15 DOWNTO 8 => SRAM_DQ(15)) & SRAM_DQ(15 DOWNTO 8); --LOAD BYTE IMPAR
			
   write_m: process(WR, clk)
	begin
		if rising_edge(clk) then 
			case estat is
				when NOTHING =>
					SRAM_WE_N <= '1';
					if(WR = '1') then
						estat <= WRITING;
						SRAM_WE_N <= '0';
					else estat <= estat; --aguanta
					end if;
				when WRITING => -- Momento para empezar la escritura
					SRAM_WE_N <= '0';
					estat <= WAITING;
				when WAITING =>
					SRAM_WE_N <= '1';
					if(WR = '0') then
						estat <= NOTHING;
					else estat <= estat; --SIGUE CON LA ESCRITURA
					end if;
			end case;
		end if;
	end process;

end comportament;
