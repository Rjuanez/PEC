library ieee;
USE ieee.std_logic_1164.all;

entity multi is
    port(clk       	: IN  STD_LOGIC;
         boot      	: IN  STD_LOGIC;
         ldpc_l    	: IN  STD_LOGIC;
         wrd_l     	: IN  STD_LOGIC;
         wr_m_l    	: IN  STD_LOGIC;
         w_b       	: IN  STD_LOGIC;
         ldpc      	: OUT STD_LOGIC;
         wrd       	: OUT STD_LOGIC;
         wr_m      	: OUT STD_LOGIC;
         ldir      	: OUT STD_LOGIC;
         ins_dad   	: OUT STD_LOGIC;
         word_byte 	: OUT STD_LOGIC;
			to_system 	: IN  STD_LOGIC;
			system_act	: OUT STD_LOGIC;
			exception 	: IN	STD_LOGIC;
			wr_sys_l		: IN 	STD_LOGIC;
			wr_sys		: OUT	STD_LOGIC;
			excep_UP_F	: IN	STD_LOGIC);
end entity;

architecture Structure of multi is

    -- Aqui iria la declaracion de las los estados de la maquina de estados
	 -- Creamos un nuevo tipo de variable numérica para los estados
	 type estat_type is (F, DEMW, SYSTEM); --F = Fetch
	 
	 --Definimos signal estado
	 signal estat : estat_type;

begin
    -- Lógica para avanzar al siguiente estado
--	 graf: process(clk, boot)
--	 begin
--		if boot = '1' then
--			estat <= F;
--		elsif rising_edge(clk) then
--			case estat is
--				when F =>
--						estat <= DEMW;
--				when DEMW =>
--						estat <= F;
--			end case;
--		end if;
--	 end process;

	 graf: process(clk, boot)
	 begin
		if boot = '1' then
				estat <= F;
		elsif rising_edge(clk) then
			if estat = F and excep_UP_F = '1' then
				estat <= SYSTEM;
			elsif estat = F then
				estat <= DEMW;
			elsif estat = DEMW and to_system = '1' then
				estat <= SYSTEM;
			else 
				estat <= F;
			end if;
		end if;
	 end process;
	 
	 
    -- Aqui irian la generacion de las senales de control que su valor depende del ciclo en que se esta.
	 ldpc <= ldpc_l when estat = DEMW or estat = SYSTEM else '0'; -- 0 si Fetch
	 wrd <= wrd_l when estat = DEMW else '0';
	 wr_m <= wr_m_l when estat = DEMW else '0';
	 word_byte <= w_b when estat = DEMW else '0';
	 ins_dad <= '1' when estat = DEMW else '0'; -- 1: ALU; 0: PC
	 ldir <= '0' when estat = DEMW else '1'; -- Se carga un nuevo valor de IR solo en Fetch
	 system_act <= '1' when estat = SYSTEM else '0';
	 wr_sys <= wr_sys_l when estat = DEMW else '0';
end Structure;
