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

entity Exp4PartII is
	port(
		KEY:		in std_logic_vector(0 downto 0);
		SW: 		in std_logic_vector(1 downto 0);
		HEX0, HEX1: out std_logic_vector(6 downto 0)
	);
end Exp4PartII;

architecture behavior of Exp4PartII is
	component decoder_7segment_hex
		port (
    	    dec_in: in std_logic_vector(3 downto 0);
    	    dec_out: out std_logic_vector(6 downto 0)
    	);
    end component decoder_7segment_hex;

	signal counter_vec: std_logic_vector(7 downto 0);
	signal Enable, Clk, Rst: std_logic;
begin
	Enable 	<= SW(1);
	Clk 	<= KEY(0);
	Rst 	<= SW(0);
	process (Enable, Clk, Rst, counter_vec)
		variable counter: integer range 0 to 65535;
	begin
		if Rst = '1' THEN
			counter := 0;
		elsIF (Clk = '1' and Clk'event and Enable = '1') THEN
			if counter > 65534 then
				counter := 0;
			else
				counter := counter + 1;
			end if;
		END IF;
	counter_vec <= std_logic_vector(to_unsigned(counter, counter_vec'length));
	END PROCESS;
	dec0: decoder_7segment_hex port map (counter_vec(3 downto 0), HEX0);
	dec1: decoder_7segment_hex port map (counter_vec(7 downto 4), HEX1);


end behavior;