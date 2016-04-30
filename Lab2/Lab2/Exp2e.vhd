library ieee;
use ieee.std_logic_1164.all;

entity Exp2e is
	PORT
	(
		SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		HEX0, HEX1, HEX2: OUT STD_LOGIC_VECTOR(6 downto 0)
	);


end Exp2e;

architecture behavior of Exp2e is
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
	
	signal gt_nine, BCD0_c_out, BCD1_c_out: std_logic;
	signal BCD0_out, BCD1_out: std_logic_vector(3 downto 0);

begin

	BCD_adder0: BCD_1digit_adder port map (sw(11 downto 8), sw(3 downto 0), '0', BCD0_out, BCD0_c_out);
	BCD_adder1: BCD_1digit_adder port map (sw(15 downto 12), sw(7 downto 4), BCD0_c_out, BCD1_out, BCD1_c_out);

	d0: decoder_7segment port map (BCD0_out, hex0);
	d1: decoder_7segment port map (BCD1_out, hex1);
	d2: circuitB port map (BCD1_c_out, hex2);


end behavior;