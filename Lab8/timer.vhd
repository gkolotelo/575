--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
--          Laboratorio 8: Semaforos            --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity timer is
    generic (
    	-- Timer duration in seconds
        duration : natural := 8
    );
    port (
        clock   : in std_logic;
        reset   : in std_logic;
        completed: out std_logic
    );
end timer;

architecture behavior of timer is
begin
	process(clock, reset)
	variable count: natural;
	begin
		if(reset = '1') then
			completed <= '0';
			count := 0;

		elsif(rising_edge(clock)) then
			if(count = duration) then
				completed <= '1';
			elsif
				count := count + 1;
			end if;
			
		end if;

	end process;
end behavior;