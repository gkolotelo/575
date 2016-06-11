library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Exp10_Part3 is
      port (
            SW: in std_logic_vector(17 downto 0);
				LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(2 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp10_Part3;

architecture Behavior of Exp10_part3 is
-- Components:
signal alufn, Seg7Addr: std_logic_vector(2 downto 0);
signal BusWires, outport, ReadData, debug_signals: std_logic_vector(15 downto 0);
signal Clock, Run, Done, Resetn, seg7AddrEn, MemAddrEn, LEDAddrEn: std_logic;
signal PC_out: std_logic_vector(4 downto 0);
signal W, Run_v: std_logic_vector(0 downto 0);
signal Addr_out, WriteData, LED_reg_out : std_logic_vector(15 DOWNTO 0);
signal MemAddr:  std_logic_vector(6 downto 0);


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
            debug_signals: out std_logic_vector(15 downto 0);
            outport: out std_logic_vector(15 downto 0);
            Addr_out: out STD_LOGIC_VECTOR(15 DOWNTO 0);
            Data_out: out STD_LOGIC_VECTOR(15 DOWNTO 0);
            W: out std_logic_vector(0 downto 0));
end component proc;

component RAM
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component;

    component regn
        generic (n : integer := 16);
        port (  R : IN std_logic_vector(n-1 downto 0);
                Rin, Clock, Rstn : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;
	 

begin

--DIN <= SW(15 downto 0);
Resetn <= KEY(0);
Clock <= key(1);

LEDG(5) <= Clock;
LEDG(0) <= Done;

Run <= Run_v(0);
run_reg: regn  generic map (n => 1)
               port map(SW(17 downto 17), '1', Clock, '1', Run_v(0 downto 0));




MemAddr <= Addr_out(6 downto 0);
MemAddrEn <= (not(Addr_out(12) or Addr_out(13) or Addr_out(14) or Addr_out(15)) and W(0));
mem_ram: RAM port map (MemAddr, Clock, WriteData, MemAddrEn, ReadData);
-- 7 bits wide (128 words)



proc_instance: proc port map(ReadData, Resetn, Clock, Run, Done, BusWires, debug_signals, outport, Addr_out, WriteData, W);


LEDAddrEn <= (not(not(Addr_out(12)) or Addr_out(13) or Addr_out(14) or Addr_out(15)) and W(0));
LED_reg: regn port map(WriteData, LEDAddrEn, Clock, '1', LED_reg_out);
LEDR(15 downto 0) <= debug_signals; --LED_reg_out;




disp3: decoder_7segment_hex port map(BusWires(15 downto 12), HEX3);
disp2: decoder_7segment_hex port map(BusWires(11 downto 8), HEX2);
disp1: decoder_7segment_hex port map(BusWires(7 downto 4), HEX1);
disp0: decoder_7segment_hex port map(BusWires(3 downto 0), HEX0);

disp7: decoder_7segment_hex port map(ReadData(15 downto 12), HEX7);
disp6: decoder_7segment_hex port map(ReadData(11 downto 8), HEX6);
disp5: decoder_7segment_hex port map(ReadData(7 downto 4), HEX5);
disp4: decoder_7segment_hex port map(ReadData(3 downto 0), HEX4);



end Behavior;