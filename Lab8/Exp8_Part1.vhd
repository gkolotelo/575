--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
--          Laboratorio 8: Semaforos            --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Exp8_Part1 is
    port (
            SW: in std_logic_vector(17 downto 0);
            LEDR: out std_logic_vector(8 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(1 downto 0);
            CLOCK_50: in std_logic
          );
end Exp8_Part1;

architecture behavior OF Exp8_Part1 is
    component counter_k_init
        generic (
            -- Change 'n' for larger (or shorter) maximum values for 'k'
            n : natural := 8
        );
        port (
            -- Standard maximum value = (256)decimal = (11111111)binary
            k       : in natural;
            clock   : in STD_LOGIC;
            reset_n : in STD_LOGIC;
            Q       : out STD_LOGIC_VECTOR(n-1 downto 0);
            init    : in natural;
            completed: out std_logic
        );
    end component counter_k_init;
    component decoder_7segment_hex
        port (
            dec_in: IN std_logic_vector(3 downto 0);
            dec_out: OUT std_logic_vector(6 downto 0)
        );
    end component decoder_7segment_hex;
    component timer
        generic (
            duration : natural := 8
        );
        port (
            clock   : in std_logic;
            reset   : in std_logic;
            completed: out std_logic
        );
    end component timer;


    signal clk_sec: std_logic;
    signal car_waiting: std_logic;
    signal reset, reset_n: std_logic;
    type traffic_state is (E0, E1, E2, E3);
    signal t_status: traffic_state;
    signal reset_yellow, completed_yellow: std_logic;

begin

    reset <= not(KEY(0));
    reset_n <= KEY(0);
    seconds_counter: counter_k_init
        generic map(n => 32)
        port map(k => 50000000, clock => CLOCK_50, reset_n => reset_n, Q => s_base, init => 0, complete => clk_sec);

    timer_yellow_light: timer
        generic map(duration => 1)
        port map(clk_sec, reset_yellow, completed_yellow);

    process(t_status)
    begin
    	if (reset = '1') then
    		t_status <= E0;
    	end if;
    	if (clock = '1' and clock'event) then
	    	
    	end if;

    end process;

    process(t_status)
    begin
    	case(t_status) is
    		when E0
    			-- Main: G; Collector: R
    			LEDR(5 downto 0) <= (0&0&1 & 1&1&1);
    		when E1
    			-- Main: Y; Collector: R
    			LEDR(5 downto 0) <= (0&1&1 & 1&1&1);
    		when E2
    			-- Main: R; Collector: G
    			LEDR(5 downto 0) <= (1&1&1 & 0&0&1);
    		when E3
    			-- Main: R; Collector: Y
    			LEDR(5 downto 0) <= (1&1&1 & 0&1&1);
    	end case;
    end process;

end behavior;
