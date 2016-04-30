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

entity Exp3d is
    port(
        SW:     in std_logic_vector(0 downto 0);
        KEY:    in std_logic_vector(3 downto 0);
        LEDR:   out std_logic_vector(5 downto 0)
    );
end Exp3d;

architecture structural of Exp3d is
    component latch_d
        PORT ( 
            D, Clk, Rst : IN STD_LOGIC ;
            Q, Qn : OUT STD_LOGIC
        );
    END component latch_d;

    component flipflop_d
        PORT ( 
            D, Clk, Rst : IN STD_LOGIC ;
            Q, Qn : OUT STD_LOGIC
        );
    END component flipflop_d;
begin
    -- Clock signal is simulated by key(0)
    -- Reset signal is simulated by key(3)
    -- key(3 downto 0) pushed state gives LOW signal, thus they were negated for practicity.

    -- Latch D (behavioral model)
    latch: latch_d port map (sw(0), not(KEY(0)), not(key(3)), ledr(5), ledr(4));
    -- Flip-Flop D (behavioral model)
    ffD: flipflop_d port map (sw(0), not(KEY(0)), not(key(3)), ledr(3), ledr(2));
    -- Flip-Flop D with negated input signal (behavioral model) 
    nffD: flipflop_d port map (sw(0), not(not(KEY(0))), not(key(3)), ledr(1), ledr(0));
end structural;