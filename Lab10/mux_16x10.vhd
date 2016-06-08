Library ieee;
 Use ieee.std_logic_1164.all;
 Use ieee.std_logic_signed.all;

Entity mux_16x10 is 
    generic ( n: integer := 8);
    port ( 	DIN, R0_out, R1_out, R2_out, R3_out, R4_out, R5_out, R6_out, R7_out, G_out: in std_logic_vector(15 downto 0);
			selection: in std_logic_vector(9 downto 0);
			mux_out: buffer std_logic_vector(15 downto 0)
	);
end entity;

Architecture behavior of mux_16x10 is 
begin 
	process(selection)
	begin
		case selection is
			when "1000000000" =>
				mux_out <= DIN;
			when "0100000000" =>
				mux_out <= R0_out;
			when "0010000000" =>
				mux_out <= R1_out;
			when "0001000000" =>
				mux_out <= R2_out;
			when "0000100000" =>
				mux_out <= R3_out;
			when "0000010000" =>
				mux_out <= R4_out;
			when "0000001000" =>
				mux_out <= R5_out;
			when "0000000100" =>
				mux_out <= R6_out;
			when "0000000010" =>
				mux_out <= R7_out;
			when "0000000001" =>
				mux_out <= G_out;
			when others =>
				mux_out <= (others => '0');
		end case;
    end process;
end architecture;
