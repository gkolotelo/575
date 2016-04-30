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

entity Exp4PartIV is
	port(
		CLOCK_50:	in std_logic;
		KEY:		in std_logic_vector(0 downto 0);
		SW: 		in std_logic_vector(1 downto 0);
		HEX0: out std_logic_vector(6 downto 0)
	);
end Exp4PartIV;

architecture behavior of Exp4PartIV is
	component decoder_7segment_hex
		port (
    	    dec_in: in std_logic_vector(3 downto 0);
    	    dec_out: out std_logic_vector(6 downto 0)
    	);
    end component decoder_7segment_hex;

	signal digit_vec: std_logic_vector(7 downto 0);
	signal Enable, Clk, Rst: std_logic;
begin
	Enable 	<= SW(1);
	Clk 	<= CLOCK_50;
	Rst 	<= SW(0);
	process (Enable, Clk, Rst, digit_vec)
		variable counter: integer range 0 to 50000001;
		variable digit: integer range 0 to 9;
	begin
		if Rst = '1' THEN
			counter := 0;
			digit 	:= 0;
		elsIF (Clk = '1' and Clk'event and Enable = '1') THEN
			if counter >= 50000000 then
				counter := 0;
				if digit > 8 then
					digit := 0;
				else
					digit := digit + 1;
				end if;
			else
				counter := counter + 1;
			end if;
		END IF;
	digit_vec <= std_logic_vector(to_unsigned(digit, digit_vec'length));
	END PROCESS;
	dec0: decoder_7segment_hex port map (digit_vec(3 downto 0), HEX0);

end behavior;