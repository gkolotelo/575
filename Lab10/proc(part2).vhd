--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 10: Projeto: Processador simples --
--------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY proc IS 
    PORT(
            DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            Resetn, Clock, Run : IN STD_LOGIC;
            Done : BUFFER STD_LOGIC;
            BusWires : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
            ledr: out STD_LOGIC_VECTOR(10 DOWNTO 0);
            outport: out STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END proc;

ARCHITECTURE Behavior OF proc IS

-- Components
    -- Register n-bits
    component regn
        generic (n : integer := 16);
        port (  R : IN std_logic_vector(n-1 downto 0);
                Rin, Clock, Rstn : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;

    -- ALU
    component alu
        port (  A : in std_logic_vector(15 downto 0);
                B : in std_logic_vector(15 downto 0);
                O : buffer std_logic_vector(15 downto 0);
                alufn : in std_logic_vector(2 downto 0);
                overflow : out std_logic);
    end component alu;

    -- multiplexer 16-bits wide, fan-in of 10.
    component mux_16x10
        generic ( n: integer := 8);
        port (  DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out: in std_logic_vector(15 downto 0);
                selection: in std_logic_vector(9 downto 0);
                mux_out: buffer std_logic_vector(15 downto 0)
        );
    end component mux_16x10;

    -- decoder 3-bits to 8-bits
    component dec3to8
        port (  W : in std_logic_vector(2 downto 0);
                En : in std_logic;
                Y : out std_logic_vector(0 TO 7));
    end component dec3to8;

-- Signals
    -- FSM state signal
    TYPE state_type IS (T0, T1, T2, T3);
    SIGNAL TstepQ_Curr, TstepD_Next: state_type;

    TYPE instruction_type is (mv, mvi, add, sub, invalid);
    signal curr_instr: instruction_type;

    -- Data signals (16-bits)
    signal ALU_out, A_out, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out, IR_out: std_logic_vector(15 downto 0);
    
    -- Register write enable
    signal R_enable: std_logic_vector(0 to 7); -- 0 to 7 = left to right
    signal IR_enable, G_enable, A_enable: std_logic;

    -- Instruction signal
    signal opcode: std_logic_vector(3 downto 0);
    signal Rx, Ry: std_logic_vector(7 downto 0);
    --signal Rx_extended, Ry_extended: std_logic_vector(7 downto 0);

    -- ALU signals
    signal alufn: std_logic_vector(2 downto 0);
    signal alu_overflow: std_logic;
    signal offset: std_logic_vector(5 downto 0);
    
    -- Mux selection signal
    signal mux_selection: std_logic_vector(9 downto 0);

    -- Logic levels: (hi/lo)
    signal High, Low: std_logic;

BEGIN 
-- Signals and components
    -- Standardizing logic levels
    High <= '1';
    Low <= '0';

    IR: regn port map(DIN, IR_enable, Clock, Resetn, IR_out);

    -- Lookup table for curr_instr(opcode)
    --opcode <= IR_out(0 to 3); --(15 downto 12)
    opcode <= IR_out(15 downto 12);
    --Rx <= IR_out(11 downto 9);
    --Ry <= IR_out(8 downto 6);
    with opcode select curr_instr <=
        mv      when "0000",
        mvi     when "0001",
        add     when "0010",
        sub     when "0011",
        invalid when others; 

    -- Register address decoder
    decX: dec3to8 PORT MAP (IR_out(11 downto 9), High, Rx); --(11 downto 9)
    decY: dec3to8 PORT MAP (IR_out(8 downto 6), High, Ry); --(8 downto 6)
    offset <= IR_out(5 downto 0);

    -- Processor registers (0 to 7 = left to right)
    reg_0: regn PORT MAP (BusWires, R_enable(0), Clock, Resetn, R0_out);
    reg_1: regn PORT MAP (BusWires, R_enable(1), Clock, Resetn, R1_out);
    reg_2: regn PORT MAP (BusWires, R_enable(2), Clock, Resetn, R2_out);
    reg_3: regn PORT MAP (BusWires, R_enable(3), Clock, Resetn, R3_out);
    reg_4: regn PORT MAP (BusWires, R_enable(4), Clock, Resetn, R4_out);
    reg_5: regn PORT MAP (BusWires, R_enable(5), Clock, Resetn, R5_out);
    reg_6: regn PORT MAP (BusWires, R_enable(6), Clock, Resetn, R6_out);
    reg_7: regn PORT MAP (BusWires, R_enable(7), Clock, Resetn, R7_out);

    -- ALU's Register A (input) and G (output)
    reg_A: regn port map(BusWires, A_enable, Clock, Resetn, A_out);
    reg_G: regn port map(ALU_out, G_enable, Clock, Resetn, G_out);

    -- ALU component
    ALU_component: alu port map(A_out, BusWires, ALU_out, alufn, alu_overflow);

    -- multiplexer 16-bits wide, fan-in of 10.
    mux: mux_16x10 port map(
            DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out,
            mux_selection,
            BusWires);

    --... instantiate other registers and the adder/subtracter unit 
    --... deÃƒÆ’Ã‚Â¯Ãƒâ€šÃ‚Â¬Ãƒâ€šÃ‚Âne the bus 
    
    --outport <= R0_out;
    with opcode select ledr(3 downto 0) <=
        "0001" when "0000",
        "0010" when "0001",
        "0100" when "0010",
        "1000" when "0011",
        "0000" when others; 

-- Processes
    -- Instruction timing FSM
    statetable: PROCESS (TstepQ_Curr, Run, Done) 
    BEGIN 
        CASE TstepQ_Curr IS 
            WHEN T0 => 
            -- data is loaded into IR in this time step 
                ledr(7 downto 4) <= "0001";
                IF(Run = Low) THEN 
                    TstepD_Next <= T0;
                ELSE 
                    TstepD_Next <= T1;
                END IF;
            when T1 =>
                ledr(7 downto 4) <= "0010";
                if(Done = High) THEN
                    TstepD_Next <= T0;
                else
                    TstepD_Next <= T2;
                end if;
            when T2 =>
                ledr(7 downto 4) <= "0100";
                if(Done = High) THEN
                    TstepD_Next <= T0;
                else
                    TstepD_Next <= T3;
                end if;
            when T3 =>
                ledr(7 downto 4) <= "1000";
                TstepD_Next <= T0;
        END CASE;
    END PROCESS;

    -- Processor control signals
    -- Setting, for each time step, the signals to the corresponding instruction.
    controlsignals: PROCESS (TstepQ_Curr, curr_instr, Rx, Ry) 
    BEGIN 
        --... specify initial values 
        CASE TstepQ_Curr IS 
            WHEN T0 =>
                IR_enable <= High;
                Done <= Low;
                mux_selection <= "0000000000"; -- Disable mux
                R_enable <= "00000000";
                A_enable <= Low;
                G_enable <= Low;
                --alufn <= "000"; -- There is no 'stop' function

            WHEN T1 =>
                IR_enable <= Low;
                CASE curr_instr IS
                    when mv =>
                        Done <= High;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        --alufn <= "000"; -- There is no 'stop' function
                    when mvi =>
                        Done <= High;
                        mux_selection <= "1000000000";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        --alufn <= "000"; -- There is no 'stop' function
                    when add =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= High;
                        G_enable <= Low;
                        --alufn <= "000"; -- There is no 'stop' function
                    when sub =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= High;
                        G_enable <= Low;
                        --alufn <= "000"; -- There is no 'stop' function
                    --when invalid => Done <= High;
                    when others => Done <= High;
                END CASE;

            WHEN T2 =>
                IR_enable <= Low;
                CASE curr_instr IS
                    when add =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "000";
                    when sub =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "001";
                    --when invalid => Done <= High;
                    when others => Done <= High;
                END CASE;

            WHEN T3 =>
                IR_enable <= Low;
                CASE curr_instr IS
                    when add =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        --alufn <= "000"; -- There is no 'stop' function
                    when sub =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        --alufn <= "000"; -- There is no 'stop' function
                    --when invalid => Done <= High;
                    when others => Done <= High;
                END CASE;
        END CASE;
    END PROCESS;

    -- FSM: state updating
    fsmflipflops: PROCESS (Clock, Resetn, TstepD_Next) 
    BEGIN 
        if (Resetn = Low) THEN
            TstepQ_Curr <= T0;
        elsif (rising_edge(Clock)) THEN
            TstepQ_Curr <= TstepD_Next;
        end if;
    END PROCESS;

END Behavior;