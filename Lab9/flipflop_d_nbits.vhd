--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 6: Somadores, Subtratores        --
--             e Multiplicadores                --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity flipflop_d_nbits is
    generic (
        n : natural := 8
    );
    port (
        D: in std_logic_vector(n-1 downto 0);
        Clk, Rst : in std_logic;
        Q, Qn: out std_logic_vector(n-1 downto 0)
    );
end flipflop_d_nbits ;

architecture Behavior of flipflop_d_nbits is
begin
    process ( D, Clk, Rst )
        variable Qm: std_logic_vector(n-1 downto 0);
    begin
        -- Latch D in Behavioral Modeling
        if Rst = '1' then
            -- Resets Q when Rst is high
            Qm := (others => '0');
        elsif (Clk = '1' and Clk'event) then
            -- Transmits input D value at the moment of the rising edge of Clk
            Qm := D;
        end if;
        Q <= Qm;
        Qn <= not(Qm);
    end process;
end Behavior;