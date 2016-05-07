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

entity decoder_traffic_sign is
    port (
        dec_in: in std_logic_vector(1 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end decoder_traffic_sign;
    
ARCHITECTURE behavior of decoder_traffic_sign is
    signal G, R, Y, NONE: std_logic;
begin


    G <= not(dec_in(1)) and not(dec_in(0));  --00
    Y <= not(dec_in(1)) and (dec_in(0));     --01
    R <= (dec_in(1)) and not(dec_in(0));     --10
    NONE <= (dec_in(1)) and (dec_in(0));     --11


    dec_out(0) <= G or Y or NONE;
    dec_out(1) <= G or Y or NONE;
    dec_out(2) <= R or Y or NONE;
    dec_out(3) <= R or Y or NONE;
    dec_out(4) <= R or Y or NONE;
    dec_out(5) <= G or Y or NONE;
    dec_out(6) <= NONE;
    
end behavior;