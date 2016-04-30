library ieee;
use ieee.std_logic_1164.all;

entity circuitB is
	port (
		B_in: in std_logic;
		B_out: out std_logic_vector(6 downto 0)
	);
end circuitB;
	
ARCHITECTURE behavior of circuitB is

	component decoder_7segment
		port (
			dec_in: in std_logic_vector(3 downto 0);
			dec_out: out std_logic_vector(6 downto 0)
		);
	end component decoder_7segment;

begin

	d0: decoder_7segment port map (('0'&'0'&'0'&B_in), B_out);
	
end behavior;