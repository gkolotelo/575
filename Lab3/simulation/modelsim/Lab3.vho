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

-- DATE "04/01/2016 19:34:59"

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

ENTITY 	Exp3e IS
    PORT (
	SW : IN std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Exp3e;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- HEX5[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp3e IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \dec_B_0|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_B_0|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_B_0|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_B_0|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_B_0|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_B_0|dec_out[5]~5_combout\ : std_logic;
SIGNAL \dec_B_0|dec_out[6]~6_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \dec_B_1|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_B_1|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_B_1|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_B_1|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_B_1|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_B_1|dec_out[5]~5_combout\ : std_logic;
SIGNAL \dec_B_1|dec_out[6]~6_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \dec_B_2|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_B_2|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_B_2|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_B_2|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_B_2|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_B_2|dec_out[5]~5_combout\ : std_logic;
SIGNAL \dec_B_2|dec_out[6]~6_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \dec_B_3|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_B_3|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_B_3|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_B_3|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_B_3|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_B_3|dec_out[5]~5_combout\ : std_logic;
SIGNAL \dec_B_3|dec_out[6]~6_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \GEN_ffd:2:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:1:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:0:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:3:ffd|Qm~q\ : std_logic;
SIGNAL \dec_A_0|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_A_0|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_A_0|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_A_0|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_A_0|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_A_0|dec_out[5]~5_combout\ : std_logic;
SIGNAL \GEN_ffd:6:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:7:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:4:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:5:ffd|Qm~q\ : std_logic;
SIGNAL \dec_A_1|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_A_1|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_A_1|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_A_1|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_A_1|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_A_1|dec_out[5]~5_combout\ : std_logic;
SIGNAL \GEN_ffd:11:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:10:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:8:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:9:ffd|Qm~q\ : std_logic;
SIGNAL \dec_A_2|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_A_2|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_A_2|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_A_2|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_A_2|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_A_2|dec_out[5]~5_combout\ : std_logic;
SIGNAL \GEN_ffd:12:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:15:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:13:ffd|Qm~q\ : std_logic;
SIGNAL \GEN_ffd:14:ffd|Qm~q\ : std_logic;
SIGNAL \dec_A_3|dec_out[0]~0_combout\ : std_logic;
SIGNAL \dec_A_3|dec_out[1]~1_combout\ : std_logic;
SIGNAL \dec_A_3|dec_out[2]~2_combout\ : std_logic;
SIGNAL \dec_A_3|dec_out[3]~3_combout\ : std_logic;
SIGNAL \dec_A_3|dec_out[4]~4_combout\ : std_logic;
SIGNAL \dec_A_3|dec_out[5]~5_combout\ : std_logic;
SIGNAL \dec_A_3|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dec_A_0|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dec_A_2|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \dec_A_1|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: IOOBUF_X46_Y91_N2
\HEX0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_B_0|dec_out[0]~0_combout\,
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
	i => \dec_B_0|dec_out[1]~1_combout\,
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
	i => \dec_B_0|dec_out[2]~2_combout\,
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
	i => \dec_B_0|dec_out[3]~3_combout\,
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
	i => \dec_B_0|dec_out[4]~4_combout\,
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
	i => \dec_B_0|dec_out[5]~5_combout\,
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
	i => \dec_B_0|dec_out[6]~6_combout\,
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
	i => \dec_B_1|dec_out[0]~0_combout\,
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
	i => \dec_B_1|dec_out[1]~1_combout\,
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
	i => \dec_B_1|dec_out[2]~2_combout\,
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
	i => \dec_B_1|dec_out[3]~3_combout\,
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
	i => \dec_B_1|dec_out[4]~4_combout\,
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
	i => \dec_B_1|dec_out[5]~5_combout\,
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
	i => \dec_B_1|dec_out[6]~6_combout\,
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
	i => \dec_B_2|dec_out[0]~0_combout\,
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
	i => \dec_B_2|dec_out[1]~1_combout\,
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
	i => \dec_B_2|dec_out[2]~2_combout\,
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
	i => \dec_B_2|dec_out[3]~3_combout\,
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
	i => \dec_B_2|dec_out[4]~4_combout\,
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
	i => \dec_B_2|dec_out[5]~5_combout\,
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
	i => \dec_B_2|dec_out[6]~6_combout\,
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
	i => \dec_B_3|dec_out[0]~0_combout\,
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
	i => \dec_B_3|dec_out[1]~1_combout\,
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
	i => \dec_B_3|dec_out[2]~2_combout\,
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
	i => \dec_B_3|dec_out[3]~3_combout\,
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
	i => \dec_B_3|dec_out[4]~4_combout\,
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
	i => \dec_B_3|dec_out[5]~5_combout\,
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
	i => \dec_B_3|dec_out[6]~6_combout\,
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
	i => \dec_A_0|dec_out[0]~0_combout\,
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
	i => \dec_A_0|dec_out[1]~1_combout\,
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
	i => \dec_A_0|dec_out[2]~2_combout\,
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
	i => \dec_A_0|dec_out[3]~3_combout\,
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
	i => \dec_A_0|dec_out[4]~4_combout\,
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
	i => \dec_A_0|dec_out[5]~5_combout\,
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
	i => \dec_A_0|dec_out\(6),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X19_Y91_N9
\HEX5[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X44_Y91_N16
\HEX5[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X34_Y91_N16
\HEX5[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X32_Y91_N2
\HEX5[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X30_Y91_N16
\HEX5[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X44_Y91_N23
\HEX5[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X32_Y91_N9
\HEX5[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_1|dec_out\(6),
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X34_Y91_N23
\HEX6[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X39_Y91_N16
\HEX6[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X17_Y91_N16
\HEX6[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X17_Y91_N2
\HEX6[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X5_Y91_N2
\HEX6[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X17_Y91_N9
\HEX6[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X15_Y91_N2
\HEX6[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_2|dec_out\(6),
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X19_Y91_N23
\HEX7[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec_A_3|dec_out[0]~0_combout\,
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
	i => \dec_A_3|dec_out[1]~1_combout\,
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
	i => \dec_A_3|dec_out[2]~2_combout\,
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
	i => \dec_A_3|dec_out[3]~3_combout\,
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
	i => \dec_A_3|dec_out[4]~4_combout\,
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
	i => \dec_A_3|dec_out[5]~5_combout\,
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
	i => \dec_A_3|dec_out\(6),
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: LCCOMB_X47_Y87_N16
\dec_B_0|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[0]~0_combout\ = (\SW[3]~input_o\ & (\SW[0]~input_o\ & (\SW[2]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[0]~0_combout\);

-- Location: LCCOMB_X47_Y87_N10
\dec_B_0|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[1]~1_combout\ = (\SW[3]~input_o\ & ((\SW[0]~input_o\ & ((\SW[1]~input_o\))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[0]~input_o\ $ (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[1]~1_combout\);

-- Location: LCCOMB_X47_Y87_N20
\dec_B_0|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[2]~2_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[2]~2_combout\);

-- Location: LCCOMB_X47_Y87_N22
\dec_B_0|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[3]~3_combout\ = (\SW[0]~input_o\ & ((\SW[2]~input_o\ $ (!\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[3]~input_o\ & (!\SW[2]~input_o\ & \SW[1]~input_o\)) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[3]~3_combout\);

-- Location: LCCOMB_X47_Y87_N8
\dec_B_0|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[4]~4_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[0]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[4]~4_combout\);

-- Location: LCCOMB_X47_Y87_N18
\dec_B_0|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[5]~5_combout\ = (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (((\SW[1]~input_o\) # (!\SW[2]~input_o\))))) # (!\SW[0]~input_o\ & (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[5]~5_combout\);

-- Location: LCCOMB_X47_Y87_N12
\dec_B_0|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_0|dec_out[6]~6_combout\ = (\SW[0]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \dec_B_0|dec_out[6]~6_combout\);

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

-- Location: LCCOMB_X44_Y90_N0
\dec_B_1|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[0]~0_combout\ = (\SW[6]~input_o\ & (!\SW[5]~input_o\ & (\SW[4]~input_o\ $ (!\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[7]~input_o\ $ (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \dec_B_1|dec_out[0]~0_combout\);

-- Location: LCCOMB_X44_Y90_N26
\dec_B_1|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[1]~1_combout\ = (\SW[5]~input_o\ & ((\SW[4]~input_o\ & (\SW[7]~input_o\)) # (!\SW[4]~input_o\ & ((\SW[6]~input_o\))))) # (!\SW[5]~input_o\ & (\SW[6]~input_o\ & (\SW[4]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \dec_B_1|dec_out[1]~1_combout\);

-- Location: LCCOMB_X44_Y90_N28
\dec_B_1|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[2]~2_combout\ = (\SW[6]~input_o\ & (\SW[7]~input_o\ & ((\SW[5]~input_o\) # (!\SW[4]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[4]~input_o\ & (!\SW[7]~input_o\ & \SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \dec_B_1|dec_out[2]~2_combout\);

-- Location: LCCOMB_X44_Y90_N6
\dec_B_1|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[3]~3_combout\ = (\SW[4]~input_o\ & (\SW[5]~input_o\ $ (((!\SW[6]~input_o\))))) # (!\SW[4]~input_o\ & ((\SW[5]~input_o\ & (\SW[7]~input_o\ & !\SW[6]~input_o\)) # (!\SW[5]~input_o\ & (!\SW[7]~input_o\ & \SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \dec_B_1|dec_out[3]~3_combout\);

-- Location: LCCOMB_X44_Y90_N8
\dec_B_1|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[4]~4_combout\ = (\SW[5]~input_o\ & (\SW[4]~input_o\ & (!\SW[7]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[6]~input_o\ & ((!\SW[7]~input_o\))) # (!\SW[6]~input_o\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[6]~input_o\,
	combout => \dec_B_1|dec_out[4]~4_combout\);

-- Location: LCCOMB_X44_Y90_N2
\dec_B_1|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[5]~5_combout\ = (\SW[6]~input_o\ & (\SW[4]~input_o\ & (\SW[7]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[6]~input_o\ & (!\SW[7]~input_o\ & ((\SW[4]~input_o\) # (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \dec_B_1|dec_out[5]~5_combout\);

-- Location: LCCOMB_X44_Y90_N20
\dec_B_1|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_1|dec_out[6]~6_combout\ = (\SW[4]~input_o\ & (!\SW[7]~input_o\ & (\SW[6]~input_o\ $ (!\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & (\SW[6]~input_o\ $ (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \dec_B_1|dec_out[6]~6_combout\);

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

-- Location: LCCOMB_X25_Y87_N8
\dec_B_2|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[0]~0_combout\ = (\SW[10]~input_o\ & (!\SW[9]~input_o\ & (\SW[11]~input_o\ $ (!\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[8]~input_o\ & (\SW[9]~input_o\ $ (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[0]~0_combout\);

-- Location: LCCOMB_X25_Y87_N10
\dec_B_2|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[1]~1_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\SW[11]~input_o\))) # (!\SW[8]~input_o\ & (\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[10]~input_o\ & (\SW[11]~input_o\ $ (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[1]~1_combout\);

-- Location: LCCOMB_X25_Y87_N12
\dec_B_2|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[2]~2_combout\ = (\SW[10]~input_o\ & (\SW[11]~input_o\ & ((\SW[9]~input_o\) # (!\SW[8]~input_o\)))) # (!\SW[10]~input_o\ & (\SW[9]~input_o\ & (!\SW[11]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[2]~2_combout\);

-- Location: LCCOMB_X25_Y87_N14
\dec_B_2|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[3]~3_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\ $ ((!\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (!\SW[10]~input_o\ & \SW[11]~input_o\)) # (!\SW[9]~input_o\ & (\SW[10]~input_o\ & !\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[3]~3_combout\);

-- Location: LCCOMB_X25_Y87_N16
\dec_B_2|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[4]~4_combout\ = (\SW[9]~input_o\ & (((!\SW[11]~input_o\ & \SW[8]~input_o\)))) # (!\SW[9]~input_o\ & ((\SW[10]~input_o\ & (!\SW[11]~input_o\)) # (!\SW[10]~input_o\ & ((\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[4]~4_combout\);

-- Location: LCCOMB_X25_Y87_N26
\dec_B_2|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[5]~5_combout\ = (\SW[9]~input_o\ & (!\SW[11]~input_o\ & ((\SW[8]~input_o\) # (!\SW[10]~input_o\)))) # (!\SW[9]~input_o\ & (\SW[8]~input_o\ & (\SW[10]~input_o\ $ (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[5]~5_combout\);

-- Location: LCCOMB_X25_Y87_N20
\dec_B_2|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_2|dec_out[6]~6_combout\ = (\SW[8]~input_o\ & (!\SW[11]~input_o\ & (\SW[9]~input_o\ $ (!\SW[10]~input_o\)))) # (!\SW[8]~input_o\ & (!\SW[9]~input_o\ & (\SW[10]~input_o\ $ (!\SW[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \dec_B_2|dec_out[6]~6_combout\);

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

-- Location: LCCOMB_X30_Y88_N0
\dec_B_3|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[0]~0_combout\ = (\SW[15]~input_o\ & (\SW[12]~input_o\ & (\SW[13]~input_o\ $ (\SW[14]~input_o\)))) # (!\SW[15]~input_o\ & (!\SW[13]~input_o\ & (\SW[12]~input_o\ $ (\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[0]~0_combout\);

-- Location: LCCOMB_X30_Y88_N10
\dec_B_3|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[1]~1_combout\ = (\SW[15]~input_o\ & ((\SW[12]~input_o\ & (\SW[13]~input_o\)) # (!\SW[12]~input_o\ & ((\SW[14]~input_o\))))) # (!\SW[15]~input_o\ & (\SW[14]~input_o\ & (\SW[12]~input_o\ $ (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[1]~1_combout\);

-- Location: LCCOMB_X30_Y88_N12
\dec_B_3|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[2]~2_combout\ = (\SW[15]~input_o\ & (\SW[14]~input_o\ & ((\SW[13]~input_o\) # (!\SW[12]~input_o\)))) # (!\SW[15]~input_o\ & (!\SW[12]~input_o\ & (\SW[13]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[2]~2_combout\);

-- Location: LCCOMB_X30_Y88_N30
\dec_B_3|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[3]~3_combout\ = (\SW[12]~input_o\ & ((\SW[13]~input_o\ $ (!\SW[14]~input_o\)))) # (!\SW[12]~input_o\ & ((\SW[15]~input_o\ & (\SW[13]~input_o\ & !\SW[14]~input_o\)) # (!\SW[15]~input_o\ & (!\SW[13]~input_o\ & \SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[3]~3_combout\);

-- Location: LCCOMB_X30_Y88_N16
\dec_B_3|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[4]~4_combout\ = (\SW[13]~input_o\ & (\SW[12]~input_o\ & (!\SW[15]~input_o\))) # (!\SW[13]~input_o\ & ((\SW[14]~input_o\ & ((!\SW[15]~input_o\))) # (!\SW[14]~input_o\ & (\SW[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[4]~4_combout\);

-- Location: LCCOMB_X30_Y88_N26
\dec_B_3|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[5]~5_combout\ = (\SW[12]~input_o\ & (\SW[15]~input_o\ $ (((\SW[13]~input_o\) # (!\SW[14]~input_o\))))) # (!\SW[12]~input_o\ & (!\SW[15]~input_o\ & (\SW[13]~input_o\ & !\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[5]~5_combout\);

-- Location: LCCOMB_X30_Y88_N28
\dec_B_3|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_B_3|dec_out[6]~6_combout\ = (\SW[12]~input_o\ & (!\SW[15]~input_o\ & (\SW[13]~input_o\ $ (!\SW[14]~input_o\)))) # (!\SW[12]~input_o\ & (!\SW[13]~input_o\ & (\SW[15]~input_o\ $ (!\SW[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \SW[15]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \dec_B_3|dec_out[6]~6_combout\);

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

-- Location: IOIBUF_X117_Y8_N1
\KEY[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: FF_X47_Y87_N27
\GEN_ffd:2:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:2:ffd|Qm~q\);

-- Location: FF_X47_Y87_N29
\GEN_ffd:1:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:1:ffd|Qm~q\);

-- Location: FF_X47_Y87_N31
\GEN_ffd:0:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:0:ffd|Qm~q\);

-- Location: FF_X47_Y87_N25
\GEN_ffd:3:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:3:ffd|Qm~q\);

-- Location: LCCOMB_X47_Y87_N14
\dec_A_0|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out[0]~0_combout\ = (\GEN_ffd:2:ffd|Qm~q\ & (!\GEN_ffd:1:ffd|Qm~q\ & (\GEN_ffd:0:ffd|Qm~q\ $ (!\GEN_ffd:3:ffd|Qm~q\)))) # (!\GEN_ffd:2:ffd|Qm~q\ & (\GEN_ffd:0:ffd|Qm~q\ & (\GEN_ffd:1:ffd|Qm~q\ $ (!\GEN_ffd:3:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:2:ffd|Qm~q\,
	datab => \GEN_ffd:1:ffd|Qm~q\,
	datac => \GEN_ffd:0:ffd|Qm~q\,
	datad => \GEN_ffd:3:ffd|Qm~q\,
	combout => \dec_A_0|dec_out[0]~0_combout\);

-- Location: LCCOMB_X47_Y87_N0
\dec_A_0|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out[1]~1_combout\ = (\GEN_ffd:1:ffd|Qm~q\ & ((\GEN_ffd:0:ffd|Qm~q\ & ((\GEN_ffd:3:ffd|Qm~q\))) # (!\GEN_ffd:0:ffd|Qm~q\ & (\GEN_ffd:2:ffd|Qm~q\)))) # (!\GEN_ffd:1:ffd|Qm~q\ & (\GEN_ffd:2:ffd|Qm~q\ & (\GEN_ffd:0:ffd|Qm~q\ $ 
-- (\GEN_ffd:3:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:2:ffd|Qm~q\,
	datab => \GEN_ffd:1:ffd|Qm~q\,
	datac => \GEN_ffd:0:ffd|Qm~q\,
	datad => \GEN_ffd:3:ffd|Qm~q\,
	combout => \dec_A_0|dec_out[1]~1_combout\);

-- Location: LCCOMB_X47_Y87_N2
\dec_A_0|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out[2]~2_combout\ = (\GEN_ffd:2:ffd|Qm~q\ & (\GEN_ffd:3:ffd|Qm~q\ & ((\GEN_ffd:1:ffd|Qm~q\) # (!\GEN_ffd:0:ffd|Qm~q\)))) # (!\GEN_ffd:2:ffd|Qm~q\ & (\GEN_ffd:1:ffd|Qm~q\ & (!\GEN_ffd:0:ffd|Qm~q\ & !\GEN_ffd:3:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:2:ffd|Qm~q\,
	datab => \GEN_ffd:1:ffd|Qm~q\,
	datac => \GEN_ffd:0:ffd|Qm~q\,
	datad => \GEN_ffd:3:ffd|Qm~q\,
	combout => \dec_A_0|dec_out[2]~2_combout\);

-- Location: LCCOMB_X47_Y87_N30
\dec_A_0|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out[3]~3_combout\ = (\GEN_ffd:0:ffd|Qm~q\ & (\GEN_ffd:2:ffd|Qm~q\ $ ((!\GEN_ffd:1:ffd|Qm~q\)))) # (!\GEN_ffd:0:ffd|Qm~q\ & ((\GEN_ffd:2:ffd|Qm~q\ & (!\GEN_ffd:1:ffd|Qm~q\ & !\GEN_ffd:3:ffd|Qm~q\)) # (!\GEN_ffd:2:ffd|Qm~q\ & 
-- (\GEN_ffd:1:ffd|Qm~q\ & \GEN_ffd:3:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:2:ffd|Qm~q\,
	datab => \GEN_ffd:1:ffd|Qm~q\,
	datac => \GEN_ffd:0:ffd|Qm~q\,
	datad => \GEN_ffd:3:ffd|Qm~q\,
	combout => \dec_A_0|dec_out[3]~3_combout\);

-- Location: LCCOMB_X47_Y87_N24
\dec_A_0|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out[4]~4_combout\ = (\GEN_ffd:1:ffd|Qm~q\ & (\GEN_ffd:0:ffd|Qm~q\ & ((!\GEN_ffd:3:ffd|Qm~q\)))) # (!\GEN_ffd:1:ffd|Qm~q\ & ((\GEN_ffd:2:ffd|Qm~q\ & ((!\GEN_ffd:3:ffd|Qm~q\))) # (!\GEN_ffd:2:ffd|Qm~q\ & (\GEN_ffd:0:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:0:ffd|Qm~q\,
	datab => \GEN_ffd:2:ffd|Qm~q\,
	datac => \GEN_ffd:3:ffd|Qm~q\,
	datad => \GEN_ffd:1:ffd|Qm~q\,
	combout => \dec_A_0|dec_out[4]~4_combout\);

-- Location: LCCOMB_X47_Y87_N26
\dec_A_0|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out[5]~5_combout\ = (\GEN_ffd:0:ffd|Qm~q\ & (\GEN_ffd:3:ffd|Qm~q\ $ (((\GEN_ffd:1:ffd|Qm~q\) # (!\GEN_ffd:2:ffd|Qm~q\))))) # (!\GEN_ffd:0:ffd|Qm~q\ & (\GEN_ffd:1:ffd|Qm~q\ & (!\GEN_ffd:2:ffd|Qm~q\ & !\GEN_ffd:3:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:0:ffd|Qm~q\,
	datab => \GEN_ffd:1:ffd|Qm~q\,
	datac => \GEN_ffd:2:ffd|Qm~q\,
	datad => \GEN_ffd:3:ffd|Qm~q\,
	combout => \dec_A_0|dec_out[5]~5_combout\);

-- Location: LCCOMB_X47_Y87_N28
\dec_A_0|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_0|dec_out\(6) = (\GEN_ffd:0:ffd|Qm~q\ & (!\GEN_ffd:3:ffd|Qm~q\ & (\GEN_ffd:2:ffd|Qm~q\ $ (!\GEN_ffd:1:ffd|Qm~q\)))) # (!\GEN_ffd:0:ffd|Qm~q\ & (!\GEN_ffd:1:ffd|Qm~q\ & (\GEN_ffd:2:ffd|Qm~q\ $ (!\GEN_ffd:3:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:0:ffd|Qm~q\,
	datab => \GEN_ffd:2:ffd|Qm~q\,
	datac => \GEN_ffd:1:ffd|Qm~q\,
	datad => \GEN_ffd:3:ffd|Qm~q\,
	combout => \dec_A_0|dec_out\(6));

-- Location: FF_X44_Y90_N11
\GEN_ffd:6:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:6:ffd|Qm~q\);

-- Location: FF_X44_Y90_N25
\GEN_ffd:7:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:7:ffd|Qm~q\);

-- Location: FF_X44_Y90_N23
\GEN_ffd:4:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:4:ffd|Qm~q\);

-- Location: FF_X44_Y90_N13
\GEN_ffd:5:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:5:ffd|Qm~q\);

-- Location: LCCOMB_X44_Y90_N30
\dec_A_1|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out[0]~0_combout\ = (\GEN_ffd:6:ffd|Qm~q\ & (!\GEN_ffd:5:ffd|Qm~q\ & (\GEN_ffd:7:ffd|Qm~q\ $ (!\GEN_ffd:4:ffd|Qm~q\)))) # (!\GEN_ffd:6:ffd|Qm~q\ & (\GEN_ffd:4:ffd|Qm~q\ & (\GEN_ffd:7:ffd|Qm~q\ $ (!\GEN_ffd:5:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:6:ffd|Qm~q\,
	datab => \GEN_ffd:7:ffd|Qm~q\,
	datac => \GEN_ffd:4:ffd|Qm~q\,
	datad => \GEN_ffd:5:ffd|Qm~q\,
	combout => \dec_A_1|dec_out[0]~0_combout\);

-- Location: LCCOMB_X44_Y90_N16
\dec_A_1|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out[1]~1_combout\ = (\GEN_ffd:7:ffd|Qm~q\ & ((\GEN_ffd:4:ffd|Qm~q\ & ((\GEN_ffd:5:ffd|Qm~q\))) # (!\GEN_ffd:4:ffd|Qm~q\ & (\GEN_ffd:6:ffd|Qm~q\)))) # (!\GEN_ffd:7:ffd|Qm~q\ & (\GEN_ffd:6:ffd|Qm~q\ & (\GEN_ffd:4:ffd|Qm~q\ $ 
-- (\GEN_ffd:5:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:6:ffd|Qm~q\,
	datab => \GEN_ffd:7:ffd|Qm~q\,
	datac => \GEN_ffd:4:ffd|Qm~q\,
	datad => \GEN_ffd:5:ffd|Qm~q\,
	combout => \dec_A_1|dec_out[1]~1_combout\);

-- Location: LCCOMB_X44_Y90_N18
\dec_A_1|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out[2]~2_combout\ = (\GEN_ffd:6:ffd|Qm~q\ & (\GEN_ffd:7:ffd|Qm~q\ & ((\GEN_ffd:5:ffd|Qm~q\) # (!\GEN_ffd:4:ffd|Qm~q\)))) # (!\GEN_ffd:6:ffd|Qm~q\ & (!\GEN_ffd:7:ffd|Qm~q\ & (!\GEN_ffd:4:ffd|Qm~q\ & \GEN_ffd:5:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:6:ffd|Qm~q\,
	datab => \GEN_ffd:7:ffd|Qm~q\,
	datac => \GEN_ffd:4:ffd|Qm~q\,
	datad => \GEN_ffd:5:ffd|Qm~q\,
	combout => \dec_A_1|dec_out[2]~2_combout\);

-- Location: LCCOMB_X44_Y90_N22
\dec_A_1|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out[3]~3_combout\ = (\GEN_ffd:4:ffd|Qm~q\ & (\GEN_ffd:6:ffd|Qm~q\ $ (((!\GEN_ffd:5:ffd|Qm~q\))))) # (!\GEN_ffd:4:ffd|Qm~q\ & ((\GEN_ffd:6:ffd|Qm~q\ & (!\GEN_ffd:7:ffd|Qm~q\ & !\GEN_ffd:5:ffd|Qm~q\)) # (!\GEN_ffd:6:ffd|Qm~q\ & 
-- (\GEN_ffd:7:ffd|Qm~q\ & \GEN_ffd:5:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:6:ffd|Qm~q\,
	datab => \GEN_ffd:7:ffd|Qm~q\,
	datac => \GEN_ffd:4:ffd|Qm~q\,
	datad => \GEN_ffd:5:ffd|Qm~q\,
	combout => \dec_A_1|dec_out[3]~3_combout\);

-- Location: LCCOMB_X44_Y90_N24
\dec_A_1|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out[4]~4_combout\ = (\GEN_ffd:5:ffd|Qm~q\ & (((\GEN_ffd:4:ffd|Qm~q\ & !\GEN_ffd:7:ffd|Qm~q\)))) # (!\GEN_ffd:5:ffd|Qm~q\ & ((\GEN_ffd:6:ffd|Qm~q\ & ((!\GEN_ffd:7:ffd|Qm~q\))) # (!\GEN_ffd:6:ffd|Qm~q\ & (\GEN_ffd:4:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:6:ffd|Qm~q\,
	datab => \GEN_ffd:4:ffd|Qm~q\,
	datac => \GEN_ffd:7:ffd|Qm~q\,
	datad => \GEN_ffd:5:ffd|Qm~q\,
	combout => \dec_A_1|dec_out[4]~4_combout\);

-- Location: LCCOMB_X44_Y90_N10
\dec_A_1|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out[5]~5_combout\ = (\GEN_ffd:4:ffd|Qm~q\ & (\GEN_ffd:7:ffd|Qm~q\ $ (((\GEN_ffd:5:ffd|Qm~q\) # (!\GEN_ffd:6:ffd|Qm~q\))))) # (!\GEN_ffd:4:ffd|Qm~q\ & (!\GEN_ffd:7:ffd|Qm~q\ & (!\GEN_ffd:6:ffd|Qm~q\ & \GEN_ffd:5:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:4:ffd|Qm~q\,
	datab => \GEN_ffd:7:ffd|Qm~q\,
	datac => \GEN_ffd:6:ffd|Qm~q\,
	datad => \GEN_ffd:5:ffd|Qm~q\,
	combout => \dec_A_1|dec_out[5]~5_combout\);

-- Location: LCCOMB_X44_Y90_N12
\dec_A_1|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_1|dec_out\(6) = (\GEN_ffd:4:ffd|Qm~q\ & (!\GEN_ffd:7:ffd|Qm~q\ & (\GEN_ffd:5:ffd|Qm~q\ $ (!\GEN_ffd:6:ffd|Qm~q\)))) # (!\GEN_ffd:4:ffd|Qm~q\ & (!\GEN_ffd:5:ffd|Qm~q\ & (\GEN_ffd:7:ffd|Qm~q\ $ (!\GEN_ffd:6:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:4:ffd|Qm~q\,
	datab => \GEN_ffd:7:ffd|Qm~q\,
	datac => \GEN_ffd:5:ffd|Qm~q\,
	datad => \GEN_ffd:6:ffd|Qm~q\,
	combout => \dec_A_1|dec_out\(6));

-- Location: FF_X25_Y87_N1
\GEN_ffd:11:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[11]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:11:ffd|Qm~q\);

-- Location: FF_X25_Y87_N19
\GEN_ffd:10:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[10]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:10:ffd|Qm~q\);

-- Location: FF_X25_Y87_N31
\GEN_ffd:8:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[8]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:8:ffd|Qm~q\);

-- Location: FF_X25_Y87_N29
\GEN_ffd:9:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[9]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:9:ffd|Qm~q\);

-- Location: LCCOMB_X25_Y87_N22
\dec_A_2|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out[0]~0_combout\ = (\GEN_ffd:11:ffd|Qm~q\ & (\GEN_ffd:8:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\ $ (\GEN_ffd:9:ffd|Qm~q\)))) # (!\GEN_ffd:11:ffd|Qm~q\ & (!\GEN_ffd:9:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\ $ (\GEN_ffd:8:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:11:ffd|Qm~q\,
	datab => \GEN_ffd:10:ffd|Qm~q\,
	datac => \GEN_ffd:8:ffd|Qm~q\,
	datad => \GEN_ffd:9:ffd|Qm~q\,
	combout => \dec_A_2|dec_out[0]~0_combout\);

-- Location: LCCOMB_X25_Y87_N24
\dec_A_2|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out[1]~1_combout\ = (\GEN_ffd:11:ffd|Qm~q\ & ((\GEN_ffd:8:ffd|Qm~q\ & ((\GEN_ffd:9:ffd|Qm~q\))) # (!\GEN_ffd:8:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\)))) # (!\GEN_ffd:11:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\ & (\GEN_ffd:8:ffd|Qm~q\ $ 
-- (\GEN_ffd:9:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:11:ffd|Qm~q\,
	datab => \GEN_ffd:10:ffd|Qm~q\,
	datac => \GEN_ffd:8:ffd|Qm~q\,
	datad => \GEN_ffd:9:ffd|Qm~q\,
	combout => \dec_A_2|dec_out[1]~1_combout\);

-- Location: LCCOMB_X25_Y87_N2
\dec_A_2|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out[2]~2_combout\ = (\GEN_ffd:11:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\ & ((\GEN_ffd:9:ffd|Qm~q\) # (!\GEN_ffd:8:ffd|Qm~q\)))) # (!\GEN_ffd:11:ffd|Qm~q\ & (!\GEN_ffd:10:ffd|Qm~q\ & (!\GEN_ffd:8:ffd|Qm~q\ & \GEN_ffd:9:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:11:ffd|Qm~q\,
	datab => \GEN_ffd:10:ffd|Qm~q\,
	datac => \GEN_ffd:8:ffd|Qm~q\,
	datad => \GEN_ffd:9:ffd|Qm~q\,
	combout => \dec_A_2|dec_out[2]~2_combout\);

-- Location: LCCOMB_X25_Y87_N30
\dec_A_2|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out[3]~3_combout\ = (\GEN_ffd:8:ffd|Qm~q\ & ((\GEN_ffd:10:ffd|Qm~q\ $ (!\GEN_ffd:9:ffd|Qm~q\)))) # (!\GEN_ffd:8:ffd|Qm~q\ & ((\GEN_ffd:11:ffd|Qm~q\ & (!\GEN_ffd:10:ffd|Qm~q\ & \GEN_ffd:9:ffd|Qm~q\)) # (!\GEN_ffd:11:ffd|Qm~q\ & 
-- (\GEN_ffd:10:ffd|Qm~q\ & !\GEN_ffd:9:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:11:ffd|Qm~q\,
	datab => \GEN_ffd:10:ffd|Qm~q\,
	datac => \GEN_ffd:8:ffd|Qm~q\,
	datad => \GEN_ffd:9:ffd|Qm~q\,
	combout => \dec_A_2|dec_out[3]~3_combout\);

-- Location: LCCOMB_X25_Y87_N0
\dec_A_2|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out[4]~4_combout\ = (\GEN_ffd:9:ffd|Qm~q\ & (\GEN_ffd:8:ffd|Qm~q\ & ((!\GEN_ffd:11:ffd|Qm~q\)))) # (!\GEN_ffd:9:ffd|Qm~q\ & ((\GEN_ffd:10:ffd|Qm~q\ & ((!\GEN_ffd:11:ffd|Qm~q\))) # (!\GEN_ffd:10:ffd|Qm~q\ & (\GEN_ffd:8:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:8:ffd|Qm~q\,
	datab => \GEN_ffd:10:ffd|Qm~q\,
	datac => \GEN_ffd:11:ffd|Qm~q\,
	datad => \GEN_ffd:9:ffd|Qm~q\,
	combout => \dec_A_2|dec_out[4]~4_combout\);

-- Location: LCCOMB_X25_Y87_N18
\dec_A_2|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out[5]~5_combout\ = (\GEN_ffd:8:ffd|Qm~q\ & (\GEN_ffd:11:ffd|Qm~q\ $ (((\GEN_ffd:9:ffd|Qm~q\) # (!\GEN_ffd:10:ffd|Qm~q\))))) # (!\GEN_ffd:8:ffd|Qm~q\ & (!\GEN_ffd:11:ffd|Qm~q\ & (!\GEN_ffd:10:ffd|Qm~q\ & \GEN_ffd:9:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:8:ffd|Qm~q\,
	datab => \GEN_ffd:11:ffd|Qm~q\,
	datac => \GEN_ffd:10:ffd|Qm~q\,
	datad => \GEN_ffd:9:ffd|Qm~q\,
	combout => \dec_A_2|dec_out[5]~5_combout\);

-- Location: LCCOMB_X25_Y87_N28
\dec_A_2|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_2|dec_out\(6) = (\GEN_ffd:8:ffd|Qm~q\ & (!\GEN_ffd:11:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\ $ (!\GEN_ffd:9:ffd|Qm~q\)))) # (!\GEN_ffd:8:ffd|Qm~q\ & (!\GEN_ffd:9:ffd|Qm~q\ & (\GEN_ffd:10:ffd|Qm~q\ $ (!\GEN_ffd:11:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:8:ffd|Qm~q\,
	datab => \GEN_ffd:10:ffd|Qm~q\,
	datac => \GEN_ffd:9:ffd|Qm~q\,
	datad => \GEN_ffd:11:ffd|Qm~q\,
	combout => \dec_A_2|dec_out\(6));

-- Location: FF_X30_Y88_N7
\GEN_ffd:12:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[12]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:12:ffd|Qm~q\);

-- Location: FF_X30_Y88_N25
\GEN_ffd:15:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[15]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:15:ffd|Qm~q\);

-- Location: FF_X30_Y88_N21
\GEN_ffd:13:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[13]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:13:ffd|Qm~q\);

-- Location: FF_X30_Y88_N19
\GEN_ffd:14:ffd|Qm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	asdata => \SW[14]~input_o\,
	clrn => \KEY[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_ffd:14:ffd|Qm~q\);

-- Location: LCCOMB_X30_Y88_N22
\dec_A_3|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out[0]~0_combout\ = (\GEN_ffd:15:ffd|Qm~q\ & (\GEN_ffd:12:ffd|Qm~q\ & (\GEN_ffd:13:ffd|Qm~q\ $ (\GEN_ffd:14:ffd|Qm~q\)))) # (!\GEN_ffd:15:ffd|Qm~q\ & (!\GEN_ffd:13:ffd|Qm~q\ & (\GEN_ffd:12:ffd|Qm~q\ $ (\GEN_ffd:14:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:12:ffd|Qm~q\,
	datab => \GEN_ffd:15:ffd|Qm~q\,
	datac => \GEN_ffd:13:ffd|Qm~q\,
	datad => \GEN_ffd:14:ffd|Qm~q\,
	combout => \dec_A_3|dec_out[0]~0_combout\);

-- Location: LCCOMB_X30_Y88_N8
\dec_A_3|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out[1]~1_combout\ = (\GEN_ffd:15:ffd|Qm~q\ & ((\GEN_ffd:12:ffd|Qm~q\ & (\GEN_ffd:13:ffd|Qm~q\)) # (!\GEN_ffd:12:ffd|Qm~q\ & ((\GEN_ffd:14:ffd|Qm~q\))))) # (!\GEN_ffd:15:ffd|Qm~q\ & (\GEN_ffd:14:ffd|Qm~q\ & (\GEN_ffd:12:ffd|Qm~q\ $ 
-- (\GEN_ffd:13:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:12:ffd|Qm~q\,
	datab => \GEN_ffd:15:ffd|Qm~q\,
	datac => \GEN_ffd:13:ffd|Qm~q\,
	datad => \GEN_ffd:14:ffd|Qm~q\,
	combout => \dec_A_3|dec_out[1]~1_combout\);

-- Location: LCCOMB_X30_Y88_N2
\dec_A_3|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out[2]~2_combout\ = (\GEN_ffd:15:ffd|Qm~q\ & (\GEN_ffd:14:ffd|Qm~q\ & ((\GEN_ffd:13:ffd|Qm~q\) # (!\GEN_ffd:12:ffd|Qm~q\)))) # (!\GEN_ffd:15:ffd|Qm~q\ & (!\GEN_ffd:12:ffd|Qm~q\ & (\GEN_ffd:13:ffd|Qm~q\ & !\GEN_ffd:14:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:12:ffd|Qm~q\,
	datab => \GEN_ffd:15:ffd|Qm~q\,
	datac => \GEN_ffd:13:ffd|Qm~q\,
	datad => \GEN_ffd:14:ffd|Qm~q\,
	combout => \dec_A_3|dec_out[2]~2_combout\);

-- Location: LCCOMB_X30_Y88_N6
\dec_A_3|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out[3]~3_combout\ = (\GEN_ffd:12:ffd|Qm~q\ & (\GEN_ffd:13:ffd|Qm~q\ $ (((!\GEN_ffd:14:ffd|Qm~q\))))) # (!\GEN_ffd:12:ffd|Qm~q\ & ((\GEN_ffd:13:ffd|Qm~q\ & (\GEN_ffd:15:ffd|Qm~q\ & !\GEN_ffd:14:ffd|Qm~q\)) # (!\GEN_ffd:13:ffd|Qm~q\ & 
-- (!\GEN_ffd:15:ffd|Qm~q\ & \GEN_ffd:14:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:13:ffd|Qm~q\,
	datab => \GEN_ffd:15:ffd|Qm~q\,
	datac => \GEN_ffd:12:ffd|Qm~q\,
	datad => \GEN_ffd:14:ffd|Qm~q\,
	combout => \dec_A_3|dec_out[3]~3_combout\);

-- Location: LCCOMB_X30_Y88_N24
\dec_A_3|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out[4]~4_combout\ = (\GEN_ffd:13:ffd|Qm~q\ & (\GEN_ffd:12:ffd|Qm~q\ & (!\GEN_ffd:15:ffd|Qm~q\))) # (!\GEN_ffd:13:ffd|Qm~q\ & ((\GEN_ffd:14:ffd|Qm~q\ & ((!\GEN_ffd:15:ffd|Qm~q\))) # (!\GEN_ffd:14:ffd|Qm~q\ & (\GEN_ffd:12:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:12:ffd|Qm~q\,
	datab => \GEN_ffd:13:ffd|Qm~q\,
	datac => \GEN_ffd:15:ffd|Qm~q\,
	datad => \GEN_ffd:14:ffd|Qm~q\,
	combout => \dec_A_3|dec_out[4]~4_combout\);

-- Location: LCCOMB_X30_Y88_N18
\dec_A_3|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out[5]~5_combout\ = (\GEN_ffd:12:ffd|Qm~q\ & (\GEN_ffd:15:ffd|Qm~q\ $ (((\GEN_ffd:13:ffd|Qm~q\) # (!\GEN_ffd:14:ffd|Qm~q\))))) # (!\GEN_ffd:12:ffd|Qm~q\ & (\GEN_ffd:13:ffd|Qm~q\ & (!\GEN_ffd:14:ffd|Qm~q\ & !\GEN_ffd:15:ffd|Qm~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:12:ffd|Qm~q\,
	datab => \GEN_ffd:13:ffd|Qm~q\,
	datac => \GEN_ffd:14:ffd|Qm~q\,
	datad => \GEN_ffd:15:ffd|Qm~q\,
	combout => \dec_A_3|dec_out[5]~5_combout\);

-- Location: LCCOMB_X30_Y88_N20
\dec_A_3|dec_out[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dec_A_3|dec_out\(6) = (\GEN_ffd:12:ffd|Qm~q\ & (!\GEN_ffd:15:ffd|Qm~q\ & (\GEN_ffd:13:ffd|Qm~q\ $ (!\GEN_ffd:14:ffd|Qm~q\)))) # (!\GEN_ffd:12:ffd|Qm~q\ & (!\GEN_ffd:13:ffd|Qm~q\ & (\GEN_ffd:15:ffd|Qm~q\ $ (!\GEN_ffd:14:ffd|Qm~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_ffd:12:ffd|Qm~q\,
	datab => \GEN_ffd:15:ffd|Qm~q\,
	datac => \GEN_ffd:13:ffd|Qm~q\,
	datad => \GEN_ffd:14:ffd|Qm~q\,
	combout => \dec_A_3|dec_out\(6));

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

-- Location: IOIBUF_X117_Y17_N8
\KEY[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

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

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


