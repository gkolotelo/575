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
            ledr: out STD_LOGIC_VECTOR(17 DOWNTO 0);
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
                O : out std_logic_vector(15 downto 0);
                alufn : in std_logic_vector(2 downto 0);
                overflow : out std_logic);
    end component alu;

    -- multiplexer 16-bits wide, fan-in of 10.
    component mux_16x10
        generic ( n: integer := 8);
        port (  DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out: in std_logic_vector(15 downto 0);
                selection: in std_logic_vector(9 downto 0);
                mux_out: out std_logic_vector(15 downto 0)
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

    TYPE instruction_type is (mv, mvi, add, sub, invalid)
    signal curr_instr: instruction_type;

    -- Data signals (16-bits)
    signal ALU_out, A_out, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out, IR_out: std_logic_vector(15 downto 0);
    
    -- Register write enable
    signal R_enable: std_logic_vector(7 downto 0);
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
    -- Standardizing logic levels
    High <= '1';
    Low <= '0';

    -- Lookup table for curr_instr(opcode)
    opcode <= IR_out(0 to 3); --(15 downto 12)
    with opcode select curr_instr <=
        mv      when "000";
        mvi     when "001";
        add     when "010";
        sub     when "011";
        invalid when others; 

    decX: dec3to8 PORT MAP (IR_out(4 TO 6), High, Rx); --(11 downto 9)
    decY: dec3to8 PORT MAP (IR_out(7 TO 9), High, Ry); --(8 downto 6)

    
    statetable: PROCESS (TstepQ_Curr, Run, Done) 
    BEGIN 
        CASE TstepQ_Curr IS 
            WHEN T0 => 
                IF(Run = '0') THEN TstepD_Next <= T0;
                ELSE TstepD_Next <= T1;
        END IF;
        -- data is loaded into IR in this time step 
        --... other states END CASE;
    END PROCESS;

    -- Processor control signals
    controlsignals: PROCESS (TstepQ_Curr, curr_instr, Xreg, Yreg) 
    BEGIN 
        --... specify initial values 
        CASE TstepQ_Curr IS 
            WHEN T0 => -- store DIN in IR as long as TstepQ_Curr = 0 IRin <= '1';
            WHEN T1 => -- deﬁne signals in time step T1 
                CASE curr_instr IS 
                END CASE;
            WHEN T2 => -- deﬁne signals in time step T2 
                CASE curr_instr IS 
                END CASE;
            WHEN T3 => -- deﬁne signals in time step T3 
                CASE curr_instr IS 
                END CASE;
        END CASE;
    END PROCESS;

    -- FSM: state updating
    fsmﬂipﬂops: PROCESS (Clock, Resetn, TstepD_Next) 
    BEGIN 
        --... 
    END PROCESS;

    reg_0: regn PORT MAP (BusWires, Rin(0), Clock, R0);
    --... instantiate other registers and the adder/subtracter unit 
    --... deﬁne the bus 
END Behavior;