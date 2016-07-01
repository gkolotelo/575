--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:    data_provider.vhd               --
-- description: Abstraction layer for data      --
--              device                          --
-- created on:  June 19, 2016                   --
-- revision:    June 19, 2016                   --
--------------------------------------------------

-- Binary method of modular exponentiation is used.


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

-- When data_transmit is pulsed the data is sent to memory/LED/serial
-- When data_available is high data is available to be received
-- When busy data operation is in progress, invalid data on ports
-- When done is high, operation has completed 

-- For serial 8bit; KEY_SIZE 32bit:
-- DATA_EXTERNAL_FROM_HOST: 	O_rxData(8bit)
-- DATA_EXTERNAL_TO_HOST: 	I_txData(8bit)
-- DATA_EXTERNAL_FRESHDATA: O_rxSig - does not deassert until new frame starts being received.
-- DATA_EXTERNAL_CLOCK:	clock
-- DATA_EXTERNAL_READ_EN: I_rxCont
-- DATA_EXTERNAL_WR_EN: I_txSig
-- DATA_EXTERNAL_WR_RDY: O_txRdy

entity data_interface_serial is
	generic ( KEY_SIZE: integer := 32); -- MULTIPLIER=KEY_SIZE/8
	port(
	-- External raw data provider accessors and signals:
	DATA_EXTERNAL_FROM_HOST: in std_logic_vector(7 downto 0);  -- Data from external data provider
	DATA_EXTERNAL_TO_HOST: out std_logic_vector(7 downto 0);  -- Data to external data provider
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
	done: out std_logic;
	-- Debug signals
	counter_dbg: out integer;
	current_state_dbg: out integer;
	next_state_dbg: out integer;
	current_byte: out std_logic_vector(7 downto 0)
	);
end data_interface_serial;

architecture behavior of data_interface_serial is

---------------------------    Signal declarations:   ---------------------------
	signal data_available_internal, busy_internal, done_internal, set_once, freshdata_not_deasserted, count_once: std_logic;

	type state_type is (state_Reset, state_Idle, state_Receive, state_Transmit , state_Finished, state_WaitReceive, state_WaitTransmit);
    signal current_state, next_state: state_type;

    signal MULTIPLIER: integer := KEY_SIZE/8;
    signal counter: integer range 0 to MULTIPLIER;

---------------------------       Signal Routing:     ---------------------------
begin

	set_next: process(reset, clock, next_state)
    begin
        if(reset = '1') then
            current_state <= state_Reset;
        elsif(rising_edge(clock)) then
            current_state <= next_state;
        end if;
    end process set_next;

    data_transaction: process (current_state, DATA_EXTERNAL_CLOCK, DATA_EXTERNAL_FRESHDATA, DATA_EXTERNAL_FROM_HOST, data_transmit, clock)
	begin
		case current_state is
			when state_Reset =>
				done_internal <= '0';
				data_available_internal <= '0';
				busy_internal <= '0';
				next_state <= state_Idle;
				counter <= 0;
				set_once <= '0';
				count_once <= '0';
				freshdata_not_deasserted <= '0';
				DATA_EXTERNAL_WR_EN <= '0';
				DATA_EXTERNAL_READ_EN <= '1';
			--------------------------------------- Idle ---------------------------------------
			when state_Idle =>
				done_internal <= '0';
				data_available_internal <= '0';
				counter <= 0;
				set_once <= '0';
				count_once <= '0';
				if(DATA_EXTERNAL_FRESHDATA = '0') then
						freshdata_not_deasserted <= '0';
				end if;
				-- what if not on idle
				if(clock = '1') then
					if(DATA_EXTERNAL_FRESHDATA = '1' and freshdata_not_deasserted = '0') then
						busy_internal <= '1';
						next_state <= state_Receive;
					elsif(data_transmit = '1' and DATA_EXTERNAL_WR_RDY = '1') then
						busy_internal <= '1';
						next_state <= state_Transmit;
					end if;
				end if;
			--------------------------------------- Receive ---------------------------------------
			when state_Receive =>
				if(set_once = '0') then
					data_to_rsa(KEY_SIZE-1-8*counter downto KEY_SIZE-8*(counter+1)) <= DATA_EXTERNAL_FROM_HOST;
					current_byte <= DATA_EXTERNAL_FROM_HOST;
					next_state <= state_WaitReceive;
				end if;
				if(DATA_EXTERNAL_FRESHDATA = '1' and count_once = '1') then
					set_once <= '0';
				end if;
				if(DATA_EXTERNAL_FRESHDATA = '0' and count_once = '0') then
					counter <= counter + 1;
					count_once <= '1';
				end if;

			when state_WaitReceive =>
				set_once <= '1';
				count_once <= '0';
				if(counter >= MULTIPLIER-1) then
					next_state <= state_Finished;
					data_available_internal <= '1';
				else
					next_state <= state_Receive;
				end if;

			--------------------------------------- Transmit ---------------------------------------
			when state_Transmit =>
				DATA_EXTERNAL_TO_HOST <= data_from_rsa(KEY_SIZE-1-8*counter downto KEY_SIZE-8*(counter+1));
				current_byte <= data_from_rsa(KEY_SIZE-1-8*counter downto KEY_SIZE-8*(counter+1));
				if(DATA_EXTERNAL_WR_RDY = '0') then
					DATA_EXTERNAL_WR_EN <= '0';
					set_once <= '0';
					next_state <= state_WaitTransmit;
				else
					DATA_EXTERNAL_WR_EN <= '1';
				end if;

			when state_WaitTransmit =>
				if(DATA_EXTERNAL_WR_RDY = '1') then	
					if(set_once <= '0') then
						counter <= counter + 1;
						set_once <= '1';
					end if;
					if(counter >= MULTIPLIER-1 and not(next_state = state_Transmit)) then
						next_state <= state_Finished;
					else
						next_state <= state_Transmit;
					end if;
				end if;

			--------------------------------------- Finished ---------------------------------------
			when state_Finished =>
				busy_internal <= '0';
				done_internal <= '1';
				if(DATA_EXTERNAL_FRESHDATA = '0') then
					freshdata_not_deasserted <= '0';
				else
					freshdata_not_deasserted <= '1';
				end if;
				next_state <= state_Idle;
		end case;
	end process data_transaction;

	process(current_state, next_state)
	begin
		case current_state is
			when state_Reset =>
				current_state_dbg <= 0;
			when state_Idle =>
				current_state_dbg <= 1;
			when state_Receive =>
				current_state_dbg <= 2;
			when state_Transmit  =>
				current_state_dbg <= 3;
			when state_Finished =>
				current_state_dbg <= 4;
			when state_WaitReceive =>
				current_state_dbg <= 5;
			when state_WaitTransmit =>
				current_state_dbg <= 6;
		end case;
		case next_state is
			when state_Reset =>
				next_state_dbg <= 0;
			when state_Idle =>
				next_state_dbg <= 1;
			when state_Receive =>
				next_state_dbg <= 2;
			when state_Transmit =>
				next_state_dbg <= 3;
			when state_Finished =>
				next_state_dbg <= 4;
			when state_WaitReceive =>
				next_state_dbg <= 5;
			when state_WaitTransmit =>
				next_state_dbg <= 6;
		end case;
	end process;

	-- Debug signals
	counter_dbg <=counter;
	
	done <= done_internal;
	busy <= busy_internal;
	data_available <= data_available_internal;
	

end behavior;