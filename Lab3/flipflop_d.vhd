--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 3: Latches, Flip-Flops e         --
--                  Registradores               --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

ENTITY flipflop_d IS
    PORT ( 
        D, Clk, Rst : IN STD_LOGIC ;
        Q, Qn: OUT STD_LOGIC
    );
END flipflop_d ;

ARCHITECTURE Behavior OF flipflop_d IS
BEGIN
    PROCESS ( D, Clk, Rst )
        VARIABLE Qm: std_logic;
    BEGIN
        -- Latch D in Behavioral Modeling
        if Rst = '1' THEN
            -- Resets Q when Rst is high
            Qm := '0';
        elsIF (Clk = '1' and Clk'event) THEN
            -- Transmits input D value at the moment of the rising edge of Clk
            Qm := D;
        END IF;
        Q <= Qm;
        Qn <= not(Qm);
    END PROCESS;
END Behavior;