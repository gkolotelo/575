--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 6: Somadores, Subtratores        --
--             e Multiplicadores                --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity Exp6_Part1 is
	port (SW: in std_logic_vector(7 downto 0);
		  LEDR: out std_logic_vector(8 downto 0);
		  KEY: in std_logic_vector(1 downto 0)
		);
end Exp6_Part1;

architecture Behavior OF Exp6_Part1 is	
	component FA_nbits
		generic (
    	    n : natural := 8
    	);
		port (a, b: in std_logic_vector(n-1 downto 0);
		      Cin: in std_logic;
		      Sum: out std_logic_vector(n-1 downto 0);
		      Cout: out std_logic);
	end component;
	component flipflop_d_nbits
    	generic (
    	    n : natural := 8
    	);
    	port (
    	    D: in std_logic_vector(n-1 downto 0);
    	    Clk, Rst : in std_logic;
    	    Q, Qn: out std_logic_vector(n-1 downto 0)
    	);
	end component ;

	signal clock, reset: std_logic;
	signal A, S, Din_out, FA_out: std_logic_vector(7 downto 0);
	signal cout, overflow: std_logic_vector(0 downto 0);

begin

	clock <= not(KEY(1));
	reset <= not(KEY(0));
	A <= SW(7 downto 0);
	LEDR(8) <= overflow(0);
	LEDR(7 downto 0) <= S;

	Din: flipflop_d_nbits port map (D => A,
									Clk => clock,
									Rst => reset,
									Q => Din_out);
	FA: FA_nbits port map(Din_out, S, '0', FA_out, cout(0));
	Dout: flipflop_d_nbits port map(D => FA_out,
									Clk => clock,
									Rst => reset,
									Q => S);
	Dcontrol: flipflop_d_nbits
		generic map( n => 1)
		port map(D => cout,
				 Clk => clock,
				 Rst => reset,
				 Q => overflow);

end Behavior;
