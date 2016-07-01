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

-- DATE "07/01/2016 19:21:29"

-- 
-- Device: Altera EP4CGX150DF31C7 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exp9_Part1 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Exp9_Part1;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_N24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_K24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX7[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp9_Part1 IS
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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
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
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \input_data_ffd|Qm[0]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \address_ffd|Qm[0]~feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \address_ffd|Qm[3]~feeder_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \input_data_ffd|Qm[2]~feeder_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \input_data_ffd|Qm[4]~feeder_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \input_data_ffd|Qm[7]~feeder_combout\ : std_logic;
SIGNAL \dec_addr0|saida[0]~0_combout\ : std_logic;
SIGNAL \dec_addr0|saida[1]~1_combout\ : std_logic;
SIGNAL \dec_addr0|saida[2]~2_combout\ : std_logic;
SIGNAL \dec_addr0|saida[3]~3_combout\ : std_logic;
SIGNAL \dec_addr0|saida[4]~4_combout\ : std_logic;
SIGNAL \dec_addr0|saida[5]~5_combout\ : std_logic;
SIGNAL \dec_addr0|saida[6]~6_combout\ : std_logic;
SIGNAL \dec_addr1|saida[0]~0_combout\ : std_logic;
SIGNAL \dec_addr1|saida[1]~1_combout\ : std_logic;
SIGNAL \dec_addr1|saida[2]~2_combout\ : std_logic;
SIGNAL \dec_addr1|saida[3]~3_combout\ : std_logic;
SIGNAL \dec_addr1|saida[4]~4_combout\ : std_logic;
SIGNAL \dec_addr1|saida[5]~5_combout\ : std_logic;
SIGNAL \dec_addr1|saida[6]~6_combout\ : std_logic;
SIGNAL \dec_addr7|saida[0]~0_combout\ : std_logic;
SIGNAL \dec_addr7|saida[1]~1_combout\ : std_logic;
SIGNAL \dec_addr7|saida[2]~2_combout\ : std_logic;
SIGNAL \dec_addr7|saida[3]~3_combout\ : std_logic;
SIGNAL \dec_addr7|saida[4]~4_combout\ : std_logic;
SIGNAL \dec_addr7|saida[5]~5_combout\ : std_logic;
SIGNAL \dec_addr7|saida[6]~6_combout\ : std_logic;
SIGNAL \address_ffd|Qm\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \input_data_ffd|Qm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \wren_ffd|Qm\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \m9k|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dec_addr7|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \dec_addr7|ALT_INV_saida[2]~2_combout\ : std_logic;
SIGNAL \dec_addr1|ALT_INV_saida[6]~6_combout\ : std_logic;
SIGNAL \dec_addr0|ALT_INV_saida[6]~6_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \input_data_ffd|Qm\(7) & \input_data_ffd|Qm\(6) & \input_data_ffd|Qm\(5) & \input_data_ffd|Qm\(4) & 
\input_data_ffd|Qm\(3) & \input_data_ffd|Qm\(2) & \input_data_ffd|Qm\(1) & \input_data_ffd|Qm\(0));

\m9k|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address_ffd|Qm\(3) & \address_ffd|Qm\(2) & \address_ffd|Qm\(1) & \address_ffd|Qm\(0));

\m9k|altsyncram_component|auto_generated|q_a\(0) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\m9k|altsyncram_component|auto_generated|q_a\(1) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\m9k|altsyncram_component|auto_generated|q_a\(2) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\m9k|altsyncram_component|auto_generated|q_a\(3) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\m9k|altsyncram_component|auto_generated|q_a\(4) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\m9k|altsyncram_component|auto_generated|q_a\(5) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\m9k|altsyncram_component|auto_generated|q_a\(6) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\m9k|altsyncram_component|auto_generated|q_a\(7) <= \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\dec_addr7|ALT_INV_saida[6]~6_combout\ <= NOT \dec_addr7|saida[6]~6_combout\;
\dec_addr7|ALT_INV_saida[2]~2_combout\ <= NOT \dec_addr7|saida[2]~2_combout\;
\dec_addr1|ALT_INV_saida[6]~6_combout\ <= NOT \dec_addr1|saida[6]~6_combout\;
\dec_addr0|ALT_INV_saida[6]~6_combout\ <= NOT \dec_addr0|saida[6]~6_combout\;

-- Location: IOOBUF_X117_Y43_N2
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X117_Y43_N9
\LEDR[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X117_Y41_N9
\LEDR[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X117_Y36_N9
\LEDR[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X117_Y32_N2
\LEDR[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X117_Y44_N2
\LEDR[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X117_Y49_N2
\LEDR[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X117_Y44_N9
\LEDR[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X117_Y54_N2
\LEDR[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X117_Y55_N9
\LEDR[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X117_Y65_N2
\LEDR[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X117_Y59_N9
\LEDR[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X117_Y65_N9
\LEDR[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X117_Y58_N2
\LEDR[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X117_Y78_N2
\LEDR[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X117_Y68_N2
\LEDR[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X117_Y67_N2
\LEDR[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X117_Y67_N9
\LEDR[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X117_Y7_N9
\LEDG[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wren_ffd|Qm\(0),
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X117_Y7_N2
\LEDG[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X117_Y86_N9
\LEDG[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X117_Y86_N2
\LEDG[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X117_Y35_N2
\LEDG[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X117_Y22_N9
\LEDG[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X117_Y8_N9
\LEDG[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X117_Y22_N2
\LEDG[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X46_Y91_N2
\HEX0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr0|saida[0]~0_combout\,
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
	i => \dec_addr0|saida[1]~1_combout\,
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
	i => \dec_addr0|saida[2]~2_combout\,
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
	i => \dec_addr0|saida[3]~3_combout\,
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
	i => \dec_addr0|saida[4]~4_combout\,
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
	i => \dec_addr0|saida[5]~5_combout\,
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
	i => \dec_addr0|ALT_INV_saida[6]~6_combout\,
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
	i => \dec_addr1|saida[0]~0_combout\,
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
	i => \dec_addr1|saida[1]~1_combout\,
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
	i => \dec_addr1|saida[2]~2_combout\,
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
	i => \dec_addr1|saida[3]~3_combout\,
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
	i => \dec_addr1|saida[4]~4_combout\,
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
	i => \dec_addr1|saida[5]~5_combout\,
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
	i => \dec_addr1|ALT_INV_saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X19_Y91_N23
\HEX7[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X3_Y91_N9
\HEX7[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X15_Y91_N9
\HEX7[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|ALT_INV_saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X39_Y91_N23
\HEX7[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X32_Y91_N16
\HEX7[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X37_Y91_N16
\HEX7[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X37_Y91_N23
\HEX7[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_addr7|ALT_INV_saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X117_Y14_N1
\KEY[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

-- Location: IOIBUF_X117_Y10_N8
\KEY[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X111_Y11_N25
\wren_ffd|Qm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wren_ffd|Qm\(0));

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

-- Location: LCCOMB_X116_Y11_N12
\input_data_ffd|Qm[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \input_data_ffd|Qm[0]~feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \input_data_ffd|Qm[0]~feeder_combout\);

-- Location: FF_X116_Y11_N13
\input_data_ffd|Qm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \input_data_ffd|Qm[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(0));

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

-- Location: LCCOMB_X111_Y11_N4
\address_ffd|Qm[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_ffd|Qm[0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \address_ffd|Qm[0]~feeder_combout\);

-- Location: FF_X111_Y11_N5
\address_ffd|Qm[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \address_ffd|Qm[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ffd|Qm\(0));

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

-- Location: FF_X111_Y11_N31
\address_ffd|Qm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ffd|Qm\(1));

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

-- Location: FF_X111_Y11_N21
\address_ffd|Qm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ffd|Qm\(2));

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

-- Location: LCCOMB_X111_Y11_N2
\address_ffd|Qm[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \address_ffd|Qm[3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \address_ffd|Qm[3]~feeder_combout\);

-- Location: FF_X111_Y11_N3
\address_ffd|Qm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \address_ffd|Qm[3]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \address_ffd|Qm\(3));

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

-- Location: FF_X116_Y11_N23
\input_data_ffd|Qm[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(1));

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

-- Location: LCCOMB_X116_Y11_N20
\input_data_ffd|Qm[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \input_data_ffd|Qm[2]~feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \input_data_ffd|Qm[2]~feeder_combout\);

-- Location: FF_X116_Y11_N21
\input_data_ffd|Qm[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \input_data_ffd|Qm[2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(2));

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

-- Location: FF_X116_Y11_N19
\input_data_ffd|Qm[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[13]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(3));

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

-- Location: LCCOMB_X116_Y11_N8
\input_data_ffd|Qm[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \input_data_ffd|Qm[4]~feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \input_data_ffd|Qm[4]~feeder_combout\);

-- Location: FF_X116_Y11_N9
\input_data_ffd|Qm[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \input_data_ffd|Qm[4]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(4));

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

-- Location: FF_X116_Y11_N15
\input_data_ffd|Qm[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[15]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(5));

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

-- Location: FF_X116_Y11_N17
\input_data_ffd|Qm[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[16]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(6));

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

-- Location: LCCOMB_X116_Y11_N10
\input_data_ffd|Qm[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \input_data_ffd|Qm[7]~feeder_combout\ = \SW[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[17]~input_o\,
	combout => \input_data_ffd|Qm[7]~feeder_combout\);

-- Location: FF_X116_Y11_N11
\input_data_ffd|Qm[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \input_data_ffd|Qm[7]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_data_ffd|Qm\(7));

-- Location: M9K_X110_Y11_N0
\m9k|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ramlpm:m9k|altsyncram:altsyncram_component|altsyncram_nrp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wren_ffd|Qm\(0),
	portare => VCC,
	clk0 => \KEY[0]~input_o\,
	portadatain => \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \m9k|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y87_N8
\dec_addr0|saida[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[0]~0_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(3) & (\m9k|altsyncram_component|auto_generated|q_a\(0) & (\m9k|altsyncram_component|auto_generated|q_a\(1) $ (\m9k|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(3) & (!\m9k|altsyncram_component|auto_generated|q_a\(1) & (\m9k|altsyncram_component|auto_generated|q_a\(0) $ (\m9k|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[0]~0_combout\);

-- Location: LCCOMB_X54_Y87_N18
\dec_addr0|saida[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[1]~1_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(3) & ((\m9k|altsyncram_component|auto_generated|q_a\(0) & (\m9k|altsyncram_component|auto_generated|q_a\(1))) # (!\m9k|altsyncram_component|auto_generated|q_a\(0) & 
-- ((\m9k|altsyncram_component|auto_generated|q_a\(2)))))) # (!\m9k|altsyncram_component|auto_generated|q_a\(3) & (\m9k|altsyncram_component|auto_generated|q_a\(2) & (\m9k|altsyncram_component|auto_generated|q_a\(0) $ 
-- (\m9k|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[1]~1_combout\);

-- Location: LCCOMB_X54_Y87_N4
\dec_addr0|saida[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[2]~2_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(3) & (\m9k|altsyncram_component|auto_generated|q_a\(2) & ((\m9k|altsyncram_component|auto_generated|q_a\(1)) # (!\m9k|altsyncram_component|auto_generated|q_a\(0))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(3) & (!\m9k|altsyncram_component|auto_generated|q_a\(0) & (\m9k|altsyncram_component|auto_generated|q_a\(1) & !\m9k|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[2]~2_combout\);

-- Location: LCCOMB_X54_Y87_N10
\dec_addr0|saida[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[3]~3_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(1) & ((\m9k|altsyncram_component|auto_generated|q_a\(0) & ((\m9k|altsyncram_component|auto_generated|q_a\(2)))) # (!\m9k|altsyncram_component|auto_generated|q_a\(0) & 
-- (\m9k|altsyncram_component|auto_generated|q_a\(3) & !\m9k|altsyncram_component|auto_generated|q_a\(2))))) # (!\m9k|altsyncram_component|auto_generated|q_a\(1) & (!\m9k|altsyncram_component|auto_generated|q_a\(3) & 
-- (\m9k|altsyncram_component|auto_generated|q_a\(0) $ (\m9k|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[3]~3_combout\);

-- Location: LCCOMB_X54_Y87_N20
\dec_addr0|saida[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[4]~4_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(1) & (!\m9k|altsyncram_component|auto_generated|q_a\(3) & (\m9k|altsyncram_component|auto_generated|q_a\(0)))) # (!\m9k|altsyncram_component|auto_generated|q_a\(1) & 
-- ((\m9k|altsyncram_component|auto_generated|q_a\(2) & (!\m9k|altsyncram_component|auto_generated|q_a\(3))) # (!\m9k|altsyncram_component|auto_generated|q_a\(2) & ((\m9k|altsyncram_component|auto_generated|q_a\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[4]~4_combout\);

-- Location: LCCOMB_X54_Y87_N26
\dec_addr0|saida[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[5]~5_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(0) & (\m9k|altsyncram_component|auto_generated|q_a\(3) $ (((\m9k|altsyncram_component|auto_generated|q_a\(1)) # (!\m9k|altsyncram_component|auto_generated|q_a\(2)))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(0) & (!\m9k|altsyncram_component|auto_generated|q_a\(3) & (\m9k|altsyncram_component|auto_generated|q_a\(1) & !\m9k|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[5]~5_combout\);

-- Location: LCCOMB_X54_Y87_N12
\dec_addr0|saida[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr0|saida[6]~6_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(0) & ((\m9k|altsyncram_component|auto_generated|q_a\(3)) # (\m9k|altsyncram_component|auto_generated|q_a\(1) $ (\m9k|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(0) & ((\m9k|altsyncram_component|auto_generated|q_a\(1)) # (\m9k|altsyncram_component|auto_generated|q_a\(3) $ (\m9k|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(3),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(0),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(1),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(2),
	combout => \dec_addr0|saida[6]~6_combout\);

-- Location: LCCOMB_X50_Y87_N16
\dec_addr1|saida[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[0]~0_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(6) & (!\m9k|altsyncram_component|auto_generated|q_a\(5) & (\m9k|altsyncram_component|auto_generated|q_a\(7) $ (!\m9k|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(6) & (\m9k|altsyncram_component|auto_generated|q_a\(4) & (\m9k|altsyncram_component|auto_generated|q_a\(7) $ (!\m9k|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[0]~0_combout\);

-- Location: LCCOMB_X50_Y87_N26
\dec_addr1|saida[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[1]~1_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(7) & ((\m9k|altsyncram_component|auto_generated|q_a\(4) & ((\m9k|altsyncram_component|auto_generated|q_a\(5)))) # (!\m9k|altsyncram_component|auto_generated|q_a\(4) & 
-- (\m9k|altsyncram_component|auto_generated|q_a\(6))))) # (!\m9k|altsyncram_component|auto_generated|q_a\(7) & (\m9k|altsyncram_component|auto_generated|q_a\(6) & (\m9k|altsyncram_component|auto_generated|q_a\(5) $ 
-- (\m9k|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[1]~1_combout\);

-- Location: LCCOMB_X50_Y87_N4
\dec_addr1|saida[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[2]~2_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(6) & (\m9k|altsyncram_component|auto_generated|q_a\(7) & ((\m9k|altsyncram_component|auto_generated|q_a\(5)) # (!\m9k|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(6) & (!\m9k|altsyncram_component|auto_generated|q_a\(7) & (\m9k|altsyncram_component|auto_generated|q_a\(5) & !\m9k|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[2]~2_combout\);

-- Location: LCCOMB_X50_Y87_N10
\dec_addr1|saida[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[3]~3_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(5) & ((\m9k|altsyncram_component|auto_generated|q_a\(6) & ((\m9k|altsyncram_component|auto_generated|q_a\(4)))) # (!\m9k|altsyncram_component|auto_generated|q_a\(6) & 
-- (\m9k|altsyncram_component|auto_generated|q_a\(7) & !\m9k|altsyncram_component|auto_generated|q_a\(4))))) # (!\m9k|altsyncram_component|auto_generated|q_a\(5) & (!\m9k|altsyncram_component|auto_generated|q_a\(7) & 
-- (\m9k|altsyncram_component|auto_generated|q_a\(6) $ (\m9k|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[3]~3_combout\);

-- Location: LCCOMB_X50_Y87_N28
\dec_addr1|saida[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[4]~4_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(5) & (((!\m9k|altsyncram_component|auto_generated|q_a\(7) & \m9k|altsyncram_component|auto_generated|q_a\(4))))) # (!\m9k|altsyncram_component|auto_generated|q_a\(5) & 
-- ((\m9k|altsyncram_component|auto_generated|q_a\(6) & (!\m9k|altsyncram_component|auto_generated|q_a\(7))) # (!\m9k|altsyncram_component|auto_generated|q_a\(6) & ((\m9k|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[4]~4_combout\);

-- Location: LCCOMB_X50_Y87_N14
\dec_addr1|saida[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[5]~5_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(6) & (\m9k|altsyncram_component|auto_generated|q_a\(4) & (\m9k|altsyncram_component|auto_generated|q_a\(7) $ (\m9k|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(6) & (!\m9k|altsyncram_component|auto_generated|q_a\(7) & ((\m9k|altsyncram_component|auto_generated|q_a\(5)) # (\m9k|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[5]~5_combout\);

-- Location: LCCOMB_X50_Y87_N24
\dec_addr1|saida[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr1|saida[6]~6_combout\ = (\m9k|altsyncram_component|auto_generated|q_a\(4) & ((\m9k|altsyncram_component|auto_generated|q_a\(7)) # (\m9k|altsyncram_component|auto_generated|q_a\(6) $ (\m9k|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\m9k|altsyncram_component|auto_generated|q_a\(4) & ((\m9k|altsyncram_component|auto_generated|q_a\(5)) # (\m9k|altsyncram_component|auto_generated|q_a\(6) $ (\m9k|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m9k|altsyncram_component|auto_generated|q_a\(6),
	datab => \m9k|altsyncram_component|auto_generated|q_a\(7),
	datac => \m9k|altsyncram_component|auto_generated|q_a\(5),
	datad => \m9k|altsyncram_component|auto_generated|q_a\(4),
	combout => \dec_addr1|saida[6]~6_combout\);

-- Location: LCCOMB_X109_Y11_N16
\dec_addr7|saida[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[0]~0_combout\ = (\address_ffd|Qm\(3) & (\address_ffd|Qm\(0) & (\address_ffd|Qm\(1) $ (\address_ffd|Qm\(2))))) # (!\address_ffd|Qm\(3) & (!\address_ffd|Qm\(1) & (\address_ffd|Qm\(0) $ (\address_ffd|Qm\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[0]~0_combout\);

-- Location: LCCOMB_X109_Y11_N22
\dec_addr7|saida[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[1]~1_combout\ = (\address_ffd|Qm\(1) & ((\address_ffd|Qm\(0) & (\address_ffd|Qm\(3))) # (!\address_ffd|Qm\(0) & ((\address_ffd|Qm\(2)))))) # (!\address_ffd|Qm\(1) & (\address_ffd|Qm\(2) & (\address_ffd|Qm\(0) $ (\address_ffd|Qm\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[1]~1_combout\);

-- Location: LCCOMB_X109_Y11_N12
\dec_addr7|saida[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[2]~2_combout\ = (\address_ffd|Qm\(3) & (((\address_ffd|Qm\(0) & !\address_ffd|Qm\(1))) # (!\address_ffd|Qm\(2)))) # (!\address_ffd|Qm\(3) & ((\address_ffd|Qm\(0)) # ((\address_ffd|Qm\(2)) # (!\address_ffd|Qm\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[2]~2_combout\);

-- Location: LCCOMB_X109_Y11_N2
\dec_addr7|saida[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[3]~3_combout\ = (\address_ffd|Qm\(1) & ((\address_ffd|Qm\(0) & ((\address_ffd|Qm\(2)))) # (!\address_ffd|Qm\(0) & (\address_ffd|Qm\(3) & !\address_ffd|Qm\(2))))) # (!\address_ffd|Qm\(1) & (!\address_ffd|Qm\(3) & (\address_ffd|Qm\(0) $ 
-- (\address_ffd|Qm\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[3]~3_combout\);

-- Location: LCCOMB_X109_Y11_N4
\dec_addr7|saida[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[4]~4_combout\ = (\address_ffd|Qm\(1) & (\address_ffd|Qm\(0) & (!\address_ffd|Qm\(3)))) # (!\address_ffd|Qm\(1) & ((\address_ffd|Qm\(2) & ((!\address_ffd|Qm\(3)))) # (!\address_ffd|Qm\(2) & (\address_ffd|Qm\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[4]~4_combout\);

-- Location: LCCOMB_X109_Y11_N10
\dec_addr7|saida[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[5]~5_combout\ = (\address_ffd|Qm\(0) & (\address_ffd|Qm\(3) $ (((\address_ffd|Qm\(1)) # (!\address_ffd|Qm\(2)))))) # (!\address_ffd|Qm\(0) & (\address_ffd|Qm\(1) & (!\address_ffd|Qm\(3) & !\address_ffd|Qm\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[5]~5_combout\);

-- Location: LCCOMB_X109_Y11_N20
\dec_addr7|saida[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_addr7|saida[6]~6_combout\ = (\address_ffd|Qm\(0) & ((\address_ffd|Qm\(3)) # (\address_ffd|Qm\(1) $ (\address_ffd|Qm\(2))))) # (!\address_ffd|Qm\(0) & ((\address_ffd|Qm\(1)) # (\address_ffd|Qm\(3) $ (\address_ffd|Qm\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_ffd|Qm\(0),
	datab => \address_ffd|Qm\(1),
	datac => \address_ffd|Qm\(3),
	datad => \address_ffd|Qm\(2),
	combout => \dec_addr7|saida[6]~6_combout\);

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

-- Location: IOIBUF_X57_Y0_N8
\CLOCK_50~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

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

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


