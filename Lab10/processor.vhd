library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity processor is
    port ( DIN : in std_logic_vector(15 downto 0);
    Resetn, Clock, Run : in std_logic;
    Done : buffer std_logic;
    BusWires : buffer std_logic_vector(15 downto 0));
end processor;

architecture Behavior of processor is
-- Components:

component regn
    generic (n : integer := 16);
    port (  R : IN std_logic_vector(n-1 downto 0);
            Rin, Clock : IN std_logic;
            Q : buffer std_logic_vector(n-1 downto 0));
end component regn;

-- ALU alufn not implemented!!!!!!!
component alu
    port (  A : in std_logic_vector(15 downto 0);
            B : in std_logic_vector(15 downto 0);
            O : in std_logic_vector(15 downto 0);
            alufn : in std_logic_vector(2 downto 0);
            overflow : out std_logic);
end component alu;

component multiplexer
    generic ( n: integer := 16);
    port (  entrada1: in std_logic_vector(n-1 downto 0);
            entrada2: in std_logic_vector(n-1 downto 0);
            selecao: in std_logic;
            saida: out std_logic_vector(n-1 downto 0));
end component multiplexer;

component dec3to8
    port (  W : in std_logic_vector(2 downto 0);
            En : in std_logic;
            Y : out std_logic_vector(0 TO 7));
end component dec3to8;

    type instruction_state is (fetch, mv, mvi, add_1, add_2, add_3, sub_1, sub_2, sub_3);
    signal current_state, next_state: instruction_state;
    current_state <= fetch;

    signal High, Low: std_logic;

    signal IR_enable: std_logic;

    signal opcode: std_logic_vector(3 downto 0);
    signal Rx: std_logic_vector(2 downto 0);
    signal Ry: std_logic_vector(2 downto 0);
    --signal offset: std_logic_vector(15 downto 0);

begin
    High <= '1';
    Low <= '0';

    IR: regn port map(DIN, IR_enable, Clock, opcode&Rx&Ry&offset);

    R0: regn port map(BusWires, R_enable(0), Clock, R0_out);
    R1: regn port map(BusWires, R_enable(1), Clock, R1_out);
    R2: regn port map(BusWires, R_enable(2), Clock, R2_out);
    R3: regn port map(BusWires, R_enable(3), Clock, R3_out);
    R4: regn port map(BusWires, R_enable(4), Clock, R4_out);
    R5: regn port map(BusWires, R_enable(5), Clock, R5_out);
    R6: regn port map(BusWires, R_enable(6), Clock, R6_out);
    R7: regn port map(BusWires, R_enable(7), Clock, R7_out);

    A: regn port map(BusWires, A_enable, Clock, A_out);
    G: regn port map(ALU_out, G_enable, Clock, G_out);   

    ALU: alu port map(A_out, BusWires, ALU_out, alufn, alu_overflow);

    mux: multiplexer_16_todo port map(DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out,
                                      mux_control,
                                      BusWires); 

    decx: dec3to8 port map(Rx, '1', Rx_extended);
    decy: dec3to8 port map(Ry, '1', Ry_extended);

    controlsignals: process (current_state, opcode, Rx_extended, Ry_extended, Run)
    --control signals:
    --  IR_enable (1bit)
    --  mux_control (10 bit vector)
    --  R0...R7_enable (8bit vector)
    --  A_enable (1bit)
    --  G_enable (1bit)
    --  alufn (3bit vector)
    --  Done (1bit)
    begin
        case current_state is 
            when fetch =>
                IR_enable <= High;
                Done <= Low;
                if Run = High then
                    next_state <= fetch;
                end if;
                case opcode is
                    when "0000" => next_state <= mv;
                    when "0001" => next_state <= mvi;
                    when "0010" => next_state <= add;
                    when "0011" => next_state <= sub;
                end case;
            when mv =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= '0'&Ry_extended&'0';
                R_enable <= Rx_extended;
                Done <= High;
                -- State
                next_state <= fetch;
            when mvi =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= "1000000000";
                R_enable <= Rx_extended;
                Done <= High;
                -- State
                next_state <= fetch;
            when add_1 =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= '0'&Rx_extended&'0';
                R_enable <= "00000000";
                A_enable <= High;
                -- State
                next_state <= add_2;
            when add_2 =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= '0'&Ry_extended&'0';
                R_enable <= "00000000";
                A_enable <= Low;
                G_enable <= High;
                alufn <= "000" -- sum
                -- State
                next_state <= add_3;
            when add_3 =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= "0000000001";
                R_enable <= Rx_extended;
                G_enable <= Low;
                Done <= High;
                -- State
                next_state <= fetch;
            when sub_1 =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= '0'&Rx_extended&'0';
                R_enable <= "00000000";
                A_enable <= High;
                -- State
                next_state <= sub_2;
            when sub_2 =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= '0'&Ry_extended&'0';
                R_enable <= "00000000";
                A_enable <= Low;
                G_enable <= High;
                alufn <= "001" -- subtraction
                -- State
                next_state <= sub_3;
            when sub_3 =>
                -- Control signals
                IR_enable <= Low;
                mux_control <= "0000000001";
                R_enable <= Rx_extended;
                G_enable <= Low;
                Done <= High;
                -- State
                next_state <= fetch;
        end case;
    end process;
    
    fsmflipflops: process (Clock, Resetn, next_state)
    begin
        if Resetn = High then
            current_state <= fetch;
            -- what else?
        end if;
        if rising_edge(Clock) then
            current_state <= next_state;
        end if;
    end process;
    
    
    end Behavior;