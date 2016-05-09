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

entity Exp8_Part2 is
    port (
            SW: in std_logic_vector(17 downto 0);
            LEDR: out std_logic_vector(8 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(1 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp8_Part2;

architecture behavior OF Exp8_Part2 is
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
    signal reset, reset_n: std_logic;

    type S_state is (I, W, O, B);
    signal S1, S2: S_state;
    signal V1, V2: std_logic;
    signal lights_1, lights_2, lights_3, lights_4: std_logic_vector(1 downto 0);

    signal Tmin_1, Tmin_2, Tmax_1, Tmax_2: natural := 5;
    signal Ty: natural := 1;

    signal Y1_reset, Y1_completed: std_logic;
    signal Y2_reset, Y2_completed: std_logic;

    signal S1_reset, S1_completed: std_logic;
    signal S2_reset, S2_completed: std_logic;

	signal P1_reset, P1_completed: std_logic;
    signal P2_reset, P2_completed: std_logic;

begin

    reset <= not(KEY(0));
    reset_n <= KEY(0);
    car_waiting <= SW(8);

    seconds_counter: counter_k_init
        generic map(n => 32)
        port map(k => 50000000, clock => CLOCK_50, reset_n => reset_n, init => 0, completed => clk_sec);

    TY1: timer
        generic map(duration => 1)
        port map(clk_sec, Y1_reset, Y1_completed);

    TY2: timer
        generic map(duration => 1)
        port map(clk_sec, Y2_reset, Y2_completed);

    TS1: timer
        generic map(duration => 5)
        port map(clk_sec, S1_reset, S1_completed);

    TS2: timer
        generic map(duration => 5)
        port map(clk_sec, S2_reset, S2_completed);

    TP1: timer
        generic map(duration => 5)
        port map(clk_sec, P1_reset, P1_completed);

    TP2: timer
        generic map(duration => 5)
        port map(clk_sec, P2_reset, P2_completed);



    process(S1, reset, clk_sec)
    begin
    	if (reset = '1') then
    		S1 <= E0;
    	elsif (CLOCK_50 = '1' and CLOCK_50'event) then
	    	case(S1) is
                --fill in for S1
            end case;
    	end if;
    end process;

    process(S2, reset, clk_sec)
    begin
        if (reset = '1') then
            S2 <= E0;
        elsif (CLOCK_50 = '1' and CLOCK_50'event) then
            case(S2) is
                --fill in for S2
            end case;
        end if;
    end process;

    process(S1, S2)
    begin
    	case(S1, S2) is
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
    T3: decoder_traffic_sign port map(lights_3, HEX3);
    T4: decoder_traffic_sign port map(lights_4, HEX1);
    -- blank display
    T5: decoder_traffic_sign port map(('1'&'1'), HEX0);
    T6: decoder_traffic_sign port map(('1'&'1'), HEX2);
    T7: decoder_traffic_sign port map(('1'&'1'), HEX4);
    T8: decoder_traffic_sign port map(('1'&'1'), HEX6);
    LEDR(0) <= completed_open;
    LEDR(1) <= reset_open;
    LEDR(3) <= completed_yellow;
    LEDR(4) <= reset_yellow;


end behavior;
