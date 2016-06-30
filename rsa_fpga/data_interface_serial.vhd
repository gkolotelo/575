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

-- For LED/SW 16bit; KEY_SIZE 32bit:
-- DATA_EXTERNAL_IN: 	O_rxData(8bit)
-- DATA_EXTERNAL_OUT: 	I_txData(8bit)
-- DATA_EXTERNAL_FRESHDATA: O_rxSig - does not deassert until new frame starts being received.
-- DATA_EXTERNAL_CLOCK:	clock
-- DATA_EXTERNAL_READ_EN: I_rxCont

entity data_interface_serial is
	generic ( KEY_SIZE: integer := 32); -- MULTIPLIER=KEY_SIZE/8
	port(
	-- External raw data provider accessors and signals:
	DATA_EXTERNAL_IN: in std_logic_vector(7 downto 0);
	DATA_EXTERNAL_OUT: out std_logic_vector(7 downto 0);
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
end data_interface_serial;

architecture behavior of data_interface_serial is

---------------------------    Signal declarations:   ---------------------------
	signal data_available_internal, busy_internal, busy_internal_in, busy_internal_out, done_internal, done_internal_in, done_internal_out, set_once: std_logic;

	type state_type is (state_Reset, state_Idle, state_Receive, state_Transmit , state_Finished, state_Wait);
    signal current_state, next_state: state_type;

    signal MULTIPLIER: integer := KEY_SIZE/8;
    signal counter: integer range 0 to MULTIPLIER-1;

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

    data_transaction: process (current_state, DATA_EXTERNAL_CLOCK, DATA_EXTERNAL_FRESHDATA, DATA_EXTERNAL_IN, data_transmit, clock)
	begin
		case current_state is
			when state_Reset =>
				done_internal <= '0';
				data_available_internal <= '0';
				busy_internal <= '0';
				next_state <= state_Idle;
				counter <= 0;
				set_once <= '0';
				--receive_flag <= '0';
				--transmit_flag <= '0';
			when state_Idle =>
				done_internal <= '0';
				data_available_internal <= '0';
				busy_internal <= '0';
				counter <= 0;
				set_once <= '0';
				if(rising_edge(DATA_EXTERNAL_CLOCK) and DATA_EXTERNAL_FRESHDATA = '1') then
					--receive_flag <= '1';
					next_state <= state_Receive;
				elsif(rising_edge(clock) and data_transmit = '1') then
					--transmit_flag <= '1';
					next_state <= state_Transmit;
				end if;
			when state_Receive =>
				if(set_once = '0') then
					out_data(KEY_SIZE-1-8*counter downto KEY_SIZE-8*(counter+1)) <= DATA_EXTERNAL_IN;
					next_state <= state_Wait;
				end if;
				if(rising_edge(DATA_EXTERNAL_FRESHDATA)) then
					set_once <= '0';
				end if;
				if(falling_edge(DATA_EXTERNAL_FRESHDATA)) then
					counter <= counter + 1;
				end if;
			when state_Wait =>
				set_once <= '1';
				if(counter = MULTIPLIER-1) then
					next_state <= state_Finished;
				else
					next_state <= state_Receive;
				end if;
			when state_Finished =>
				busy_internal <= '0';
				done_internal <= '1';
				-- it'll get held up in here and wont be able to transmit since freshdata does not deassert.
				-- either make 2 separate FSMs or devise something else so itls not start a new conversion if
				-- freshdata is held high on idle
				-- possible sol: not_deasserted flag 1 on idle. must wait for falling edge of freshdata to clear.
				-- does not block transmit
				if(falling_edge(DATA_EXTERNAL_FRESHDATA)) then
					next_state <= state_Idle;
				end if;
		end case;
	end process data_transaction;





	--data_in: process
	--begin
	--	if(reset = '1') then
	--		busy_internal_in <= '0';
	--		done_internal_in <= '0';
	--		data_available_internal <= '0';
	--		DATA_EXTERNAL_READ_EN <= '1';
	--		out_data <= (others => '0');
	--	elsif(rising_edge(DATA_EXTERNAL_CLOCK) and DATA_EXTERNAL_FRESHDATA = '1' and busy_internal = '0') then
	--		done_internal_in <= '0';
	--		data_available_internal <= '0';
	--		busy_internal_in <= '1';
	--		-- 1st block
	--		wait until DATA_EXTERNAL_CLOCK = '1' and DATA_EXTERNAL_FRESHDATA = '1';
	--		out_data(KEY_SIZE-1 downto KEY_SIZE-8) <= DATA_EXTERNAL_IN;
	--		wait until DATA_EXTERNAL_FRESHDATA = '0';
    --        -- 2nd block
	--		wait until DATA_EXTERNAL_CLOCK = '1' and DATA_EXTERNAL_FRESHDATA = '1';
	--		out_data(KEY_SIZE-1-8 downto KEY_SIZE-8-8) <= DATA_EXTERNAL_IN;
	--		wait until DATA_EXTERNAL_FRESHDATA = '0';
	--		-- 3rd block
	--		wait until DATA_EXTERNAL_CLOCK = '1' and DATA_EXTERNAL_FRESHDATA = '1';
	--		out_data(KEY_SIZE-1-8-8 downto KEY_SIZE-8-8-8) <= DATA_EXTERNAL_IN;
	--		wait until DATA_EXTERNAL_FRESHDATA = '0';
	--		-- 4th block
	--		wait until DATA_EXTERNAL_CLOCK = '1' and DATA_EXTERNAL_FRESHDATA = '1';
	--		out_data(KEY_SIZE-1-8-8-8 downto 0) <= DATA_EXTERNAL_IN;
	--		busy_internal_in <= '0';
	--		done_internal_in <= '1';
	--		data_available_internal <= '1';
	--		wait until DATA_EXTERNAL_FRESHDATA = '0'; -- Wait to clear (will likely not clear, since it doesnt deassert)
	--	end if;
	--	wait until rising_edge(clock);
	--end process;
--
	--data_out: process
	--begin
	--	if(rising_edge(DATA_EXTERNAL_CLOCK) and data_transmit = '1' and busy_internal = '0') then
	--		done_internal_out <= '0';
	--		busy_internal_out <= '1';
	--		-- 1st block
	--		DATA_EXTERNAL_OUT <= in_data(KEY_SIZE-1 downto KEY_SIZE-8);
	--		DATA_EXTERNAL_WR_EN <= '1';
	--		wait until DATA_EXTERNAL_CLOCK = '1';
	--		DATA_EXTERNAL_WR_EN <= '0';
	--		wait until DATA_EXTERNAL_CLOCK = '0';
--
    --        -- 2nd block
    --        DATA_EXTERNAL_OUT <= in_data(KEY_SIZE-1-8 downto KEY_SIZE-8-8);
	--		DATA_EXTERNAL_WR_EN <= '1';
	--		wait until DATA_EXTERNAL_CLOCK = '1';
	--		DATA_EXTERNAL_WR_EN <= '0';
	--		wait until DATA_EXTERNAL_CLOCK = '0';
--
	--		-- 3rd block
	--		DATA_EXTERNAL_OUT <= in_data(KEY_SIZE-1-8-8 downto KEY_SIZE-8-8-8);
	--		DATA_EXTERNAL_WR_EN <= '1';
	--		wait until DATA_EXTERNAL_CLOCK = '1';
	--		DATA_EXTERNAL_WR_EN <= '0';
	--		wait until DATA_EXTERNAL_CLOCK = '0';
--
	--		-- 4th block
	--		DATA_EXTERNAL_OUT <= in_data(KEY_SIZE-1-8-8-8 downto 0);
	--		DATA_EXTERNAL_WR_EN <= '1';
	--		wait until DATA_EXTERNAL_CLOCK = '1';
	--		DATA_EXTERNAL_WR_EN <= '0';
	--		wait until DATA_EXTERNAL_CLOCK = '0';
	--		busy_internal_out <= '0';
	--		done_internal_out <= '1';
	--		wait until DATA_EXTERNAL_CLOCK = '1';
	--		wait until DATA_EXTERNAL_CLOCK = '0';
	--	end if;
	--	wait until rising_edge(clock);
	--end process;

	
	done <= done_internal_in or done_internal_out;
	busy_internal <= busy_internal_in or busy_internal_out;
	busy <= busy_internal;
	data_available <= data_available_internal;
	

end behavior;