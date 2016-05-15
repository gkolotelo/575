library ieee;
use ieee.std_logic_1164.all;

entity comparator is
	port (
		C_in: in std_logic_vector(3 downto 0);
		C_out: out std_logic
	);
end comparator;
	
ARCHITECTURE behavior of comparator is
begin

	C_out <= C_in(3) and (C_in(2) or C_in(1));
end behavior;