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
    Component rsa_toplevel is
        -- generic ( KEY_SIZE: integer := 32);
        port(
            SW: in std_logic_vector(17 downto 0);
            KEY: in std_logic_vector(3 downto 0);
            CLOCK_50: in std_logic;
            UART_RXD: in std_logic;
            UART_TXD: out std_logic;
            LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(6 downto 0);
            current_state_dbg: out integer;
            next_state_dbg: out integer;
            data_to_rsa_dbg: out std_logic_vector(39 downto 0);
            data_available_dbg: out std_logic;
            data_int_busy_dbg: out std_logic;
            data_int_counter_dbg: out integer;
            data_int_current_state_dbg: out integer;
            data_int_next_state_dbg: out integer;
            data_int_current_byte: out std_logic_vector(7 downto 0);
            DATA_EXTERNAL_FROM_HOST_dbg: out std_logic_vector(7 downto 0)
        );
    end Component;

---------------------------    Signal declarations:   ---------------------------

    signal private_key: std_logic_vector(KEY_SIZE-1 downto 0) := x"0F8BC2A1";
    signal modulus: std_logic_vector(KEY_SIZE-1 downto 0) := x"92AF695F";
    signal public_exp: std_logic_vector(KEY_SIZE-1 downto 0) := x"00010001";
    signal reset: std_logic;
    signal clock: std_logic;
    signal s_data : std_logic_vector(49 downto 0) := "01010011010000000001000000000100100111010000000001";
   -- Clock period definitions
   constant I_baud_clk_pediod : time := 104167 ns ;--104167 ns; -- 115.2K or 9.6K
   signal I_baud_clk : std_logic := '0';
   constant I_clk_period : time := 20 ns;

    signal s_data_pos : integer := 49;
   signal s_data_oversample: integer:= 8;
   signal s_data_begin : std_logic:= '0';

    signal SW: std_logic_vector(17 downto 0);
    signal KEY: std_logic_vector(3 downto 0);
    signal CLOCK_50: std_logic;
    signal UART_RXD: std_logic;
    signal UART_TXD: std_logic;
    signal LEDR: std_logic_vector(17 downto 0);
    signal LEDG: std_logic_vector(7 downto 0);
    signal current_state_dbg, next_state_dbg: integer;
    signal data_to_rsa_dbg: std_logic_vector(39 downto 0);
    signal data_available_dbg: std_logic;

    signal data_int_counter_dbg: integer;
    signal data_int_current_state_dbg: integer;
    signal data_int_next_state_dbg: integer;
    signal data_int_current_byte: std_logic_vector(7 downto 0);
    signal data_int_busy_dbg: std_logic;
    signal DATA_EXTERNAL_FROM_HOST_dbg: std_logic_vector(7 downto 0);

---------------------------       Signal Routing:     ---------------------------
begin

    process
    begin
        -- Receive
        reset <= '1';
        wait for 5*I_clk_period;
        reset <= '0';
        wait for 5*I_clk_period;

        wait for I_clk_period*10;

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

      -- Clock process definitions
   I_baud_clk_process :process
   begin
      I_baud_clk <= '0';
      wait for I_baud_clk_pediod/2;
      I_baud_clk <= '1';
      wait for I_baud_clk_pediod/2;
   end process;

    data_sender: process (I_baud_clk )
    begin
        if rising_edge(I_baud_clk ) and s_data_begin = '1' and s_data_pos >= 0 then
            UART_RXD <= s_data(s_data_pos);
            s_data_pos <= s_data_pos - 1;
        end if;
    end process;

    KEY(0) <= not(reset);
    rsa_tl: rsa_toplevel
        -- generic ( KEY_SIZE: integer := 32);
        port map(
            SW => SW, 
            KEY => KEY, 
            CLOCK_50 => clock, 
            UART_RXD => UART_RXD, 
            UART_TXD => UART_TXD,
            LEDR => LEDR,
            LEDG => LEDG,
            current_state_dbg => current_state_dbg,
            next_state_dbg => next_state_dbg,
            data_to_rsa_dbg => data_to_rsa_dbg,
            data_available_dbg => data_available_dbg,
            data_int_counter_dbg => data_int_counter_dbg,
            data_int_current_state_dbg => data_int_current_state_dbg,
            data_int_next_state_dbg => data_int_next_state_dbg,
            data_int_current_byte => data_int_current_byte,
            data_int_busy_dbg => data_int_busy_dbg,
            DATA_EXTERNAL_FROM_HOST_dbg => DATA_EXTERNAL_FROM_HOST_dbg
        );


end behavior;