--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:   rsa_toplevel_serial_testbench.vhd--
-- description: Testbench for toplevel testing  --
--                                              --
-- created on:  June 19, 2016                   --
-- revision:    July 01, 2016                   --
--------------------------------------------------

-- To change KEY_SIZE keys, replace:
--      -generic ( KEY_SIZE: integer := value);
--      -s_data with appropriate serial input, including serial 1 char for serial operation
-- To change Baud rate, replace:
--      -signal I_clk_baud_count with appropriate value (X"1458" for 9600; X"01b2" for 115200bps)
--      -I_baud_clk_pediod with appropriate value (104167 for 9600; 8680 for 115200bps)

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

entity rsa_toplevel_serial_testbench is
--generic ( KEY_SIZE: integer := 32);
generic ( KEY_SIZE: integer := 1024);
end rsa_toplevel_serial_testbench;

architecture behavior of rsa_toplevel_serial_testbench is
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
            HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(6 downto 0)
        );
    end Component;

---------------------------    Signal declarations:   ---------------------------

    signal reset: std_logic;
    signal clock: std_logic;
    -- encrypt data: 'e' + data
    -- decrypt data: 'd' + data

    -- s_data for 32bit + 'e'
    -- signal s_data : std_logic_vector(40 + 10 -1 downto 0) := "01010011010000000001000000000100100111010000000001"; -- e\x00\x00IC
    
    -- s_data for 1024bit 'UNICAMP', zero padded:
    -- For encryption, uncomment this line, and comment below
    --signal s_data: std_logic_vector(10*KEY_SIZE/8 + 10 - 1 downto 0) := "010100110100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010000000001000000000100000000010101010101001110010101001001010110000101010000010101011001010000010101";
    
    -- For decryption, uncomment this line, and comment above
    signal s_data: std_logic_vector(10*KEY_SIZE/8 + 10 - 1 downto 0) := "000100110100001001010101101001011101110100000101110110000001001001010100000100010000110111011000101100000010110010000011000001010100010001010010111011010011101100100010110110001011010011001100000010110101100101001100001100100010010110011011010000010101111011110000111001011011001101100010110111110101011000110100101100110000000111000111110101100101010111110011000111101101111010110010110001011010100100100011010111111111001001000100011000010111001101010111000101001000110101100011010000111101011011110110011011000000101101001111010001010101010100110101111101010101100001001110110101001111110100100111001100100100111011010001100101000101010100110111110001011111011100001101010011010000101111001101001101111101110101011111000000000101111100010110000101001001011101010110110101110101001100000100011001010001010011001111111101110001010100010101001111111100011001110001110011000101001100101001010011110111010000001101100001110010001111001111101101011000110010000001001000101101001011010000100001011000110101111100110010100001010001101101000101110110100111010001110100101100110000011011010011100100100011010100000111001101000100110011010111001101011001010100010110110011101011000100001100010010010011010111011011010100001000110100001011000011110100011111110000001011001101001101000010010111001101";

    -- Clock period definitions
    -- constant I_baud_clk_pediod : time := 104167 ns ;  -- 9600bps
    constant I_baud_clk_pediod : time := 8680 ns ;  -- 115200bps
    signal I_baud_clk : std_logic := '0';
    constant I_clk_period : time := 20 ns;

    signal s_data_pos : integer := 10*KEY_SIZE/8 + 10 - 1;
    signal s_data_oversample: integer:= 8;
    signal s_data_begin : std_logic:= '0';

    signal SW: std_logic_vector(17 downto 0);
    signal KEY: std_logic_vector(3 downto 0);
    signal CLOCK_50: std_logic;
    signal UART_RXD: std_logic;
    signal UART_TXD: std_logic;
    signal LEDR: std_logic_vector(17 downto 0);
    signal LEDG: std_logic_vector(7 downto 0);

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
            LEDG => LEDG
        );


end behavior;