library ieee;
use ieee.std_logic_1164.all;

entity regn is
	generic (n : integer := 16);
	port (  R : IN std_logic_vector(n-1 downto 0);
			Rin, Clock : IN std_logic;
			Q : buffer std_logic_vector(n-1 downto 0));
	end regn;


architecture Behavior OF regn is
begin
	process (Clock)
	begin
		if Clock'event and Clock = '1' then
			if Rin = '1' then
				Q <= R;
			end if;
		end if;
	end process;
end Behavior;