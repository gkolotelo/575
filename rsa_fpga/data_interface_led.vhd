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
-- DATA_EXTERNAL_IN: 	SW(15 downto 0)
-- DATA_EXTERNAL_OUT: 	LEDR(15 downto 0)
-- DATA_EXTERNAL_FRESHDATA: KEY(2)
-- DATA_EXTERNAL_CLOCK:	KEY(3)
-- DATA_EXTERNAL_READ_EN: not used

entity data_interface_led is
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
end data_interface_led;

architecture behavior of data_interface_led is
---------------------------  Component declarations:  ---------------------------

	-- Register n-bits
	component regn
		generic (n : integer := KEY_SIZE);
		port (  R : IN std_logic_vector(n-1 downto 0);
				Rin, Clock, Rstn : IN std_logic;
				Q : buffer std_logic_vector(n-1 downto 0));
	end component regn;


---------------------------    Signal declarations:   ---------------------------
	signal data_available_internal, busy_internal, done_internal, receive_flag, transmit_flag: std_logic;

	type state_type is (state_Reset, state_Idle, state_Block1, state_Block2 , state_Finished);
    signal current_state, next_state: state_type;

---------------------------       Signal Routing:     ---------------------------
begin


-- In this case: LED/SW 16bit; KEY_SIZE 32bit

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
				receive_flag <= '0';
				transmit_flag <= '0';
			when state_Idle =>
				done_internal <= '0';
				data_available_internal <= '0';
				busy_internal <= '0';
				if(rising_edge(DATA_EXTERNAL_CLOCK) and DATA_EXTERNAL_FRESHDATA = '1') then
					out_data(KEY_SIZE-1 downto KEY_SIZE-16) <= DATA_EXTERNAL_IN;  -- LS 16 bits
					receive_flag <= '1';
					next_state <= state_Block1;
				elsif(rising_edge(clock) and data_transmit = '1') then
					transmit_flag <= '1';
					next_state <= state_Block1;
				end if;
			when state_Block1 =>
				busy_internal <= '1';
				if(receive_flag = '1') then
					if(rising_edge(DATA_EXTERNAL_CLOCK) and DATA_EXTERNAL_FRESHDATA = '1') then
						out_data(KEY_SIZE-1-16 downto 0) <= DATA_EXTERNAL_IN;  -- MS 16bits
						next_state <= state_Block2;
					end if;
				elsif(transmit_flag = '1') then
					DATA_EXTERNAL_OUT <= in_data(KEY_SIZE-1 downto KEY_SIZE-16);
					DATA_EXTERNAL_WR_EN <= '1';
					if(rising_edge(DATA_EXTERNAL_CLOCK)) then
						DATA_EXTERNAL_WR_EN <= '0';
						next_state <= state_Block2;
					end if;
				end if;
			when state_Block2 =>
				if(receive_flag = '1') then
					next_state <= state_Finished;
				elsif(transmit_flag = '1') then
					DATA_EXTERNAL_OUT <= in_data(KEY_SIZE-1-16 downto 0);
					DATA_EXTERNAL_WR_EN <= '1';
					if(rising_edge(DATA_EXTERNAL_CLOCK)) then
						DATA_EXTERNAL_WR_EN <= '0';
						next_state <= state_Finished;
					end if;
				end if;
			when state_Finished =>
				busy_internal <= '0';
				done_internal <= '1';
				data_available_internal <= '1';
				receive_flag <= '0';
				transmit_flag <= '0';
				next_state <= state_Idle;
		end case;
	end process;
	
	busy <= busy_internal;
	data_available <= data_available_internal;
	done <= done_internal;


end behavior;