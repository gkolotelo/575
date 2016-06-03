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

component multiplexer is 
    generic ( n: integer := 16);
    port (  entrada1: in std_logic_vector(n-1 downto 0);
            entrada2: in std_logic_vector(n-1 downto 0);
            selecao: in std_logic;
            saida: out std_logic_vector(n-1 downto 0));
end component multiplexer;



-- . . . declare signals
    --type State_type is (T0, T1, T2, T3);
    --signal Tstep_Q, Tstep_D: State_type;
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
    --I <= IR(1 to 3);
    --decX: dec3to8 port map (IR(4 to 6), High, Xreg);
    --decY: dec3to8 port map (IR(7 to 9), High, Yreg);

    
    
    --statetable: process (Tstep_Q, Run, Done)
    --begin
    --    case Tstep_Q is
    --    when T0 => if(Run = '0') then Tstep_D <= T0;
    --    else Tstep_D <= T1;
    --    end if; -- data is loaded into IR in this time step
    --    -- . . . other states
    --    end case;
    --end process;

    IR: regn port map(DIN, IR_enable, Clock, opcode&Rx&Ry&offset);

    R0: regn port map(BusWires, R0_enable, Clock, R0_out);
    R1: regn port map(BusWires, R1_enable, Clock, R1_out);
    R2: regn port map(BusWires, R2_enable, Clock, R2_out);
    R3: regn port map(BusWires, R3_enable, Clock, R3_out);
    R4: regn port map(BusWires, R4_enable, Clock, R4_out);
    R5: regn port map(BusWires, R5_enable, Clock, R5_out);
    R6: regn port map(BusWires, R6_enable, Clock, R6_out);
    R7: regn port map(BusWires, R7_enable, Clock, R7_out);

    A: regn port map(BusWires, A_enable, Clock, A_out);
    G: regn port map(ALU_out, G_enable, Clock, G_out);   

    ALU: alu port map(A_out, BusWires, ALU_out, alufn, alu_overflow);

    mux: multiplexer_16_todo port map(DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out,
                                      mux_control,
                                      BusWires); 
















    controlsignals: process (current_state, opcode, Rx, Ry, Run)
    --control signals:
    --  IR_enable
    --  mux_control
    --  R0...R7_enable
    --  A_enable
    --  G_enable
    --  alufn
    --  Done
    begin
        case current_state is 
            when fetch =>
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
                mux_control <= '0'&Ry;
                next_state <= fetch;
                Done <= High;
            when mvi =>
                next_state <= fetch;
                Done <= High;
            when add_1 =>
                next_state <= add_2;
            when add_2 =>
                next_state <= add_3;
            when add_3 =>
                next_state <= fetch;
                Done <= High;
            when sub_1 =>
                next_state <= sub_2;
            when sub_2 =>
                next_state <= sub_3;
            when sub_3 =>
                next_state <= fetch;
                Done <= High;
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
    
    reg_0: regn port map (BusWires, Rin(0), Clock, R0);
    -- . . . instantiate other registers and the adder/subtracter unit
    -- . . . define the bus
    end Behavior;