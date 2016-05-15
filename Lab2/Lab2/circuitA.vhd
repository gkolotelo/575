library ieee;
use ieee.std_logic_1164.all;

entity circuitA is
	port (
		A_in: in std_logic_vector(2 downto 0);
		A_out: out std_logic_vector(2 downto 0)
	);
end circuitA;
	
ARCHITECTURE behavior of circuitA is
	-- signal s10, s11, s12, s13, s14, s15: std_logic;
	signal s11, s12, s13, s14, s15: std_logic;
begin

	-- s10 <= (not(A_in(2)) and (A_in(1)) and not(A_in(0));
	s11 <= not(A_in(2)) and (A_in(1)) and (A_in(0));
	s12 <= (A_in(2)) and not(A_in(1)) and not(A_in(0));
	s13 <= (A_in(2)) and not(A_in(1)) and (A_in(0));
	s14 <= (A_in(2)) and (A_in(1)) and not(A_in(0));
	s15 <= (A_in(2)) and (A_in(1)) and (A_in(0));
	
	A_out(2) <= s14 or s15;
	A_out(1) <= s12 or s13;
	A_out(0) <= s11 or s13 or s15;
	
end behavior;