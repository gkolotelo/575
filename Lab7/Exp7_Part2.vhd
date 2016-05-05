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

entity Exp7_Part2 is
	port (
			SW: in std_logic_vector(17 downto 0);
			LEDR: out std_logic_vector(8 downto 0);
			LEDG: out std_logic_vector(7 downto 0);
			KEY: in std_logic_vector(1 downto 0)
		  );
end Exp7_Part2;

architecture Behavior OF Exp7_Part2 is	
	
	signal W, Z: std_logic;
	signal clock, reset: std_logic;
	type state_type is (A, B, C, D, E, F, G, H, I);
	signal y_Q, y_D: state_type; -- y Q is present state, y D is next state

begin

	process (W, y_Q)
	begin
		case y_Q is
			when A if (W = ’0’) then y_D <= B;
		else y_D <= F;
		end if;
		--. . . outro estados
		end case;
	end process; -- tabela de estados

	process (clock)
	begin
	--. . .
	end process;


	clock <= not(KEY(1));
	reset <= not(KEY(0));
	W <= SW(0);
	
	
	
	Z <= Qe OR Qi;
	--LEDR(8 downto 0) <= Qi & Qh & Qg & Qf & Qe & Qd & Qc & Qb & Qa;
	LEDG(7 downto 0) <= (7 downto 0 => Z);
	
end Behavior;
