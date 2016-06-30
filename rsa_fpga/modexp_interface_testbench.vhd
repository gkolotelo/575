--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:    modexp_interface.vhd            --
-- description: Interface circuit between       --
--              top-level and modexp            --
-- created on:  June 19, 2016                   --
-- revision:    June 19, 2016                   --
--------------------------------------------------

-- Binary method of modular exponentiation is used.


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

entity modexp_interface_testbench is
generic ( KEY_SIZE: integer := 32);
end modexp_interface_testbench;

architecture behavior of modexp_interface_testbench is
---------------------------  Component declarations:  ---------------------------

    -- Modular exponentiation
    component modexp_interface
    generic ( KEY_SIZE: integer := 32);
    port(
        in_data: in std_logic_vector(KEY_SIZE-1 downto 0);
        exponent: in std_logic_vector(KEY_SIZE-1 downto 0);
        modulus: in std_logic_vector(KEY_SIZE-1 downto 0);
        reset: in std_logic;
        clock: in std_logic;
        out_data: out std_logic_vector(KEY_SIZE-1 downto 0);
        start : in std_logic;
        finished : out std_logic
    );
    end component modexp_interface;


---------------------------    Signal declarations:   ---------------------------
    signal start, finished, reset, clock: std_logic;  -- Interfacing signals with modexp circuit
    signal in_data, out_data, exponent, modulus: std_logic_vector(KEY_SIZE-1 downto 0);  -- Output from modexp circuit


---------------------------       Signal Routing:     ---------------------------
begin

    exponent <= x"00903ad9";
    modulus <= x"03b2c159";
    in_data <= x"00724183";

    process
    begin
        reset <= '1';
        wait until clock = '1';
        reset <= '0';
        wait until clock = '0';
        start <= '1';
        wait until clock = '1';
        wait until clock = '0';
        wait;
    end process;

    clkgen: process
    begin
        wait for 50 ps;
        if clock = '1' then
            clock <= '0';
        else
            clock <= '1';
        end if;
    end process;


    mod_inst: modexp_interface
    generic map( KEY_SIZE => 32)
    port map(
        in_data => in_data,
        exponent => exponent,
        modulus => modulus,
        reset => reset,
        clock => clock,
        out_data => out_data,
        start  => start,
        finished => finished
    );


end behavior;