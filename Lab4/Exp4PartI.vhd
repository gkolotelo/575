--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- 			Laboratorio 4: Contadores           --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Exp4PartI is
	port(
		KEY:		in std_logic_vector(0 downto 0);
		SW: 		in std_logic_vector(1 downto 0);
		HEX0, HEX1: out std_logic_vector(6 downto 0)
	);
end Exp4PartI;

architecture structural of Exp4PartI is
	component flipflop_t
		PORT ( 
			T, Clk, Rst : IN STD_LOGIC ;
			Q, Qn: OUT STD_LOGIC
		);
	end component flipflop_t;
	component decoder_7segment_hex
		port (
    	    dec_in: in std_logic_vector(3 downto 0);
    	    dec_out: out std_logic_vector(6 downto 0)
    	);
    end component decoder_7segment_hex;

	signal counter: std_logic_vector(7 downto 0);
	signal inputs: std_logic_vector(8 downto 0);
begin
	inputs(0) <= SW(1);
	counter_gen: for i in 0 to 7 generate
		ff_t: flipflop_t port map(
			T => inputs(i),
			Rst => SW(0),
			Clk => KEY(0),
			Q => counter(i));
		inputs(i+1) <= counter(i) and inputs(i);
	end generate counter_gen;

	dec0: decoder_7segment_hex port map (counter(3 downto 0), HEX0);
	dec1: decoder_7segment_hex port map (counter(7 downto 4), HEX1);


end structural;