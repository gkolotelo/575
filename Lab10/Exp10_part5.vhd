-- Switch Implementation

library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity Exp10_Part4 is
      port (
            SW: in std_logic_vector(17 downto 0);
				LEDR: out std_logic_vector(17 downto 0);
            LEDG: out std_logic_vector(7 downto 0);
            KEY: in std_logic_vector(2 downto 0);
            CLOCK_50: in std_logic;
            HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:     out std_logic_vector(6 downto 0)
          );
end Exp10_Part4;

architecture Behavior of Exp10_part4 is
---------------------------------------- Signals -----------------------------------------
signal alufn, Seg7Addr: std_logic_vector(2 downto 0);
signal BusWires, outport, MemDataOut, InData, SwitchDataOut, debug_signals: std_logic_vector(15 downto 0);
signal Clock, Run, Done, Resetn, seg7AddrEn, MemAddrEn, LEDAddrEn: std_logic;
signal PC_out: std_logic_vector(4 downto 0);
signal W, Run_v: std_logic_vector(0 downto 0);
signal Addr_out, WriteData, LED_reg_out : std_logic_vector(15 DOWNTO 0);
signal MemAddr:  std_logic_vector(6 downto 0);

--------------------------------------- Components ---------------------------------------
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

component seg7_scroll
    port(Seg7Addr: in std_logic_vector(2 downto 0);
         Seg7Data: in std_logic_vector(6 downto 0);
         Seg7AddrEn: in std_logic;
         Clock: in std_logic;
         Resetn: in std_logic;
         H0: out std_logic_vector(6 downto 0);
         H1: out std_logic_vector(6 downto 0);
         H2: out std_logic_vector(6 downto 0);
         H3: out std_logic_vector(6 downto 0);
         H4: out std_logic_vector(6 downto 0);
         H5: out std_logic_vector(6 downto 0);
         H6: out std_logic_vector(6 downto 0);
         H7: out std_logic_vector(6 downto 0)
    );
end component seg7_scroll;

-- Register n-bits
component regn
    generic (n : integer := 16);
    port (  R : IN std_logic_vector(n-1 downto 0);
            Rin, Clock, Rstn : IN std_logic;
            Q : buffer std_logic_vector(n-1 downto 0));
end component regn;
	 
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
begin

--------------------------------------- Behavior ---------------------------------------

--DIN <= SW(15 downto 0);
Resetn <= KEY(0);
Clock <= CLOCK_50;

-- Status LED's
LEDG(5) <= Clock;
LEDG(7) <= Run;
LEDG(0) <= Done;

-- Run Register
Run <= Run_v(0);
run_reg: regn  generic map (n => 1)
               port map(SW(17 downto 17), High, Clock, High, Run_v(0 downto 0));


-- Memory instance
MemAddr <= Addr_out(6 downto 0);
MemAddrEn <= (not(Addr_out(12) or Addr_out(13) or Addr_out(14) or Addr_out(15)) and W(0));
mem_ram: RAM port map (MemAddr, Clock, WriteData, MemAddrEn, MemDataOut);
-- 7 bits wide (128 words)


-- Processor instance
proc_instance: proc port map(InData, Resetn, Clock, Run, Done, BusWires, debug_signals, outport, Addr_out, WriteData, W);
with Addr_out select InData <=
    SwitchDataOut    when "0100000000000000",
    MemDataOut       when others;


--------------------------------------- Peripherals ---------------------------------------

-- LED peripheral
-- Addr: 0b 0001 0000 0000 0000
-- Data: 0b dddd dddd dddd dddd
LEDAddrEn <= (not(not(Addr_out(12)) or Addr_out(13) or Addr_out(14) or Addr_out(15)) and W(0));
LED_reg: regn port map(WriteData, LEDAddrEn, Clock, High, LED_reg_out);
LEDR(15 downto 0) <= LED_reg_out;

-- 7 Segment peripheral
-- Addr: 0b 0010 000000000 ppp
-- Data: 0b 000000000 ddddddd
Seg7AddrEn <= (not(Addr_out(12) or not(Addr_out(13)) or Addr_out(14) or Addr_out(15)) and W(0));
Seg7Addr <= Addr_out(2 downto 0);
S7scroll: seg7_scroll port map(Seg7Addr, WriteData(6 downto 0), Seg7AddrEn, Clock, Resetn, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);

-- Switch peripheral
-- Addr: 0b 0100 0000 0000 0000
-- Data: 0b dddd dddd dddd dddd
port_n_instance: port_n port map (SW(15 downto 0), High, Clock, Resetn, SwitchDataOut);



end Behavior;