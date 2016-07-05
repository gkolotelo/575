--------------------------------------------------
--         Logic Circuits Lab - ES575A          --
--------------------------------------------------
-- authors:                                     --
--      Alexandre Seidy Ioshisaqui              --
--      Guilherme Kairalla Kolotelo             --
--------------------------------------------------
--               RSA Encryption                 --
--------------------------------------------------
-- filename:                                    --
--      rsa_toplevel_video_presentation.vhd     --
-- description: Top level VHD for RSA encryption--
--              and decryption device           --
-- created on:  June 19, 2016                   --
-- revision:    July 04, 2016                   --
--------------------------------------------------
-- Compiled using Quartus 15.0
-- RSA encyption and decryption is implemented using
-- the modular exponentiation method.
-- Input using switches, output on HEX displays.

-- Component dependency:
--      modexp_interface:       Interface for RSA calculation circuit
--      decoder_7segment_hex:   7 segment HEX decoder


library ieee;
use ieee.std_logic_1164.all;

-- Port signal definition:

entity rsa_toplevel_video_presentation is
    port(
        SW: in std_logic_vector(17 downto 0);
        KEY: in std_logic_vector(3 downto 0);
        CLOCK_50: in std_logic;
        LEDR: out std_logic_vector(17 downto 0);
        LEDG: out std_logic_vector(7 downto 0);
        HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(6 downto 0)
        );
end rsa_toplevel_video_presentation;

architecture behavior of rsa_toplevel_video_presentation is
---------------------------  Component declarations:  ---------------------------

    -- Interface for RSA circuit
    component modexp_interface is
        generic ( KEY_SIZE: integer := 32);
        port(
            in_data: in std_logic_vector(KEY_SIZE-1 downto 0);
            exponent: in std_logic_vector(KEY_SIZE-1 downto 0);
            modulus: in std_logic_vector(KEY_SIZE-1 downto 0);
            reset: in std_logic;
            clock: in std_logic;
            out_data: out std_logic_vector(KEY_SIZE-1 downto 0);
            start : in std_logic;
            finished : out std_logic
        );
    end component;

    component decoder_7segment_hex
    port (
        dec_in: in std_logic_vector(3 downto 0);
        dec_out: out std_logic_vector(6 downto 0)
    );
    end component decoder_7segment_hex;
	
	component multiplexer
		generic ( n: integer := 8);
		port ( entrada1: in std_logic_vector(n-1 downto 0);
		entrada2: in std_logic_vector(n-1 downto 0);
		selecao: in std_logic;
		saida: out std_logic_vector(n-1 downto 0));
	end component;

---------------------------    Signal declarations:   ---------------------------
---------------------
-- General signals --
---------------------
    signal reset: std_logic;
    signal clock: std_logic;
    --constant KEY_SIZE : integer := 32;
	signal display_data, in1, in2: std_logic_vector(31 downto 0);
	
	signal operation: std_logic;
	signal data: std_logic_vector(15 downto 0);
	
	signal set_block_1, set_block_2, end_display: std_logic;

----------------------------------------
-- Encryption module signals (modexp) --
----------------------------------------
    signal start_encryption, start_decryption, finished_encryption, finished_decryption: std_logic;
    signal in_data, public_exp, private_exp, modulus: std_logic_vector(31 downto 0);
    signal encrypt_out, decrypt_out: std_logic_vector(31 downto 0);

-------------------
-- State signals --
-------------------
	
	type StateType is (state_reset, state_block_1, state_block_2, state_run, state_encrypting, state_decrypting, state_display);
    signal current_state, next_state: StateType;


---------------------------       Signal Routing:     ---------------------------
begin
   -- Fixed keys 32bit
    public_exp <= x"00010001";
    private_exp <= x"93592F41";
    modulus <= x"D8FAA935";

    reset <= not(KEY(0));
	LEDG(1 downto 0) <= (others => reset); 
	
	end_display <= not(KEY(3));
	LEDG(7 downto 6) <= (others => end_display);
	 
    clock <= CLOCK_50;
	
	operation <= SW(17);
	LEDR(17) <= operation;
	data <= SW(15 downto 0);
	
	set_block_1 <= NOT(KEY(1));
	set_block_2 <= NOT(KEY(2));
	LEDG(3 downto 2) <= (others => set_block_1);
	LEDG(5 downto 4) <= (others => set_block_2);

	find_next: process(current_state)
	begin
		case current_state is
			when state_reset =>
				next_state <= state_block_1;
				LEDR(4 downto 0) <= (others => '0');
				start_encryption <= '0';
				start_decryption <= '0';
			when state_block_1 =>
				LEDR(4 downto 0) <= "00001";
				in_data(31 downto 16) <= data;
				if set_block_1 = '1' then
					next_state <= state_block_2;
				end if;
			when state_block_2 =>
				LEDR(4 downto 0) <= "00010";
				in_data(15 downto 0) <= data;
				if set_block_2 = '1' then
					next_state <= state_run;
				end if;
			when state_run =>
				LEDR(4 downto 0) <= "00100";
				case operation is
					when '1' =>  -- (e)Encrypt
						next_state <= state_encrypting;
						start_encryption <= '1';
					when '0' =>  -- (d)Decrypt
						next_state <= state_decrypting;
						start_decryption <= '1';
				end case;
			when state_encrypting =>
				LEDR(4 downto 0) <= "01000";
				next_state <= state_display;
			when state_decrypting =>
				LEDR(4 downto 0) <= "10000";
				next_state <= state_display;
			when state_display =>
				LEDR(4 downto 0) <= "11111";
				if end_display = '1' then
					next_state <= state_block_1;
				end if;
			end case;
	 end process find_next;

    set_next: process(reset, clock, next_state)
    begin
        if reset = '1' then
            current_state <= state_reset;
        elsif rising_edge(clock) then
            current_state <= next_state;
        end if;
    end process set_next;
	
	set_display: process(encrypt_out, decrypt_out, current_state, operation, data)
	begin
		if current_state = state_block_1 then
			display_data(31 downto 16) <= data;
		elsif current_state = state_block_2 then
			display_data(15 downto 0) <= data;
		elsif current_state = state_display then
			if(operation = '1') then
				display_data <= encrypt_out;
			else
				display_data <= decrypt_out;
			end if;
		else
			display_data <= (others => '0');
		end if;
	end process;

------------------------    Component instances:   ---------------------------
    encrypt_module: modexp_interface generic map (KEY_SIZE => 32)
                    port map (  in_data => in_data,
                                exponent => public_exp,
                                modulus => modulus,
                                reset => reset,
                                clock => clock,
                                out_data => encrypt_out,
                                start => start_encryption,
                                finished => finished_encryption
                    );

    decrypt_module: modexp_interface generic map (KEY_SIZE => 32)
                    port map (  in_data => in_data,
                                exponent => private_exp,
                                modulus => modulus,
                                reset => reset,
                                clock => clock,
                                out_data => decrypt_out,
                                start => start_decryption,
                                finished => finished_decryption
                    );

    h7: decoder_7segment_hex
    port map(
        dec_in => display_data(31 downto 28),
        dec_out => HEX7
    );

    h6: decoder_7segment_hex
    port map(
        dec_in => display_data(27 downto 24),
        dec_out => HEX6
    );

    h5: decoder_7segment_hex
    port map(
        dec_in => display_data(23 downto 20),
        dec_out => HEX5
    );
    
    h4: decoder_7segment_hex
    port map(
        dec_in => display_data(19 downto 16),
        dec_out => HEX4
    );
    
    h3: decoder_7segment_hex
    port map(
        dec_in => display_data(15 downto 12),
        dec_out => HEX3
    );
    
    h2: decoder_7segment_hex
    port map(
        dec_in => display_data(11 downto 8),
        dec_out => HEX2
    );
    
    h1: decoder_7segment_hex
    port map(
        dec_in => display_data(7 downto 4),
        dec_out => HEX1
    );
    
    h0: decoder_7segment_hex
    port map(
        dec_in => display_data(3 downto 0),
        dec_out => HEX0
    );
    
    
end behavior;