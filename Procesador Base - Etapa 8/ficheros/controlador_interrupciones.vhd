LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY controlador_interrupciones IS
	PORT (boot 			: IN STD_LOGIC;
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
END controlador_interrupciones;

ARCHITECTURE Structure OF controlador_interrupciones IS

signal id, mem_id : STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN
	--timer_intr or 
	intr <=  key_intr or switch_intr or ps2_intr or tim_intr;
		
	--FUNC: process que pone en el iid el valor de la interrupcion que se tiene que tratar
	--EXP: cuando recibe un cambio en algun intr pone el iid de la interrupcion mas prioritaria en el signal iid. 
	--Se usa la comprobacion de que solo puede cambiar el iid cuando el inta = '0' para evitar que durante la ejecucion del getid, 
	--cuando se pone el inta del dispositivo en cuestion a '1' y por tanto el intr de este baja a '0', el iid cambie al de un dispositivo distinto
	-- al que se esta atendiendo. Se usa la señal clk para que cuando se acabe el ciclo de getid se actualize el iid.

	process (inta) begin
	if rising_edge(inta) then
		mem_id <= id;
	end if;
	end process;
	
	process (inta, boot) begin
		tim_inta <= '0';
		key_inta <= '0';
		switch_inta <= '0';
		ps2_inta <= '0';
		if boot = '1' then
			tim_inta <= '1';
			key_inta <= '1';
			switch_inta <= '1';
			ps2_inta <= '1';
		end if;
		if (inta = '1') then
			if mem_id = "00000000" then
				tim_inta <= '1';
			elsif mem_id = "00000001" then
				key_inta <= '1';
			elsif mem_id = "00000010" then
				switch_inta <= '1';
			elsif mem_id = "00000011" then
				ps2_inta <= '1';
			end if;
		end if;
	end process;


	id <= "00000000" when tim_intr = '1' else
			"00000001" when key_intr = '1' else
			"00000010" when switch_intr = '1' else
			"00000011" when ps2_intr = '1' else
			"11111111";
	
	iid <= mem_id;
END Structure; 