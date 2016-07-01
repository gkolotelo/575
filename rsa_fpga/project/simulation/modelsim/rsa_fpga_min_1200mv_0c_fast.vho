-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "06/30/2016 20:07:19"

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

ENTITY 	rsa_toplevel IS
    PORT (
	clock : IN std_logic;
	data_DATA_EXTERNAL_IN : IN std_logic_vector(15 DOWNTO 0);
	data_DATA_EXTERNAL_OUT : OUT std_logic_vector(15 DOWNTO 0);
	data_DATA_EXTERNAL_CLOCK : IN std_logic;
	data_DATA_EXTERNAL_FRESHDATA : IN std_logic;
	reset : IN std_logic
	);
END rsa_toplevel;

-- Design Ports Information
-- data_DATA_EXTERNAL_IN[0]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[1]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[2]	=>  Location: PIN_N30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[5]	=>  Location: PIN_AJ18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[7]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[9]	=>  Location: PIN_AC16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[11]	=>  Location: PIN_AJ13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[12]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[13]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[14]	=>  Location: PIN_F30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_IN[15]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[0]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[1]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[3]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[4]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[5]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[6]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[7]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[8]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[9]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[10]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[12]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[13]	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[14]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_OUT[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_CLOCK	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_DATA_EXTERNAL_FRESHDATA	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rsa_toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_data_DATA_EXTERNAL_IN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_DATA_EXTERNAL_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_data_DATA_EXTERNAL_CLOCK : std_logic;
SIGNAL ww_data_DATA_EXTERNAL_FRESHDATA : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[0]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[1]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[2]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[3]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[4]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[5]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[6]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[7]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[8]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[9]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[10]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[11]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[12]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[13]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[14]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_IN[15]~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_CLOCK~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_FRESHDATA~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[0]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[1]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[2]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[3]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[4]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[5]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[6]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[7]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[8]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[9]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[10]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[11]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[12]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[13]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[14]~output_o\ : std_logic;
SIGNAL \data_DATA_EXTERNAL_OUT[15]~output_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_data_DATA_EXTERNAL_IN <= data_DATA_EXTERNAL_IN;
data_DATA_EXTERNAL_OUT <= ww_data_DATA_EXTERNAL_OUT;
ww_data_DATA_EXTERNAL_CLOCK <= data_DATA_EXTERNAL_CLOCK;
ww_data_DATA_EXTERNAL_FRESHDATA <= data_DATA_EXTERNAL_FRESHDATA;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X108_Y0_N2
\data_DATA_EXTERNAL_OUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\data_DATA_EXTERNAL_OUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[1]~output_o\);

-- Location: IOOBUF_X113_Y91_N9
\data_DATA_EXTERNAL_OUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[2]~output_o\);

-- Location: IOOBUF_X117_Y79_N2
\data_DATA_EXTERNAL_OUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N16
\data_DATA_EXTERNAL_OUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[4]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\data_DATA_EXTERNAL_OUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[5]~output_o\);

-- Location: IOOBUF_X88_Y0_N9
\data_DATA_EXTERNAL_OUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[6]~output_o\);

-- Location: IOOBUF_X117_Y7_N2
\data_DATA_EXTERNAL_OUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[7]~output_o\);

-- Location: IOOBUF_X37_Y0_N23
\data_DATA_EXTERNAL_OUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[8]~output_o\);

-- Location: IOOBUF_X117_Y10_N2
\data_DATA_EXTERNAL_OUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[9]~output_o\);

-- Location: IOOBUF_X117_Y6_N2
\data_DATA_EXTERNAL_OUT[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[10]~output_o\);

-- Location: IOOBUF_X32_Y91_N9
\data_DATA_EXTERNAL_OUT[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[11]~output_o\);

-- Location: IOOBUF_X66_Y0_N9
\data_DATA_EXTERNAL_OUT[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[12]~output_o\);

-- Location: IOOBUF_X50_Y0_N16
\data_DATA_EXTERNAL_OUT[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[13]~output_o\);

-- Location: IOOBUF_X99_Y91_N16
\data_DATA_EXTERNAL_OUT[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[14]~output_o\);

-- Location: IOOBUF_X34_Y91_N2
\data_DATA_EXTERNAL_OUT[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data_DATA_EXTERNAL_OUT[15]~output_o\);

-- Location: IOIBUF_X117_Y8_N8
\data_DATA_EXTERNAL_IN[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(0),
	o => \data_DATA_EXTERNAL_IN[0]~input_o\);

-- Location: IOIBUF_X117_Y70_N1
\data_DATA_EXTERNAL_IN[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(1),
	o => \data_DATA_EXTERNAL_IN[1]~input_o\);

-- Location: IOIBUF_X117_Y53_N1
\data_DATA_EXTERNAL_IN[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(2),
	o => \data_DATA_EXTERNAL_IN[2]~input_o\);

-- Location: IOIBUF_X117_Y8_N1
\data_DATA_EXTERNAL_IN[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(3),
	o => \data_DATA_EXTERNAL_IN[3]~input_o\);

-- Location: IOIBUF_X15_Y91_N1
\data_DATA_EXTERNAL_IN[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(4),
	o => \data_DATA_EXTERNAL_IN[4]~input_o\);

-- Location: IOIBUF_X68_Y0_N8
\data_DATA_EXTERNAL_IN[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(5),
	o => \data_DATA_EXTERNAL_IN[5]~input_o\);

-- Location: IOIBUF_X28_Y91_N1
\data_DATA_EXTERNAL_IN[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(6),
	o => \data_DATA_EXTERNAL_IN[6]~input_o\);

-- Location: IOIBUF_X90_Y91_N8
\data_DATA_EXTERNAL_IN[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(7),
	o => \data_DATA_EXTERNAL_IN[7]~input_o\);

-- Location: IOIBUF_X41_Y91_N15
\data_DATA_EXTERNAL_IN[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(8),
	o => \data_DATA_EXTERNAL_IN[8]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\data_DATA_EXTERNAL_IN[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(9),
	o => \data_DATA_EXTERNAL_IN[9]~input_o\);

-- Location: IOIBUF_X50_Y91_N1
\data_DATA_EXTERNAL_IN[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(10),
	o => \data_DATA_EXTERNAL_IN[10]~input_o\);

-- Location: IOIBUF_X53_Y0_N8
\data_DATA_EXTERNAL_IN[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(11),
	o => \data_DATA_EXTERNAL_IN[11]~input_o\);

-- Location: IOIBUF_X15_Y0_N1
\data_DATA_EXTERNAL_IN[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(12),
	o => \data_DATA_EXTERNAL_IN[12]~input_o\);

-- Location: IOIBUF_X88_Y0_N1
\data_DATA_EXTERNAL_IN[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(13),
	o => \data_DATA_EXTERNAL_IN[13]~input_o\);

-- Location: IOIBUF_X117_Y69_N1
\data_DATA_EXTERNAL_IN[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(14),
	o => \data_DATA_EXTERNAL_IN[14]~input_o\);

-- Location: IOIBUF_X111_Y91_N1
\data_DATA_EXTERNAL_IN[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_IN(15),
	o => \data_DATA_EXTERNAL_IN[15]~input_o\);

-- Location: IOIBUF_X66_Y91_N22
\data_DATA_EXTERNAL_CLOCK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_CLOCK,
	o => \data_DATA_EXTERNAL_CLOCK~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\data_DATA_EXTERNAL_FRESHDATA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_DATA_EXTERNAL_FRESHDATA,
	o => \data_DATA_EXTERNAL_FRESHDATA~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X53_Y91_N1
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

ww_data_DATA_EXTERNAL_OUT(0) <= \data_DATA_EXTERNAL_OUT[0]~output_o\;

ww_data_DATA_EXTERNAL_OUT(1) <= \data_DATA_EXTERNAL_OUT[1]~output_o\;

ww_data_DATA_EXTERNAL_OUT(2) <= \data_DATA_EXTERNAL_OUT[2]~output_o\;

ww_data_DATA_EXTERNAL_OUT(3) <= \data_DATA_EXTERNAL_OUT[3]~output_o\;

ww_data_DATA_EXTERNAL_OUT(4) <= \data_DATA_EXTERNAL_OUT[4]~output_o\;

ww_data_DATA_EXTERNAL_OUT(5) <= \data_DATA_EXTERNAL_OUT[5]~output_o\;

ww_data_DATA_EXTERNAL_OUT(6) <= \data_DATA_EXTERNAL_OUT[6]~output_o\;

ww_data_DATA_EXTERNAL_OUT(7) <= \data_DATA_EXTERNAL_OUT[7]~output_o\;

ww_data_DATA_EXTERNAL_OUT(8) <= \data_DATA_EXTERNAL_OUT[8]~output_o\;

ww_data_DATA_EXTERNAL_OUT(9) <= \data_DATA_EXTERNAL_OUT[9]~output_o\;

ww_data_DATA_EXTERNAL_OUT(10) <= \data_DATA_EXTERNAL_OUT[10]~output_o\;

ww_data_DATA_EXTERNAL_OUT(11) <= \data_DATA_EXTERNAL_OUT[11]~output_o\;

ww_data_DATA_EXTERNAL_OUT(12) <= \data_DATA_EXTERNAL_OUT[12]~output_o\;

ww_data_DATA_EXTERNAL_OUT(13) <= \data_DATA_EXTERNAL_OUT[13]~output_o\;

ww_data_DATA_EXTERNAL_OUT(14) <= \data_DATA_EXTERNAL_OUT[14]~output_o\;

ww_data_DATA_EXTERNAL_OUT(15) <= \data_DATA_EXTERNAL_OUT[15]~output_o\;
END structure;


