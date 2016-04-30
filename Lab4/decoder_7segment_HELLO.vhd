--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
--          Laboratorio 4: Contadores           --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity decoder_7segment_HELLO is
    port (
        dec_in: in std_logic_vector(2 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end decoder_7segment_HELLO;
    
ARCHITECTURE behavior of decoder_7segment_HELLO is
    signal sH, sE, sL, sO, sBlank: std_logic;
begin
    -- H        0 & 3
    -- E        1 & 2
    -- L        0 & 1 & 2 & 6
    -- O        6
    -- (blank)  0 & 1 & 2 & 3 & 4 & 5 & 6

    sH <= not(dec_in(2)) and not(dec_in(1)) and not(dec_in(0)); --000
    sE <= not(dec_in(2)) and not(dec_in(1)) and (dec_in(0));    --001
    sL <= not(dec_in(2)) and (dec_in(1)) and not(dec_in(0));    --010
    sO <= not(dec_in(2)) and (dec_in(1)) and (dec_in(0));       --011
    sBlank <= (dec_in(2)) and (dec_in(1)) and (dec_in(0));      --111

    -- Only ONE of the states (s0-sF) will be true, indicating the desired number to be displayed
    -- dec_out(i) HIGH state, means to light off i-th segment of the hex display
    dec_out(0) <= sH or sL or sBlank;
    dec_out(1) <= sE or sL or sBlank;
    dec_out(2) <= sE or sL or sBlank;
    dec_out(3) <= sH or sBlank;
    dec_out(4) <= sBlank;
    dec_out(5) <= sBlank;
    dec_out(6) <= sL or sO or sBlank;
    
end behavior;