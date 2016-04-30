-- Copyright (C) 1991-2014 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.4 Build 182 03/12/2014 SJ Web Edition"

-- DATE "03/07/2016 20:28:57"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exp1d IS
    PORT (
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	sw : IN std_logic_vector(17 DOWNTO 0)
	);
END Exp1d;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[16]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp1d IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(17 DOWNTO 0);
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \sw[11]~input_o\ : std_logic;
SIGNAL \sw[12]~input_o\ : std_logic;
SIGNAL \sw[13]~input_o\ : std_logic;
SIGNAL \sw[14]~input_o\ : std_logic;
SIGNAL \sw[15]~input_o\ : std_logic;
SIGNAL \sw[16]~input_o\ : std_logic;
SIGNAL \sw[17]~input_o\ : std_logic;
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \dec|dec_out[3]~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \dec|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dec|ALT_INV_dec_out\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \dec|ALT_INV_dec_out[1]~1_combout\ : std_logic;

BEGIN

hex0 <= ww_hex0;
ww_sw <= sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\dec|ALT_INV_dec_out\(6) <= NOT \dec|dec_out\(6);
\dec|ALT_INV_dec_out\(3) <= NOT \dec|dec_out\(3);
\dec|ALT_INV_dec_out[1]~1_combout\ <= NOT \dec|dec_out[1]~1_combout\;

-- Location: IOOBUF_X46_Y91_N2
\hex0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|dec_out[3]~0_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X28_Y91_N9
\hex0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_dec_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X30_Y91_N2
\hex0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_dec_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\hex0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_dec_out\(3),
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\hex0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\hex0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\hex0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec|ALT_INV_dec_out\(6),
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOIBUF_X117_Y28_N8
\sw[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X117_Y39_N1
\sw[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X47_Y87_N16
\dec|dec_out[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|dec_out[3]~0_combout\ = (!\sw[2]~input_o\ & !\sw[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \dec|dec_out[3]~0_combout\);

-- Location: IOIBUF_X117_Y42_N1
\sw[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X47_Y87_N26
\dec|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|dec_out[1]~1_combout\ = (\sw[2]~input_o\) # (\sw[0]~input_o\ $ (!\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \dec|dec_out[1]~1_combout\);

-- Location: LCCOMB_X47_Y87_N12
\dec|dec_out[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|dec_out\(3) = (\sw[0]~input_o\) # ((\sw[2]~input_o\) # (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \dec|dec_out\(3));

-- Location: LCCOMB_X47_Y87_N22
\dec|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec|dec_out\(6) = (\sw[2]~input_o\) # (!\sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[2]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \dec|dec_out\(6));

-- Location: IOIBUF_X15_Y91_N15
\sw[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\sw[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: IOIBUF_X117_Y33_N8
\sw[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\sw[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X117_Y51_N1
\sw[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X117_Y51_N8
\sw[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X117_Y48_N8
\sw[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X117_Y49_N8
\sw[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

-- Location: IOIBUF_X117_Y53_N8
\sw[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(11),
	o => \sw[11]~input_o\);

-- Location: IOIBUF_X117_Y56_N1
\sw[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(12),
	o => \sw[12]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\sw[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(13),
	o => \sw[13]~input_o\);

-- Location: IOIBUF_X117_Y73_N8
\sw[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(14),
	o => \sw[14]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\sw[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(15),
	o => \sw[15]~input_o\);

-- Location: IOIBUF_X117_Y77_N8
\sw[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(16),
	o => \sw[16]~input_o\);

-- Location: IOIBUF_X117_Y79_N8
\sw[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(17),
	o => \sw[17]~input_o\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;
END structure;


