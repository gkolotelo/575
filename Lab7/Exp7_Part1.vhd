--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
--              Laboratorio 7: FSM              --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Exp7_Part1 is
	port (
			SW: in std_logic_vector(17 downto 0);
			LEDR: out std_logic_vector(8 downto 0);
			LEDG: out std_logic_vector(7 downto 0);
			KEY: in std_logic_vector(1 downto 0)
		  );
end Exp7_Part1;

architecture Behavior OF Exp7_Part1 is	
	component flipflop_d
		PORT ( 
			D, Clk, Rst : IN STD_LOGIC ;
			Q, Qn: OUT STD_LOGIC
		);
	END component;

	signal W, Z: std_logic;
	signal Qa, Qb, Qc, Qd, Qe, Qf, Qg, Qh, Qi: std_logic;
	signal clock, reset: std_logic;

begin

	clock <= not(KEY(1));
	reset <= not(KEY(0));
	W <= SW(0);
	
	A: flipflop_d port map (D=>'1', Clk=>clock, Rst=>reset, Q=>Qa);
	B: flipflop_d port map (D=> ((NOT(Qa) OR Qf OR Qg OR Qh OR Qi) AND NOT(W)), Clk=>clock, Rst=>reset, Q=>Qb);
	C: flipflop_d port map (D=> (Qb AND NOT(W)), Clk=>clock, Rst=>reset, Q=>Qc);
	D: flipflop_d port map (D=> (Qc AND NOT(W)), Clk=>clock, Rst=>reset, Q=>Qd);
	E: flipflop_d port map (D=> ((Qd OR Qe) AND NOT(W)), Clk=>clock, Rst=>reset, Q=>Qe);
	F: flipflop_d port map (D=> ((NOT(Qa) OR Qb OR Qc OR Qd OR Qe) AND W), Clk=>clock, Rst=>reset, Q=>Qf);
	G: flipflop_d port map (D=> (Qf AND W), Clk=>clock, Rst=>reset, Q=>Qg);
	H: flipflop_d port map (D=> (Qg AND W), Clk=>clock, Rst=>reset, Q=>Qh);
	I: flipflop_d port map (D=> ((Qi OR Qh) AND W), Clk=>clock, Rst=>reset, Q=>Qi);
	
	Z <= Qe OR Qi;
	LEDR(8 downto 0) <= Qi & Qh & Qg & Qf & Qe & Qd & Qc & Qb & Qa;
	LEDG(7 downto 0) <= (7 downto 0 => Z);
	
end Behavior;
