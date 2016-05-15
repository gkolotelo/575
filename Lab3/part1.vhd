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

entity part1 is
	port(
		clk, R, S: 	in std_logic;
		Q: 			out std_logic
	);
end part1;

architecture structural of part1 is
	signal R_g, S_g, Qa, Qb: std_logic;
	attribute keep: boolean;
	attribute keep of R_g, S_g, Qa, Qb: signal is true;

begin
	R_g <= R and clk;
	S_g <= S and clk;
	Qa <= not(R_g or Qb);
	Qb <= not(S_g or Qa);
	Q <= Qa;

end structural;