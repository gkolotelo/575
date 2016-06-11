library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Exp10_Part2 is
      port (
            SW: in std_logic_vector(17 downto 0);
				LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(2 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp10_Part2;

architecture Behavior of Exp10_part2 is
-- Components:
signal alufn: std_logic_vector(2 downto 0);
signal BusWires, outport, Mem_out: std_logic_vector(15 downto 0);
signal Clock_P, Clock_M, Run, Done, Resetn: std_logic;
signal PC_out: std_logic_vector(4 downto 0);

component decoder_7segment_hex
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end component decoder_7segment_hex;

component proc
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
end component proc;

component memory
    PORT
    (
        address     : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
END component memory;

component counter
	PORT
	(
		aclr		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (4 DOWNTO 0)
	);
end component;


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

begin

--DIN <= SW(15 downto 0);
Resetn <= KEY(0);
Clock_P <= not(KEY(1));
Clock_M <= not(KEY(2));
Run <= SW(17);

LEDG(5) <= Clock_M;
LEDG(3) <= Clock_P;
LEDG(0) <= Done;

pc_instance: counter port map (not(Resetn), Clock_M, PC_out);

mem: memory port map (PC_out, Clock_M, Mem_out);

proc_instance: proc port map(DIN => Mem_out, 
Resetn => Resetn, 
Clock => Clock_P, 
Run => Run, 
Done => Done, 
BusWires => BusWires, 
debug_signals => LEDR(15 downto 0), 
outport => outport);

disp3: decoder_7segment_hex port map(BusWires(15 downto 12), HEX3);
disp2: decoder_7segment_hex port map(BusWires(11 downto 8), HEX2);
disp1: decoder_7segment_hex port map(BusWires(7 downto 4), HEX1);
disp0: decoder_7segment_hex port map(BusWires(3 downto 0), HEX0);

disp7: decoder_7segment_hex port map(PC_out(3 downto 0), HEX7);
disp6: decoder_7segment_hex port map(outport(11 downto 8), HEX6);
disp5: decoder_7segment_hex port map(outport(7 downto 4), HEX5);
disp4: decoder_7segment_hex port map(outport(3 downto 0), HEX4);

end Behavior;