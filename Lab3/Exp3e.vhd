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

entity Exp3e is
    port(
        SW:     in std_logic_vector(15 downto 0);
        KEY:    in std_logic_vector(3 downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
    );
end Exp3e;

architecture behavior of Exp3e is
    component flipflop_d
        PORT ( 
            D, Clk, Rst : IN STD_LOGIC ;
            Q, Qn : OUT STD_LOGIC
        );
    END component flipflop_d;

    component decoder_7segment_hex
        PORT (
            dec_in: IN std_logic_vector(3 downto 0);
            dec_out: OUT std_logic_vector(6 downto 0)
        );
    END component decoder_7segment_hex;

    signal O: STD_LOGIC_vector(15 downto 0);
begin
    -- Generating signal register O(15 downto 0), from the Flip-Flop Ds
    -- Stores input signal only at clock HIGH event
    GEN_ffd: for I in 15 downto 0 generate
        ffd: flipflop_d port map (
            D => SW(I),
            Clk => not(KEY(0)),
            Rst => not(key(3)),
            Q => O(I)
        );
    end generate GEN_ffd;

    -- Display values stored in register O(15 downto 0)
    dec_A_3: decoder_7segment_hex port map (O(15 downto 12), HEX7);
    dec_A_2: decoder_7segment_hex port map (O(11 downto 8), HEX6);
    dec_A_1: decoder_7segment_hex port map (O(7 downto 4), HEX5);
    dec_A_0: decoder_7segment_hex port map (O(3 downto 0), HEX4);

    -- Always display current input
    dec_B_3: decoder_7segment_hex port map (SW(15 downto 12), HEX3);
    dec_B_2: decoder_7segment_hex port map (SW(11 downto 8), HEX2);
    dec_B_1: decoder_7segment_hex port map (SW(7 downto 4), HEX1);
    dec_B_0: decoder_7segment_hex port map (SW(3 downto 0), HEX0);

end behavior;