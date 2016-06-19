--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
-- Laboratorio 10: Projeto: Processador simples --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;


entity port_n is
    port(Data_in: in std_logic_vector(15 downto 0);
         En: in std_logic;
         Clock: in std_logic;
         Resetn: in std_logic;
         Data_out: out std_logic_vector(15 downto 0)
    );
end port_n;

architecture behavior of port_n is
    -- Register n-bits
    component regn
        generic (n : integer := 16);
        port (  R : IN std_logic_vector(n-1 downto 0);
                Rin, Clock, Rstn : IN std_logic;
                Q : buffer std_logic_vector(n-1 downto 0));
    end component regn;

begin

H0_disp: regn generic map (n => 16)
         port map (Data_in, En, Clock, Resetn, Data_out);

end behavior ; -- behavior
