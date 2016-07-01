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

entity uart_test is
    -- generic ( KEY_SIZE: integer := 32);
    port(
        SW: in std_logic_vector(17 downto 0);
        KEY: in std_logic_vector(3 downto 0);
        CLOCK_50: in std_logic;
        UART_RXD: in std_logic;
        UART_TXD: out std_logic;
        LEDR: out std_logic_vector(17 downto 0);
        LEDG: out std_logic_vector(7 downto 0);
		HEX7, HEX6: out std_logic_vector(6 downto 0)
        );
end uart_test;

architecture behavior of uart_test is
---------------------------  Component declarations:  ---------------------------


    -- Interface between RSA circuit and some external data provider
--    component data_interface_serial
--    generic ( KEY_SIZE: integer := 32);
--    port(
--        -- External raw data provider accessors and signals:
--        DATA_EXTERNAL_FROM_HOST: in std_logic_vector(7 downto 0);
--        DATA_EXTERNAL_TO_HOST: out std_logic_vector(7 downto 0);
--        DATA_EXTERNAL_FRESHDATA: in std_logic;
--        DATA_EXTERNAL_READ_EN: out std_logic;
--        DATA_EXTERNAL_WR_EN: out std_logic;
--        DATA_EXTERNAL_WR_RDY: in std_logic;
--        DATA_EXTERNAL_CLOCK: in std_logic;
--        -- Parsed data provider accessors:
--        data_from_rsa: in std_logic_vector(KEY_SIZE-1 downto 0);
--        data_to_rsa: out std_logic_vector(KEY_SIZE-1 downto 0);
--        -- General use control signals:
--        reset: in std_logic;
--        clock: in std_logic;
--        data_transmit: in std_logic;
--        data_available: out std_logic;
--        busy: out std_logic;
--        done: out std_logic--;
--        -- Debug signals:
--        --counter_dbg: out integer;
--        --current_state_dbg: out integer;
--        --next_state_dbg: out integer;
--        --current_byte: out std_logic_vector(7 downto 0)
--    
--    );
--    end component data_interface_serial;

    -- Serial interface
    component uart_simple
    Port ( 
        I_clk : in  STD_LOGIC;
        I_clk_baud_count : in STD_LOGIC_VECTOR (15 downto 0);

        I_reset: in  STD_LOGIC;

        I_txData : in  STD_LOGIC_VECTOR (7 downto 0);
        I_txSig : in  STD_LOGIC;
        O_txRdy : out  STD_LOGIC;
        O_tx : out  STD_LOGIC;

        I_rx : in STD_LOGIC;
        I_rxCont: in STD_LOGIC;
        O_rxData : out STD_LOGIC_VECTOR (7 downto 0);
        O_rxSig : out STD_LOGIC;
        O_rxFrameError : out STD_LOGIC
    );
    end component uart_simple;
	
	component decoder_7segment_hex
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
	end component decoder_7segment_hex;


---------------------------    Signal declarations:   ---------------------------
---------------------
-- General signals --
---------------------
    signal reset: std_logic;
    signal clock: std_logic;
    constant KEY_SIZE : integer := 32;

----------------------------------------
-- Encryption module signals (modexp) --
----------------------------------------
    signal start_encryption, start_decryption, finished_encryption, finished_decryption: std_logic;
--    signal data_processed: std_logic;
    signal in_data, public_exp, private_exp, modulus: std_logic_vector(KEY_SIZE-1 downto 0);
    signal encrypt_out, decrypt_out: std_logic_vector(KEY_SIZE-1 downto 0);
--    signal serial_received: std_logic;
    signal serial_operation: std_logic_vector(7 downto 0);

------------------------------------------
-- Linking signals (modexp)<==>(serial) --
------------------------------------------
    signal data_from_rsa: std_logic_vector(KEY_SIZE+7 downto 0);
    signal data_to_rsa: std_logic_vector(KEY_SIZE+7 downto 0);
    signal data_available: std_logic;

----------------------------------
-- Serial communication signals --
----------------------------------
    signal I_clk_baud_count: std_logic_vector(15 downto 0) := X"1458"; -- 50MHz/9600bps = (0x1458)
    
    -- External signals
    signal DATA_EXTERNAL_FROM_HOST: std_logic_vector(7 downto 0);
    signal DATA_EXTERNAL_TO_HOST: std_logic_vector(7 downto 0);
    signal DATA_EXTERNAL_FRESHDATA: std_logic;
    signal DATA_EXTERNAL_READ_EN: std_logic;
    signal DATA_EXTERNAL_WR_EN: std_logic;
    signal DATA_EXTERNAL_WR_RDY: std_logic;
    signal DATA_EXTERNAL_CLOCK: std_logic;

    signal data_transmit: std_logic;
    
    signal busy: std_logic;
    signal done: std_logic;
    signal O_tx: std_logic;
    signal I_rx: std_logic;
    signal O_rxFrameError: std_logic;

-------------------
-- State signals --
-------------------
    type StateType is (idle, receiving, encrypting, decrypting, transmiting);
    signal current_state, next_state: StateType;


---------------------------       Signal Routing:     ---------------------------
begin

	

	--LEDG(0) <= UART_RXD;
	reset <= not(KEY(0));
	DATA_EXTERNAL_WR_EN <= not(KEY(1));
	LEDR(7 downto 0) <= DATA_EXTERNAL_FROM_HOST;
	DATA_EXTERNAL_READ_EN <= '1';
	
	h1: decoder_7segment_hex
    port map(
        dec_in => DATA_EXTERNAL_FROM_HOST(7 downto 4),
        dec_out => HEX7
    );
	
	h2: decoder_7segment_hex
    port map(
        dec_in => DATA_EXTERNAL_FROM_HOST(3 downto 0),
        dec_out => HEX6
    );


--    data_module: data_interface_serial generic map (KEY_SIZE => KEY_SIZE+8)
--						port map(
--                    DATA_EXTERNAL_FROM_HOST => DATA_EXTERNAL_FROM_HOST,
--                    DATA_EXTERNAL_TO_HOST => DATA_EXTERNAL_TO_HOST,
--                    DATA_EXTERNAL_FRESHDATA => DATA_EXTERNAL_FRESHDATA,
--                    DATA_EXTERNAL_READ_EN => DATA_EXTERNAL_READ_EN,
--                    DATA_EXTERNAL_WR_EN => DATA_EXTERNAL_WR_EN,
--                    DATA_EXTERNAL_WR_RDY => DATA_EXTERNAL_WR_RDY,
--                    DATA_EXTERNAL_CLOCK => '0',
--                    
--                    data_from_rsa => data_from_rsa,
--                    data_to_rsa => data_to_rsa,
--                    
--                    reset => reset,
--                    clock => clock,
--                    data_transmit => data_transmit, --***
--                    data_available => data_available,
--                    busy => busy, --***
--                    done => done --***
--                    );

    uut: uart_simple port map (
                    I_clk => CLOCK_50,
                    I_clk_baud_count => I_clk_baud_count,
                    I_reset => reset,
                    I_txData => X"55",
                    I_txSig => DATA_EXTERNAL_WR_EN,
                    O_txRdy => DATA_EXTERNAL_WR_RDY,
                    
                    O_tx => UART_TXD,
                    I_rx => UART_RXD,

                    I_rxCont => DATA_EXTERNAL_READ_EN,
                    O_rxData => DATA_EXTERNAL_FROM_HOST,
                    O_rxSig => DATA_EXTERNAL_FRESHDATA,
                    
                    O_rxFrameError => O_rxFrameError
                    );
end behavior;