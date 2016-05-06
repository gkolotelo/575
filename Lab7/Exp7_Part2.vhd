--------------------------------------------------
-- Laboratorio de Circuitos Logicos - Turma A   --
--------------------------------------------------
-- 135964 Guilherme Kairalla Kolotelo           --
-- 137943 Alexandre Seidy Ioshisaqui            --
--------------------------------------------------
--              Laboratorio 7: FSM              --
--------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity Exp7_Part2 is
	port (
			SW: in std_logic_vector(17 downto 0);
			LEDR: out std_logic_vector(8 downto 0);
			LEDG: out std_logic_vector(7 downto 0);
			KEY: in std_logic_vector(1 downto 0)
		  );
end Exp7_Part2;

architecture behavior OF Exp7_Part2 is	
	
	signal W, Z: std_logic;
	signal clock, reset: std_logic;
	type state_type is (A, B, C, D, E, F, G, H, I);
	signal y_Q, y_D: state_type; -- y_Q is present state, y_D is next state

begin

	clock <= not(KEY(1));
	reset <= not(KEY(0));
	W <= SW(0);
	
	

	process (W, y_Q)
	begin
		case y_Q is
			when A =>
				if (W = '0') then y_D <= B;
				else y_D <= F;
				end if;
			when B =>
				if (W = '0') then y_D <= C;
				else y_D <= F;
				end if;
			when C =>
				if (W = '0') then y_D <= D;
				else y_D <= F;
				end if;
			when D =>
				if (W = '0') then y_D <= E;
				else y_D <= F;
				end if;
			when E =>
				if (W = '0') then y_D <= E;
				else y_D <= F;
				end if;
			when F =>
				if (W = '0') then y_D <= B;
				else y_D <= G;
				end if;
			when G =>
				if (W = '0') then y_D <= B;
				else y_D <= H;
				end if;
			when H =>
				if (W = '0') then y_D <= B;
				else y_D <= I;
				end if;
			when I =>
				if (W = '0') then y_D <= B;
				else y_D <= I;
				end if;
		end case;
	end process; -- tabela de estados
	
	process (clock, reset, y_D)
	begin
		if (reset = '1') then y_Q <= A;
		elsif (clock = '1' and clock'event) then
			y_Q <= y_D;
			if ((y_D = E) OR (y_D = I)) then
				Z <= '1';
			else
				Z <= '0';
			end if;
			LEDG(7 downto 0) <= (7 downto 0 => Z);
			case y_D is
				when A =>
					LEDR(8 downto 0) <= (others => '0');
				when B =>
					LEDR(8 downto 0) <= (1 => '1', 0 => '1', others => '0');
				when C =>
					LEDR(8 downto 0) <= (2 => '1', 0 => '1', others => '0');
				when D =>
					LEDR(8 downto 0) <= (3 => '1', 0 => '1', others => '0');
				when E =>
					LEDR(8 downto 0) <= (4 => '1', 0 => '1', others => '0');
				when F =>
					LEDR(8 downto 0) <= (5 => '1', 0 => '1', others => '0');
				when G =>
					LEDR(8 downto 0) <= (6 => '1', 0 => '1', others => '0');
				when H =>
					LEDR(8 downto 0) <= (7 => '1', 0 => '1', others => '0');
				when I =>
					LEDR(8 downto 0) <= (8 => '1', 0 => '1', others => '0');
			end case;
		end if;
	end process;



	
	
end behavior;
