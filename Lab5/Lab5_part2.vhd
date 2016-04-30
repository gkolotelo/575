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
use ieee.std_logic_arith;

entity Lab5_part2 is
    port(
        KEY:                                    in std_logic_vector(1 downto 0);
        SW:                                     in std_logic_vector(17 downto 0);
        CLOCK_50:                               in std_logic;
        HEX7, HEX6, HEX5, HEX4, HEX3, HEX2 :    out std_logic_vector(6 downto 0); --6?
        LEDR:                                   out std_logic_vector(15 downto 0)
    );
end Lab5_part2;

architecture behavior of Lab5_part2 is
    component counter_k_init
        generic (
            -- Change 'n' for larger (or shorter) maximum values for 'k'
            n : natural := 8
        );
        port (
            -- Standard maximum value = (256)decimal = (11111111)binary
            k       : in natural;
            clock   : in STD_LOGIC;
            reset_n : in STD_LOGIC;
            Q       : out STD_LOGIC_VECTOR(n-1 downto 0);
            init    : in natural;
            completed: out std_logic
        );
    end component counter_k_init;
    attribute completed: std_logic;
    attribute completed of counter_k_init: component is '0';
    component decoder_7segment_hex
        PORT (
            dec_in: IN std_logic_vector(3 downto 0);
            dec_out: OUT std_logic_vector(6 downto 0)
        );
    END component decoder_7segment_hex;

    signal reset_n, clock: std_logic;
    signal s_base: std_logic_vector(31 downto 0);
    signal s_hours, s_minutes, s_seconds: std_logic_vector(5 downto 0); -- 2 digits (XY)decimal, (xxxx yyyy)binary
    signal completed_base, completed_seconds, completed_minutes, completed_hours: std_logic;
    signal hA, hB, mC, mD, sE, sF: integer;
begin
	 -- Counters Block. base, second, minute and hour counters:
    reset_n <= KEY(0);
	 -- Base counter: completed_base goes high every 1 second. Used as clock signal for second counter.
    base_counter: counter_k_init
        generic map(n => 32)
        port map(50000000, CLOCK_50, reset_n, s_base, 0, completed_base);
    seconds: counter_k_init
        generic map(n => 6)
        port map(60, completed_base, reset_n, s_seconds, to_integer(unsigned(SW(5 downto 0))), completed_seconds);
    minutes: counter_k_init
        generic map(n => 6)
        port map(60, completed_seconds, reset_n, s_minutes, to_integer(unsigned(SW(11 downto 6))), completed_minutes);
    hours: counter_k_init
        generic map(n => 6)
        port map(24, completed_minutes, reset_n, s_hours, to_integer(unsigned(SW(17 downto 12))), completed_hours);

    -- Converting counter binary output to 2-digit output
    sE <= to_integer(unsigned(s_seconds)) / 10;
    sF <= to_integer(unsigned(s_seconds)) rem 10;

    mC <= to_integer(unsigned(s_minutes)) / 10;
    mD <= to_integer(unsigned(s_minutes)) rem 10;

    hA <= to_integer(unsigned(s_hours)) / 10;
    hB <= to_integer(unsigned(s_hours)) rem 10;

    -- Time: (HH:MM:SS) = (AB:CD:EF)
    sec_F: decoder_7segment_hex port map (std_logic_arith.conv_std_logic_vector(sF, 4), HEX2);
    sec_E: decoder_7segment_hex port map (std_logic_arith.conv_std_logic_vector(sE, 4), HEX3);

    min_D: decoder_7segment_hex port map (std_logic_arith.conv_std_logic_vector(mD, 4), HEX4);
    min_C: decoder_7segment_hex port map (std_logic_arith.conv_std_logic_vector(mC, 4), HEX5);

    hour_B: decoder_7segment_hex port map (std_logic_arith.conv_std_logic_vector(hB, 4), HEX6);
    hour_A: decoder_7segment_hex port map (std_logic_arith.conv_std_logic_vector(hA, 4), HEX7);


end behavior;