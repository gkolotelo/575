Library ieee;
 Use ieee.std_logic_1164.all;
 Use ieee.std_logic_signed.all;

Entity multiplexer is 
    generic ( n: integer := 8);
    port ( entrada1: in std_logic_vector(n-1 downto 0);
    entrada2: in std_logic_vector(n-1 downto 0);
    selecao: in std_logic;
    saida: out std_logic_vector(n-1 downto 0));
end entity;

Architecture behavior of multiplexer is 
begin 
    saida <= entrada1 when selecao = '0' else entrada2;
end architecture;
