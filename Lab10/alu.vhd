library ieee;
use ieee.std_logic_1164.all;

entity alu is
    port (  A : in std_logic_vector(15 downto 0);
            B : in std_logic_vector(15 downto 0);
            O : in std_logic_vector(15 downto 0);
            alufn : in std_logic_vector(2 downto 0);
            overflow : out std_logic);
end alu;

architecture Behavior of alu is
    signal operando: std_logic_vector(n-1 downto 0);
    signal soma: std_logic_vector(n downto 0);
begin 
    operando <= entrada2 when addsub ='0' else not entrada2 + addsub;
    soma <= ('0' & entrada1) + ('0'& operando);
    saida <= soma(n-1 downto 0);
    overflow <= saida(n-1) xor soma(n) xor operando(n-1) xor entrada1(n-1);
end Behavior;
