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
	signal data_available_internal: std_logic;

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

	data_in: process
	begin
		if(reset = '1') then:
			busy <= '0';
			done <= '0';
			data_available_internal <= '0';
			out_data <= (others => '0');
		elsif(rising_edge(clock) and DATA_PROVIDER_FRESHDATA = '1' and data_available_internal = '1') then:
			done <= '0';
			data_available_internal <= '0';
			busy <= '1';
			wait until DATA_PROVIDER_CLOCK = '1' and DATA_PROVIDER_FRESHDATA = '1';
			out_data(KEY_SIZE-1 downto KEY_SIZE-16) <= DATA_PROVIDER_IN;
			wait until DATA_PROVIDER_CLOCK = '0';
			wait until DATA_PROVIDER_CLOCK = '1' and DATA_PROVIDER_FRESHDATA = '1';
			out_data(KEY_SIZE-1-16 downto 0) <= DATA_PROVIDER_IN;
			busy <= '0';
			done <= '1';
			data_available_internal <= '1';
			wait until DATA_PROVIDER_CLOCK = '0';
			end if;
		end if;

	data_available <= data_available_internal;

---------------------------    Component instances:   ---------------------------
	modular_exp: modexp generic map (KEY_SIZE => KEY_SIZE)
					port map (  A => in_data,
								b => exponent,
								C => modulus,
								Reset => reset,
								Clock => clock,
								Trigger => trigger,
								R => modexp_out,
								Done => done
					);

	run_reg:    regn generic map (n => KEY_SIZE)
				port map(   R => modexp_out,
							Rin => finished_internal,
							Clock => clock,
							--Rstn => not(reset),
							Rstn => '1',  -- eu acho q nao precisa resetar pq dai o dado de saida fica ate o proximo pulso de finished_internal
							Q => out_data
				);

	


end behavior;