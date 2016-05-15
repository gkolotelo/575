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

ENTITY latch_d IS
    PORT ( 
        D, Clk, Rst : IN STD_LOGIC ;
        Q, Qn : OUT STD_LOGIC
    );
END latch_d ;

ARCHITECTURE Behavior OF latch_d IS
BEGIN
    PROCESS ( D, Clk, Rst )
    BEGIN
        -- Latch D in Behavioral Modeling
        if Rst = '1' THEN
            -- Resets Q when Rst is high
            Q <= '0';
            Qn <= '1';
        elsIF Clk = '1' THEN
            -- Transmits input D to Q when Clk is high
            Q <= D;
            Qn <= not(D);
        END IF;
    END PROCESS;
END Behavior;