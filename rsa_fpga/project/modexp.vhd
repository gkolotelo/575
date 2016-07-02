--------------------------------------------------
-- 		   Logic Circuits Lab - ES575A  	    --
--------------------------------------------------
-- authors:										--
-- 		Alexandre Seidy Ioshisaqui              --
-- 		Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--          	 RSA Encryption                 --
--------------------------------------------------
-- filename: 	modexp.vhd						--
-- description: Modular Exponentiation circuit  --
-- 				R = A^b mod C
-- created on:  June 16, 2016					--
-- revision: 	June 18, 2016					--
--------------------------------------------------

--Binary method of modular exponentiation is used.


library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_misc.all;

-- Port signal definition:
--		A: 		 Base
--		b: 		 Exponent
--		C: 		 Modulus
--		Reset:   Active high reset signal
--		Clk: 	 Clock signal
--		Trigger: Triggers a calculation
--		R:		 Result of calculation (modular exponentiation A^b mod C)
--		Done:	 Indicates the calculation is complete
--
entity modexp is
	generic ( KEY_SIZE: integer := 32);
	port (	A: in  std_logic_vector(KEY_SIZE-1 downto 0);
			b: in  std_logic_vector(KEY_SIZE-1 downto 0);
			C: in  std_logic_vector(KEY_SIZE-1 downto 0);
			Reset: in std_logic;
			Clock: in std_logic;
			Trigger: in std_logic;
			R: out std_logic_vector(KEY_SIZE-1 downto 0);
			Done: out std_logic
	);
end modexp;

architecture behavior of modexp is
 
	
---------------------------  Component declarations:  ---------------------------

	-- modmult: Modular multiplication circuit
	component modmult is
		generic (MPWID: integer := KEY_SIZE);
    	port ( 	mpand : in std_logic_vector(MPWID-1 downto 0);
    	       	mplier : in std_logic_vector(MPWID-1 downto 0);
    	       	modulus : in std_logic_vector(MPWID-1 downto 0);
    	       	product : out std_logic_vector(MPWID-1 downto 0);
    	       	clk : in std_logic;
    	       	ds : in std_logic;
			   	reset : in std_logic;
			   	ready: out std_logic);
	end component;

	component multiplexer is 
    	generic ( n: integer := 8);
    	port (  entrada1: in std_logic_vector(n-1 downto 0);
    			entrada2: in std_logic_vector(n-1 downto 0);
    			selecao: in std_logic;
    			saida: out std_logic_vector(n-1 downto 0));
	end component;



---------------------------    Signal declarations:   ---------------------------
	signal counter, modsquare_out, modmultiplier_out: std_logic_vector(KEY_SIZE-1 downto 0);
	signal modsquare_mux_out, modmultiplier_mux1_out, modmultiplier_mux2_out, modmultiplier_mux3_out, modmultiplier_mux4_out: std_logic_vector(KEY_SIZE-1 downto 0);
	signal calc_trigger: std_logic_vector(0 downto 0);
	signal modmultiplier_ready, modsquare_ready, first_iteration: std_logic;
	signal done_internal: std_logic;

begin
---------------------------       Signal Routing:     ---------------------------

	Done <= done_internal;

	modexp_manager: process (Reset, Clock, Trigger, done_internal)
	begin	
		if rising_edge(Clock) then
			if Trigger = '1' and done_internal = '1' then -- Begin calculation. 1st cycle!
				first_iteration <= '1';
			else
				first_iteration <= '0';
			end if;
		end if;
	end process modexp_manager;

	-- Process to manage the binary exponentiation choice of square or multiplication through the counter variable
	counter_manager: process (Reset, Clock, Trigger, C, b, modmultiplier_out, modmultiplier_ready, modsquare_ready, calc_trigger, first_iteration)
	begin
		if Reset = '1' then	
			done_internal <= '1';
			counter <= (others => '0');
			--counter <= b;-- find somewhere else  -- old
		elsif rising_edge(Clock) then
			if first_iteration = '1' then
				--counter <= b; -- counter <= exponential. Binary method of modular exponentiation is used. -- old
				done_internal <= '0'; -- Calculation started
			elsif (modmultiplier_ready and modsquare_ready and not(calc_trigger(0))) = '1' then
		 		--if counter = 0 then
		 		if or_reduce(counter) = '0' then
					done_internal <= '1';
				else
					counter <= '0' & counter(KEY_SIZE-1 downto 1); -- Right shift counter each iteration
				end if;
			end if;
		end if;
		if first_iteration = '1' then 
			counter <= b; -- counter <= exponential. Binary method of modular exponentiation is used. -- old
		end if;
	end process counter_manager;

    -- trigger_process: Mux to configure trigger signals
	trigger_process: process (Clock, first_iteration, counter, modmultiplier_ready, modsquare_ready)
	begin
		if first_iteration = '1' then
			calc_trigger(0) <= '1';
		elsif rising_edge(Clock) then
			if modmultiplier_ready = '1' then
				if modsquare_ready = '1' then
					--if counter /= 0 then -- old
					if or_reduce(counter) /= '0' then
						calc_trigger(0) <= '1';
					else
						calc_trigger(0) <= '0';
					end if;
				else
					calc_trigger(0) <= '0';
				end if;
			else
				calc_trigger(0) <= '0';
			end if;
		end if;
	end process trigger_process;



---------------------------    Component instances:   ---------------------------

	-- modmultiplier_mux1_out: Mux to choose either 1 or current binary power of A as arbitrated by the counter
	modmultiplier_mux1: multiplexer  generic map(n => KEY_SIZE)
								port map(	entrada1 => (0 => '1', others => '0'),
											entrada2 => modsquare_out,
											selecao => counter(0),
											saida => modmultiplier_mux1_out);

	-- modmultiplier_mux2: Mux to choose correct data on first iteration
	modmultiplier_mux2: multiplexer  generic map(n => KEY_SIZE)
								port map(	entrada1 => modmultiplier_mux1_out,
											entrada2 => (0 => '1', others => '0'),
											selecao => first_iteration,
											saida => modmultiplier_mux2_out);

    -- modmultiplier_mux3: Mux to choose either 1 or A  as arbitrated by the counter 
	modmultiplier_mux3: multiplexer  generic map(n => KEY_SIZE)
								port map(	entrada1 => (0 => '1', others => '0'),
											entrada2 => A,
											selecao => counter(0),
											saida => modmultiplier_mux3_out);

	-- modmultiplier_mux4: Mux to choose correct data on first iteration
	modmultiplier_mux4: multiplexer  generic map(n => KEY_SIZE)
								port map(	entrada1 => modmultiplier_out,
											entrada2 => modmultiplier_mux3_out,
											selecao => first_iteration,
											saida => modmultiplier_mux4_out);

    -- modmultiplier: Modular multiplier for multiplication 
	modmultiplier: modmult 	generic map(MPWID => KEY_SIZE)
							port map(	mpand => modmultiplier_mux2_out,
										mplier => modmultiplier_mux4_out,
										modulus => C,
										product => modmultiplier_out,
										clk => Clock,
										ds => calc_trigger(0),
										reset => Reset,
										ready => modmultiplier_ready);

    -- modsquare_mux: Mux to choose data into modsquare on 1st iteration
	modsquare_mux: multiplexer  generic map(n => KEY_SIZE)
								port map(	entrada1 => modsquare_out,
											entrada2 => A,
											selecao => first_iteration,
											saida => modsquare_mux_out);
 
	-- modsquare: Modular multiplier for squaring
	modsquare: modmult 		generic map(MPWID => KEY_SIZE)
							port map(	mpand => modsquare_mux_out,
										mplier => modsquare_mux_out,
										modulus => C,
										product => modsquare_out,
										clk => Clock,
										ds => calc_trigger(0),
										reset => Reset,
										ready => modsquare_ready);

	-- result_mux1_out: Mux to choose either '0' or result if modexp done
	result_mux1: multiplexer    generic map(n => KEY_SIZE)
								port map(	entrada1 => (others => '0'),
											entrada2 => modmultiplier_out,
											selecao => done_internal,
											saida => R);

end behavior;