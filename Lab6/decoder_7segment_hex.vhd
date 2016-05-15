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

entity decoder_7segment_hex is
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end decoder_7segment_hex;
    
ARCHITECTURE behavior of decoder_7segment_hex is
    signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sA, sB, sC, sD, sE, sF: std_logic;
begin
    -- 0    1 or 4 or B or D
    -- 1    5 or 6 or B or C or F
    -- 2    2 or C or F
    -- 3    1 or 4 or 7 or 9 or A or F
    -- 4    1 or 3 or 4 or 5 or 7 or 9
    -- 5    1 or 2 or 3 or 7 or D
    -- 6    0 or 1 or 7 or C

    s0 <= not(dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and not(dec_in(0));  --0000
    s1 <= not(dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and (dec_in(0));     --0001
    s2 <= not(dec_in(3)) and not(dec_in(2)) and (dec_in(1)) and not(dec_in(0));     --0010
    s3 <= not(dec_in(3)) and not(dec_in(2)) and (dec_in(1)) and (dec_in(0));        --0011
    s4 <= not(dec_in(3)) and (dec_in(2)) and not(dec_in(1)) and not(dec_in(0));     --0100
    s5 <= not(dec_in(3)) and (dec_in(2)) and not(dec_in(1)) and (dec_in(0));        --0101
    s6 <= not(dec_in(3)) and (dec_in(2)) and (dec_in(1)) and not(dec_in(0));        --0110
    s7 <= not(dec_in(3)) and (dec_in(2)) and (dec_in(1)) and (dec_in(0));           --0111
    s8 <= (dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and not(dec_in(0));     --1000
    s9 <= (dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and (dec_in(0));        --1001
    sA <= (dec_in(3)) and not(dec_in(2)) and (dec_in(1)) and not(dec_in(0));        --1010
    sB <= (dec_in(3)) and not(dec_in(2)) and (dec_in(1)) and (dec_in(0));           --1011
    sC <= (dec_in(3)) and (dec_in(2)) and not(dec_in(1)) and not(dec_in(0));        --1100
    sD <= (dec_in(3)) and (dec_in(2)) and not(dec_in(1)) and (dec_in(0));           --1101
    sE <= (dec_in(3)) and (dec_in(2)) and (dec_in(1)) and not(dec_in(0));           --1110
    sF <= (dec_in(3)) and (dec_in(2)) and (dec_in(1)) and (dec_in(0));              --1111

    -- Only ONE of the states (s0-sF) will be true, indicating the desired number to be displayed
    -- dec_out(i) HIGH state, means to light off i-th segment of the hex display
    dec_out(0) <= s1 or s4 or sB or sD;
    dec_out(1) <= s5 or s6 or sB or sC or sE or sF;
    dec_out(2) <= s2 or sC or sE or sF;
    dec_out(3) <= s1 or s4 or s7 or s9 or sA or sF;
    dec_out(4) <= s1 or s3 or s4 or s5 or s7 or s9;
    dec_out(5) <= s1 or s2 or s3 or s7 or sD;
    dec_out(6) <= s0 or s1 or s7 or sC;
    
end behavior;