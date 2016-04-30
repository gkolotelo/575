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

entity Exp4PartIII is
	port(
		KEY:		in std_logic_vector(0 downto 0);
		SW: 		in std_logic_vector(1 downto 0);
		HEX0, HEX1, HEX2, HEX3: out std_logic_vector(6 downto 0)
	);
end Exp4PartIII;

architecture behavior of Exp4PartIII is
	component counter_lpm
	PORT(
		aclr		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END component counter_lpm;
	component decoder_7segment_hex
		port (
    	    dec_in: in std_logic_vector(3 downto 0);
    	    dec_out: out std_logic_vector(6 downto 0)
    	);
    end component decoder_7segment_hex;

	signal counter: std_logic_vector(15 downto 0);
	signal Enable, Clk, Rst: std_logic;
begin
	Enable 	<= SW(1);
	Clk 	<= KEY(0);
	Rst 	<= SW(0);

	count: counter_lpm port map (Rst, Clk, Enable, counter);
	dec0: decoder_7segment_hex port map (counter(3 downto 0), HEX0);
	dec1: decoder_7segment_hex port map (counter(7 downto 4), HEX1);
	dec2: decoder_7segment_hex port map (counter(11 downto 8), HEX2);
	dec3: decoder_7segment_hex port map (counter(15 downto 12), HEX3);

end behavior;