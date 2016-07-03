--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:    data_interface_serial.vhd       --
-- description: Abstraction layer for serial    --
--              8bit data device                --
-- created on:  June 19, 2016                   --
-- revision:    July 01, 2016                   --
--------------------------------------------------

-- Expects serial data to be of 1 byte/8 bit length

library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

-- data_transmit: When pulsed for 1 clock cycle the data on data_from_rsa begins being transmitted to external device
-- data_available: When pulsed for 2 clock cycles there i new data received from external device
-- busy: When high, data operation (receive/transmit) is in progress, invalid data on ports
-- done: When pulsed for 1 clock cycle, operation (receive/transmit) has completed 

-- For serial: 8bit
-- DATA_EXTERNAL_FROM_HOST: 	O_rxData(8bit)
-- DATA_EXTERNAL_TO_HOST: 		I_txData(8bit)
-- DATA_EXTERNAL_FRESHDATA: 	O_rxSig - does not deassert until new frame starts being received.
-- DATA_EXTERNAL_CLOCK:			clock
-- DATA_EXTERNAL_READ_EN: 		I_rxCont
-- DATA_EXTERNAL_WR_EN: 		I_txSig
-- DATA_EXTERNAL_WR_RDY: 		O_txRdy

entity data_interface_serial is
	generic ( DATA_WIDTH: integer := 32); -- MULTIPLIER=DATA_WIDTH/8
	port(
	-- External raw data provider accessors and signals:
	DATA_EXTERNAL_FROM_HOST: in std_logic_vector(7 downto 0);  -- Data from external data provider
	DATA_EXTERNAL_TO_HOST: out std_logic_vector(7 downto 0);  -- Data to external data provider
	DATA_EXTERNAL_FRESHDATA: in std_logic;
	DATA_EXTERNAL_READ_EN: out std_logic;
	DATA_EXTERNAL_WR_EN: out std_logic;
	DATA_EXTERNAL_WR_RDY: in std_logic;
	DATA_EXTERNAL_CLOCK: in std_logic;
	-- Parsed data to/from RSA accessors:
	data_from_rsa: in std_logic_vector(DATA_WIDTH-1 downto 0);
	data_to_rsa: out std_logic_vector(DATA_WIDTH-1 downto 0);
	-- Control signals:
	reset: in std_logic;
	clock: in std_logic;
	data_transmit: in std_logic;
	data_available: out std_logic;
	busy: out std_logic;
	done: out std_logic
	);
end data_interface_serial;

architecture behavior of data_interface_serial is

---------------------------    Signal declarations:   ---------------------------
	signal data_available_internal, busy_internal, done_internal, set_once, freshdata_not_deasserted, count_once: std_logic;

	type state_type is (state_Reset, state_Idle, state_Receive, state_Transmit , state_Finished, state_WaitReceive, state_WaitTransmit);
    signal current_state, next_state: state_type;

    signal MULTIPLIER: integer := DATA_WIDTH/8;
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
			--------------------------------------- Reset ---------------------------------------
			-- Reset state: Sets signals to their default values
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
			-- Idle state: Waits for new data to be available or trasmit signal to be received
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
			-- Receive state: Receives MULTIPLIER blocks of data from external device and concatenates on data_to_rsa
			when state_Receive =>
				if(set_once = '0') then
					data_to_rsa(DATA_WIDTH-1-8*counter downto DATA_WIDTH-8*(counter+1)) <= DATA_EXTERNAL_FROM_HOST;
					next_state <= state_WaitReceive;
				end if;
				if(DATA_EXTERNAL_FRESHDATA = '1' and count_once = '1') then
					set_once <= '0';
				end if;
				if(DATA_EXTERNAL_FRESHDATA = '0' and count_once = '0') then
					counter <= counter + 1;
					count_once <= '1';
				end if;
			-- WaitReceive state: Waits for new block to arrive
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
			-- Transmit state: Transmits data_from_rsa in MULTIPLIER blocks of data to external device
			when state_Transmit =>
				DATA_EXTERNAL_TO_HOST <= data_from_rsa(DATA_WIDTH-1-8*counter downto DATA_WIDTH-8*(counter+1));
				if(DATA_EXTERNAL_WR_RDY = '0') then
					DATA_EXTERNAL_WR_EN <= '0';
					set_once <= '0';
					next_state <= state_WaitTransmit;
				else
					DATA_EXTERNAL_WR_EN <= '1';
				end if;
			-- WaitTransmit state: Waits for external device to be ready for new block
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
			-- Finished state: Operation is completed. Done and no longer busy.
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

	done <= done_internal;
	busy <= busy_internal;
	data_available <= data_available_internal;
	

end behavior;