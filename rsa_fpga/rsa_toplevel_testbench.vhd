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
-- values used:
-- public_exp:  0x00010001
-- private_key: 0x0F8BC2A1
-- modulus:     0x92AF695F
-- message:     12345
-- cyphered message: 


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

entity rsa_toplevel_testbench is
generic ( KEY_SIZE: integer := 32);
end rsa_toplevel_testbench;

architecture behavior of rsa_toplevel_testbench is
---------------------------  Component declarations:  ---------------------------

    -- RSA top-level


---------------------------    Signal declarations:   ---------------------------

    signal private_key: std_logic_vector(KEY_SIZE-1 downto 0) := x"0F8BC2A1";
    signal modulus: std_logic_vector(KEY_SIZE-1 downto 0) := x"92AF695F";
    signal public_exp: std_logic_vector(KEY_SIZE-1 downto 0) := x"00010001";
    signal serial_data_to_rsa: std_logic_vector(39 downto 0) :=;  -- data in RS232 binary
    signal reset: std_logic;
    signal clock: std_logic;

    -- Clock period definitions
    constant I_clk_period : time := 20 ns;

---------------------------       Signal Routing:     ---------------------------
begin

    process
    begin
        -- Receive
        reset <= '1';
        wait until clock = '1';
        reset <= '0';
        wait until clock = '0';
        -- send
        s_data_begin <= '1';
        wait until s_data_pos < 0;

        -- wait for encryption
        
        -- observe output from UART_TXD port


        wait;
    end process;

    I_clk_process: process
    begin
        clock <= '0';
        wait for I_clk_period/2;
        clock <= '1';
        wait for I_clk_period/2;
    end process;

    data_sender: process (I_baud_clk )
    begin
        if rising_edge(I_baud_clk ) and s_data_begin = '1' and s_data_pos >= 0 then
            I_rx <= s_data(s_data_pos);
            s_data_pos <= s_data_pos - 1;
        end if;
    end process;



end behavior;