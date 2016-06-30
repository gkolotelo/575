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
        reset: in std_logic;
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
                Rin, Clock, Rst : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;


---------------------------    Signal declarations:   ---------------------------
    signal modexp_trigger, modexp_done: std_logic;  -- Interfacing signals with modexp circuit
    signal modexp_out: std_logic_vector(KEY_SIZE-1 downto 0);  -- Output from modexp circuit
    signal finished_internal: std_logic;  -- Internal finished signal, registered for finished output signal

    type state_type is (state_Idle, state_Start, state_Running, state_QuasiFinished, state_Finished);
    signal current_state, next_state: state_type;

---------------------------       Signal Routing:     ---------------------------
begin

    set_next: process(reset, clock, next_state)
    begin
        if(reset = '1') then
            current_state <= state_Idle;
        elsif(rising_edge(clock)) then
            current_state <= next_state;
        end if;
    end process set_next;

    find_next: process(start, modexp_done, current_state)
    begin
        case current_state is
            when state_Idle =>
                modexp_trigger <= '0';
                finished_internal <= '0';
                if(start = '1') then
                    next_state <= state_Start;
                end if;
            when state_Start =>
                modexp_trigger <= '1';
                if(modexp_done = '0') then
                    modexp_trigger <= '0';
                    next_state <= state_Running;
                end if;
            when state_Running =>
                if(modexp_done = '1') then
                    next_state <= state_QuasiFinished;
                end if;
            when state_QuasiFinished =>
                next_state <= state_Finished;
            when state_Finished =>
                finished_internal <= '1';
                next_state <= state_Idle;
        end case;
    end process find_next;

    finished <= finished_internal;

---------------------------    Component instances:   ---------------------------
    modular_exp: modexp generic map (KEY_SIZE => KEY_SIZE)
                    port map (  A => in_data,
                                b => exponent,
                                C => modulus,
                                Reset => reset,
                                Clock => clock,
                                Trigger => modexp_trigger,
                                R => modexp_out,
                                Done => modexp_done
                );

    run_reg:    regn generic map (n => KEY_SIZE)
                port map(   R => modexp_out,
                            Rin => modexp_done,
                            Clock => clock,
                            Rst => reset,
                            Q => out_data
                );


end behavior;