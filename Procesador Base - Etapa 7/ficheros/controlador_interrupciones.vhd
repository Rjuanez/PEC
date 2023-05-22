LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

ENTITY controlador_interrupciones IS
	PORT (boot 			: IN STD_LOGIC;
			clk 			: IN std_logic;
			inta			: IN STD_LOGIC;
			intr			: OUT STD_LOGIC;
			timer_inta	: OUT STD_LOGIC;
			timer_intr	: IN STD_LOGIC;
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

signal id : STD_LOGIC_VECTOR(7 downto 0);
signal inta_called, done : STD_LOGIC := '0';
	
BEGIN
	--timer_intr or 
	intr <=  key_intr or switch_intr or ps2_intr or tim_intr;
		
	--FUNC: process que pone en el iid el valor de la interrupcion que se tiene que tratar
	--EXP: cuando recibe un cambio en algun intr pone el iid de la interrupcion mas prioritaria en el signal iid. 
	--Se usa la comprobacion de que solo puede cambiar el iid cuando el inta = '0' para evitar que durante la ejecucion del getid, 
	--cuando se pone el inta del dispositivo en cuestion a '1' y por tanto el intr de este baja a '0', el iid cambie al de un dispositivo distinto
	-- al que se esta atendiendo. Se usa la señal clk para que cuando se acabe el ciclo de getid se actualize el iid.
	process (key_intr, switch_intr, ps2_intr, tim_intr, clk) begin
		if (inta = '0') then
			if (tim_intr = '1') then
				id <= "00000000";
			elsif (key_intr = '1') then
				id <= "00000001";
			elsif (switch_intr = '1') then
				id <= "00000010";
			elsif (ps2_intr = '1') then
				id <= "00000011";
			else 
				id <= "00001111";
			end if;
		end if;
	end process;
	
	--FUNC: levanta el inta de los dispostivos dependiendo del id
	process (inta, boot, clk) begin
		if boot = '1' then
			key_inta <= '1';
			switch_inta <= '1';
			ps2_inta <= '1';
			tim_inta <= '1';
		end if;
		key_inta <= '0';
		switch_inta <= '0';
		ps2_inta <= '0';
		tim_inta <= '0';
		done <= '0';
		if (inta = '1') then
			inta_called <= '1';
		elsif (inta = '0' and inta_called = '1') then
			inta_called <= '0';
			case id is
				when "00000000" =>
					tim_inta <= '1';
				when "00000001" =>
					key_inta <= '1';
				when "00000010" =>
					switch_inta <= '1';
				when "00000011" =>
					ps2_inta <= '1';
				when others =>
					NULL;
			end case;
		end if;
		
	end process;
	iid <= id;
END Structure; 