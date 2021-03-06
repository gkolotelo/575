Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.std_logic_signed.all;

Entity somador is 
	generic ( n: integer:= 8);
	port ( addsub: in std_logic;
		entrada1: in std_logic_vector(n-1 downto 0);
		entrada2: in std_logic_vector(n-1 downto 0);
		saida: buffer std_logic_vector(n-1 downto 0);
		overflow: out std_logic);
end entity;

Architecture behavior of somador is 
	signal operando: std_logic_vector(n-1 downto 0);
	signal soma: std_logic_vector(n downto 0);
begin 
	operando <= entrada2 when addsub ='0' else not entrada2 + addsub;
	soma <= ('0' & entrada1) + ('0'& operando);
	saida <= soma(n-1 downto 0);
	overflow <= saida(n-1) xor soma(n) xor operando(n-1) xor entrada1(n-1);
end architecture;
