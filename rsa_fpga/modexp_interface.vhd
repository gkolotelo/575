--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:    rsa_toplevel.vhd                --
-- description: Modular Exponentiation circuit  --
--              R = A^b mod C                   --
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
        out_data: std_logic_vector(KEY_SIZE-1 downto 0);
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
        generic (n : integer := 16);
        port (  R : IN std_logic_vector(n-1 downto 0);
                Rin, Clock, Rstn : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;


---------------------------    Signal declarations:   ---------------------------
    signal trigger, done: std_logic;
    signal modexp_out: std_logic_vector(KEY_SIZE-1 downto 0);

---------------------------       Signal Routing:     ---------------------------
begin

    -- Sets encryption module signals and data
    encryption: PROCESS(start)
    BEGIN
        if (rising_edge(start)) then
            --wait for 120ns;
            Reset <= '1';
            trigger <= '0';
            --wait for 20ns;
            wait until Clock = '0';
            Reset <= '0';
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
            finished <= '1';
            wait until Clock = '1'; wait until Clock = '0';
            finished <= '0';
        end if;
    END PROCESS;

---------------------------    Component instances:   ---------------------------
    modular_exp: modexp generic map (KEY_SIZE => KEY_SIZE);
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
                            Rin => finished,
                            Clock => clock,
                            Rstn => not(reset),
                            Q => out_data
                )


end behavior;