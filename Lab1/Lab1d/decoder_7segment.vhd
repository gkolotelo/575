library ieee;
use ieee.std_logic_1164.all;

entity decoder_7segment is
	port (
		dec_in: in std_logic_vector(2 downto 0);
		dec_out: out std_logic_vector(6 downto 0)
	);
end decoder_7segment;
	
ARCHITECTURE behavior of decoder_7segment is
begin
	-- 000 -> H -> 0,3
	-- 001 -> E -> 1,2
	-- 010 -> L -> 0,1,2,6
	-- 011 -> O -> 6
	
	dec_out(0) <= not(dec_in(2)) and not(dec_in(0));
	dec_out(1) <= (not(dec_in(2)) and not(dec_in(1)) and dec_in(0)) or (not(dec_in(2)) and dec_in(1) and not(dec_in(0)));
	dec_out(2) <= (not(dec_in(2)) and not(dec_in(1)) and dec_in(0)) or (not(dec_in(2)) and dec_in(1) and not(dec_in(0)));
	dec_out(3) <= not(dec_in(2)) and not(dec_in(1)) and not(dec_in(0));
	dec_out(4) <= '0';
	dec_out(5) <= '0';
	dec_out(6) <= not(dec_in(2)) and dec_in(1);
	
end behavior;