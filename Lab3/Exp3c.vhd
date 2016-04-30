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

entity Exp3c is
    port(
        SW:     in std_logic_vector(1 downto 0);
        key:    in std_logic_vector(3 downto 0);
        LEDR:   out std_logic_vector(1 downto 0)
    );
end Exp3c;

architecture structural of Exp3c is
    component part2
        port(
            clk, D:     in std_logic;
            Q:      out std_logic
        );
    end component part2;
    signal Qm, s1, s2, s3, s4, s5, s6, s7: std_logic;
    attribute keep: boolean;
    attribute keep of Qm, s1, s2, s3, s4, s5, s6, s7: signal is true;
begin
    -- Kluge to test delay inaccuracy on the FPGA
    -- Later found to be due the lack of hysteresis on switches
    s1 <= not(key(2));
    s2 <= not(s1);
    s3 <= not(s2);
    s4 <= not(s3);
    s5 <= not(s4);
    s6 <= not(s5);
    s7 <= not(s6);

    p0: part2 port map (s7, sw(0), Qm);
    p1: part2 port map (key(2), Qm, LEDR(0));
    LEDR(1) <= Qm;

end structural;