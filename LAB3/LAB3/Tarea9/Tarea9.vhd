LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

ENTITY Tarea9 IS
    PORT (
        CLOCK_50  : IN    STD_LOGIC;                      -- DE-series 50 MHz clock signal
        KEY       : IN    STD_LOGIC_VECTOR( 3 DOWNTO 0);  -- DE-series pushbuttons
        SW        : IN    STD_LOGIC_VECTOR( 9 DOWNTO 0);  -- DE-series switches
        HEX0      : OUT   STD_LOGIC_VECTOR( 6 DOWNTO 0);  -- DE-series HEX displays
		  HEX1      : OUT   STD_LOGIC_VECTOR( 6 DOWNTO 0);
		  HEX2		  : OUT   STD_LOGIC_VECTOR( 6 DOWNTO 0);
		  HEX3      : OUT   STD_LOGIC_VECTOR( 6 DOWNTO 0);
        LEDR      : OUT   STD_LOGIC_VECTOR( 9 DOWNTO 0);  -- DE-series LEDs
		  LEDG		: OUT	  STD_LOGIC_VECTOR( 9 DOWNTO 0)   -- DE-series LEDs
    );
END Tarea9;

ARCHITECTURE Behavior OF Tarea9 IS

    COMPONENT codificador IS
    PORT( codigoCaracter : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 bitsHex : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			 bitsMorse : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
			 final : OUT integer);
    END COMPONENT;

    SIGNAL prescaler : STD_logic_vector(24 downto 0):= "0000000000000000000000000";
    SIGNAL clock_1hz : STD_logic := '0';
    SIGNAL morse : STD_logic_vector(12 downto 0);

    SIGNAL s_empezar : STD_logic := '0';
    SIGNAL a_empezar : STD_logic := '0';

    SIGNAL s_abortar : STD_logic := '0';
    SIGNAL a_abortar : STD_logic := '0';
   
    SIGNAL counter : integer:= 0;
	 SIGNAL final : integer;
	--SIGNAL counter : STD_logic_vector(3 downto 0);
BEGIN
     
    C1 : codificador PORT MAP (SW(2 DOWNTO 0), HEX0, morse, final);
    clock_1hz <= prescaler(23);
	 HEX1 <= (others => '1');
	 HEX2 <= (others => '1');
	 HEX3 <= (others => '1');
   

    contador_p : process(CLOCK_50) 
	 begin
		 if rising_edge(CLOCK_50) then
			prescaler <= prescaler +1;
		 end if;
    end process contador_p;

    contador_1hz : process(clock_1hz)
	 begin
		if rising_edge(clock_1hz) then
			if s_abortar = '1' then
				a_abortar <= '1';
				counter <= 0;
				LEDG(0) <= '0';
				LEDR(0) <= '1';
			elsif s_empezar = '1' then
				a_empezar <= '1';
				LEDG(0) <= '1';
				LEDR(0) <= '0';
				counter <= 1;
			elsif s_empezar = '0' and counter > 0 then
				a_empezar <= '0';
				if (counter = final) then
					counter <= 0;
					LEDG(0) <= '0';
					LEDR(0) <= '1';
				else
					LEDG(0) <= morse(counter);
					counter <= counter + 1;
				end if;
			else
				a_abortar <= '0';
				LEDG(0) <= '0';
				LEDR(0) <= '1';
			end if;
		end if;
    end process contador_1hz;

	pulsador_p : process(KEY(1), a_empezar) 
	begin
		if falling_edge(KEY(1)) then
			s_empezar <= '1';
		end if;
		if a_empezar = '1' then
			s_empezar <= '0';
		end if;
	end process pulsador_p;

	pulsador2_p : process(KEY(0), a_abortar) 
	begin
		if falling_edge(KEY(0)) then
			s_abortar <= '1';
		end if;
		if a_abortar = '1' then
			s_abortar <= '0';
		end if;
	end process pulsador2_p;

END Behavior;