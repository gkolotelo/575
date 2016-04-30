--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 3: Latches, Flip-Flops e         --
--                  Registradores               --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Exp3b is
    port(
        SW:     in std_logic_vector(1 downto 0);
        LEDR:   out std_logic_vector(1 downto 0)
    );
end Exp3b;

architecture structural of Exp3b is
    component part2
        port(
            clk, D:     in std_logic;
            Q:      out std_logic
        );
    end component part2;
    
begin
    -- Testing [part2's] latch D implementation
    p2: part2 port map (sw(1), sw(0), LEDR(0));

end structural;