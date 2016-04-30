library ieee;
use ieee.std_logic_1164.all;

entity Exp1d is
	port (
		hex0: out std_logic_vector(6 downto 0);
		sw: in std_logic_vector(17 downto 0)
	);
end Exp1d;
	
ARCHITECTURE behavior of Exp1d is
	component decoder_7segment is
		port (
			dec_in: in std_logic_vector(2 downto 0);
			dec_out: out std_logic_vector(6 downto 0)
		);
	end component decoder_7segment;
begin
	dec: decoder_7segment port map (sw(2 downto 0), hex0);
end behavior;