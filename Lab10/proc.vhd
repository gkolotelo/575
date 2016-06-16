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
            debug_signals: out STD_LOGIC_VECTOR(15 DOWNTO 0);
            outport: out STD_LOGIC_VECTOR(15 DOWNTO 0);
            Addr_out: out STD_LOGIC_VECTOR(15 DOWNTO 0);
            Data_out: out STD_LOGIC_VECTOR(15 DOWNTO 0);
            W: out std_logic_vector(0 downto 0)
        );
    end proc;

ARCHITECTURE Behavior OF proc IS

----------------
-- Components --
----------------
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

    component pc
        PORT
        (
            aclr        : IN STD_LOGIC ;
            clock       : IN STD_LOGIC ;
            cnt_en      : IN STD_LOGIC ;
            data        : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            sload       : IN STD_LOGIC ;
            q       : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        );
    end component;

-------------
-- Signals --
-------------
    -- FSM state signal
    TYPE state_type IS (T0, T0_f1, T0_f2, T1, T2, T3);
    SIGNAL TstepQ_Curr, TstepD_Next: state_type;

    TYPE instruction_type is (mv, mvi, add, sub, invalid, ld, st, mvnz, alu_and, alu_or, alu_ls, alu_rs, alu_rotl, alu_rotr);
    signal curr_instr: instruction_type;

    -- Data signals (16-bits)
    signal ALU_out, A_out, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, PC_out, G_out, IR_out: std_logic_vector(15 downto 0);
    
    -- Register write enable
    signal R_enable: std_logic_vector(0 to 7); -- 0 to 7 = left to right
    signal IR_enable, G_enable, A_enable, Incr_PC: std_logic;

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
    
    -- Memory access signals
    signal Addr_enable, Data_enable, invalid_instruction: std_logic;
    signal W_D: std_logic_vector(0 downto 0);
    --signal Addr_out, Data_out : std_logic_vector(15 DOWNTO 0);



begin 
----------------------------
-- Signals and components --
----------------------------
    -- Standardizing logic levels
    High <= '1';
    Low <= '0';

    IR: regn port map(DIN, IR_enable, Clock, Resetn, IR_out);

    -- Instruction decoding
    opcode <= IR_out(15 downto 12);
    offset <= IR_out(5 downto 0);
    decX: dec3to8 PORT MAP (IR_out(11 downto 9), High, Rx);
    decY: dec3to8 PORT MAP (IR_out(8 downto 6), High, Ry);


    -- Lookup table for curr_instr(opcode)
        --Instruction format: op(4bit) + Rx(3bit) + Ry(3bit) + offset(6bit)
        -- oooo xxx yyy ffffff
    with opcode select curr_instr <=
        mv          when "0000",    -- mv       Rx <- Ry
        mvi         when "0001",    -- mvi      Rx <- #D (16bit immediate)
        add         when "0010",    -- add      Rx <- Rx + Ry
        sub         when "0011",    -- sub      Rx <- Rx - Ry
        ld          when "0100",    -- ld       Rx <- Mem(Ry)
        st          when "0101",    -- st       Mem(Ry) <- Rx
        mvnz        when "0110",    -- mvnz     G!=0? Rx <- Ry : do nothing
        alu_and     when "0111",    -- alu_and  Rx <- Rx and Ry              new!
        alu_or      when "1000",    -- alu_or   Rx <- Rx or Ry               new!
        alu_ls      when "1001",    -- alu_ls   Rx <- LS(Rx) by one bit      new!
        alu_rs      when "1010",    -- alu_rs   Rx <- RS(Rx) by one bit      new!
        alu_rotl    when "1011",    -- alu_rotl Rx <- RL(Rx) by one bit      new!
        alu_rotr    when "1100",    -- alu_rotr Rx <- RR(Rx) by one bit      new!
        invalid     when others;

    -- Processor registers (0 to 7 = left to right)
    reg_0: regn PORT MAP (BusWires, R_enable(0), Clock, Resetn, R0_out);
    reg_1: regn PORT MAP (BusWires, R_enable(1), Clock, Resetn, R1_out);
    reg_2: regn PORT MAP (BusWires, R_enable(2), Clock, Resetn, R2_out);
    reg_3: regn PORT MAP (BusWires, R_enable(3), Clock, Resetn, R3_out);
    reg_4: regn PORT MAP (BusWires, R_enable(4), Clock, Resetn, R4_out);
    reg_5: regn PORT MAP (BusWires, R_enable(5), Clock, Resetn, R5_out);
    reg_6: regn PORT MAP (BusWires, R_enable(6), Clock, Resetn, R6_out);
    --reg_7: regn PORT MAP (BusWires, R_enable(7), Clock, Resetn, R7_out);
    pc_instance: pc port map (not(Resetn), Clock, Incr_PC, BusWires, R_enable(7), PC_out);

    -- ALU's Register A (input) and G (output)
    reg_A: regn port map(BusWires, A_enable, Clock, Resetn, A_out);
    reg_G: regn port map(ALU_out, G_enable, Clock, Resetn, G_out);

    -- Memory registers (address and data)
    mem_addrsd: regn port map (BusWires, Addr_enable, Clock, Resetn, Addr_out);
    mem_dada: regn port map (BusWires, Data_enable, Clock, Resetn, Data_out);
    mem_wren: regn  generic map (n => 1)
                    port map(W_D, '1', Clock, '1', W);

    -- ALU component
    ALU_component: alu port map(A_out, BusWires, ALU_out, alufn, alu_overflow);

    -- Multiplexer 16-bits wide, fan-in of 10.
    mux: mux_16x10 port map(
            DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, PC_out, G_out,
            mux_selection,
            BusWires);
    
    outport <= BusWires;
    debug_signals(3 downto 0) <= opcode;

---------------
-- Processes --
---------------
    -- Instruction timing FSM
    statetable: process (TstepQ_Curr, Run, Done) 
    begin 
        case TstepQ_Curr IS 
            when T0 => 
            -- data is loaded into IR in this time step 
                debug_signals(7 downto 4) <= "0001";
                IF(Run = Low) THEN 
                    TstepD_Next <= T0;
                ELSE
                    TstepD_Next <= T0_f1;
                end IF;
            when T0_f1 =>
                debug_signals(7 downto 4) <= "0011";
                TstepD_Next <= T0_f2;
            when T0_f2 => 
                debug_signals(7 downto 4) <= "0111";
                TstepD_Next <= T1;
            when T1 =>
                debug_signals(7 downto 4) <= "0010";
                if(Done = High) THEN
                    TstepD_Next <= T0;
                else
                    TstepD_Next <= T2;
                end if;
            when T2 =>
                debug_signals(7 downto 4) <= "0100";
                if(Done = High) THEN
                    TstepD_Next <= T0;
                else
                    TstepD_Next <= T3;
                end if;
            when T3 =>
                debug_signals(7 downto 4) <= "1000";
                TstepD_Next <= T0;
        end case;
    end PROCESS;

    -- Processor control signals
        -- Setting, for each time step, the signals to the corresponding instruction.
    controlsignals: process (TstepQ_Curr, curr_instr, Rx, Ry) 
    begin
        case TstepQ_Curr IS 
            when T0 =>
                Done <= Low;
                mux_selection <= "0000000010"; -- Select PC
                R_enable <= "00000000";
                A_enable <= Low;
                G_enable <= Low;
                Addr_enable <= High;
                Data_enable <= Low;
                W_D(0) <= Low;
                Incr_PC <= High;
                if invalid_instruction = Low then
                        IR_enable <= High;
                else
                        IR_enable <= Low;
                end if;

            when T0_f1 =>
                    IR_enable <= Low;
                    Done <= Low;
                    mux_selection <= "0000000010"; -- Select PC
                    R_enable <= "00000000";
                    A_enable <= Low;
                    G_enable <= Low;
                    Addr_enable <= High;
                    Data_enable <= Low;
                    W_D(0) <= Low;
                    Incr_PC <= High;

            when T0_f2 =>
                    IR_enable <= High;
                    Done <= Low;
                    mux_selection <= "0000000010"; -- Select PC
                    R_enable <= "00000000";
                    A_enable <= Low;
                    G_enable <= Low;
                    Addr_enable <= High;
                    Data_enable <= Low;
                    W_D(0) <= Low;
                    Incr_PC <= High;
                    invalid_instruction <= Low;

            when T1 =>
                IR_enable <= Low;
                case curr_instr IS
                    when mv =>
                        Done <= High;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when mvi =>
                        Done <= High;
                        mux_selection <= "1000000000";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= High;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= High;
                        invalid_instruction <= Low;
                    when add =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= High;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when sub =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= High;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when ld =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= High;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when st =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= High;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when mvnz =>
                        Done <= High;
                        mux_selection <= "0"&Ry&"0";
								if G_out = "0000000000000000" then
									R_enable <= Rx;
								else
									R_enable <= "00000000";
								end if;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;

                    when alu_and =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= High;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_or =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= High;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_ls =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "100";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_rs =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "101";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_rotl =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "110";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_rotr =>
                        Done <= Low;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "111";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    --when invalid => Done <= High;
                    when others => Done <= High;
                end case;

            when T2 =>
                IR_enable <= Low;
                case curr_instr IS
                    when add =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "000";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when sub =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "001";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when ld => -- 
                        Done <= Low;
                        mux_selection <= "0000000010";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= High;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when st =>
                        Done <= High;
                        mux_selection <= "0"&Rx&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= High;
                        W_D(0) <= High;
                        Incr_PC <= Low;
                        invalid_instruction <= High;
                    when alu_and =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "010";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_or =>
                        Done <= Low;
                        mux_selection <= "0"&Ry&"0";
                        R_enable <= "00000000";
                        A_enable <= Low;
                        G_enable <= High;
                        alufn <= "011";
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_ls =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_rs =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_rotl =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_rotr =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    --when invalid => Done <= High;
                    when others => Done <= High;
                end case;

            when T3 =>
                IR_enable <= Low;
                case curr_instr IS
                    when add =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when sub =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when ld =>
                        Done <= High;
                        mux_selection <= "1000000000";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= High;
                    when alu_and =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    when alu_or =>
                        Done <= High;
                        mux_selection <= "0000000001";
                        R_enable <= Rx;
                        A_enable <= Low;
                        G_enable <= Low;
                        Addr_enable <= Low;
                        Data_enable <= Low;
                        W_D(0) <= Low;
                        Incr_PC <= Low;
                        invalid_instruction <= Low;
                    --when invalid => Done <= High;
                    when others => Done <= High;
                end case;
        end case;
    end PROCESS;

    -- FSM: state updating
    fsmflipflops: process (Clock, Resetn, TstepD_Next) 
    begin 
        if (Resetn = Low) THEN
            TstepQ_Curr <= T0;
        elsif (rising_edge(Clock)) THEN
            TstepQ_Curr <= TstepD_Next;
        end if;
    end PROCESS;

end Behavior;