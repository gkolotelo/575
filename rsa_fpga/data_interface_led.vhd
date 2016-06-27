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
-- DATA_PROVIDER_IN: 	SW(15 downto 0)
-- DATA_PROVIDER_OUT: 	LEDR(15 downto 0)
-- DATA_PROVIDER_FRESHDATA: KEY(2)
-- DATA_PROVIDER_CLOCK:	KEY(3)
-- DATA_PROVIDER_READ_EN: not used

entity data_interface_led is
	generic ( KEY_SIZE: integer := 32);
	port(
	-- External raw data provider accessors and signals:
	DATA_PROVIDER_IN: in std_logic_vector(15 downto 0);
	DATA_PROVIDER_OUT: out std_logic_vector(15 downto 0);
	DATA_PROVIDER_FRESHDATA: in std_logic;
	DATA_PROVIDER_READ_EN: out std_logic;
	DATA_PROVIDER_WR_EN: out std_logic;
	DATA_PROVIDER_CLOCK: in std_logic;
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
	signal data_available_internal, busy_internal, done_internal: std_logic;

---------------------------       Signal Routing:     ---------------------------
begin

-- 4bit DATA_PROVIDER with and 16bit KEY_SIZE example for LED accessor:
--
--												busy:	done:	data_available:	  
-- DATA_PROVIDER_IN:	aaaa bbbb cccc dddd		  1		  0     	  0
-- DATA_PROVIDER_CLOCK:-> |    |    |    |  	  1		  0     	  0
--  					  ----------------  	  1		  0     	  0
--								 || serial  	  1		  0     	  0
--								 \/				  1		  0     	  0
--												  1		  0     	  0
--		 DATA_ADDRESS_IN --> |  dec  |			  1		  0     	  0
--						1st/ 2nd| 3rd| 4th\		  1		  0     	  0
-- out_data:			aaaa_bbbb_cccc_dddd		  0		  0     	  1
--

-- In this case: LED/SW 16bit; KEY_SIZE 32bit

	data_transaction: process
	begin
		if(reset = '1') then
			busy_internal <= '0';
			done_internal <= '0';
			data_available_internal <= '0';
			out_data <= (others => '0');
		elsif(rising_edge(DATA_PROVIDER_CLOCK) and DATA_PROVIDER_FRESHDATA = '1' and busy_internal = '0') then  -- Data to RSA
			done_internal <= '0';
			data_available_internal <= '0';
			busy_internal <= '1';
			wait until DATA_PROVIDER_CLOCK = '1' and DATA_PROVIDER_FRESHDATA = '1';
			out_data(KEY_SIZE-1 downto KEY_SIZE-16) <= DATA_PROVIDER_IN;
			wait until DATA_PROVIDER_CLOCK = '0';
			wait until DATA_PROVIDER_CLOCK = '1' and DATA_PROVIDER_FRESHDATA = '1';
			out_data(KEY_SIZE-1-16 downto 0) <= DATA_PROVIDER_IN;
			busy_internal <= '0';
			done_internal <= '1';
			data_available_internal <= '1';
			wait until DATA_PROVIDER_CLOCK = '0';

		elsif(rising_edge(DATA_PROVIDER_CLOCK) and data_transmit = '1' and busy_internal = '0') then  -- Data from RSA
			done_internal <= '0';
			busy_internal <= '1';
			-- 1st block
			DATA_PROVIDER_OUT <= in_data(KEY_SIZE-1 downto KEY_SIZE-16);
			DATA_PROVIDER_WR_EN <= '1';
			wait until DATA_PROVIDER_CLOCK = '1';
			DATA_PROVIDER_WR_EN <= '0';
			wait until DATA_PROVIDER_CLOCK = '0';

            		-- 2nd block
            		DATA_PROVIDER_OUT <= in_data(KEY_SIZE-1-16 downto 0);
			DATA_PROVIDER_WR_EN <= '1';
			wait until DATA_PROVIDER_CLOCK = '1';
			DATA_PROVIDER_WR_EN <= '0';
			wait until DATA_PROVIDER_CLOCK = '0';
			busy_internal <= '0';
			done_internal <= '1';
			wait until DATA_PROVIDER_CLOCK = '1';
			wait until DATA_PROVIDER_CLOCK = '0';
		end if;
		wait until rising_edge(clock);
	end process;
	
	busy <= busy_internal;
	data_available <= data_available_internal;
	done <= done_internal;


end behavior;