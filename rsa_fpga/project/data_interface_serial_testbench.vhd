--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:    modexp_interface.vhd            --
-- description: Interface circuit between       --
--              top-level and modexp            --
-- created on:  June 19, 2016                   --
-- revision:    June 19, 2016                   --
--------------------------------------------------

-- Binary method of modular exponentiation is used.


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

-- Port signal definition:

entity data_interface_serial_testbench is
generic ( KEY_SIZE: integer := 32);
end data_interface_serial_testbench;

architecture behavior of data_interface_serial_testbench is
---------------------------  Component declarations:  ---------------------------

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
        done: out std_logic;
        -- Debug signals
        counter_dbg: out integer;
        current_state_dbg: out integer;
        next_state_dbg: out integer;
        current_byte: out std_logic_vector(7 downto 0)
    );
    end component data_interface_serial;


---------------------------    Signal declarations:   ---------------------------

        signal DATA_EXTERNAL_FROM_HOST: std_logic_vector(7 downto 0);
        signal DATA_EXTERNAL_TO_HOST:  std_logic_vector(7 downto 0);
        signal DATA_EXTERNAL_FRESHDATA: std_logic;
        signal DATA_EXTERNAL_READ_EN:  std_logic;
        signal DATA_EXTERNAL_WR_EN:  std_logic;
        signal DATA_EXTERNAL_WR_RDY: std_logic;
        signal DATA_EXTERNAL_CLOCK: std_logic;
        signal data_from_rsa: std_logic_vector(KEY_SIZE-1 downto 0);
        signal data_to_rsa:  std_logic_vector(KEY_SIZE-1 downto 0);
        signal reset: std_logic;
        signal clock: std_logic;
        signal data_transmit: std_logic;
        signal data_available:  std_logic;
        signal busy:  std_logic;
        signal done:  std_logic;
        signal counter_dbg: integer;
        signal current_state_dbg: integer;
        signal next_state_dbg: integer;
        signal current_byte: std_logic_vector(7 downto 0);


---------------------------       Signal Routing:     ---------------------------
begin

    process
    begin
        reset <= '1';
        data_transmit <= '0';
        DATA_EXTERNAL_WR_RDY <= '1';
        wait until clock = '1';
        reset <= '0';
        wait until clock = '0';
        -- from host
        data_transmit <= '0';
        DATA_EXTERNAL_FROM_HOST <= x"DE";
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_FRESHDATA <= '1';
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '0';
        wait for 400 ps;
        DATA_EXTERNAL_FROM_HOST <= x"AD";
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '1';
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '0';
        wait for 400 ps;
        DATA_EXTERNAL_FROM_HOST <= x"BE";
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '1';
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '0';
        wait for 400 ps;
        DATA_EXTERNAL_FROM_HOST <= x"EF";
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '1';
        wait for 400 ps;
        DATA_EXTERNAL_FRESHDATA <= '0';
        wait for 400 ps;

        wait for 1 ns;

        -- to host
        data_from_rsa <= x"DEADBEEF";
        wait until clock = '1';
        wait until clock = '0';
        data_transmit <= '1';
        wait until clock = '1';
        wait until clock = '0';
        data_transmit <= '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '1';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '1';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '1';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_WR_RDY <= '1';

        wait;
    end process;

    clkgen: process
    begin
        wait for 50 ps;
        if clock = '1' then
            clock <= '0';
        else
            clock <= '1';
        end if;
    end process;


    data_module: data_interface_serial port map(
                    DATA_EXTERNAL_FROM_HOST => DATA_EXTERNAL_FROM_HOST,
                    DATA_EXTERNAL_TO_HOST => DATA_EXTERNAL_TO_HOST,
                    DATA_EXTERNAL_FRESHDATA => DATA_EXTERNAL_FRESHDATA,
                    --DATA_EXTERNAL_READ_EN => ,
                    --DATA_EXTERNAL_WR_EN => ,
                    DATA_EXTERNAL_WR_RDY => DATA_EXTERNAL_WR_RDY,
                    DATA_EXTERNAL_CLOCK => '0',
                    data_from_rsa => data_from_rsa, -- Data from RSA
                    data_to_rsa => data_to_rsa, -- Data to RSA
                    reset => reset,
                    clock => clock,
                    data_transmit => data_transmit,
                    data_available => data_available,
                    busy => busy,
                    done => done,
                    -- Debug signals
                    counter_dbg => counter_dbg,
                    current_state_dbg => current_state_dbg,
                    next_state_dbg => next_state_dbg,
                    current_byte => current_byte
                    );


end behavior;