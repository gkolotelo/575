LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Exp1e IS 
	PORT (
		SW : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
		HEX0, HEX1, HEX2, HEX3, HEX4 : OUT STD_LOGIC_VECTOR(6 downto 0));
END Exp1e;

ARCHITECTURE Behavior OF Exp1e IS
	COMPONENT mux5to1_3bits
		PORT (
		s, u, v, w, x, y: in std_logic_vector(2 downto 0);
		mux_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
	END COMPONENT mux5to1_3bits;
	COMPONENT decoder_7segment 
		port (
			dec_in: in std_logic_vector(2 downto 0);
			dec_out: out std_logic_vector(6 downto 0)
	);
	END COMPONENT decoder_7segment; 
	
	SIGNAL M0, M1, M2, M3, M4 : STD_LOGIC_VECTOR(2 DOWNTO 0); 
BEGIN 
	mux0: mux5to1_3bits PORT MAP (SW(17 DOWNTO 15), SW(14 DOWNTO 12), SW(11 DOWNTO 9), SW(8 DOWNTO 6), SW(5 DOWNTO 3), SW(2 DOWNTO 0), M0);
	mux1: mux5to1_3bits PORT MAP (SW(17 DOWNTO 15), SW(11 DOWNTO 9), SW(8 DOWNTO 6), SW(5 DOWNTO 3), SW(2 DOWNTO 0), SW(14 DOWNTO 12), M1);
	mux2: mux5to1_3bits PORT MAP (SW(17 DOWNTO 15), SW(8 DOWNTO 6), SW(5 DOWNTO 3), SW(2 DOWNTO 0), SW(14 DOWNTO 12), SW(11 DOWNTO 9), M2);
	mux3: mux5to1_3bits PORT MAP (SW(17 DOWNTO 15), SW(5 DOWNTO 3), SW(2 DOWNTO 0), SW(14 DOWNTO 12), SW(11 DOWNTO 9), SW(8 DOWNTO 6), M3);
	mux4: mux5to1_3bits PORT MAP (SW(17 DOWNTO 15), SW(2 DOWNTO 0), SW(14 DOWNTO 12), SW(11 DOWNTO 9), SW(8 DOWNTO 6), SW(5 DOWNTO 3), M4);
	
	h0: decoder_7segment PORT MAP (M0, HEX0);
	h1: decoder_7segment PORT MAP (M1, HEX1);
	h2: decoder_7segment PORT MAP (M2, HEX2);
	h3: decoder_7segment PORT MAP (M3, HEX3);
	h4: decoder_7segment PORT MAP (M4, HEX4);
	
END Behavior;
