LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FA_1bit IS
	PORT (a, b, Cin: in std_logic;		-- Inputs:  a,b; Cin: Carry in
	      sum, Cout: out std_logic);		-- Outputs: sum: Sum Output; Cout: Carry out
END FA_1bit;

ARCHITECTURE Behavior OF FA_1bit IS
	BEGIN
	sum <= (a xor b) xor Cin;
	Cout <= ((a xor b) and Cin) or (a and b);
END Behavior;
