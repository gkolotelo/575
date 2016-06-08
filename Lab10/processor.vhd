library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity processor is
    port (  DIN : in std_logic_vector(15 downto 0);
            Resetn, Clock, Run : in std_logic;
            Done : buffer std_logic;
            BusWires : buffer std_logic_vector(15 downto 0);
            LEDR: out std_logic_vector(17 downto 0);
				outport: out std_logic_vector(15 downto 0)
    );
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
            O : buffer std_logic_vector(15 downto 0);
            alufn : in std_logic_vector(2 downto 0);
            overflow : out std_logic);
end component alu;


component mux_16x10
    generic ( n: integer := 8);
    port (  DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out: in std_logic_vector(15 downto 0);
            selection: in std_logic_vector(9 downto 0);
            mux_out: buffer std_logic_vector(15 downto 0)
    );
end component mux_16x10;

component dec3to8
    port (  W : in std_logic_vector(2 downto 0);
            En : in std_logic;
            Y : out std_logic_vector(0 TO 7));
end component dec3to8;

    type instruction_state is (fetch, mv, mvi_1, mvi_2, add_1, add_2, add_3, sub_1, sub_2, sub_3);
    signal current_state, next_state: instruction_state;

    signal ALU_out, A_out, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out, IR_out: std_logic_vector(15 downto 0);
    signal R_enable: std_logic_vector(7 downto 0);

    signal High, Low: std_logic;

    signal IR_enable, G_enable, A_enable: std_logic;

    signal opcode: std_logic_vector(3 downto 0);
    signal Rx, Ry: std_logic_vector(2 downto 0);
    signal Rx_extended, Ry_extended: std_logic_vector(7 downto 0);

    signal alufn: std_logic_vector(2 downto 0);
    signal alu_overflow: std_logic;
    signal mux_selection: std_logic_vector(9 downto 0);
    signal offset: std_logic_vector(5 downto 0);

    --signal offset: std_logic_vector(15 downto 0);

begin
    High <= '1';
    Low <= '0';


    IR: regn port map(DIN, IR_enable, Clock, IR_out);
    opcode <= IR_out(15 downto 12);
    Rx <= IR_out(11 downto 9);
    Ry <= IR_out(8 downto 6);
    offset <= IR_out(5 downto 0);

    R0: regn port map(BusWires, R_enable(0), Clock, R0_out);
    R1: regn port map(BusWires, R_enable(1), Clock, R1_out);
    R2: regn port map(BusWires, R_enable(2), Clock, R2_out);
    R3: regn port map(BusWires, R_enable(3), Clock, R3_out);
    R4: regn port map(BusWires, R_enable(4), Clock, R4_out);
    R5: regn port map(BusWires, R_enable(5), Clock, R5_out);
    R6: regn port map(BusWires, R_enable(6), Clock, R6_out);
    R7: regn port map(BusWires, R_enable(7), Clock, R7_out);
	 
	 outport <= R0_out;

    A: regn port map(BusWires, A_enable, Clock, A_out);
    G: regn port map(ALU_out, G_enable, Clock, G_out);   

    ALU_component: alu port map(A_out, BusWires, ALU_out, alufn, alu_overflow);

    mux: mux_16x10 port map(DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out,
                                      mux_selection,
                                      BusWires); 

    decx: dec3to8 port map(Rx, '1', Rx_extended);
    decy: dec3to8 port map(Ry, '1', Ry_extended);


    controlsignals: process (current_state, opcode, Rx_extended, Ry_extended, Run)
    --control signals:
    --  IR_enable (1bit)
    --  mux_selection (10 bit vector)
    --  R0...R7_enable (8bit vector)
    --  A_enable (1bit)
    --  G_enable (1bit)
    --  alufn (3bit vector)
    --  Done (1bit)
    variable next_state_var: instruction_state;
    begin
        case current_state is 
            when fetch =>
                    LEDR(0) <= '1';
                IR_enable <= High;
                Done <= Low;
                if Run = Low then
                    next_state_var := fetch;
                else
                    LEDR(15 downto 12) <= opcode;
                    case opcode is
                        when "0000" => next_state_var := mv;
                        when "0001" => next_state_var := mvi_1;
                        when "0010" => next_state_var := add_1;
                        when "0011" => next_state_var := sub_1;
                        when others => next_state_var := fetch;
                    end case;
                end if;
            when mv =>
                    LEDR <= (1 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= '0'&Ry_extended&'0';
                R_enable <= Rx_extended;
                Done <= High;
                -- State
                next_state_var := fetch;
            when mvi_1 =>
                LEDR <= (2 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= "1000000000";
                R_enable <= Rx_extended;
                -- State
                next_state_var := mvi_2;
            when mvi_2 =>
                LEDR <= (2 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= "0000000000";
                R_enable <= "00000000";
                Done <= High;
                -- State
                next_state_var := fetch;
            when add_1 =>
                LEDR <= (3 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= '0'&Rx_extended&'0';
                R_enable <= "00000000";
                A_enable <= High;
                -- State
                next_state_var := add_2;
            when add_2 =>
                LEDR <= (4 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= '0'&Ry_extended&'0';
                R_enable <= "00000000";
                A_enable <= Low;
                G_enable <= High;
                alufn <= "000"; -- sum
                -- State
                next_state_var := add_3;
            when add_3 =>
                LEDR <= (5 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= "0000000001";
                R_enable <= Rx_extended;
                G_enable <= Low;
                Done <= High;
                -- State
                next_state_var := fetch;
            when sub_1 =>
                LEDR <= (6 => '1', others => '0'); 
                -- Control signals
                IR_enable <= Low;
                mux_selection <= '0'&Rx_extended&'0';
                R_enable <= "00000000";
                A_enable <= High;
                -- State
                next_state_var := sub_2;
            when sub_2 =>
                LEDR <= (7 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= '0'&Ry_extended&'0';
                R_enable <= "00000000";
                A_enable <= Low;
                G_enable <= High;
                alufn <= "001"; -- subtraction
                -- State
                next_state_var := sub_3;
            when sub_3 =>
                LEDR <= (8 => '1', others => '0');
                -- Control signals
                IR_enable <= Low;
                mux_selection <= "0000000001";
                R_enable <= Rx_extended;
                G_enable <= Low;
                Done <= High;
                -- State
                next_state_var := fetch;
        end case;
          next_state <= next_state_var;
    end process;
    
    fsmflipflops: process (Clock, Resetn, next_state)
     variable current_state_var: instruction_state;
    begin
        if Resetn = Low then
            current_state_var := fetch;
            -- what else?
        elsif rising_edge(Clock) then
            current_state_var := next_state;
        end if;
          current_state <= current_state_var;
    end process;

    
    
    end Behavior;