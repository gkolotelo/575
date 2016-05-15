LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux5to1_3bits IS
	PORT (
		s, u, v, w, x, y: in std_logic_vector(2 downto 0);
		mux_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END mux5to1_3bits;

architecture behavior OF mux5to1_3bits IS
	component mux2to1
		port(
			a, b, s: in std_logic;
			m: out std_logic
		);
	end component mux2to1;
	
	signal o1, o2, o3: std_LOGIC_VECTOR(2 downto 0);

begin
	mux0_1: mux2to1 port map (u(0), v(0), s(0), o1(0));
	mux0_2: mux2to1 port map (w(0), x(0), s(0), o2(0));
	mux0_3: mux2to1 port map (o1(0), o2(0), s(1), o3(0));
	mux0_4: mux2to1 port map (o3(0), y(0), s(2), mux_out(0));

	mux1_1: mux2to1 port map (u(1), v(1), s(0), o1(1));
	mux1_2: mux2to1 port map (w(1), x(1), s(0), o2(1));
	mux1_3: mux2to1 port map (o1(1), o2(1), s(1), o3(1));
	mux1_4: mux2to1 port map (o3(1), y(1), s(2), mux_out(1));
	
	mux2_1: mux2to1 port map (u(2), v(2), s(0), o1(2));
	mux2_2: mux2to1 port map (w(2), x(2), s(0), o2(2));
	mux2_3: mux2to1 port map (o1(2), o2(2), s(1), o3(2));
	mux2_4: mux2to1 port map (o3(2), y(2), s(2), mux_out(2));
	
end behavior;