--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:    rsa_toplevel.vhd                --
-- description: Modular Exponentiation circuit  --
--              R = A^b mod C                   --
-- created on:  June 19, 2016                   --
-- revision:    June 19, 2016                   --
--------------------------------------------------

-- Binary method of modular exponentiation is used.


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

entity rsa_toplevel is
end rsa_toplevel;

architecture behavior of rsa_toplevel is
---------------------------  Component declarations:  ---------------------------

    component modexp_interface is
        generic ( KEY_SIZE: integer := 32);
        port(
            in_data: in std_logic_vector(KEY_SIZE-1 downto 0);
            exponent: in std_logic_vector(KEY_SIZE-1 downto 0);
            modulus: in std_logic_vector(KEY_SIZE-1 downto 0);
            reset: in std_logic;
            clock: in std_logic;
            out_data: std_logic_vector(KEY_SIZE-1 downto 0);
            start : in std_logic;
            finished : out std_logic
        );
    end component;

---------------------------    Signal declarations:   ---------------------------
    signal start_encryption, start_decryption, finished_encryption, finished_decryption: std_logic;
    signal in_data, public_exp, private_exp, modulus: std_logic_vector(KEY_SIZE-1 downto 0);
    signal encrypt_out, decrypt_out: std_logic_vector(KEY_SIZE-1 downto 0);
    signal reset, serial_received: std_logic;
    signal serial_operation: std_logic_vector(1 downto 0);
    signal result: std_logic_vector(KEY_SIZE-1 downto 0);
---------------------------       Signal Routing:     ---------------------------
begin
    -- Fixed keys
    public_exp <= x"00903ad9";
    private_exp <= x"02d80e39";
    modulus <= x"03b2c159";

    --reset <= ???
    -- serial_received <= ???
    -- in_data <= x"00724183";

    -- Communication protocol
    --(todo) > receive message (data, operation)
    --      > serial_received OK
    --      > process data
    --      > data_processed OK
    --(todo) > send message (result)
    --(todo) > serial sent OK
    comm_protocol: process(serial_operation)
    begin
        if (rising_edge(serial_received)) then
            case serial_operation is
                when "00000001" => -- Encrypt
                    start_encryption <= '1';
                    wait until finished_encryption = '1'
                    start_encryption <= '0';
                    result <= encrypt_out;

                when "00000010" => -- Decrypt
                    start_decryption <= '1';
                    wait until finished_decryption = '1'
                    start_decryption <= '0';
                    result <= decrypt_out;
                
                when others => wait until Clock = '1';
            end case;
        end if;
    end process;

    process(reset)
    begin
        if reset = '0' then
            start_encryption <= '0';
            start_decryption <= '0';
        end if;

        if rising_edge(finished_encryption) then
            data_processed <= '1';
        elsif rising_edge(start_encryption) then
            data_processed <= '0';
        elsif rising_edge(finished_decryption) then
            data_processed <= '1';
        elsif rising_edge(start_decryption) then
            data_processed <= '0';
        end if;

    end process;

    -- Generates clock signal
    ClockSignal: PROCESS
    BEGIN
        wait for 10000ps;
        if Clock = '1' then
            Clock <= '0';
        else
            Clock <= '1';
        end if;
    END PROCESS;

---------------------------    Component instances:   ---------------------------
    encrypt_module: modexp_interface generic map (KEY_SIZE => 32);
                    port map (  in_data => in_data,
                                exponent => public_exp,
                                modulus => modulus,
                                reset => reset,
                                clock => Clock,
                                out_data => encrypt_out,
                                start => start_encryption,
                                finished => finished_encryption
                    )

    decrypt_module: modexp_interface generic map (KEY_SIZE => 32);
                    port map (  in_data => in_data,
                                exponent => private_exp,
                                modulus => modulus,
                                reset => reset,
                                clock => Clock,
                                out_data => decrypt_out,
                                start => start_decryption,
                                finished => finished_decryption
                    )

end behavior;