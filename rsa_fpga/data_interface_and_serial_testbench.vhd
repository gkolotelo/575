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

entity data_interface_and_serial_testbench is
generic ( KEY_SIZE: integer := 32);
end data_interface_and_serial_testbench;

architecture behavior of data_interface_and_serial_testbench is
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
        -- Debug signals:
        counter_dbg: out integer;
        current_state_dbg: out integer;
        next_state_dbg: out integer
    );
    end component data_interface_serial;

    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uart_simple
    PORT(
         I_clk : IN  std_logic;
         I_clk_baud_count : in STD_LOGIC_VECTOR (15 downto 0);
         I_reset : IN  std_logic;
         I_txData : IN  std_logic_vector(7 downto 0);
         I_txSig : IN  std_logic;
         O_txRdy : OUT  std_logic;
         O_tx : OUT  std_logic;
         I_rx : IN  std_logic;
         I_rxCont : IN  std_logic;
         O_rxData : OUT  std_logic_vector(7 downto 0);
         O_rxSig : OUT  std_logic;
         O_rxFrameError : out STD_LOGIC
         
         -- ; -- debug internals
         --D_rxClk : out STD_LOGIC;
         --D_rxState: out integer;
         --D_txClk : out STD_LOGIC;
         --D_txState: out integer
           
        );
    END COMPONENT;


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

        --Inputs
        --signal I_clk : std_logic := '0';
        --signal I_reset : std_logic := '0';
        --signal I_txData : std_logic_vector(7 downto 0) := (others => '0');
        --signal I_txSig : std_logic := '0';
        signal I_rx : std_logic := '1';
        --signal I_rxCont : std_logic := '0';

        --Outputs
        --signal O_txRdy : std_logic;
        signal O_tx : std_logic;
        --signal O_rxData : std_logic_vector(7 downto 0) := X"00";
        --signal O_rxSig : std_logic;
        signal O_rxFrameError : std_logic;

        -- Clock period definitions
        constant I_clk_period : time := 20 ns;
        constant I_baud_clk_pediod : time := 8680 ns ;--104167 ns; -- 115.2K or 9.6K
        signal I_baud_clk : std_logic := '0';

        signal s_data : std_logic_vector(39 downto 0) 
          --:= "0101011101001110110101001011010110001101010000110101011011010000011101"; -- unicamp / 70-bits
          := "0101010101001110010101001001010110000101";--010000010101011001010000010101"; -- UNICAMP / 70-bits
          --:= "0110000011010000010100100111010000000001"; -- (7487875)decimal / 40-bits
          
        signal s_data_pos : integer := 39;
        signal s_data_oversample: integer:= 8;
        signal s_data_begin : std_logic:= '0';

---------------------------       Signal Routing:     ---------------------------
begin

    process
    begin
        -- Receive
        reset <= '1';
        data_transmit <= '0';
        wait until clock = '1';
        reset <= '0';
        wait until clock = '0';
        wait for I_clk_period*10;
        s_data_begin <= '1';

        -- Transmit
        wait for I_baud_clk_pediod*60;
        data_from_rsa <= X"DEADBEEF";
        wait until clock = '0';
        data_transmit <= '1';
        wait until clock = '1';
        wait until clock = '0';
        data_transmit <= '0';
        wait;
    end process;

    I_clk_process: process
    begin
        clock <= '0';
        wait for I_clk_period/2;
        clock <= '1';
        wait for I_clk_period/2;
    end process;

    I_baud_clk_process: process
    begin
        I_baud_clk <= '0';
        wait for I_baud_clk_pediod/2;
        I_baud_clk <= '1';
        wait for I_baud_clk_pediod/2;
    end process;

    data_sender: process (I_baud_clk)
    begin
        if rising_edge(I_baud_clk ) and s_data_begin = '1' and s_data_pos >= 0 then
            I_rx <= s_data(s_data_pos);
            s_data_pos <= s_data_pos - 1;
        end if;
    end process;


    data_module: data_interface_serial port map(
                    DATA_EXTERNAL_FROM_HOST => DATA_EXTERNAL_FROM_HOST,
                    DATA_EXTERNAL_TO_HOST => DATA_EXTERNAL_TO_HOST,
                    DATA_EXTERNAL_FRESHDATA => DATA_EXTERNAL_FRESHDATA,
                    DATA_EXTERNAL_READ_EN => DATA_EXTERNAL_READ_EN,
                    DATA_EXTERNAL_WR_EN => DATA_EXTERNAL_WR_EN,
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
                    counter_dbg => counter_dbg,
                    current_state_dbg => current_state_dbg,
                    next_state_dbg => next_state_dbg
                    );

    -- Instantiate the Unit Under Test (UUT)
    uut: uart_simple PORT MAP (
                    I_clk => clock,
                    I_clk_baud_count => X"01b2",--X"1458", -- 115.2K or 9.6K
                    I_reset => reset,
                    I_txData => DATA_EXTERNAL_TO_HOST,
                    I_txSig => DATA_EXTERNAL_WR_EN,
                    O_txRdy => DATA_EXTERNAL_WR_RDY,
                    O_tx => O_tx,
                    I_rx => I_rx,
                    I_rxCont => DATA_EXTERNAL_READ_EN,
                    O_rxData => DATA_EXTERNAL_FROM_HOST,
                    O_rxSig => DATA_EXTERNAL_FRESHDATA,
                    
                    O_rxFrameError => O_rxFrameError
                     
                    --D_rxClk => D_rxClk,
                    --D_rxState => D_rxState,
                    --D_txClk => D_txClk,
                    --D_txState => D_txState
                    );

end behavior;