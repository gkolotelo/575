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
	generic ( KEY_SIZE: integer := 32);
	port(   clock: std_logic;
			data_DATA_EXTERNAL_IN: in std_logic_vector(15 downto 0);
			data_DATA_EXTERNAL_OUT: out std_logic_vector(15 downto 0);
			data_DATA_EXTERNAL_CLOCK: in std_logic;
			data_DATA_EXTERNAL_FRESHDATA: in std_logic;
			reset: in std_logic
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
	component data_interface_led
	generic ( KEY_SIZE: integer := 32);
	port(
	    -- External raw data provider accessors and signals:
		DATA_EXTERNAL_IN: in std_logic_vector(15 downto 0);
		DATA_EXTERNAL_OUT: out std_logic_vector(15 downto 0);
		DATA_EXTERNAL_FRESHDATA: in std_logic;
		DATA_EXTERNAL_READ_EN: out std_logic;
		DATA_EXTERNAL_WR_EN: out std_logic;
		DATA_EXTERNAL_CLOCK: in std_logic;
		-- Parsed data provider accessors:
		in_data: in std_logic_vector(KEY_SIZE-1 downto 0);
		out_data: out std_logic_vector(KEY_SIZE-1 downto 0);
		-- General use control signals:
		reset: in std_logic;
		clock: in std_logic;
		data_transmit: in std_logic;
		data_available: out std_logic;
		busy: out std_logic;
		done: out std_logic
	);
	end component data_interface_led;

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
	signal start_encryption, start_decryption, finished_encryption, finished_decryption, data_processed: std_logic;
	signal in_data, public_exp, private_exp, modulus: std_logic_vector(KEY_SIZE-1 downto 0);
	signal encrypt_out, decrypt_out: std_logic_vector(KEY_SIZE-1 downto 0);
	signal serial_received: std_logic;
	signal serial_operation: std_logic_vector(7 downto 0);
	signal result: std_logic_vector(KEY_SIZE-1 downto 0);


	signal data_data_transmit: std_logic;
	signal data_data_available: std_logic;
	signal data_busy: std_logic;
	signal data_done: std_logic;
	signal data_out_data: std_logic_vector(KEY_SIZE-1 downto 0);

	-- Signals for serial comm.
	signal I_clk_baud_count: std_logic_vector(15 downto 0) := X"1458"; -- 9600bps
	
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
	comm_protocol: process
	begin
		if reset = '1' then				-- moved from process below
			start_encryption <= '0';	-- moved from process below
			start_decryption <= '0';	-- moved from process below
		--elsif (rising_edge(serial_received)) then -- not working because it cant capture rising edge due to wait until below
		elsif (serial_received = '1') then -- make serial_received 1 for one clock
			case serial_operation is
				when "00000001" => -- Encrypt
					start_encryption <= '1';
					wait until finished_encryption = '1';
					start_encryption <= '0';
					result <= encrypt_out;

				when "00000010" => -- Decrypt
					start_decryption <= '1';
					wait until finished_decryption = '1';
					start_decryption <= '0';
					result <= decrypt_out;
				
				when others => wait until clock = '1';
			end case;
		end if;
		wait until rising_edge(clock);
	end process;

	process(reset)
	begin
		--if reset = '0' then
		--	start_encryption <= '0';
		--	start_decryption <= '0';
		--end if;

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
	--ClockSignal: PROCESS
	--BEGIN
	--    wait for 10000ps;-- wait for is not synthesizable! only wait until
	--    if Clock = '1' then
	--        Clock <= '0';
	--    else
	--        Clock <= '1';
	--    end if;
	--END PROCESS;

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

	data_module: data_interface_led port map(
					DATA_EXTERNAL_IN => data_DATA_EXTERNAL_IN,
					DATA_EXTERNAL_OUT => data_DATA_EXTERNAL_OUT,
					DATA_EXTERNAL_FRESHDATA => data_DATA_EXTERNAL_FRESHDATA,
					--DATA_EXTERNAL_READ_EN => ,
					--DATA_EXTERNAL_WR_EN => ,
					DATA_EXTERNAL_CLOCK => data_DATA_EXTERNAL_CLOCK,
					in_data => data_out_data, -- Data from RSA
					out_data => in_data, -- Data to RSA
					reset => reset,
					clock => clock,
					data_transmit => data_data_transmit,
					data_available => data_data_available,
					busy => data_busy,
					done => data_done
					);

	--serial_interface: uart_simple port map ( 
	--				I_clk => clock;
	--				I_clk_baud_count => I_clk_baud_count;
    --
	--				I_reset=> reset;
    --
	--				I_txData => in  STD_LOGIC_VECTOR (7 downto 0);
	--				I_txSig => in  STD_LOGIC;
	--				O_txRdy => out  STD_LOGIC;
	--				O_tx => out  STD_LOGIC;
    --
	--				I_rx => in STD_LOGIC;
	--				I_rxCont=> in STD_LOGIC;
	--				O_rxData => out STD_LOGIC_VECTOR (7 downto 0);
	--				O_rxSig => out STD_LOGIC;
	--				O_rxFrameError => out STD_LOGIC
	--				);

end behavior;