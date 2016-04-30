--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 3: Latches, Flip-Flops e         --
--                  Registradores               --
--------------------------------------------------

-- A gated RS latch described the hard way

library ieee;
use ieee.std_logic_1164.all;

entity part2 is
	port(
		clk, D: 	in std_logic;
		Q: 		out std_logic
	);
end part2;

architecture structural of part2 is
	signal R_g, S_g, Qa, Qb: std_logic;
	attribute keep: boolean;
	attribute keep of R_g, S_g, Qa, Qb: signal is true;

begin
	R_g <= not(not(D) and clk);
	S_g <= not(D and clk);
	Qa <= not(S_g and Qb);
	Qb <= not(R_g and Qa);
	Q <= Qa;

end structural;