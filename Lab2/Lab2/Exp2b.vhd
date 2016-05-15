library ieee;
use ieee.std_logic_1164.all;

entity Exp2b is
	PORT
	(
		SW : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		HEX0, HEX1, HEX2, HEX3: OUT STD_LOGIC_VECTOR(6 downto 0)
	);


end Exp2b;

architecture behavior of Exp2b is
	component decoder_7segment
		port (
			dec_in: in std_logic_vector(3 downto 0);
			dec_out: out std_logic_vector(6 downto 0)
		);
	end component decoder_7segment;
	
	component circuitA
		port (
			A_in: in std_logic_vector(2 downto 0);
			A_out: out std_logic_vector(2 downto 0)
		);
	end component circuitA;
	
	component circuitB
		port (
			B_in: in std_logic;
			B_out: out std_logic_vector(6 downto 0)
		);
	end component circuitB;
	
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
	
	signal gt_nine: std_logic;
	signal A_out: std_logic_vector(2 downto 0);
	signal m: std_logic_vector(3 downto 0);

begin
	cmp1: comparator port map (sw(3 downto 0), gt_nine);

	cA: circuitA port map (sw(2 downto 0), A_out);

	mux0: mux2to1 port map (sw(0), A_out(0), gt_nine, m(0));
	mux1: mux2to1 port map (sw(1), A_out(1), gt_nine, m(1));
	mux2: mux2to1 port map (sw(2), A_out(2), gt_nine, m(2));
	mux3: mux2to1 port map (sw(3), '0', gt_nine, m(3));

	cB: circuitB port map (gt_nine, hex1);
	d0: decoder_7segment port map (m, hex0);


end behavior;