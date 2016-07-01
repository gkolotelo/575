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

entity data_interface_led_testbench is
generic ( KEY_SIZE: integer := 32);
end data_interface_led_testbench;

architecture behavior of data_interface_led_testbench is
---------------------------  Component declarations:  ---------------------------

    component data_interface_led
    generic ( KEY_SIZE: integer := 32);
    port(
        -- External raw data provider accessors and signals:
        DATA_EXTERNAL_FROM_HOST: in std_logic_vector(15 downto 0);
        DATA_EXTERNAL_TO_HOST: out std_logic_vector(15 downto 0);
        DATA_EXTERNAL_FRESHDATA: in std_logic;
        DATA_EXTERNAL_READ_EN: out std_logic;
        DATA_EXTERNAL_WR_EN: out std_logic;
        DATA_EXTERNAL_WR_RDY: in std_logic;
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


---------------------------    Signal declarations:   ---------------------------

        signal DATA_EXTERNAL_FROM_HOST: std_logic_vector(15 downto 0);
        signal DATA_EXTERNAL_TO_HOST:  std_logic_vector(15 downto 0);
        signal DATA_EXTERNAL_FRESHDATA: std_logic;
        signal DATA_EXTERNAL_READ_EN:  std_logic;
        signal DATA_EXTERNAL_WR_EN:  std_logic;
        signal DATA_EXTERNAL_WR_RDY: std_logic;
        signal DATA_EXTERNAL_CLOCK: std_logic;
        signal in_data: std_logic_vector(KEY_SIZE-1 downto 0);
        signal out_data:  std_logic_vector(KEY_SIZE-1 downto 0);
        signal reset: std_logic;
        signal clock: std_logic;
        signal data_transmit: std_logic;
        signal data_available:  std_logic;
        signal busy:  std_logic;
        signal done:  std_logic;


---------------------------       Signal Routing:     ---------------------------
begin

    process
    begin
        reset <= '1';
        data_transmit <= '0';
        DATA_EXTERNAL_CLOCK <= '0';
        wait until clock = '1';
        reset <= '0';
        wait until clock = '0';
        DATA_EXTERNAL_FROM_HOST <= x"DEAD";
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_FRESHDATA <= '1';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_CLOCK <= '1';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_FRESHDATA <= '0';
        DATA_EXTERNAL_CLOCK <= '0';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_FROM_HOST <= x"BEEF";
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_FRESHDATA <= '1';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_CLOCK <= '1';
        wait until clock = '1';
        wait until clock = '0';
        DATA_EXTERNAL_FRESHDATA <= '0';
        DATA_EXTERNAL_CLOCK <= '0';
        wait until clock = '1';
        wait until clock = '0';

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


    data_module: data_interface_led port map(
                    DATA_EXTERNAL_FROM_HOST => DATA_EXTERNAL_FROM_HOST,
                    DATA_EXTERNAL_TO_HOST => DATA_EXTERNAL_TO_HOST,
                    DATA_EXTERNAL_FRESHDATA => DATA_EXTERNAL_FRESHDATA,
                    --DATA_EXTERNAL_READ_EN => ,
                    --DATA_EXTERNAL_WR_EN => ,
                    DATA_EXTERNAL_WR_RDY => '1',
                    DATA_EXTERNAL_CLOCK => DATA_EXTERNAL_CLOCK,
                    in_data => in_data, -- Data from RSA
                    out_data => out_data, -- Data to RSA
                    reset => reset,
                    clock => clock,
                    data_transmit => data_transmit,
                    data_available => data_available,
                    busy => busy,
                    done => done
                    );


end behavior;