library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Exp10_Part1 is
      port (
            SW: in std_logic_vector(17 downto 0);
				LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(1 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp10_Part1;

architecture Behavior of Exp10_part1 is
-- Components:
signal alufn: std_logic_vector(2 downto 0);
signal DIN, BusWires, outport: std_logic_vector(15 downto 0);
signal Clock, Run, Done, Resetn: std_logic;

component processor
    port (  DIN : in std_logic_vector(15 downto 0);
            Resetn, Clock, Run : in std_logic;
            Done : buffer std_logic;
            BusWires : buffer std_logic_vector(15 downto 0);
            LEDR: out std_logic_vector(17 downto 0);
            outport: out std_logic_vector(15 downto 0));
end component processor;

component decoder_7segment_hex
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
end component decoder_7segment_hex;
    
begin

DIN <= SW(15 downto 0);
Resetn <= KEY(0);
Clock <= not(KEY(1));
Run <= SW(17);

LEDG(3) <= Clock;
LEDG(0) <= Done;

proc: processor port map(DIN, Resetn, Clock, Run, Done, BusWires, LEDR, outport);

disp3: decoder_7segment_hex port map(BusWires(15 downto 12), HEX3);
disp2: decoder_7segment_hex port map(BusWires(11 downto 8), HEX2);
disp1: decoder_7segment_hex port map(BusWires(7 downto 4), HEX1);
disp0: decoder_7segment_hex port map(BusWires(3 downto 0), HEX0);

disp7: decoder_7segment_hex port map(outport(15 downto 12), HEX7);
disp6: decoder_7segment_hex port map(outport(11 downto 8), HEX6);
disp5: decoder_7segment_hex port map(outport(7 downto 4), HEX5);
disp4: decoder_7segment_hex port map(outport(3 downto 0), HEX4);


end Behavior;