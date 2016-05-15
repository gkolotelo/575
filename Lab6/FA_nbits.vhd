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

entity FA_nbits is
	generic (
        n : natural := 8
    );
	port (a, b: in std_logic_vector(n-1 downto 0);
	      Cin: in std_logic;
	      Sum: out std_logic_vector(n-1 downto 0);
	      Cout: out std_logic);
end FA_nbits;

architecture Behavior OF FA_nbits is	
	signal aux_sum: std_logic_vector(n downto 0);

begin
	aux_sum <= ('0' & a) + ('0' & b) + Cin;
	Sum <= aux_sum(n-1 downto 0);
	Cout <= aux_sum(n);

end Behavior;
