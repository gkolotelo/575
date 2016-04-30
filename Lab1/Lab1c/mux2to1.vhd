library ieee;
use ieee.std_logic_1164.all;

entity mux2to1 is
	port (a, b, s: in std_logic;
		m: out std_logic);
	end mux2to1;

architecture behavior of mux2to1 is
begin
	m <= (not(s) and a) or (s and b);
end behavior;