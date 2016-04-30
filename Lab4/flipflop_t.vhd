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

ENTITY flipflop_t IS
	PORT ( 
		T, Clk, Rst : IN STD_LOGIC ;
		Q, Qn: OUT STD_LOGIC
	);
END flipflop_t ;

ARCHITECTURE Behavior OF flipflop_t IS
BEGIN
	PROCESS ( T, Clk, Rst )
		VARIABLE Qm: std_logic;
	BEGIN
		if Rst = '1' THEN
			Qm := '0';
		elsIF (Clk = '1' and Clk'event and T = '1') THEN
			-- Subida
			Qm := not(Qm);
		END IF;
		Q <= Qm;
		Qn <= not(Qm);
	END PROCESS;
END Behavior;