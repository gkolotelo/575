library ieee;
use ieee.std_logic_1164.all;

entity decoder_7segment is
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end decoder_7segment;
    
ARCHITECTURE behavior of decoder_7segment is
    signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9: std_logic;
begin
    -- 0    1 or 4
    -- 1    5 or 6
    -- 2    2
    -- 3    1 or 4 or 7 or 9
    -- 4    1 or 3 or 4 or 5 or 7 or 9
    -- 5    1 or 2 or 3 or 7
    -- 6    0 or 1 or 7


    s0 <= not(dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and not(dec_in(0));
    s1 <= not(dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and (dec_in(0));
    s2 <= not(dec_in(3)) and not(dec_in(2)) and (dec_in(1)) and not(dec_in(0));
    s3 <= not(dec_in(3)) and not(dec_in(2)) and (dec_in(1)) and (dec_in(0));
    s4 <= not(dec_in(3)) and (dec_in(2)) and not(dec_in(1)) and not(dec_in(0));
    s5 <= not(dec_in(3)) and (dec_in(2)) and not(dec_in(1)) and (dec_in(0));
    s6 <= not(dec_in(3)) and (dec_in(2)) and (dec_in(1)) and not(dec_in(0));
    s7 <= not(dec_in(3)) and (dec_in(2)) and (dec_in(1)) and (dec_in(0));
    s8 <= (dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and not(dec_in(0));
    s9 <= (dec_in(3)) and not(dec_in(2)) and not(dec_in(1)) and (dec_in(0));

    dec_out(0) <= s1 or s4;
    dec_out(1) <= s5 or s6;
    dec_out(2) <= s2;
    dec_out(3) <= s1 or s4 or s7 or s9;
    dec_out(4) <= s1 or s3 or s4 or s5 or s7 or s9;
    dec_out(5) <= s1 or s2 or s3 or s7;
    dec_out(6) <= s0 or s1 or s7;
    
end behavior;