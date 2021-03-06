library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Exp10_Part1 is
      port (
            SW: in std_logic_vector(17 downto 0);
				LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(2 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp10_Part1;

architecture Behavior of Exp10_part1 is
-- Components:
signal alufn: std_logic_vector(2 downto 0);
signal BusWires, outport, Mem_out: std_logic_vector(15 downto 0);
signal Clock, Run, Done, Resetn: std_logic;
signal PC_out: std_logic_vector(4 downto 0);

component decoder_7segment_hex
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end component decoder_7segment_hex;

component proc
    port (  DIN : in std_logic_vector(15 downto 0);
            Resetn, Clock, Run : in std_logic;
            Done : buffer std_logic;
            BusWires : buffer std_logic_vector(15 downto 0);
            W: out std_logic_vector(0 downto 0);
            debug_signals: out std_logic_vector(10 downto 0);
            outport: out std_logic_vector(15 downto 0));
end component proc;

component memory
    PORT
    (
        address     : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
        clock       : IN STD_LOGIC  := '1';
        q       : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
    );
END component memory;

begin

--DIN <= SW(15 downto 0);
Resetn <= KEY(0);
Clock <= not(KEY(1));
Clock <= not(KEY(2));
Run <= SW(17);

LEDG(5) <= Clock;
LEDG(3) <= Clock;
LEDG(0) <= Done;



mem: memory port map (PC_out, Clock, Mem_out);

proc_instance: proc port map(Mem_out, Resetn, Clock, Run, Done, BusWires, LEDR(10 downto 0), outport);

disp3: decoder_7segment_hex port map(BusWires(15 downto 12), HEX3);
disp2: decoder_7segment_hex port map(BusWires(11 downto 8), HEX2);
disp1: decoder_7segment_hex port map(BusWires(7 downto 4), HEX1);
disp0: decoder_7segment_hex port map(BusWires(3 downto 0), HEX0);

disp7: decoder_7segment_hex port map(PC_out(3 downto 0), HEX7);
disp6: decoder_7segment_hex port map(outport(11 downto 8), HEX6);
disp5: decoder_7segment_hex port map(outport(7 downto 4), HEX5);
disp4: decoder_7segment_hex port map(outport(3 downto 0), HEX4);

LEDR(17 downto 11) <= Mem_out(15 downto 9);

end Behavior;