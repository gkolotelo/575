LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FA_4bit IS
	PORT (a, b: in std_logic_vector(3 downto 0);
	      Cin: in std_logic;
	      Sum: out std_logic_vector(3 downto 0);
	      Cout: out std_logic);
END FA_4bit;

ARCHITECTURE Behavior OF FA_4bit IS
	COMPONENT FA_1bit
	PORT (a, b, Cin: in std_logic;
	      sum, Cout: out std_logic);
	END COMPONENT;
	
	SIGNAL C1, C2, C3: std_logic;

	BEGIN
	FA1 : FA_1bit PORT MAP (a(0), b(0), Cin, Sum(0), C1);
	FA2 : FA_1bit PORT MAP (a(1), b(1), C1, Sum(1), C2);
	FA3 : FA_1bit PORT MAP (a(2), b(2), C2, Sum(2), C3);
	FA4 : FA_1bit PORT MAP (a(3), b(3), C3, Sum(3), Cout);
END Behavior;