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
-- description: Top level VHD for RSA encryption--
--              and decryption device           --
-- created on:  June 19, 2016                   --
-- revision:    July 02, 2016                   --
--------------------------------------------------
-- RSA encyption and decryption is implemented using
-- the modular exponentiation method.

-- Component dependency:
--      modexp_interface:       Interface for RSA calculation circuit
--      data_serial_interface:  Interface between serial data and RSA circuit
--      uart_simple:            Raw serial communication circuit
--      decoder_7segment_hex:   7 segment HEX decoder

-- To change KEY_SIZE keys, replace:
--      -constant KEY_SIZE with apropriate value
--      -public_exp, private_exp, modulus with adequate KEY_SIZE keys
-- To change Baud rate, replace:
--      -signal I_clk_baud_count with appropriate value (X"1458" for 9600; X"01b2" for 115200)


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

entity rsa_toplevel is
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
end rsa_toplevel;

architecture behavior of rsa_toplevel is
---------------------------  Component declarations:  ---------------------------

    -- Interface for RSA circuit
    component modexp_interface is
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
    end component;

    -- Interface between RSA circuit and some serial bytewise data provider
    component data_interface_serial
    generic ( DATA_WIDTH: integer := 32);
    port(
        -- External raw data provider accessors and signals:
        DATA_EXTERNAL_FROM_HOST: in std_logic_vector(7 downto 0);
        DATA_EXTERNAL_TO_HOST: out std_logic_vector(7 downto 0);
        DATA_EXTERNAL_FRESHDATA: in std_logic;
        DATA_EXTERNAL_READ_EN: out std_logic;
        DATA_EXTERNAL_WR_EN: out std_logic;
        DATA_EXTERNAL_WR_RDY: in std_logic;
        DATA_EXTERNAL_CLOCK: in std_logic;
        -- Parsed data provider accessors:
        data_from_rsa: in std_logic_vector(DATA_WIDTH-1 downto 0);
        data_to_rsa: out std_logic_vector(DATA_WIDTH-1 downto 0);
        -- General use control signals:
        reset: in std_logic;
        clock: in std_logic;
        data_transmit: in std_logic;
        data_available: out std_logic;
        busy: out std_logic;
        done: out std_logic    
    );
    end component data_interface_serial;

    -- Raw serial communication interface
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
    --constant KEY_SIZE : integer := 1024;
	signal display_data: std_logic_vector(KEY_SIZE-1 downto 0);

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
    signal data_from_rsa: std_logic_vector(KEY_SIZE+8-1 downto 0);
    signal data_to_rsa: std_logic_vector(KEY_SIZE+8-1 downto 0);
    signal data_available: std_logic;

----------------------------------
-- Serial communication signals --
----------------------------------
    signal I_clk_baud_count: std_logic_vector(15 downto 0) := X"1458"; -- 50MHz/9600bps = (0x1458)
    --signal I_clk_baud_count: std_logic_vector(15 downto 0) := X"01b2"; -- 50MHz/115200bps = (0x01b2)
    
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
    type StateType is (idle, state_reset, receiving, encrypting, decrypting, transmitting);
    signal current_state, next_state: StateType;


---------------------------       Signal Routing:     ---------------------------
begin
    -- Fixed keys 32bit
    public_exp <= x"00010001";
    private_exp <= x"93592F41";
    modulus <= x"D8FAA935";

    -- Fixed keys 1024bit
--    public_exp <= x"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010001";
--    private_exp <= x"3701487F9419255C535836E35F14A16EDA01C61915C8682BD96F1A98DE706E404D83D8334E7B66F1B9C65996657EDDCA418C59B9EA6F6E9A958C6DB78FF8ED7FE678BD171942388CCE05B13DC9001AFFCB4B7DACAE3FF098A5DF06DB70C56137F9CA26B04C668C1C1889281AE494C713C06BF3486FE82F9F2DDCEDFF14F16521";
--    modulus <= x"702CDC827D7D0C57E35BA909CC50D00A290BEB0E4E6613EADACE42782340A8A217DE24414FD7A391E1BAB080FB01DFD36262FF595154421A6ABD0BF2FB18C540F1F46FE5DB1A93C63B5131AFA3F63FC27D1BF0B80B723A3572EF33FD0796B39FF6BB234EF24C91B9EC55802EF9748472BF738B67875F9816456BF1FCB4A708B9";

    --serial_received <= data_available;
    serial_operation <= data_to_rsa(KEY_SIZE+8-1 downto KEY_SIZE);
    in_data <= data_to_rsa(KEY_SIZE-1 downto 0);

    reset <= not(KEY(0));
    clock <= CLOCK_50;

    process(data_available, done, finished_encryption, finished_decryption, current_state, serial_operation, clock)
    begin
        if(rising_edge(clock)) then
            case current_state is
                -- Reset state: Set signals to their reset values
                when state_reset =>
                    next_state <= idle;
                    LEDR <= (others => '0');
                    --LEDG <= (6 downto 0 => '0');
                    start_encryption <= '0';
                    start_decryption <= '0';
                    data_transmit <= '0';

                -- Idle state: Wait for data new data to be received and made available for processing
                when (idle) =>
                    LEDR(4 downto 0) <= "00001";
                    if((data_available) = '1') then
                        next_state <= receiving;
                    end if;

                -- Receiving state: Data has been received. Setup signals for operation and start
                when (receiving) =>
					--LEDG(0) <= '1';
                    LEDR(4 downto 0) <= "00010";
                    case serial_operation is
                        when "01100101" =>  -- (e)Encrypt
                            next_state <= encrypting;
                            start_encryption <= '1';
                        when "01100100" =>  -- (d)Decrypt
                            next_state <= decrypting;
                            start_decryption <= '1';
                        when others =>
                            next_state <= idle;
                    end case;

                -- Encrypting state: Wait for encryption and transmit result after.
                when (encrypting) =>
                    LEDR(4 downto 0) <= "00100";
                    if((finished_encryption) = '1') then
                        start_encryption <= '0';
                        next_state <= transmitting;
                        data_transmit <= '1';
                        data_from_rsa <= "00000000" & encrypt_out;
                    end if;
                -- Decrypting state: Wait for decryption and transmit result after.
                when (decrypting) =>
                    LEDR(4 downto 0) <= "01000";
                    if((finished_decryption) = '1') then
                        start_decryption <= '0';
                        next_state <= transmitting;
                        data_transmit <= '1';
                        data_from_rsa <= "00000000" & decrypt_out;
                    end if;
                -- Transmitting state: Wait for data transmission to complete. Go back to idle.
                when (transmitting) => 
                    LEDR(4 downto 0) <= "10000";
                    data_transmit <= '0';
                    if((done) = '1') then
                        next_state <= idle;
                    end if;
            end case;
        end if;
    end process;

    process(reset, clock)
    begin
        if(reset = '1') then
            current_state <= state_reset;
        elsif (rising_edge(clock)) then
            current_state <= next_state;
        end if;
    end process;
	
--	display: process(reset, data_from_rsa, data_transmit)
--	begin
--		if (reset='1') then
--			display_data <= (others => '0');
--		elsif (rising_edge(data_transmit)) then
----			LEDG(7) <= '1';
--			display_data <= data_from_rsa(KEY_SIZE-1 downto 0);
--		end if;
--	end process;
	
	LEDG(7) <= DATA_EXTERNAL_FRESHDATA;
	LEDG(6) <= data_available;
	LEDG(5) <= busy;
	LEDG(4) <= done;
	LEDG(3) <= DATA_EXTERNAL_READ_EN;
	LEDG(2) <= data_transmit;
	LEDG(1) <= DATA_EXTERNAL_WR_EN;

------------------------    Component instances:   ---------------------------
    encrypt_module: modexp_interface generic map (KEY_SIZE => KEY_SIZE)
                    port map (  in_data => in_data,
                                exponent => public_exp,
                                modulus => modulus,
                                reset => reset,
                                clock => clock,
                                out_data => encrypt_out,
                                start => start_encryption,
                                finished => finished_encryption
                    );

    decrypt_module: modexp_interface generic map (KEY_SIZE => KEY_SIZE)
                    port map (  in_data => in_data,
                                exponent => private_exp,
                                modulus => modulus,
                                reset => reset,
                                clock => clock,
                                out_data => decrypt_out,
                                start => start_decryption,
                                finished => finished_decryption
                    );

    data_module: data_interface_serial generic map (DATA_WIDTH => KEY_SIZE+8)
                    port map(
                    DATA_EXTERNAL_FROM_HOST => DATA_EXTERNAL_FROM_HOST,
                    DATA_EXTERNAL_TO_HOST => DATA_EXTERNAL_TO_HOST,
                    DATA_EXTERNAL_FRESHDATA => DATA_EXTERNAL_FRESHDATA,
                    DATA_EXTERNAL_READ_EN => DATA_EXTERNAL_READ_EN,
                    DATA_EXTERNAL_WR_EN => DATA_EXTERNAL_WR_EN,
                    DATA_EXTERNAL_WR_RDY => '0',
                    DATA_EXTERNAL_CLOCK => '0',
                    
                    data_from_rsa => data_from_rsa,
                    data_to_rsa => data_to_rsa,
                    
                    reset => reset,
                    clock => clock,
                    data_transmit => data_transmit,
                    data_available => data_available,
                    busy => busy,
                    done => done
                    );

    uut: uart_simple port map (
                    I_clk => clock,
                    I_clk_baud_count => I_clk_baud_count,
                    I_reset => reset,
                    I_txData => X"55",--DATA_EXTERNAL_TO_HOST,
                    I_txSig => '0',
                    O_txRdy => DATA_EXTERNAL_WR_RDY,
                    
                    O_tx => UART_TXD,
                    I_rx => UART_RXD,

                    I_rxCont => DATA_EXTERNAL_READ_EN,
                    O_rxData => DATA_EXTERNAL_FROM_HOST,
                    O_rxSig => DATA_EXTERNAL_FRESHDATA,
                    
                    O_rxFrameError => O_rxFrameError
                    );
    
    h7: decoder_7segment_hex
    port map(
        dec_in => display_data(31 downto 28),
        dec_out => HEX7
    );

    h6: decoder_7segment_hex
    port map(
        dec_in => display_data(27 downto 24),
        dec_out => HEX6
    );

    h5: decoder_7segment_hex
    port map(
        dec_in => display_data(23 downto 20),
        dec_out => HEX5
    );
    
    h4: decoder_7segment_hex
    port map(
        dec_in => display_data(19 downto 16),
        dec_out => HEX4
    );
    
    h3: decoder_7segment_hex
    port map(
        dec_in => display_data(15 downto 12),
        dec_out => HEX3
    );
    
    h2: decoder_7segment_hex
    port map(
        dec_in => display_data(11 downto 8),
        dec_out => HEX2
    );
    
    h1: decoder_7segment_hex
    port map(
        dec_in => display_data(7 downto 4),
        dec_out => HEX1
    );
    
    h0: decoder_7segment_hex
    port map(
        dec_in => display_data(3 downto 0),
        dec_out => HEX0
    );
    
    
end behavior;