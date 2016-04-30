--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 5: Timers e Relogios de          --
--                  Tempo Real                  --
--------------------------------------------------

library ieee;
entity decoder_2digit is
	PORT(

	);
end decoder_2digit;

architecture behavior of decoder_2digit is
	component decoder_7segment_hex
        PORT (
            dec_in: IN std_logic_vector(3 downto 0);
            dec_out: OUT std_logic_vector(6 downto 0)
        );
    END component decoder_7segment_hex;
end behavior;