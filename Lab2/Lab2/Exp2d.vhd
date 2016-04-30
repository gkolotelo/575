library ieee;
use ieee.std_logic_1164.all;

entity Exp2d is
	PORT
	(
		SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(6 downto 0)
	);


end Exp2d;

architecture behavior of Exp2d is
	component decoder_7segment
		port (
			dec_in: in std_logic_vector(3 downto 0);
			dec_out: out std_logic_vector(6 downto 0)
		);
	end component decoder_7segment;

	component BCD_1digit_adder
		PORT
		(
			digit0_in, digit1_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			C_in: IN std_logic;
			BCD_out: OUT STD_LOGIC_VECTOR(3 downto 0);
			C_out: OUT std_logic
		);
	end component BCD_1digit_adder;
	
	component circuitB
		port (
			B_in: in std_logic;
			B_out: out std_logic_vector(6 downto 0)
		);
	end component circuitB;
	
	signal gt_nine, BCD0_c_out: std_logic;
	signal BCD0_out: std_logic_vector(3 downto 0);

begin

	BCD_adder0: BCD_1digit_adder port map (sw(7 downto 4), sw(3 downto 0), sw(8), BCD0_out, BCD0_c_out);

	d0: decoder_7segment port map (BCD0_out, hex0);
	d1: circuitB port map (BCD0_c_out, hex1);


end behavior;