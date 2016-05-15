library ieee;
use ieee.std_logic_1164.all;

entity BCD_1digit_adder is
	PORT
	(
		digit0_in, digit1_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		C_in: IN std_logic;
		BCD_out: OUT STD_LOGIC_VECTOR(3 downto 0);
		C_out: OUT std_logic
	);

end BCD_1digit_adder;

architecture behavior of BCD_1digit_adder is

	component comparator
		port (
			C_in: in std_logic_vector(3 downto 0);
			C_out: out std_logic
		);
	end component comparator;

	component mux2to1
		port (a, b, s: in std_logic;
			m: out std_logic);
	end component mux2to1;
	
	component FA_4bit
		port (a, b: in std_logic_vector(3 downto 0);
	      Cin: in std_logic;
	      Sum: out std_logic_vector(3 downto 0);
	      Cout: out std_logic);
	end component FA_4bit;
	
	component mux2to1_4bit
		port (a, b: in std_logic_vector(3 downto 0);
			s: in std_logic;
			m: out std_logic_vector(3 downto 0)
		);
	end component mux2to1_4bit;
	
	signal gt_nine, FA0_c_out, mux01_s, FA1_c_out: std_logic;
	signal FA0_out, FA1_out: std_logic_vector(3 downto 0);

begin

	FA0: FA_4bit port map (digit0_in, digit1_in,C_in, FA0_out, FA0_c_out);
	
	cmp0: comparator port map (FA0_out, gt_nine);

	mux01_s <= gt_nine or FA0_c_out;
	
	FA1: FA_4bit port map (FA0_out, '0'&'1'&'1'&'0', '0', FA1_out, FA1_c_out);

	mux0: mux2to1_4bit port map (FA0_out, FA1_out, mux01_s, BCD_out);
	--mux1: mux2to1 port map ('0', FA1_c_out, mux01_s, C_out);
	C_out <= mux01_s;

end behavior;