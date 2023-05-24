LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

package func_ayuda_control_pkg is

function hay_que_hacer_salto_relativo(ir : in STD_LOGIC_VECTOR; z : in  STD_LOGIC) return boolean;
function hay_que_hacer_salto_absoluto(ir : in STD_LOGIC_VECTOR; z : in  STD_LOGIC) return boolean;

end package func_ayuda_control_pkg;

package body func_ayuda_control_pkg is


function hay_que_hacer_salto_relativo(ir : in STD_LOGIC_VECTOR; z : in  STD_LOGIC) 
return boolean is
variable salto : boolean := false;
begin
	if ir(15 downto 12) = "0110" then
		if ir(8) = '0' and z = '1' then
			salto := true;
		elsif (ir(8) = '1') and z = '0' then
			salto := true;
		end if;
	end if;
	return salto;

end hay_que_hacer_salto_relativo;

function hay_que_hacer_salto_absoluto(ir : in STD_LOGIC_VECTOR; z : in  STD_LOGIC) 
return boolean is
variable salto : boolean := false;
begin
	if ir(15 downto 12) = "1010" then
		if ir(2 downto 0) = "000" and z = '1' then
			salto := true;
		elsif ir(2 downto 0) = "001" and z = '0' then
			salto := true;
		elsif ir(2 downto 0) = "011" or ir(2 downto 0) = "100" then
			salto := true;
		end if;
	end if;
	return salto;

end hay_que_hacer_salto_absoluto;




end package body func_ayuda_control_pkg;