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

-- DATE "03/07/2016 21:31:27"

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

ENTITY 	Exp1e IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Exp1e;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp1e IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \mux4|mux2_4|m~0_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \mux0|mux2_4|m~0_combout\ : std_logic;
SIGNAL \mux0|mux2_4|m~1_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \mux4|mux0_4|m~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \mux0|mux0_4|m~0_combout\ : std_logic;
SIGNAL \mux0|mux0_4|m~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \mux0|mux0_4|m~2_combout\ : std_logic;
SIGNAL \h0|dec_out[3]~4_combout\ : std_logic;
SIGNAL \mux0|mux2_4|m~2_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \mux0|mux1_4|m~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \mux4|mux1_4|m~0_combout\ : std_logic;
SIGNAL \mux0|mux1_4|m~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \mux0|mux1_4|m~2_combout\ : std_logic;
SIGNAL \h0|dec_out[1]~5_combout\ : std_logic;
SIGNAL \mux1|mux0_4|m~0_combout\ : std_logic;
SIGNAL \mux1|mux0_4|m~1_combout\ : std_logic;
SIGNAL \mux1|mux2_4|m~0_combout\ : std_logic;
SIGNAL \mux1|mux2_4|m~1_combout\ : std_logic;
SIGNAL \mux1|mux2_4|m~2_combout\ : std_logic;
SIGNAL \h1|dec_out[3]~4_combout\ : std_logic;
SIGNAL \mux1|mux0_4|m~2_combout\ : std_logic;
SIGNAL \mux1|mux1_4|m~0_combout\ : std_logic;
SIGNAL \mux1|mux1_4|m~1_combout\ : std_logic;
SIGNAL \mux1|mux1_4|m~2_combout\ : std_logic;
SIGNAL \h1|dec_out[1]~5_combout\ : std_logic;
SIGNAL \mux2|mux0_4|m~0_combout\ : std_logic;
SIGNAL \mux2|mux0_4|m~1_combout\ : std_logic;
SIGNAL \mux2|mux2_4|m~0_combout\ : std_logic;
SIGNAL \mux2|mux2_4|m~1_combout\ : std_logic;
SIGNAL \mux2|mux2_4|m~2_combout\ : std_logic;
SIGNAL \h2|dec_out[3]~4_combout\ : std_logic;
SIGNAL \mux2|mux0_4|m~2_combout\ : std_logic;
SIGNAL \mux2|mux1_4|m~0_combout\ : std_logic;
SIGNAL \mux2|mux1_4|m~1_combout\ : std_logic;
SIGNAL \mux2|mux1_4|m~2_combout\ : std_logic;
SIGNAL \h2|dec_out[1]~5_combout\ : std_logic;
SIGNAL \mux4|mux2_4|m~1_combout\ : std_logic;
SIGNAL \mux3|mux2_4|m~0_combout\ : std_logic;
SIGNAL \mux3|mux2_4|m~1_combout\ : std_logic;
SIGNAL \mux4|mux0_4|m~1_combout\ : std_logic;
SIGNAL \mux3|mux0_4|m~0_combout\ : std_logic;
SIGNAL \h3|dec_out[3]~4_combout\ : std_logic;
SIGNAL \mux3|mux0_4|m~1_combout\ : std_logic;
SIGNAL \mux4|mux1_4|m~1_combout\ : std_logic;
SIGNAL \mux3|mux1_4|m~0_combout\ : std_logic;
SIGNAL \mux3|mux1_4|m~1_combout\ : std_logic;
SIGNAL \h3|dec_out[1]~5_combout\ : std_logic;
SIGNAL \mux4|mux0_4|m~3_combout\ : std_logic;
SIGNAL \mux4|mux2_4|m~2_combout\ : std_logic;
SIGNAL \mux4|mux2_4|m~3_combout\ : std_logic;
SIGNAL \h4|dec_out[3]~7_combout\ : std_logic;
SIGNAL \mux4|mux1_4|m~2_combout\ : std_logic;
SIGNAL \mux4|mux1_4|m~3_combout\ : std_logic;
SIGNAL \mux4|mux0_4|m~2_combout\ : std_logic;
SIGNAL \h4|dec_out[1]~6_combout\ : std_logic;
SIGNAL \h1|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \h3|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \h0|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \h4|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \h2|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \h4|ALT_INV_dec_out\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \h3|ALT_INV_dec_out\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \h2|ALT_INV_dec_out\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \h1|ALT_INV_dec_out\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \h0|ALT_INV_dec_out\ : std_logic_vector(6 DOWNTO 3);
SIGNAL \h4|ALT_INV_dec_out[1]~6_combout\ : std_logic;
SIGNAL \h3|ALT_INV_dec_out[1]~5_combout\ : std_logic;
SIGNAL \h2|ALT_INV_dec_out[1]~5_combout\ : std_logic;
SIGNAL \h1|ALT_INV_dec_out[1]~5_combout\ : std_logic;
SIGNAL \h0|ALT_INV_dec_out[1]~5_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\h4|ALT_INV_dec_out\(6) <= NOT \h4|dec_out\(6);
\h3|ALT_INV_dec_out\(6) <= NOT \h3|dec_out\(6);
\h2|ALT_INV_dec_out\(6) <= NOT \h2|dec_out\(6);
\h1|ALT_INV_dec_out\(6) <= NOT \h1|dec_out\(6);
\h0|ALT_INV_dec_out\(6) <= NOT \h0|dec_out\(6);
\h4|ALT_INV_dec_out\(3) <= NOT \h4|dec_out\(3);
\h4|ALT_INV_dec_out[1]~6_combout\ <= NOT \h4|dec_out[1]~6_combout\;
\h3|ALT_INV_dec_out\(3) <= NOT \h3|dec_out\(3);
\h3|ALT_INV_dec_out[1]~5_combout\ <= NOT \h3|dec_out[1]~5_combout\;
\h2|ALT_INV_dec_out\(3) <= NOT \h2|dec_out\(3);
\h2|ALT_INV_dec_out[1]~5_combout\ <= NOT \h2|dec_out[1]~5_combout\;
\h1|ALT_INV_dec_out\(3) <= NOT \h1|dec_out\(3);
\h1|ALT_INV_dec_out[1]~5_combout\ <= NOT \h1|dec_out[1]~5_combout\;
\h0|ALT_INV_dec_out\(3) <= NOT \h0|dec_out\(3);
\h0|ALT_INV_dec_out[1]~5_combout\ <= NOT \h0|dec_out[1]~5_combout\;

-- Location: IOOBUF_X46_Y91_N2
\HEX0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|dec_out[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X28_Y91_N9
\HEX0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X30_Y91_N2
\HEX0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y91_N16
\HEX0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|ALT_INV_dec_out\(3),
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X53_Y91_N2
\HEX0[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X53_Y91_N23
\HEX0[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X46_Y91_N9
\HEX0[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|ALT_INV_dec_out\(6),
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X50_Y91_N9
\HEX1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|dec_out[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X48_Y91_N16
\HEX1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X50_Y91_N2
\HEX1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X37_Y91_N2
\HEX1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|ALT_INV_dec_out\(3),
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X37_Y91_N9
\HEX1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X8_Y91_N16
\HEX1[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X21_Y91_N23
\HEX1[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|ALT_INV_dec_out\(6),
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X3_Y91_N16
\HEX2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|dec_out[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X3_Y91_N2
\HEX2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X5_Y91_N23
\HEX2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X117_Y17_N2
\HEX2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|ALT_INV_dec_out\(3),
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X5_Y91_N9
\HEX2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X10_Y91_N9
\HEX2[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X21_Y91_N16
\HEX2[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h2|ALT_INV_dec_out\(6),
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X19_Y91_N16
\HEX3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|dec_out[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X30_Y91_N23
\HEX3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X21_Y91_N9
\HEX3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|ALT_INV_dec_out[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X10_Y91_N2
\HEX3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|ALT_INV_dec_out\(3),
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X12_Y91_N9
\HEX3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X21_Y91_N2
\HEX3[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X26_Y91_N2
\HEX3[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h3|ALT_INV_dec_out\(6),
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X50_Y91_N23
\HEX4[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|dec_out[3]~7_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X50_Y91_N16
\HEX4[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|ALT_INV_dec_out[1]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X24_Y91_N2
\HEX4[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|ALT_INV_dec_out[1]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X26_Y91_N16
\HEX4[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|ALT_INV_dec_out\(3),
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X26_Y91_N9
\HEX4[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X28_Y91_N23
\HEX4[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X19_Y91_N2
\HEX4[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \h4|ALT_INV_dec_out\(6),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOIBUF_X117_Y28_N8
\SW[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X117_Y73_N1
\SW[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X117_Y79_N8
\SW[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X117_Y73_N8
\SW[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X117_Y51_N8
\SW[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X117_Y77_N8
\SW[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: LCCOMB_X58_Y83_N26
\mux4|mux2_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux2_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[8]~input_o\))) # (!\SW[16]~input_o\ & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux4|mux2_4|m~0_combout\);

-- Location: IOIBUF_X117_Y53_N8
\SW[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X117_Y33_N8
\SW[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X58_Y83_N0
\mux0|mux2_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux2_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[5]~input_o\))) # (!\SW[16]~input_o\ & (\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux0|mux2_4|m~0_combout\);

-- Location: LCCOMB_X58_Y83_N20
\mux0|mux2_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux2_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux0|mux2_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux4|mux2_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \mux4|mux2_4|m~0_combout\,
	datad => \mux0|mux2_4|m~0_combout\,
	combout => \mux0|mux2_4|m~1_combout\);

-- Location: IOIBUF_X117_Y56_N1
\SW[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X117_Y48_N1
\SW[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X56_Y83_N10
\mux4|mux0_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux0_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[6]~input_o\))) # (!\SW[16]~input_o\ & (\SW[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux4|mux0_4|m~0_combout\);

-- Location: IOIBUF_X15_Y91_N15
\SW[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X117_Y48_N8
\SW[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X56_Y83_N16
\mux0|mux0_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux0_4|m~0_combout\ = (\SW[16]~input_o\ & (\SW[3]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux0|mux0_4|m~0_combout\);

-- Location: LCCOMB_X56_Y83_N20
\mux0|mux0_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux0_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux0|mux0_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux4|mux0_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux0_4|m~0_combout\,
	datab => \mux0|mux0_4|m~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \mux0|mux0_4|m~1_combout\);

-- Location: IOIBUF_X117_Y39_N1
\SW[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X56_Y83_N30
\mux0|mux0_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux0_4|m~2_combout\ = (\mux0|mux0_4|m~1_combout\) # ((\SW[17]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux0|mux0_4|m~1_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \mux0|mux0_4|m~2_combout\);

-- Location: LCCOMB_X58_Y83_N14
\h0|dec_out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h0|dec_out[3]~4_combout\ = (!\mux0|mux2_4|m~1_combout\ & (!\mux0|mux0_4|m~2_combout\ & ((!\SW[17]~input_o\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \mux0|mux2_4|m~1_combout\,
	datac => \mux0|mux0_4|m~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \h0|dec_out[3]~4_combout\);

-- Location: LCCOMB_X58_Y83_N16
\mux0|mux2_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux2_4|m~2_combout\ = (\mux0|mux2_4|m~1_combout\) # ((\SW[2]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux0|mux2_4|m~1_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux0|mux2_4|m~2_combout\);

-- Location: IOIBUF_X117_Y49_N8
\SW[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X117_Y27_N8
\SW[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X59_Y83_N8
\mux0|mux1_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux1_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[16]~input_o\ & (\SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \mux0|mux1_4|m~0_combout\);

-- Location: IOIBUF_X117_Y51_N1
\SW[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X117_Y57_N8
\SW[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X59_Y83_N18
\mux4|mux1_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux1_4|m~0_combout\ = (\SW[16]~input_o\ & (\SW[7]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[13]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \mux4|mux1_4|m~0_combout\);

-- Location: LCCOMB_X59_Y83_N28
\mux0|mux1_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux1_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\mux0|mux1_4|m~0_combout\)) # (!\SW[15]~input_o\ & ((\mux4|mux1_4|m~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux0|mux1_4|m~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \mux4|mux1_4|m~0_combout\,
	combout => \mux0|mux1_4|m~1_combout\);

-- Location: IOIBUF_X117_Y42_N1
\SW[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X58_Y83_N10
\mux0|mux1_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux0|mux1_4|m~2_combout\ = (\mux0|mux1_4|m~1_combout\) # ((\SW[1]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux0|mux1_4|m~1_combout\,
	datac => \SW[1]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux0|mux1_4|m~2_combout\);

-- Location: LCCOMB_X58_Y83_N28
\h0|dec_out[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h0|dec_out[1]~5_combout\ = (\mux0|mux2_4|m~2_combout\) # (\mux0|mux0_4|m~2_combout\ $ (!\mux0|mux1_4|m~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux0|mux2_4|m~2_combout\,
	datac => \mux0|mux0_4|m~2_combout\,
	datad => \mux0|mux1_4|m~2_combout\,
	combout => \h0|dec_out[1]~5_combout\);

-- Location: LCCOMB_X58_Y83_N22
\h0|dec_out[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h0|dec_out\(3) = (\mux0|mux2_4|m~2_combout\) # ((\mux0|mux0_4|m~2_combout\) # (\mux0|mux1_4|m~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux0|mux2_4|m~2_combout\,
	datac => \mux0|mux0_4|m~2_combout\,
	datad => \mux0|mux1_4|m~2_combout\,
	combout => \h0|dec_out\(3));

-- Location: LCCOMB_X58_Y83_N30
\h0|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h0|dec_out\(6) = ((\mux0|mux2_4|m~1_combout\) # ((\SW[2]~input_o\ & \SW[17]~input_o\))) # (!\mux0|mux1_4|m~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux0|mux1_4|m~2_combout\,
	datab => \mux0|mux2_4|m~1_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \h0|dec_out\(6));

-- Location: LCCOMB_X56_Y83_N8
\mux1|mux0_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux0_4|m~0_combout\ = (\SW[16]~input_o\ & (\SW[0]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux1|mux0_4|m~0_combout\);

-- Location: LCCOMB_X56_Y83_N2
\mux1|mux0_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux0_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux1|mux0_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux0|mux0_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \mux0|mux0_4|m~0_combout\,
	datac => \mux1|mux0_4|m~0_combout\,
	datad => \SW[15]~input_o\,
	combout => \mux1|mux0_4|m~1_combout\);

-- Location: LCCOMB_X58_Y83_N24
\mux1|mux2_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux2_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[16]~input_o\ & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux1|mux2_4|m~0_combout\);

-- Location: LCCOMB_X58_Y83_N2
\mux1|mux2_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux2_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\mux1|mux2_4|m~0_combout\)) # (!\SW[15]~input_o\ & ((\mux0|mux2_4|m~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux1|mux2_4|m~0_combout\,
	datac => \mux0|mux2_4|m~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \mux1|mux2_4|m~1_combout\);

-- Location: LCCOMB_X57_Y83_N0
\mux1|mux2_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux2_4|m~2_combout\ = (\mux1|mux2_4|m~1_combout\) # ((\SW[14]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux2_4|m~1_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux1|mux2_4|m~2_combout\);

-- Location: LCCOMB_X57_Y83_N2
\h1|dec_out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h1|dec_out[3]~4_combout\ = (!\mux1|mux0_4|m~1_combout\ & (!\mux1|mux2_4|m~2_combout\ & ((!\SW[17]~input_o\) # (!\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux0_4|m~1_combout\,
	datab => \mux1|mux2_4|m~2_combout\,
	datac => \SW[12]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \h1|dec_out[3]~4_combout\);

-- Location: LCCOMB_X57_Y83_N12
\mux1|mux0_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux0_4|m~2_combout\ = (\SW[12]~input_o\ & \SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[12]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux1|mux0_4|m~2_combout\);

-- Location: LCCOMB_X59_Y83_N22
\mux1|mux1_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux1_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[16]~input_o\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \mux1|mux1_4|m~0_combout\);

-- Location: LCCOMB_X59_Y83_N16
\mux1|mux1_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux1_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\mux1|mux1_4|m~0_combout\)) # (!\SW[15]~input_o\ & ((\mux0|mux1_4|m~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux1_4|m~0_combout\,
	datab => \mux0|mux1_4|m~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \mux1|mux1_4|m~1_combout\);

-- Location: LCCOMB_X59_Y83_N26
\mux1|mux1_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux1|mux1_4|m~2_combout\ = (\mux1|mux1_4|m~1_combout\) # ((\SW[17]~input_o\ & \SW[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux1|mux1_4|m~1_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \mux1|mux1_4|m~2_combout\);

-- Location: LCCOMB_X57_Y83_N22
\h1|dec_out[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h1|dec_out[1]~5_combout\ = (\mux1|mux2_4|m~2_combout\) # (\mux1|mux1_4|m~2_combout\ $ (((!\mux1|mux0_4|m~2_combout\ & !\mux1|mux0_4|m~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux0_4|m~2_combout\,
	datab => \mux1|mux2_4|m~2_combout\,
	datac => \mux1|mux0_4|m~1_combout\,
	datad => \mux1|mux1_4|m~2_combout\,
	combout => \h1|dec_out[1]~5_combout\);

-- Location: LCCOMB_X57_Y83_N16
\h1|dec_out[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h1|dec_out\(3) = (\mux1|mux0_4|m~2_combout\) # ((\mux1|mux2_4|m~2_combout\) # ((\mux1|mux0_4|m~1_combout\) # (\mux1|mux1_4|m~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux0_4|m~2_combout\,
	datab => \mux1|mux2_4|m~2_combout\,
	datac => \mux1|mux0_4|m~1_combout\,
	datad => \mux1|mux1_4|m~2_combout\,
	combout => \h1|dec_out\(3));

-- Location: LCCOMB_X57_Y83_N28
\h1|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h1|dec_out\(6) = (\mux1|mux2_4|m~1_combout\) # (((\SW[14]~input_o\ & \SW[17]~input_o\)) # (!\mux1|mux1_4|m~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux2_4|m~1_combout\,
	datab => \mux1|mux1_4|m~2_combout\,
	datac => \SW[14]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \h1|dec_out\(6));

-- Location: LCCOMB_X56_Y83_N4
\mux2|mux0_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux0_4|m~0_combout\ = (\SW[16]~input_o\ & (\SW[12]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[3]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux2|mux0_4|m~0_combout\);

-- Location: LCCOMB_X56_Y83_N14
\mux2|mux0_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux0_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux2|mux0_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux1|mux0_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \mux1|mux0_4|m~0_combout\,
	datac => \mux2|mux0_4|m~0_combout\,
	datad => \SW[15]~input_o\,
	combout => \mux2|mux0_4|m~1_combout\);

-- Location: LCCOMB_X58_Y83_N4
\mux2|mux2_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux2_4|m~0_combout\ = (\SW[16]~input_o\ & (\SW[14]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux2|mux2_4|m~0_combout\);

-- Location: LCCOMB_X58_Y83_N6
\mux2|mux2_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux2_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux2|mux2_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux1|mux2_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux1|mux2_4|m~0_combout\,
	datac => \mux2|mux2_4|m~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \mux2|mux2_4|m~1_combout\);

-- Location: LCCOMB_X57_Y83_N26
\mux2|mux2_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux2_4|m~2_combout\ = (\mux2|mux2_4|m~1_combout\) # ((\SW[11]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux2_4|m~1_combout\,
	datab => \SW[11]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux2|mux2_4|m~2_combout\);

-- Location: LCCOMB_X57_Y83_N20
\h2|dec_out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h2|dec_out[3]~4_combout\ = (!\mux2|mux0_4|m~1_combout\ & (!\mux2|mux2_4|m~2_combout\ & ((!\SW[17]~input_o\) # (!\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux0_4|m~1_combout\,
	datab => \SW[9]~input_o\,
	datac => \mux2|mux2_4|m~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \h2|dec_out[3]~4_combout\);

-- Location: LCCOMB_X57_Y83_N6
\mux2|mux0_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux0_4|m~2_combout\ = (\SW[9]~input_o\ & \SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux2|mux0_4|m~2_combout\);

-- Location: LCCOMB_X59_Y83_N4
\mux2|mux1_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux1_4|m~0_combout\ = (\SW[16]~input_o\ & ((\SW[13]~input_o\))) # (!\SW[16]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \mux2|mux1_4|m~0_combout\);

-- Location: LCCOMB_X59_Y83_N30
\mux2|mux1_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux1_4|m~1_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux2|mux1_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux1|mux1_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux1|mux1_4|m~0_combout\,
	datab => \mux2|mux1_4|m~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \mux2|mux1_4|m~1_combout\);

-- Location: LCCOMB_X59_Y83_N24
\mux2|mux1_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux2|mux1_4|m~2_combout\ = (\mux2|mux1_4|m~1_combout\) # ((\SW[17]~input_o\ & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux1_4|m~1_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \mux2|mux1_4|m~2_combout\);

-- Location: LCCOMB_X57_Y83_N24
\h2|dec_out[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h2|dec_out[1]~5_combout\ = (\mux2|mux2_4|m~2_combout\) # (\mux2|mux1_4|m~2_combout\ $ (((!\mux2|mux0_4|m~2_combout\ & !\mux2|mux0_4|m~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux0_4|m~2_combout\,
	datab => \mux2|mux2_4|m~2_combout\,
	datac => \mux2|mux1_4|m~2_combout\,
	datad => \mux2|mux0_4|m~1_combout\,
	combout => \h2|dec_out[1]~5_combout\);

-- Location: LCCOMB_X57_Y83_N18
\h2|dec_out[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h2|dec_out\(3) = (\mux2|mux0_4|m~2_combout\) # ((\mux2|mux2_4|m~2_combout\) # ((\mux2|mux1_4|m~2_combout\) # (\mux2|mux0_4|m~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux0_4|m~2_combout\,
	datab => \mux2|mux2_4|m~2_combout\,
	datac => \mux2|mux1_4|m~2_combout\,
	datad => \mux2|mux0_4|m~1_combout\,
	combout => \h2|dec_out\(3));

-- Location: LCCOMB_X57_Y83_N14
\h2|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h2|dec_out\(6) = (\mux2|mux2_4|m~1_combout\) # (((\SW[11]~input_o\ & \SW[17]~input_o\)) # (!\mux2|mux1_4|m~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|mux2_4|m~1_combout\,
	datab => \SW[11]~input_o\,
	datac => \mux2|mux1_4|m~2_combout\,
	datad => \SW[17]~input_o\,
	combout => \h2|dec_out\(6));

-- Location: LCCOMB_X58_Y83_N8
\mux4|mux2_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux2_4|m~1_combout\ = (\SW[16]~input_o\ & (\SW[11]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[11]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux4|mux2_4|m~1_combout\);

-- Location: LCCOMB_X58_Y83_N18
\mux3|mux2_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux3|mux2_4|m~0_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux4|mux2_4|m~1_combout\))) # (!\SW[15]~input_o\ & (\mux2|mux2_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux2|mux2_4|m~0_combout\,
	datac => \mux4|mux2_4|m~1_combout\,
	datad => \SW[17]~input_o\,
	combout => \mux3|mux2_4|m~0_combout\);

-- Location: LCCOMB_X55_Y83_N16
\mux3|mux2_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux3|mux2_4|m~1_combout\ = (\mux3|mux2_4|m~0_combout\) # ((\SW[8]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux3|mux2_4|m~0_combout\,
	datab => \SW[8]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux3|mux2_4|m~1_combout\);

-- Location: LCCOMB_X56_Y83_N0
\mux4|mux0_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux0_4|m~1_combout\ = (\SW[16]~input_o\ & ((\SW[9]~input_o\))) # (!\SW[16]~input_o\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \mux4|mux0_4|m~1_combout\);

-- Location: LCCOMB_X56_Y83_N26
\mux3|mux0_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux3|mux0_4|m~0_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\mux4|mux0_4|m~1_combout\)) # (!\SW[15]~input_o\ & ((\mux2|mux0_4|m~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \mux4|mux0_4|m~1_combout\,
	datac => \mux2|mux0_4|m~0_combout\,
	datad => \SW[15]~input_o\,
	combout => \mux3|mux0_4|m~0_combout\);

-- Location: LCCOMB_X55_Y83_N2
\h3|dec_out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h3|dec_out[3]~4_combout\ = (!\mux3|mux2_4|m~1_combout\ & (!\mux3|mux0_4|m~0_combout\ & ((!\SW[17]~input_o\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux3|mux2_4|m~1_combout\,
	datab => \mux3|mux0_4|m~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \h3|dec_out[3]~4_combout\);

-- Location: LCCOMB_X55_Y83_N12
\mux3|mux0_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux3|mux0_4|m~1_combout\ = (\SW[6]~input_o\ & \SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[6]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \mux3|mux0_4|m~1_combout\);

-- Location: LCCOMB_X59_Y83_N2
\mux4|mux1_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux1_4|m~1_combout\ = (\SW[16]~input_o\ & (\SW[10]~input_o\)) # (!\SW[16]~input_o\ & ((\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[16]~input_o\,
	combout => \mux4|mux1_4|m~1_combout\);

-- Location: LCCOMB_X59_Y83_N20
\mux3|mux1_4|m~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux3|mux1_4|m~0_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux4|mux1_4|m~1_combout\))) # (!\SW[15]~input_o\ & (\mux2|mux1_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux2|mux1_4|m~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \mux4|mux1_4|m~1_combout\,
	combout => \mux3|mux1_4|m~0_combout\);

-- Location: LCCOMB_X59_Y83_N6
\mux3|mux1_4|m~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux3|mux1_4|m~1_combout\ = (\mux3|mux1_4|m~0_combout\) # ((\SW[7]~input_o\ & \SW[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \mux3|mux1_4|m~0_combout\,
	combout => \mux3|mux1_4|m~1_combout\);

-- Location: LCCOMB_X55_Y83_N6
\h3|dec_out[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h3|dec_out[1]~5_combout\ = (\mux3|mux2_4|m~1_combout\) # (\mux3|mux1_4|m~1_combout\ $ (((!\mux3|mux0_4|m~1_combout\ & !\mux3|mux0_4|m~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux3|mux0_4|m~1_combout\,
	datab => \mux3|mux2_4|m~1_combout\,
	datac => \mux3|mux1_4|m~1_combout\,
	datad => \mux3|mux0_4|m~0_combout\,
	combout => \h3|dec_out[1]~5_combout\);

-- Location: LCCOMB_X55_Y83_N0
\h3|dec_out[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h3|dec_out\(3) = (\mux3|mux0_4|m~1_combout\) # ((\mux3|mux2_4|m~1_combout\) # ((\mux3|mux1_4|m~1_combout\) # (\mux3|mux0_4|m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux3|mux0_4|m~1_combout\,
	datab => \mux3|mux2_4|m~1_combout\,
	datac => \mux3|mux1_4|m~1_combout\,
	datad => \mux3|mux0_4|m~0_combout\,
	combout => \h3|dec_out\(3));

-- Location: LCCOMB_X55_Y83_N26
\h3|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h3|dec_out\(6) = (\mux3|mux2_4|m~0_combout\) # (((\SW[8]~input_o\ & \SW[17]~input_o\)) # (!\mux3|mux1_4|m~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux3|mux2_4|m~0_combout\,
	datab => \SW[8]~input_o\,
	datac => \mux3|mux1_4|m~1_combout\,
	datad => \SW[17]~input_o\,
	combout => \h3|dec_out\(6));

-- Location: LCCOMB_X56_Y83_N22
\mux4|mux0_4|m~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux0_4|m~3_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\mux4|mux0_4|m~0_combout\)) # (!\SW[15]~input_o\ & ((\mux4|mux0_4|m~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux0_4|m~0_combout\,
	datab => \mux4|mux0_4|m~1_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[15]~input_o\,
	combout => \mux4|mux0_4|m~3_combout\);

-- Location: LCCOMB_X58_Y83_N12
\mux4|mux2_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux2_4|m~2_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & ((\mux4|mux2_4|m~0_combout\))) # (!\SW[15]~input_o\ & (\mux4|mux2_4|m~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux4|mux2_4|m~1_combout\,
	datac => \mux4|mux2_4|m~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \mux4|mux2_4|m~2_combout\);

-- Location: LCCOMB_X59_Y83_N0
\mux4|mux2_4|m~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux2_4|m~3_combout\ = (\mux4|mux2_4|m~2_combout\) # ((\SW[17]~input_o\ & \SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux2_4|m~2_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \mux4|mux2_4|m~3_combout\);

-- Location: LCCOMB_X56_Y83_N12
\h4|dec_out[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h4|dec_out[3]~7_combout\ = (!\mux4|mux0_4|m~3_combout\ & (!\mux4|mux2_4|m~3_combout\ & ((!\SW[17]~input_o\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux0_4|m~3_combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[17]~input_o\,
	datad => \mux4|mux2_4|m~3_combout\,
	combout => \h4|dec_out[3]~7_combout\);

-- Location: LCCOMB_X59_Y83_N10
\mux4|mux1_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux1_4|m~2_combout\ = (!\SW[17]~input_o\ & ((\SW[15]~input_o\ & (\mux4|mux1_4|m~0_combout\)) # (!\SW[15]~input_o\ & ((\mux4|mux1_4|m~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[15]~input_o\,
	datab => \mux4|mux1_4|m~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \mux4|mux1_4|m~1_combout\,
	combout => \mux4|mux1_4|m~2_combout\);

-- Location: LCCOMB_X59_Y83_N12
\mux4|mux1_4|m~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux1_4|m~3_combout\ = (\mux4|mux1_4|m~2_combout\) # ((\SW[17]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux1_4|m~2_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \mux4|mux1_4|m~3_combout\);

-- Location: LCCOMB_X56_Y83_N28
\mux4|mux0_4|m~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mux4|mux0_4|m~2_combout\ = (\SW[17]~input_o\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \mux4|mux0_4|m~2_combout\);

-- Location: LCCOMB_X56_Y83_N24
\h4|dec_out[1]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h4|dec_out[1]~6_combout\ = (\mux4|mux2_4|m~3_combout\) # (\mux4|mux1_4|m~3_combout\ $ (((!\mux4|mux0_4|m~2_combout\ & !\mux4|mux0_4|m~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux1_4|m~3_combout\,
	datab => \mux4|mux0_4|m~2_combout\,
	datac => \mux4|mux0_4|m~3_combout\,
	datad => \mux4|mux2_4|m~3_combout\,
	combout => \h4|dec_out[1]~6_combout\);

-- Location: LCCOMB_X56_Y83_N18
\h4|dec_out[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h4|dec_out\(3) = (\mux4|mux1_4|m~3_combout\) # ((\mux4|mux0_4|m~2_combout\) # ((\mux4|mux0_4|m~3_combout\) # (\mux4|mux2_4|m~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux1_4|m~3_combout\,
	datab => \mux4|mux0_4|m~2_combout\,
	datac => \mux4|mux0_4|m~3_combout\,
	datad => \mux4|mux2_4|m~3_combout\,
	combout => \h4|dec_out\(3));

-- Location: LCCOMB_X59_Y83_N14
\h4|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \h4|dec_out\(6) = (\mux4|mux2_4|m~2_combout\) # (((\SW[17]~input_o\ & \SW[5]~input_o\)) # (!\mux4|mux1_4|m~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux4|mux2_4|m~2_combout\,
	datab => \mux4|mux1_4|m~3_combout\,
	datac => \SW[17]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \h4|dec_out\(6));

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;
END structure;


