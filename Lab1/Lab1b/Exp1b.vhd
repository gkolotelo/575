LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exp1b IS
	PORT ( SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0); 
			LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)); -- red LEDs 
END Exp1b;





architecture mux_8bit OF Exp1b IS
	component mux2to1
	port (a, b, s: in std_logic;
		m: out std_logic);
	end component mux2to1;
	signal x, y, m: std_LOGIC_VECTOR(7 downto 0);

begin	
	x <= SW(7 downTO 0);
	y <= SW(15 downTO 8);
	LEDR(7 downTO 0) <= m;
	
	LEDR(17) <= SW(17);
	
	gen_mux: for i in 0 to 7 generate
			mux: mux2to1 port map (x(i), y(i), SW(17), m(i));
	end generate gen_mux;
	
end mux_8bit;