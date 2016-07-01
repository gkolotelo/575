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
	-- generic ( KEY_SIZE: integer := 32);
	port(
		SW: in std_logic_vector(17 downto 0);
		KEY: in std_logic_vector(3 downto 0);
		CLOCK_50: in std_logic;
		UART_RXD: in std_logic;
		UART_TXD: out std_logic;
		LEDR: out std_logic_vector(17 downto 0);
		LEDG: out std_logic_vector(7 downto 0)
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
			--reset: in std_logic; reset is handled inside modexp_interface?
			clock: in std_logic;
			out_data: out std_logic_vector(KEY_SIZE-1 downto 0);
			start : in std_logic;
			finished : out std_logic
		);
	end component;

	-- Interface between RSA circuit and some external data provider
	component data_interface_serial
    generic ( KEY_SIZE: integer := 32);
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
        data_from_rsa: in std_logic_vector(KEY_SIZE-1 downto 0);
        data_to_rsa: out std_logic_vector(KEY_SIZE-1 downto 0);
        -- General use control signals:
        reset: in std_logic;
        clock: in std_logic;
        data_transmit: in std_logic;
        data_available: out std_logic;
        busy: out std_logic;
        done: out std_logic--;
        -- Debug signals:
        --counter_dbg: out integer;
        --current_state_dbg: out integer;
        --next_state_dbg: out integer;
        --current_byte: out std_logic_vector(7 downto 0)
	
    );
    end component data_interface_serial;

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


---------------------------    Signal declarations:   ---------------------------
---------------------
-- General signals --
---------------------
	signal reset: std_logic;
	signal clock: std_logic;

-------------------------------
-- Encryption module signals --
-------------------------------
	signal start_encryption, start_decryption, finished_encryption, finished_decryption, data_processed: std_logic;
	signal in_data, public_exp, private_exp, modulus: std_logic_vector(KEY_SIZE-1 downto 0);
	signal encrypt_out, decrypt_out: std_logic_vector(KEY_SIZE-1 downto 0);
	signal serial_received: std_logic;
	signal serial_operation: std_logic_vector(7 downto 0);

---------------------
-- Linking signals --
---------------------
	signal data_from_rsa: std_logic_vector(KEY_SIZE-1 downto 0);
	signal data_to_rsa: std_logic_vector(KEY_SIZE-1 downto 0);
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
    type StateType is (idle, encrypting, decrypting, receiving, transmiting);
    signal current_state: state_type;


---------------------------       Signal Routing:     ---------------------------
begin
	-- Fixed keys
	public_exp <= x"00903ad9";
	private_exp <= x"02d80e39";
	modulus <= x"03b2c159";

	serial_received <= data_available;
	serial_operation <= data_to_rsa(KEY_SIZE+8-1 downto KEY_SIZE);
	in_data <= data_to_rsa(KEY_SIZE-1 downto 0);

	--reset <= ???

	comm_protocol: process
	begin
		if reset = '1' then				-- moved from process below
			start_encryption <= '0';	-- moved from process below
			start_decryption <= '0';	-- moved from process below
		--elsif (rising_edge(serial_received)) then -- not working because it cant capture rising edge due to wait until below
		elsif (serial_received = '1') then -- make serial_received 1 for one clock
			case serial_operation is
				when "01100101" => -- (e)Encrypt
					start_encryption <= '1';
					wait until finished_encryption = '1';
					start_encryption <= '0';
					data_from_rsa <= encrypt_out;

				when "01100100" => -- (d)Decrypt
					start_decryption <= '1';
					wait until finished_decryption = '1';
					start_decryption <= '0';
					data_from_rsa <= decrypt_out;
				
				when others => wait until clock = '1';
			end case;
		end if;
		wait until rising_edge(clock);
	end process;

	process
	begin
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

	process
	begin
		case current_state is
			when idle =>
				if(data_available = '1') then
					current_state <= receiving;
				end if;
			when encrypting =>
			when decrypting =>
			when receiving =>
				
			when transmiting =>
		end case;
	end process;


---------------------------    Component instances:   ---------------------------
	encrypt_module: modexp_interface generic map (KEY_SIZE => 32)
					port map (  in_data => in_data,
								exponent => public_exp,
								modulus => modulus,
								--reset => reset,
								clock => clock,
								out_data => encrypt_out,
								start => start_encryption,
								finished => finished_encryption
					);

	decrypt_module: modexp_interface generic map (KEY_SIZE => 32)
					port map (  in_data => in_data,
								exponent => private_exp,
								modulus => modulus,
								--reset => reset,
								clock => clock,
								out_data => decrypt_out,
								start => start_decryption,
								finished => finished_decryption
					);

	data_module: data_interface_serial port map(
                    DATA_EXTERNAL_FROM_HOST => DATA_EXTERNAL_FROM_HOST,
                    DATA_EXTERNAL_TO_HOST => DATA_EXTERNAL_TO_HOST,
                    DATA_EXTERNAL_FRESHDATA => DATA_EXTERNAL_FRESHDATA,
                    DATA_EXTERNAL_READ_EN => DATA_EXTERNAL_READ_EN,
                    DATA_EXTERNAL_WR_EN => DATA_EXTERNAL_WR_EN,
                    DATA_EXTERNAL_WR_RDY => DATA_EXTERNAL_WR_RDY,
                    DATA_EXTERNAL_CLOCK => '0',
                    
                    data_from_rsa => data_from_rsa, --***
                    data_to_rsa => data_to_rsa,
                    
                    reset => reset,
                    clock => clock,
                    data_transmit => data_transmit, --***
                    data_available => data_available,
                    busy => busy, --***
                    done => done --***
                    );

    uut: uart_simple port map (
                    I_clk => clock,
                    I_clk_baud_count => I_clk_baud_count,
                    I_reset => reset,
                    I_txData => DATA_EXTERNAL_TO_HOST,
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