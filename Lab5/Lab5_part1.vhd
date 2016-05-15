--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 5: Timers e Relogios de          --
--                  Tempo Real                  --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Lab5_part1 is
    port(
        KEY:    in std_logic_vector(1 downto 0);
        SW:     in std_logic_vector(15 downto 0);
        LEDR:   out std_logic_vector(15 downto 0)
    );
end Lab5_part1;

architecture behavior of Lab5_part1 is
    component counter_k
        generic (
            -- Change 'n' for larger (or shorter) maximum values for 'k'
            n : natural := 8 -- 8bit counter
        );
        port (
            -- Standard maximum value = (255)decimal = (11111111)binary
            k       : in natural;
            clock   : in STD_LOGIC;
            reset_n : in STD_LOGIC;
            Q       : out STD_LOGIC_VECTOR(n-1 downto 0)
        );
    end component counter_k;
    signal clock, reset_n: std_logic;
    signal Q: STD_LOGIC_VECTOR(7 downto 0);
begin
    clock <=  not(KEY(1)); -- This way, it stays LOW unpressed and goes HIGH when pressed
    reset_n <= KEY(0);
    counter: counter_k
        --generic map( n => to_integer(unsigned(SW(15 downto 12)))); -- can n be reassigned, do we need it to?
        generic map(n => 8)
        --port map eight_bit(to_integer(unsigned(SW(11 downto 0))), clock, reset_n, Q); -- eight_bit???
        port map(to_integer(unsigned(SW(7 downto 0))), clock, reset_n, Q);
    LEDR(7 downto 0) <= Q;
	 
end behavior;