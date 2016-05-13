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
            LEDR: out std_logic_vector(17 downto 0);
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

    type S_state is (I, W, O, B);   -- I:Idle; W:Waiting; O:Open; B:Back to Idle
    signal S1, S2: S_state;         -- Secondary road traffic light state

    signal V1, V2: std_logic;       -- Vehicle presence at secondary roads
    signal lights_P1, lights_P2, lights_S1, lights_S2: std_logic_vector(1 downto 0);

    -- Timing signals
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
    V1 <= SW(1);
    V2 <= SW(0);

    seconds_counter: counter_k_init
        generic map(n => 32)
        port map(k => 50000000, clock => CLOCK_50, reset_n => reset_n, init => 0, completed => clk_sec);

    TY1: timer
        generic map(duration => 1) -- Ty
        port map(clk_sec, Y1_reset, Y1_completed);

    TY2: timer
        generic map(duration => 1) -- Ty
        port map(clk_sec, Y2_reset, Y2_completed);

    TS1: timer
        generic map(duration => 5) -- Tmax1
        port map(clk_sec, S1_reset, S1_completed);

    TS2: timer
        generic map(duration => 5) -- Tmax2
        port map(clk_sec, S2_reset, S2_completed);

    TP1: timer
        generic map(duration => 5) -- Tmin1
        port map(clk_sec, P1_reset, P1_completed);

    TP2: timer
        generic map(duration => 5) -- Tmin2
        port map(clk_sec, P2_reset, P2_completed);


    -- =============================
    --  < < <      \       P1 < < < 
    -- -------------\---------------
    --  > > > P2     )/       > > > 
    -- =========     (     =========
    --          | S1 | S2 |  tryhard
    --          | ^^ | ^^ |    ascii
    --          | ^^ | ^^ |      art
    
    -- Upper primary road: P1
    -- Lower primary road: P2
    -- Secondary road (Left): S1
    -- Secondary road (Right): S2

    -- State Machine for S1
    process(S1, S2, reset)
    begin
        -- Initial state: Both primary roads open; both secondary roads closed.
    	if (reset = '1') then
    		S1 <= I;
            S2 <= I;
            Y1_reset <= '1';
            Y2_reset <= '1';
            P1_reset <= '1';
            P2_reset <= '1';
            S1_reset <= '1';
            S2_reset <= '1';

    	elsif (CLOCK_50 = '1' and CLOCK_50'event) then
            case(S1) is
                when I =>
                    P1_reset <= '0';
                    if (V1 = '1' and P1_completed = '1' and P2_completed = '1') then
                        S1 <= W;
                        P1_reset <= '1';
                        P2_reset <= '1';
                    end if;

                when W =>
                    Y1_reset <= '0';
                    if (Y1_completed = '1') then
                        S1 <= O;
                        Y1_reset <= '1';
                    end if;

                when O =>
                    S1_reset <= '0';
                    S2_reset <= '0';
                    if (V1 = '0' or S1_completed = '1') then
                        S1 <= B;
                        S1_reset <= '1';
                    end if;

                when B =>
                    Y1_reset <= '0';
                    if (Y1_completed = '1') then
                        S1 <= I;
                        Y1_reset <= '1';
                        P2_reset <= '0';
                    end if;
            end case;

            case(S2) is
                when I =>
                    P2_reset <= '0';
                    if (V2 = '1' and P2_completed = '1') then
                        S2 <= W;
                        P2_reset <= '1';
                    end if;

                when W =>
                    Y2_reset <= '0';
                    if (Y2_completed = '1') then
                        S2 <= O;
                        Y2_reset <= '1';
                    end if;

                when O =>
                    S2_reset <= '0';
                    P2_reset <= '1';
                    if (V2 = '0' or S2_completed = '1') then
                        S2 <= B;
                        S2_reset <= '1';
                    end if;

                when B =>
                    Y2_reset <= '0';
                    if (Y2_completed = '1') then
                        S2 <= I;
                        Y2_reset <= '1';
                        P2_reset <= '0';
                    end if;
            end case;
    	end if;
    end process;

    -- Display (traffic lights) update
    process(S1, S2)
    begin
        -- Green = 00; Yellow = 01; Red = 10
        if(S1 = I and S2= I) then
            lights_P1 <= ('0'&'0'); --GREEN
            lights_P2 <= ('0'&'0'); --GREEN
            lights_S1 <= ('1'&'0'); --RED
            lights_S2 <= ('1'&'0'); --RED
        elsif(S1 = I and S2 = W) then
            lights_P1 <= ('0'&'0'); --GREEN
            lights_P2 <= ('0'&'1'); --YELLOW
            lights_S1 <= ('1'&'0'); --RED
            lights_S2 <= ('1'&'0'); --RED
        elsif(S1 = I and S2 = O) then
            lights_P1 <= ('0'&'0'); --GREEN
            lights_P2 <= ('1'&'0'); --RED
            lights_S1 <= ('1'&'0'); --RED
            lights_S2 <= ('0'&'0'); --GREEN
        elsif(S1 = I and S2 = B) then
            lights_P1 <= ('0'&'0'); --GREEN
            lights_P2 <= ('1'&'0'); --RED
            lights_S1 <= ('1'&'0'); --RED
            lights_S2 <= ('0'&'1'); --YELLOW
        elsif(S1 = W) then
            lights_P1 <= ('0'&'1'); --YELLOW
            lights_P2 <= ('0'&'1'); --YELLOW
            lights_S1 <= ('1'&'0'); --RED
            lights_S2 <= ('1'&'0'); --RED
        elsif(S1 = O) then
            lights_P1 <= ('1'&'0'); --RED
            lights_P2 <= ('1'&'0'); --RED
            lights_S1 <= ('0'&'0'); --GREEN
            lights_S2 <= ('0'&'0'); --GREEN
        elsif(S1 = B and not(S2 = O)) then
            lights_P1 <= ('1'&'0'); --RED
            lights_P2 <= ('1'&'0'); --RED
            lights_S1 <= ('0'&'1'); --YELLOW
            lights_S2 <= ('0'&'1'); --YELLOW
        elsif(S1 = B and S2 = O) then
            lights_P1 <= ('1'&'0'); --RED
            lights_P2 <= ('1'&'0'); --RED
            lights_S1 <= ('0'&'1'); --YELLOW
            lights_S2 <= ('0'&'0'); --GREEN
        else -- default
            lights_P1 <= ('1'&'1');
            lights_P2 <= ('1'&'1');
            lights_S1 <= ('1'&'1');
            lights_S2 <= ('1'&'1');
        end if;
            
            


        -- R = 00; YRow = 01; Red = 10
    	case(S1) is
    		when I => -- S1 = Red; P1 & P2 = Green
                LEDG(7 downto 4) <= '1'&'0'&'0'&'0';
            when W => -- S1 = Red; P1 & P2 = Yellow
                LEDG(7 downto 4) <= '0'&'1'&'0'&'0';
            when O => -- S1 = Green; P1 & P2 = Red
                LEDG(7 downto 4) <= '0'&'0'&'1'&'0';
            when B => -- S1 = Yellow; P1 & P2 = Red
                LEDG(7 downto 4) <= '0'&'0'&'0'&'1';
    	end case;

        case(S2) is
            when I => -- S2 = Red; P2 = Green
                LEDG(3 downto 0) <= '1'&'0'&'0'&'0';
            when W => -- S2 = Red; P2 = Yellow
                LEDG(3 downto 0) <= '0'&'1'&'0'&'0';
            when O => -- S2 = Green; P2 = Red
                LEDG(3 downto 0) <= '0'&'0'&'1'&'0';
            when B => -- S2 = Yellow; P2 = Red
                LEDG(3 downto 0) <= '0'&'0'&'0'&'1';
        end case;
    end process;

    T1: decoder_traffic_sign port map(lights_P1, HEX7);
    T2: decoder_traffic_sign port map(lights_P2, HEX5);
    T3: decoder_traffic_sign port map(lights_S1, HEX3);
    T4: decoder_traffic_sign port map(lights_S2, HEX1);
    
    -- blank display
    T5: decoder_traffic_sign port map(('1'&'1'), HEX0);
    T6: decoder_traffic_sign port map(('1'&'1'), HEX2);
    T7: decoder_traffic_sign port map(('1'&'1'), HEX4);
    T8: decoder_traffic_sign port map(('1'&'1'), HEX6);
    
    LEDR(17) <= P1_completed;
    LEDR(16) <= P1_reset;
    LEDR(15) <= P2_completed;
    LEDR(14) <= P2_reset;
    
    LEDR(13) <= Y1_completed;
    LEDR(12) <= Y1_reset;
    LEDR(11) <= Y2_completed;
    LEDR(10) <= Y2_reset;

    LEDR(9) <= S1_completed;
    LEDR(8) <= S1_reset;
    LEDR(7) <= S2_completed;
    LEDR(6) <= S2_reset;

end behavior;

