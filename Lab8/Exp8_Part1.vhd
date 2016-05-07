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
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
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
    component decoder_traffic_sign
        port (
            dec_in: IN std_logic_vector(1 downto 0);
            dec_out: OUT std_logic_vector(6 downto 0)
        );
    end component decoder_traffic_sign;
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
    signal lights_1, lights_2: std_logic_vector(1 downto 0);
	signal reset_open, completed_open: std_logic;

begin

    reset <= not(KEY(0));
    reset_n <= KEY(0);
    car_waiting <= SW(8);

    seconds_counter: counter_k_init
        generic map(n => 32)
        port map(k => 50000000, clock => CLOCK_50, reset_n => reset_n, init => 0, completed => clk_sec);

    timer_yellow_light: timer
        generic map(duration => 1)
        port map(clk_sec, reset_yellow, completed_yellow);

    timer_open: timer
        generic map(duration => 5)
        port map(clk_sec, reset_open, completed_open);


    process(t_status, reset, clk_sec)
    begin
    	if (reset = '1') then
    		t_status <= E0;
    	elsif (CLOCK_50 = '1' and CLOCK_50'event) then
	    	case(t_status) is
                when E0 =>
                    reset_open <= '0';
                    if(car_waiting = '1' and completed_open = '1') then
                        t_status <= E1;
                        reset_open <= '1';
                    end if;
                when E1 =>
                    reset_yellow <= '0';
                    if(completed_yellow = '1') then 
                        t_status <= E2;
                        reset_yellow <= '1';
                    end if;
                when E2 =>
                    reset_open <= '0';
                    if(car_waiting = '0' or completed_open = '1') then
                        t_status <= E3;
                        reset_open <= '1';
                    end if;
                when E3 =>
                    reset_yellow <= '0';
                    if(completed_yellow = '1') then 
                        t_status <= E0;
                        reset_yellow <= '1';
                    end if;
            end case;
    	end if;

    end process;

    process(t_status)
    begin
    	case(t_status) is
    		when E0 =>
    			-- Main: G; Collector: R
    			--LEDR(5 downto 0) <= ('0'&'0'&'1' & '1'&'1'&'1');
                lights_1 <= ('0'&'0');
                lights_2 <= ('1'&'0');
    		when E1 =>
    			-- Main: Y; Collector: R
    			--LEDR(5 downto 0) <= ('0'&'1'&'1' & '1'&'1'&'1');
                lights_1 <= ('0'&'1');
                lights_2 <= ('1'&'0');
    		when E2 =>
    			-- Main: R; Collector: G
    			--LEDR(5 downto 0) <= ('1'&'1'&'1' & '0'&'0'&'1');
                lights_1 <= ('1'&'0');
                lights_2 <= ('0'&'0');
    		when E3 =>
    			-- Main: R; Collector: Y
    			--LEDR(5 downto 0) <= ('1'&'1'&'1' & '0'&'1'&'1');
                lights_1 <= ('1'&'0');
                lights_2 <= ('0'&'1');
    	end case;
    end process;

    T1: decoder_traffic_sign port map(lights_1, HEX7);
    T2: decoder_traffic_sign port map(lights_2, HEX5);
    T8: decoder_traffic_sign port map(('1'&'1'), HEX0);
    T3: decoder_traffic_sign port map(('1'&'1'), HEX1);
    T4: decoder_traffic_sign port map(('1'&'1'), HEX2);
    T5: decoder_traffic_sign port map(('1'&'1'), HEX3);
    T6: decoder_traffic_sign port map(('1'&'1'), HEX4);
    T7: decoder_traffic_sign port map(('1'&'1'), HEX6);
    LEDR(0) <= completed_open;
    LEDR(1) <= reset_open;
    LEDR(3) <= completed_yellow;
    LEDR(4) <= reset_yellow;

end behavior;
