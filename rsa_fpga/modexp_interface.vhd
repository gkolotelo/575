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

entity modexp_interface is
    generic ( KEY_SIZE: integer := 32);
    port(
        in_data: in std_logic_vector(KEY_SIZE-1 downto 0);
        exponent: in std_logic_vector(KEY_SIZE-1 downto 0);
        modulus: in std_logic_vector(KEY_SIZE-1 downto 0);
        --reset: in std_logic;
        clock: in std_logic;
        out_data: out std_logic_vector(KEY_SIZE-1 downto 0);
        start : in std_logic;
        finished : out std_logic
    );
end modexp_interface;

architecture behavior of modexp_interface is
---------------------------  Component declarations:  ---------------------------

    -- Modular exponentiation
    component modexp is
        generic ( KEY_SIZE: integer := 32);
        port (  A: in  std_logic_vector(KEY_SIZE-1 downto 0);
                b: in  std_logic_vector(KEY_SIZE-1 downto 0);
                C: in  std_logic_vector(KEY_SIZE-1 downto 0);
                Reset: in std_logic;
                Clock: in std_logic;
                Trigger: in std_logic;
                R: out std_logic_vector(KEY_SIZE-1 downto 0);
                Done: out std_logic
        );
    end component;

    -- Register n-bits
    component regn
        generic (n : integer := KEY_SIZE);
        port (  R : IN std_logic_vector(n-1 downto 0);
                Rin, Clock, Rstn : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;


---------------------------    Signal declarations:   ---------------------------
    signal trigger, done, reset: std_logic;  -- Interfacing signals with modexp circuit
    signal modexp_out: std_logic_vector(KEY_SIZE-1 downto 0);  -- Output from modexp circuit
    signal finished_internal: std_logic;  -- Internal finished signal, registered for finished output signal

---------------------------       Signal Routing:     ---------------------------
begin

    -- Sets encryption module signals and data
    encryption: process
    begin
        if (rising_edge(start)) then
            --wait for 120ns;
            reset <= '1';
            trigger <= '0';
            --wait for 20ns;
            wait until Clock = '0';
            reset <= '0';
            wait until Clock = '1'; wait until Clock = '0';
            
            -- Load encryption data
--            exponential <= x"00903ad9";
--            modulus <= x"03b2c159";
--            input_data <= x"00724183"; 
            
            wait until Clock = '1';
            --wait for 2ns;
            trigger <= '1';
            wait until done = '0';
            trigger <= '0';
            wait until done = '1';
            
            -- Finished outputs 1 pulse
            finished_internal <= '1';
            wait until Clock = '1'; wait until Clock = '0';
            finished_internal <= '0';
        end if;
	wait until rising_edge(clock);
    END PROCESS;

    finished <= finished_internal;

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