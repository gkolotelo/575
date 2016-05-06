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
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std;

entity counter_k_init is
    generic (
        -- Change 'n' for larger (or shorter) maximum values for 'k'
        n : natural := 8
    );
    port (
        -- Standard maximum value = (255)decimal = (11111111)binary
        k       : in natural;
        clock   : in STD_LOGIC;
        reset_n : in STD_LOGIC;
        Q       : out STD_LOGIC_VECTOR(n-1 downto 0);
        init    : in natural;
        completed: out std_logic
    );
    --attribute completed: std_logic;
    --attribute completed of counter_k_init: entity is '0';
end entity;
architecture rtl of counter_k_init is
    signal k_bin: std_logic_vector(n-1 downto 0);
    signal value : std_logic_vector(n-1 downto 0);
    signal completed_value : std_logic;
begin
    -- Converts natural input 'k' into binary vector of 'n' bits
    k_bin <= conv_std_logic_vector(k, n);
    PROCESS(clock, reset_n, init, value, completed_value)
        
        begin
            if (reset_n = '0') then
                -- initialize all bits with zeros
                value <= conv_std_logic_vector(init, n);
            elsif (rising_edge(clock)) then
                -- Counts until 'k', then resets.
                if (numeric_std.to_integer(numeric_std.unsigned(value))+1 < numeric_std.to_integer(numeric_std.unsigned(k_bin))) then
                    value <= value + '1';
                    completed_value <= '0';
                else
                    value <= (OTHERS => '0');
                    completed_value <= '1';
                end if;
            end if;
    end process;
    Q <= value;
    completed <= completed_value;
end rtl;