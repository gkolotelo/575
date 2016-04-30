--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- 			Laboratorio 4: Contadores           --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Exp4PartV is
	port(
		CLOCK_50:	in std_logic;
		KEY:		in std_logic_vector(0 downto 0);
		SW: 		in std_logic_vector(1 downto 0);
		HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7:		out std_logic_vector(6 downto 0)
	);
end Exp4PartV;

architecture behavior of Exp4PartV is
    component decoder_7segment_HELLO
		port (
    	    dec_in: in std_logic_vector(2 downto 0);
    	    dec_out: out std_logic_vector(6 downto 0)
    	);
    end component decoder_7segment_HELLO;
    -- vector initialized with ___HELLO
	signal out_vec: std_logic_vector(0 to 23) := "111111111000001010010011";
begin
	process (CLOCK_50)
		variable counter: integer range 0 to 50000001;
	begin
		if rising_edge(CLOCK_50) THEN
			counter := counter + 1;
			if counter > 50000000 then
				counter := 0;
				out_vec <= std_logic_vector(rotate_left(unsigned(out_vec), 3));
			end if;
		END IF;
	END PROCESS;
	
	dec7: decoder_7segment_HELLO port map (out_vec(0 to 2), HEX7);
	dec6: decoder_7segment_HELLO port map (out_vec(3 to 5), HEX6);
	dec5: decoder_7segment_HELLO port map (out_vec(6 to 8), HEX5);
	dec4: decoder_7segment_HELLO port map (out_vec(9 to 11), HEX4);
	dec3: decoder_7segment_HELLO port map (out_vec(12 to 14), HEX3);
	dec2: decoder_7segment_HELLO port map (out_vec(15 to 17), HEX2);
	dec1: decoder_7segment_HELLO port map (out_vec(18 to 20), HEX1);
	dec0: decoder_7segment_HELLO port map (out_vec(21 to 23), HEX0);


end behavior;