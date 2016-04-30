LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exp1c IS
	PORT ( SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0); 
			LEDR : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)); -- red LEDs 
END Exp1c;





architecture mux_5to1 OF Exp1c IS
	component mux2to1
	port (a, b, s: in std_logic;
		m: out std_logic);
	end component mux2to1;
	
	signal u, v, w, x, y, o1, o2, o3, m: std_logic;
	signal s: std_LOGIC_VECTOR(2 downto 0);

begin
	u <= SW(0);
	v <= SW(1);
	w <= SW(2);
	x <= SW(3);
	y <= SW(4);
	
	--LEDR(0) <= m;
	
	--s <= SW(17 downTO 15);
	--LEDR(17 downto 15) <= s;
	
	
	mux1: mux2to1 port map (u, v, SW(17), o1);
	mux2: mux2to1 port map (w, x, SW(17), o2);
	mux3: mux2to1 port map (o1, o2, SW(16), o3);
	mux4: mux2to1 port map (y, o3, SW(15), LEDR(0));
	
end mux_5to1;