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

-- DATE "06/06/2016 21:43:43"

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

ENTITY 	Exp10_Part1 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX6 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Exp10_Part1;

-- Design Ports Information
-- SW[16]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp10_Part1 IS
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
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \proc|fsmflipflops:current_state_var.fetch~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[16]~input_o\ : std_logic;
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \proc|Selector9~0_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \proc|IR|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc|controlsignals:next_state_var.mv~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.mv~q\ : std_logic;
SIGNAL \proc|controlsignals:next_state_var.add_1~0_combout\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.add_1~q\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.add_2~q\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.add_3~q\ : std_logic;
SIGNAL \proc|controlsignals:next_state_var.sub_1~0_combout\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.sub_1~q\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.sub_2~q\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.sub_3~q\ : std_logic;
SIGNAL \proc|controlsignals:next_state_var.mvi_1~0_combout\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.mvi_1~q\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.mvi_2~q\ : std_logic;
SIGNAL \proc|WideOr8~combout\ : std_logic;
SIGNAL \proc|Selector9~1_combout\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.fetch~q\ : std_logic;
SIGNAL \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\ : std_logic;
SIGNAL \proc|LEDR~2_combout\ : std_logic;
SIGNAL \proc|mux_control~0_combout\ : std_logic;
SIGNAL \proc|WideOr9~combout\ : std_logic;
SIGNAL \proc|Done~combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \proc|Selector2~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \proc|Selector0~2_combout\ : std_logic;
SIGNAL \proc|Selector20~2_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \proc|Selector8~2_combout\ : std_logic;
SIGNAL \proc|Selector20~3_combout\ : std_logic;
SIGNAL \proc|Selector12~2_combout\ : std_logic;
SIGNAL \proc|Selector3~0_combout\ : std_logic;
SIGNAL \proc|Selector0~3_combout\ : std_logic;
SIGNAL \proc|Selector0~4_combout\ : std_logic;
SIGNAL \proc|Selector20~4_combout\ : std_logic;
SIGNAL \proc|Selector11~2_combout\ : std_logic;
SIGNAL \proc|Selector18~0_combout\ : std_logic;
SIGNAL \proc|Selector18~1_combout\ : std_logic;
SIGNAL \proc|Selector19~0_combout\ : std_logic;
SIGNAL \proc|Selector0~5_combout\ : std_logic;
SIGNAL \proc|Selector17~0_combout\ : std_logic;
SIGNAL \proc|Selector16~0_combout\ : std_logic;
SIGNAL \proc|mux_control~1_combout\ : std_logic;
SIGNAL \proc|Selector15~2_combout\ : std_logic;
SIGNAL \proc|Selector3~1_combout\ : std_logic;
SIGNAL \proc|Selector2~1_combout\ : std_logic;
SIGNAL \proc|Selector3~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal0~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal0~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal1~0_combout\ : std_logic;
SIGNAL \proc|R0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \proc|WideOr15~combout\ : std_logic;
SIGNAL \proc|Selector14~2_combout\ : std_logic;
SIGNAL \proc|Selector10~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal6~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~0_combout\ : std_logic;
SIGNAL \proc|R1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \proc|Selector15~3_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \proc|mux|Equal0~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal2~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal2~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~7_combout\ : std_logic;
SIGNAL \proc|Selector11~3_combout\ : std_logic;
SIGNAL \proc|mux|Equal5~0_combout\ : std_logic;
SIGNAL \proc|mux|Equal5~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~6_combout\ : std_logic;
SIGNAL \proc|mux|Equal4~0_combout\ : std_logic;
SIGNAL \proc|Selector12~3_combout\ : std_logic;
SIGNAL \proc|mux|Equal4~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~2_combout\ : std_logic;
SIGNAL \proc|Selector7~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal8~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~1_combout\ : std_logic;
SIGNAL \proc|mux|Equal4~2_combout\ : std_logic;
SIGNAL \proc|Selector8~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~3_combout\ : std_logic;
SIGNAL \proc|mux|Equal3~0_combout\ : std_logic;
SIGNAL \proc|Selector13~2_combout\ : std_logic;
SIGNAL \proc|mux|Equal2~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector14~8_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \proc|R1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~7_combout\ : std_logic;
SIGNAL \proc|R0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector13~8_combout\ : std_logic;
SIGNAL \proc|R0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \proc|R1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector12~8_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \proc|mux|Selector15~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~0_combout\ : std_logic;
SIGNAL \proc|R0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector15~7_combout\ : std_logic;
SIGNAL \disp0|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp0|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp0|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp0|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp0|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp0|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp0|dec_out[6]~6_combout\ : std_logic;
SIGNAL \proc|R4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~6_combout\ : std_logic;
SIGNAL \proc|R1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~7_combout\ : std_logic;
SIGNAL \proc|R0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector9~8_combout\ : std_logic;
SIGNAL \proc|R1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~6_combout\ : std_logic;
SIGNAL \proc|R0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector8~8_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~10_combout\ : std_logic;
SIGNAL \proc|R1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~3_combout\ : std_logic;
SIGNAL \proc|R4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~8_combout\ : std_logic;
SIGNAL \proc|R2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \proc|mux|Selector11~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector11~9_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~6_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \proc|mux|Selector10~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~5_combout\ : std_logic;
SIGNAL \proc|R5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc|R0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector10~8_combout\ : std_logic;
SIGNAL \disp1|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp1|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp1|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp1|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp1|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp1|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp1|dec_out[6]~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~0_combout\ : std_logic;
SIGNAL \proc|R0|Q[10]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~3_combout\ : std_logic;
SIGNAL \proc|R4|Q[10]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector5~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector6~8_combout\ : std_logic;
SIGNAL \proc|R0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~7_combout\ : std_logic;
SIGNAL \proc|R4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector7~8_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~7_combout\ : std_logic;
SIGNAL \proc|R4|Q[11]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector4~8_combout\ : std_logic;
SIGNAL \disp2|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp2|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp2|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp2|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp2|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp2|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp2|dec_out[6]~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector0~8_combout\ : std_logic;
SIGNAL \proc|R0|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~0_combout\ : std_logic;
SIGNAL \proc|R1|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~5_combout\ : std_logic;
SIGNAL \proc|mux|Selector3~8_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~1_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~5_combout\ : std_logic;
SIGNAL \proc|R0|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector1~8_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~6_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~7_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~1_combout\ : std_logic;
SIGNAL \proc|R2|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~4_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~3_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~2_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~5_combout\ : std_logic;
SIGNAL \proc|R0|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc|R5|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~0_combout\ : std_logic;
SIGNAL \proc|mux|Selector2~8_combout\ : std_logic;
SIGNAL \disp3|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp3|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp3|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp3|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp3|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp3|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp3|dec_out[6]~6_combout\ : std_logic;
SIGNAL \disp4|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp4|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp4|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp4|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp4|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp4|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp4|dec_out[6]~6_combout\ : std_logic;
SIGNAL \disp5|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp5|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp5|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp5|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp5|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp5|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp5|dec_out[6]~6_combout\ : std_logic;
SIGNAL \disp6|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp6|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp6|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp6|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp6|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp6|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp6|dec_out[6]~6_combout\ : std_logic;
SIGNAL \disp7|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp7|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp7|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp7|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp7|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp7|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp7|dec_out[6]~6_combout\ : std_logic;
SIGNAL \proc|R0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R5|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R6|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R7|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|LEDR\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \proc|IR|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc|R_enable\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \proc|mux_control\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\ : std_logic;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
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

\proc|fsmflipflops:current_state_var.fetch~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc|fsmflipflops:current_state_var.fetch~q\);
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\ <= NOT \proc|fsmflipflops:current_state_var.fetch~q\;

-- Location: IOOBUF_X117_Y43_N2
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
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
	i => \proc|LEDR\(1),
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
	i => \proc|LEDR\(2),
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
	i => \proc|LEDR\(3),
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
	i => \proc|LEDR\(4),
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
	i => \proc|LEDR\(5),
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
	i => \proc|LEDR\(6),
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
	i => \proc|LEDR\(7),
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
	i => \proc|LEDR\(8),
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
	i => \proc|LEDR\(12),
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
	i => \proc|LEDR\(13),
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
	i => \proc|LEDR\(14),
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
	i => \proc|LEDR\(15),
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
	i => \proc|Done~combout\,
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
	i => \ALT_INV_KEY[1]~input_o\,
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
	i => \disp0|dec_out[0]~0_combout\,
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
	i => \disp0|dec_out[1]~1_combout\,
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
	i => \disp0|dec_out[2]~2_combout\,
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
	i => \disp0|dec_out[3]~3_combout\,
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
	i => \disp0|dec_out[4]~4_combout\,
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
	i => \disp0|dec_out[5]~5_combout\,
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
	i => \disp0|dec_out[6]~6_combout\,
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
	i => \disp1|dec_out[0]~0_combout\,
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
	i => \disp1|dec_out[1]~1_combout\,
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
	i => \disp1|dec_out[2]~2_combout\,
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
	i => \disp1|dec_out[3]~3_combout\,
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
	i => \disp1|dec_out[4]~4_combout\,
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
	i => \disp1|dec_out[5]~5_combout\,
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
	i => \disp1|dec_out[6]~6_combout\,
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
	i => \disp2|dec_out[0]~0_combout\,
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
	i => \disp2|dec_out[1]~1_combout\,
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
	i => \disp2|dec_out[2]~2_combout\,
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
	i => \disp2|dec_out[3]~3_combout\,
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
	i => \disp2|dec_out[4]~4_combout\,
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
	i => \disp2|dec_out[5]~5_combout\,
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
	i => \disp2|dec_out[6]~6_combout\,
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
	i => \disp3|dec_out[0]~0_combout\,
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
	i => \disp3|dec_out[1]~1_combout\,
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
	i => \disp3|dec_out[2]~2_combout\,
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
	i => \disp3|dec_out[3]~3_combout\,
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
	i => \disp3|dec_out[4]~4_combout\,
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
	i => \disp3|dec_out[5]~5_combout\,
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
	i => \disp3|dec_out[6]~6_combout\,
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
	i => \disp4|dec_out[0]~0_combout\,
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
	i => \disp4|dec_out[1]~1_combout\,
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
	i => \disp4|dec_out[2]~2_combout\,
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
	i => \disp4|dec_out[3]~3_combout\,
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
	i => \disp4|dec_out[4]~4_combout\,
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
	i => \disp4|dec_out[5]~5_combout\,
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
	i => \disp4|dec_out[6]~6_combout\,
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
	i => \disp5|dec_out[0]~0_combout\,
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
	i => \disp5|dec_out[1]~1_combout\,
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
	i => \disp5|dec_out[2]~2_combout\,
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
	i => \disp5|dec_out[3]~3_combout\,
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
	i => \disp5|dec_out[4]~4_combout\,
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
	i => \disp5|dec_out[5]~5_combout\,
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
	i => \disp5|dec_out[6]~6_combout\,
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
	i => \disp6|dec_out[0]~0_combout\,
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
	i => \disp6|dec_out[1]~1_combout\,
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
	i => \disp6|dec_out[2]~2_combout\,
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
	i => \disp6|dec_out[3]~3_combout\,
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
	i => \disp6|dec_out[4]~4_combout\,
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
	i => \disp6|dec_out[5]~5_combout\,
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
	i => \disp6|dec_out[6]~6_combout\,
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
	i => \disp7|dec_out[0]~0_combout\,
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
	i => \disp7|dec_out[1]~1_combout\,
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
	i => \disp7|dec_out[2]~2_combout\,
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
	i => \disp7|dec_out[3]~3_combout\,
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
	i => \disp7|dec_out[4]~4_combout\,
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
	i => \disp7|dec_out[5]~5_combout\,
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
	i => \disp7|dec_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: FF_X112_Y43_N7
\proc|IR|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[14]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(14));

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

-- Location: FF_X112_Y43_N21
\proc|IR|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(15));

-- Location: LCCOMB_X112_Y43_N8
\proc|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector9~0_combout\ = (!\proc|IR|Q\(14) & (\SW[17]~input_o\ & !\proc|IR|Q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(14),
	datab => \SW[17]~input_o\,
	datad => \proc|IR|Q\(15),
	combout => \proc|Selector9~0_combout\);

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

-- Location: FF_X116_Y43_N13
\proc|IR|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[12]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(12));

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

-- Location: LCCOMB_X116_Y43_N18
\proc|IR|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|IR|Q[13]~feeder_combout\ = \SW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[13]~input_o\,
	combout => \proc|IR|Q[13]~feeder_combout\);

-- Location: FF_X116_Y43_N19
\proc|IR|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|IR|Q[13]~feeder_combout\,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(13));

-- Location: LCCOMB_X111_Y43_N8
\proc|controlsignals:next_state_var.mv~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|controlsignals:next_state_var.mv~0_combout\ = (!\proc|IR|Q\(12) & (!\proc|fsmflipflops:current_state_var.fetch~q\ & (\proc|Selector9~0_combout\ & !\proc|IR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(12),
	datab => \proc|fsmflipflops:current_state_var.fetch~q\,
	datac => \proc|Selector9~0_combout\,
	datad => \proc|IR|Q\(13),
	combout => \proc|controlsignals:next_state_var.mv~0_combout\);

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

-- Location: FF_X111_Y43_N9
\proc|fsmflipflops:current_state_var.mv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|controlsignals:next_state_var.mv~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.mv~q\);

-- Location: LCCOMB_X111_Y43_N22
\proc|controlsignals:next_state_var.add_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|controlsignals:next_state_var.add_1~0_combout\ = (!\proc|IR|Q\(12) & (\proc|Selector9~0_combout\ & (!\proc|fsmflipflops:current_state_var.fetch~q\ & \proc|IR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(12),
	datab => \proc|Selector9~0_combout\,
	datac => \proc|fsmflipflops:current_state_var.fetch~q\,
	datad => \proc|IR|Q\(13),
	combout => \proc|controlsignals:next_state_var.add_1~0_combout\);

-- Location: FF_X111_Y43_N23
\proc|fsmflipflops:current_state_var.add_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|controlsignals:next_state_var.add_1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.add_1~q\);

-- Location: FF_X111_Y43_N27
\proc|fsmflipflops:current_state_var.add_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|fsmflipflops:current_state_var.add_1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.add_2~q\);

-- Location: FF_X111_Y43_N17
\proc|fsmflipflops:current_state_var.add_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|fsmflipflops:current_state_var.add_2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.add_3~q\);

-- Location: LCCOMB_X112_Y43_N2
\proc|controlsignals:next_state_var.sub_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|controlsignals:next_state_var.sub_1~0_combout\ = (\proc|IR|Q\(13) & (!\proc|fsmflipflops:current_state_var.fetch~q\ & (\proc|Selector9~0_combout\ & \proc|IR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(13),
	datab => \proc|fsmflipflops:current_state_var.fetch~q\,
	datac => \proc|Selector9~0_combout\,
	datad => \proc|IR|Q\(12),
	combout => \proc|controlsignals:next_state_var.sub_1~0_combout\);

-- Location: FF_X112_Y43_N3
\proc|fsmflipflops:current_state_var.sub_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|controlsignals:next_state_var.sub_1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.sub_1~q\);

-- Location: FF_X111_Y43_N5
\proc|fsmflipflops:current_state_var.sub_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|fsmflipflops:current_state_var.sub_1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.sub_2~q\);

-- Location: FF_X111_Y43_N15
\proc|fsmflipflops:current_state_var.sub_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|fsmflipflops:current_state_var.sub_2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.sub_3~q\);

-- Location: LCCOMB_X111_Y43_N30
\proc|controlsignals:next_state_var.mvi_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|controlsignals:next_state_var.mvi_1~0_combout\ = (!\proc|fsmflipflops:current_state_var.fetch~q\ & (\proc|Selector9~0_combout\ & (\proc|IR|Q\(12) & !\proc|IR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.fetch~q\,
	datab => \proc|Selector9~0_combout\,
	datac => \proc|IR|Q\(12),
	datad => \proc|IR|Q\(13),
	combout => \proc|controlsignals:next_state_var.mvi_1~0_combout\);

-- Location: FF_X111_Y43_N31
\proc|fsmflipflops:current_state_var.mvi_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|controlsignals:next_state_var.mvi_1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.mvi_1~q\);

-- Location: FF_X111_Y43_N13
\proc|fsmflipflops:current_state_var.mvi_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|fsmflipflops:current_state_var.mvi_1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.mvi_2~q\);

-- Location: LCCOMB_X111_Y43_N20
\proc|WideOr8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|WideOr8~combout\ = (\proc|fsmflipflops:current_state_var.mv~q\) # ((\proc|fsmflipflops:current_state_var.add_3~q\) # ((\proc|fsmflipflops:current_state_var.sub_3~q\) # (\proc|fsmflipflops:current_state_var.mvi_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.mv~q\,
	datab => \proc|fsmflipflops:current_state_var.add_3~q\,
	datac => \proc|fsmflipflops:current_state_var.sub_3~q\,
	datad => \proc|fsmflipflops:current_state_var.mvi_2~q\,
	combout => \proc|WideOr8~combout\);

-- Location: LCCOMB_X112_Y43_N30
\proc|Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector9~1_combout\ = (!\proc|WideOr8~combout\ & ((\proc|fsmflipflops:current_state_var.fetch~q\) # (\proc|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|fsmflipflops:current_state_var.fetch~q\,
	datac => \proc|Selector9~0_combout\,
	datad => \proc|WideOr8~combout\,
	combout => \proc|Selector9~1_combout\);

-- Location: FF_X112_Y43_N5
\proc|fsmflipflops:current_state_var.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|Selector9~1_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|fsmflipflops:current_state_var.fetch~q\);

-- Location: CLKCTRL_G15
\proc|fsmflipflops:current_state_var.fetch~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc|fsmflipflops:current_state_var.fetch~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\);

-- Location: LCCOMB_X111_Y43_N12
\proc|LEDR[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(1) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|fsmflipflops:current_state_var.mv~q\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|LEDR\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|LEDR\(1),
	datab => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	datad => \proc|fsmflipflops:current_state_var.mv~q\,
	combout => \proc|LEDR\(1));

-- Location: LCCOMB_X112_Y43_N0
\proc|LEDR~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR~2_combout\ = (\proc|fsmflipflops:current_state_var.mvi_2~q\) # (\proc|fsmflipflops:current_state_var.mvi_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.mvi_2~q\,
	datad => \proc|fsmflipflops:current_state_var.mvi_1~q\,
	combout => \proc|LEDR~2_combout\);

-- Location: LCCOMB_X113_Y43_N28
\proc|LEDR[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(2) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|LEDR~2_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|LEDR\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|LEDR\(2),
	datac => \proc|LEDR~2_combout\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(2));

-- Location: LCCOMB_X113_Y43_N26
\proc|LEDR[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(3) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|fsmflipflops:current_state_var.add_1~q\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|LEDR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.add_1~q\,
	datac => \proc|LEDR\(3),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(3));

-- Location: LCCOMB_X114_Y43_N16
\proc|LEDR[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(4) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|fsmflipflops:current_state_var.add_2~q\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|LEDR\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|LEDR\(4),
	datac => \proc|fsmflipflops:current_state_var.add_2~q\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(4));

-- Location: LCCOMB_X111_Y44_N22
\proc|LEDR[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(5) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|fsmflipflops:current_state_var.add_3~q\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|LEDR\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|fsmflipflops:current_state_var.add_3~q\,
	datac => \proc|LEDR\(5),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(5));

-- Location: LCCOMB_X113_Y43_N4
\proc|LEDR[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(6) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|fsmflipflops:current_state_var.sub_1~q\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|LEDR\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|fsmflipflops:current_state_var.sub_1~q\,
	datac => \proc|LEDR\(6),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(6));

-- Location: LCCOMB_X114_Y43_N26
\proc|LEDR[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(7) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|fsmflipflops:current_state_var.sub_2~q\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|LEDR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|fsmflipflops:current_state_var.sub_2~q\,
	datac => \proc|LEDR\(7),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(7));

-- Location: LCCOMB_X111_Y44_N28
\proc|LEDR[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(8) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|fsmflipflops:current_state_var.sub_3~q\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|LEDR\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|LEDR\(8),
	datac => \proc|fsmflipflops:current_state_var.sub_3~q\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|LEDR\(8));

-- Location: LCCOMB_X116_Y43_N8
\proc|LEDR[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(12) = (!\proc|fsmflipflops:current_state_var.fetch~q\ & ((\SW[17]~input_o\ & ((\proc|IR|Q\(12)))) # (!\SW[17]~input_o\ & (\proc|LEDR\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.fetch~q\,
	datab => \proc|LEDR\(12),
	datac => \SW[17]~input_o\,
	datad => \proc|IR|Q\(12),
	combout => \proc|LEDR\(12));

-- Location: LCCOMB_X116_Y43_N22
\proc|LEDR[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(13) = (!\proc|fsmflipflops:current_state_var.fetch~q\ & ((\SW[17]~input_o\ & ((\proc|IR|Q\(13)))) # (!\SW[17]~input_o\ & (\proc|LEDR\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|LEDR\(13),
	datab => \proc|fsmflipflops:current_state_var.fetch~q\,
	datac => \SW[17]~input_o\,
	datad => \proc|IR|Q\(13),
	combout => \proc|LEDR\(13));

-- Location: LCCOMB_X112_Y43_N26
\proc|LEDR[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(14) = (!\proc|fsmflipflops:current_state_var.fetch~q\ & ((\SW[17]~input_o\ & ((\proc|IR|Q\(14)))) # (!\SW[17]~input_o\ & (\proc|LEDR\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.fetch~q\,
	datab => \proc|LEDR\(14),
	datac => \SW[17]~input_o\,
	datad => \proc|IR|Q\(14),
	combout => \proc|LEDR\(14));

-- Location: LCCOMB_X112_Y43_N14
\proc|LEDR[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|LEDR\(15) = (!\proc|fsmflipflops:current_state_var.fetch~q\ & ((\SW[17]~input_o\ & ((\proc|IR|Q\(15)))) # (!\SW[17]~input_o\ & (\proc|LEDR\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.fetch~q\,
	datab => \proc|LEDR\(15),
	datac => \SW[17]~input_o\,
	datad => \proc|IR|Q\(15),
	combout => \proc|LEDR\(15));

-- Location: LCCOMB_X111_Y43_N26
\proc|mux_control~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control~0_combout\ = (!\proc|fsmflipflops:current_state_var.add_1~q\ & !\proc|fsmflipflops:current_state_var.sub_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.add_1~q\,
	datad => \proc|fsmflipflops:current_state_var.sub_1~q\,
	combout => \proc|mux_control~0_combout\);

-- Location: LCCOMB_X111_Y43_N16
\proc|WideOr9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|WideOr9~combout\ = ((\proc|fsmflipflops:current_state_var.sub_2~q\) # ((\proc|fsmflipflops:current_state_var.add_2~q\) # (\proc|fsmflipflops:current_state_var.mvi_1~q\))) # (!\proc|mux_control~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control~0_combout\,
	datab => \proc|fsmflipflops:current_state_var.sub_2~q\,
	datac => \proc|fsmflipflops:current_state_var.add_2~q\,
	datad => \proc|fsmflipflops:current_state_var.mvi_1~q\,
	combout => \proc|WideOr9~combout\);

-- Location: LCCOMB_X111_Y43_N14
\proc|Done\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Done~combout\ = (\proc|WideOr9~combout\ & (\proc|Done~combout\)) # (!\proc|WideOr9~combout\ & ((\proc|WideOr8~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|WideOr9~combout\,
	datab => \proc|Done~combout\,
	datad => \proc|WideOr8~combout\,
	combout => \proc|Done~combout\);

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

-- Location: FF_X112_Y43_N19
\proc|IR|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(8));

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

-- Location: FF_X112_Y43_N1
\proc|IR|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(9));

-- Location: LCCOMB_X112_Y43_N28
\proc|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector2~0_combout\ = (!\proc|IR|Q\(9) & ((\proc|fsmflipflops:current_state_var.sub_1~q\) # (\proc|fsmflipflops:current_state_var.add_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(9),
	datab => \proc|fsmflipflops:current_state_var.sub_1~q\,
	datad => \proc|fsmflipflops:current_state_var.add_1~q\,
	combout => \proc|Selector2~0_combout\);

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

-- Location: FF_X111_Y43_N1
\proc|IR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(6));

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

-- Location: FF_X111_Y43_N7
\proc|IR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(7));

-- Location: LCCOMB_X111_Y43_N18
\proc|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector0~2_combout\ = (!\proc|fsmflipflops:current_state_var.mvi_1~q\ & (!\proc|fsmflipflops:current_state_var.add_3~q\ & (!\proc|fsmflipflops:current_state_var.sub_3~q\ & !\proc|fsmflipflops:current_state_var.mvi_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.mvi_1~q\,
	datab => \proc|fsmflipflops:current_state_var.add_3~q\,
	datac => \proc|fsmflipflops:current_state_var.sub_3~q\,
	datad => \proc|fsmflipflops:current_state_var.mvi_2~q\,
	combout => \proc|Selector0~2_combout\);

-- Location: LCCOMB_X111_Y43_N6
\proc|Selector20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector20~2_combout\ = (\proc|mux_control~0_combout\ & (!\proc|IR|Q\(6) & (!\proc|IR|Q\(7) & \proc|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control~0_combout\,
	datab => \proc|IR|Q\(6),
	datac => \proc|IR|Q\(7),
	datad => \proc|Selector0~2_combout\,
	combout => \proc|Selector20~2_combout\);

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

-- Location: FF_X112_Y43_N29
\proc|IR|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[11]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(11));

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

-- Location: FF_X112_Y43_N25
\proc|IR|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \SW[10]~input_o\,
	sload => VCC,
	ena => \proc|ALT_INV_fsmflipflops:current_state_var.fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|IR|Q\(10));

-- Location: LCCOMB_X106_Y43_N24
\proc|Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector8~2_combout\ = (!\proc|IR|Q\(11) & !\proc|IR|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|IR|Q\(11),
	datad => \proc|IR|Q\(10),
	combout => \proc|Selector8~2_combout\);

-- Location: LCCOMB_X107_Y43_N12
\proc|Selector20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector20~3_combout\ = (\proc|IR|Q\(8) & (\proc|Selector2~0_combout\ & ((\proc|Selector8~2_combout\)))) # (!\proc|IR|Q\(8) & ((\proc|Selector20~2_combout\) # ((\proc|Selector2~0_combout\ & \proc|Selector8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(8),
	datab => \proc|Selector2~0_combout\,
	datac => \proc|Selector20~2_combout\,
	datad => \proc|Selector8~2_combout\,
	combout => \proc|Selector20~3_combout\);

-- Location: LCCOMB_X108_Y43_N18
\proc|mux_control[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(8) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector20~3_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector20~3_combout\,
	datab => \proc|mux_control\(8),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(8));

-- Location: LCCOMB_X108_Y43_N14
\proc|mux_control[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(9) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|fsmflipflops:current_state_var.mvi_1~q\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|fsmflipflops:current_state_var.mvi_1~q\,
	datac => \proc|mux_control\(9),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(9));

-- Location: LCCOMB_X112_Y43_N6
\proc|Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector12~2_combout\ = (\proc|IR|Q\(11) & !\proc|IR|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|IR|Q\(11),
	datad => \proc|IR|Q\(10),
	combout => \proc|Selector12~2_combout\);

-- Location: LCCOMB_X112_Y43_N20
\proc|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector3~0_combout\ = (\proc|IR|Q\(9) & ((\proc|fsmflipflops:current_state_var.add_1~q\) # (\proc|fsmflipflops:current_state_var.sub_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.add_1~q\,
	datab => \proc|fsmflipflops:current_state_var.sub_1~q\,
	datad => \proc|IR|Q\(9),
	combout => \proc|Selector3~0_combout\);

-- Location: LCCOMB_X111_Y43_N0
\proc|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector0~3_combout\ = (\proc|mux_control~0_combout\ & (\proc|Selector0~2_combout\ & (\proc|IR|Q\(6) & !\proc|IR|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control~0_combout\,
	datab => \proc|Selector0~2_combout\,
	datac => \proc|IR|Q\(6),
	datad => \proc|IR|Q\(7),
	combout => \proc|Selector0~3_combout\);

-- Location: LCCOMB_X108_Y43_N28
\proc|Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector0~4_combout\ = (\proc|IR|Q\(8) & ((\proc|Selector0~3_combout\) # ((\proc|Selector12~2_combout\ & \proc|Selector3~0_combout\)))) # (!\proc|IR|Q\(8) & (\proc|Selector12~2_combout\ & (\proc|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(8),
	datab => \proc|Selector12~2_combout\,
	datac => \proc|Selector3~0_combout\,
	datad => \proc|Selector0~3_combout\,
	combout => \proc|Selector0~4_combout\);

-- Location: LCCOMB_X108_Y43_N10
\proc|mux_control[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(3) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|Selector0~4_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|mux_control\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(3),
	datab => \proc|Selector0~4_combout\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(3));

-- Location: LCCOMB_X111_Y43_N24
\proc|Selector20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector20~4_combout\ = (!\proc|fsmflipflops:current_state_var.sub_1~q\ & (!\proc|IR|Q\(6) & (!\proc|fsmflipflops:current_state_var.add_1~q\ & \proc|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|fsmflipflops:current_state_var.sub_1~q\,
	datab => \proc|IR|Q\(6),
	datac => \proc|fsmflipflops:current_state_var.add_1~q\,
	datad => \proc|Selector0~2_combout\,
	combout => \proc|Selector20~4_combout\);

-- Location: LCCOMB_X112_Y43_N24
\proc|Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector11~2_combout\ = (\proc|IR|Q\(10) & !\proc|IR|Q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|IR|Q\(10),
	datad => \proc|IR|Q\(11),
	combout => \proc|Selector11~2_combout\);

-- Location: LCCOMB_X112_Y43_N4
\proc|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector18~0_combout\ = (\proc|IR|Q\(7) & !\proc|IR|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|IR|Q\(7),
	datad => \proc|IR|Q\(8),
	combout => \proc|Selector18~0_combout\);

-- Location: LCCOMB_X108_Y43_N26
\proc|Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector18~1_combout\ = (\proc|Selector20~4_combout\ & ((\proc|Selector18~0_combout\) # ((\proc|Selector2~0_combout\ & \proc|Selector11~2_combout\)))) # (!\proc|Selector20~4_combout\ & (\proc|Selector2~0_combout\ & (\proc|Selector11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector20~4_combout\,
	datab => \proc|Selector2~0_combout\,
	datac => \proc|Selector11~2_combout\,
	datad => \proc|Selector18~0_combout\,
	combout => \proc|Selector18~1_combout\);

-- Location: LCCOMB_X108_Y43_N4
\proc|mux_control[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(6) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector18~1_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector18~1_combout\,
	datac => \proc|mux_control\(6),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(6));

-- Location: LCCOMB_X106_Y43_N26
\proc|Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector19~0_combout\ = (\proc|Selector8~2_combout\ & ((\proc|Selector3~0_combout\) # ((!\proc|IR|Q\(8) & \proc|Selector0~3_combout\)))) # (!\proc|Selector8~2_combout\ & (((!\proc|IR|Q\(8) & \proc|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector8~2_combout\,
	datab => \proc|Selector3~0_combout\,
	datac => \proc|IR|Q\(8),
	datad => \proc|Selector0~3_combout\,
	combout => \proc|Selector19~0_combout\);

-- Location: LCCOMB_X107_Y43_N8
\proc|mux_control[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(7) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|Selector19~0_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|mux_control\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux_control\(7),
	datac => \proc|Selector19~0_combout\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(7));

-- Location: LCCOMB_X112_Y43_N10
\proc|Selector0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector0~5_combout\ = (\proc|IR|Q\(6) & (!\proc|fsmflipflops:current_state_var.add_1~q\ & (!\proc|fsmflipflops:current_state_var.sub_1~q\ & \proc|Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(6),
	datab => \proc|fsmflipflops:current_state_var.add_1~q\,
	datac => \proc|fsmflipflops:current_state_var.sub_1~q\,
	datad => \proc|Selector0~2_combout\,
	combout => \proc|Selector0~5_combout\);

-- Location: LCCOMB_X112_Y43_N12
\proc|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector17~0_combout\ = (\proc|Selector11~2_combout\ & ((\proc|Selector3~0_combout\) # ((\proc|Selector18~0_combout\ & \proc|Selector0~5_combout\)))) # (!\proc|Selector11~2_combout\ & (\proc|Selector18~0_combout\ & ((\proc|Selector0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector11~2_combout\,
	datab => \proc|Selector18~0_combout\,
	datac => \proc|Selector3~0_combout\,
	datad => \proc|Selector0~5_combout\,
	combout => \proc|Selector17~0_combout\);

-- Location: LCCOMB_X107_Y43_N4
\proc|mux_control[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(5) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector17~0_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector17~0_combout\,
	datac => \proc|mux_control\(5),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(5));

-- Location: LCCOMB_X111_Y43_N10
\proc|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector16~0_combout\ = (\proc|Selector12~2_combout\ & ((\proc|Selector2~0_combout\) # ((\proc|IR|Q\(8) & \proc|Selector20~2_combout\)))) # (!\proc|Selector12~2_combout\ & (\proc|IR|Q\(8) & (\proc|Selector20~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector12~2_combout\,
	datab => \proc|IR|Q\(8),
	datac => \proc|Selector20~2_combout\,
	datad => \proc|Selector2~0_combout\,
	combout => \proc|Selector16~0_combout\);

-- Location: LCCOMB_X107_Y43_N10
\proc|mux_control[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(4) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector16~0_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector16~0_combout\,
	datac => \proc|mux_control\(4),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(4));

-- Location: LCCOMB_X106_Y43_N0
\proc|mux_control~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control~1_combout\ = (!\proc|fsmflipflops:current_state_var.sub_3~q\ & !\proc|fsmflipflops:current_state_var.add_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|fsmflipflops:current_state_var.sub_3~q\,
	datad => \proc|fsmflipflops:current_state_var.add_3~q\,
	combout => \proc|mux_control~1_combout\);

-- Location: LCCOMB_X107_Y43_N22
\proc|mux_control[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(0) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (!\proc|mux_control~1_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control~1_combout\,
	datac => \proc|mux_control\(0),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(0));

-- Location: LCCOMB_X112_Y43_N18
\proc|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector15~2_combout\ = (\proc|IR|Q\(11) & \proc|IR|Q\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|IR|Q\(11),
	datad => \proc|IR|Q\(10),
	combout => \proc|Selector15~2_combout\);

-- Location: LCCOMB_X112_Y43_N16
\proc|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector3~1_combout\ = (\proc|IR|Q\(7) & \proc|IR|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|IR|Q\(7),
	datad => \proc|IR|Q\(8),
	combout => \proc|Selector3~1_combout\);

-- Location: LCCOMB_X107_Y43_N18
\proc|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector2~1_combout\ = (\proc|Selector15~2_combout\ & ((\proc|Selector2~0_combout\) # ((\proc|Selector3~1_combout\ & \proc|Selector20~4_combout\)))) # (!\proc|Selector15~2_combout\ & (\proc|Selector3~1_combout\ & ((\proc|Selector20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector15~2_combout\,
	datab => \proc|Selector3~1_combout\,
	datac => \proc|Selector2~0_combout\,
	datad => \proc|Selector20~4_combout\,
	combout => \proc|Selector2~1_combout\);

-- Location: LCCOMB_X107_Y43_N26
\proc|mux_control[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(2) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|Selector2~1_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|mux_control\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datac => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	datad => \proc|Selector2~1_combout\,
	combout => \proc|mux_control\(2));

-- Location: LCCOMB_X112_Y43_N22
\proc|Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector3~2_combout\ = (\proc|Selector0~5_combout\ & ((\proc|Selector3~1_combout\) # ((\proc|Selector3~0_combout\ & \proc|Selector15~2_combout\)))) # (!\proc|Selector0~5_combout\ & (((\proc|Selector3~0_combout\ & \proc|Selector15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector0~5_combout\,
	datab => \proc|Selector3~1_combout\,
	datac => \proc|Selector3~0_combout\,
	datad => \proc|Selector15~2_combout\,
	combout => \proc|Selector3~2_combout\);

-- Location: LCCOMB_X107_Y43_N24
\proc|mux_control[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux_control\(1) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector3~2_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|mux_control\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector3~2_combout\,
	datac => \proc|mux_control\(1),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|mux_control\(1));

-- Location: LCCOMB_X107_Y43_N6
\proc|mux|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal0~0_combout\ = (!\proc|mux_control\(4) & (!\proc|mux_control\(0) & (!\proc|mux_control\(2) & !\proc|mux_control\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(4),
	datab => \proc|mux_control\(0),
	datac => \proc|mux_control\(2),
	datad => \proc|mux_control\(1),
	combout => \proc|mux|Equal0~0_combout\);

-- Location: LCCOMB_X107_Y43_N20
\proc|mux|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal0~1_combout\ = (!\proc|mux_control\(6) & (!\proc|mux_control\(7) & (!\proc|mux_control\(5) & \proc|mux|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(6),
	datab => \proc|mux_control\(7),
	datac => \proc|mux_control\(5),
	datad => \proc|mux|Equal0~0_combout\,
	combout => \proc|mux|Equal0~1_combout\);

-- Location: LCCOMB_X107_Y43_N2
\proc|mux|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal1~0_combout\ = (\proc|mux_control\(8) & (!\proc|mux_control\(9) & (!\proc|mux_control\(3) & \proc|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(8),
	datab => \proc|mux_control\(9),
	datac => \proc|mux_control\(3),
	datad => \proc|mux|Equal0~1_combout\,
	combout => \proc|mux|Equal1~0_combout\);

-- Location: LCCOMB_X109_Y45_N22
\proc|R0|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[1]~feeder_combout\ = \proc|mux|Selector14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector14~8_combout\,
	combout => \proc|R0|Q[1]~feeder_combout\);

-- Location: LCCOMB_X111_Y43_N4
\proc|WideOr15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|WideOr15~combout\ = ((\proc|fsmflipflops:current_state_var.mvi_2~q\) # ((\proc|fsmflipflops:current_state_var.sub_2~q\) # (\proc|fsmflipflops:current_state_var.add_2~q\))) # (!\proc|mux_control~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control~0_combout\,
	datab => \proc|fsmflipflops:current_state_var.mvi_2~q\,
	datac => \proc|fsmflipflops:current_state_var.sub_2~q\,
	datad => \proc|fsmflipflops:current_state_var.add_2~q\,
	combout => \proc|WideOr15~combout\);

-- Location: LCCOMB_X111_Y44_N12
\proc|Selector14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector14~2_combout\ = (\proc|IR|Q\(10) & (\proc|IR|Q\(9) & (\proc|IR|Q\(11) & !\proc|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(10),
	datab => \proc|IR|Q\(9),
	datac => \proc|IR|Q\(11),
	datad => \proc|WideOr15~combout\,
	combout => \proc|Selector14~2_combout\);

-- Location: LCCOMB_X111_Y44_N14
\proc|R_enable[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(0) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector14~2_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|R_enable\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector14~2_combout\,
	datac => \proc|R_enable\(0),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(0));

-- Location: FF_X109_Y45_N23
\proc|R0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[1]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(1));

-- Location: LCCOMB_X106_Y43_N4
\proc|Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector10~2_combout\ = (!\proc|IR|Q\(11) & (!\proc|IR|Q\(9) & (!\proc|WideOr15~combout\ & \proc|IR|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(11),
	datab => \proc|IR|Q\(9),
	datac => \proc|WideOr15~combout\,
	datad => \proc|IR|Q\(10),
	combout => \proc|Selector10~2_combout\);

-- Location: LCCOMB_X106_Y43_N12
\proc|R_enable[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(5) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|Selector10~2_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|R_enable\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R_enable\(5),
	datac => \proc|Selector10~2_combout\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(5));

-- Location: FF_X108_Y45_N1
\proc|R5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector14~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(1));

-- Location: LCCOMB_X107_Y43_N30
\proc|mux|Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal6~0_combout\ = (!\proc|mux_control\(8) & (!\proc|mux_control\(9) & (\proc|mux_control\(3) & \proc|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(8),
	datab => \proc|mux_control\(9),
	datac => \proc|mux_control\(3),
	datad => \proc|mux|Equal0~1_combout\,
	combout => \proc|mux|Equal6~0_combout\);

-- Location: LCCOMB_X108_Y45_N0
\proc|mux|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~0_combout\ = (\proc|mux|Equal1~0_combout\ & ((\proc|R0|Q\(1)) # ((\proc|R5|Q\(1) & \proc|mux|Equal6~0_combout\)))) # (!\proc|mux|Equal1~0_combout\ & (((\proc|R5|Q\(1) & \proc|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal1~0_combout\,
	datab => \proc|R0|Q\(1),
	datac => \proc|R5|Q\(1),
	datad => \proc|mux|Equal6~0_combout\,
	combout => \proc|mux|Selector14~0_combout\);

-- Location: LCCOMB_X109_Y45_N6
\proc|R1|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[1]~feeder_combout\ = \proc|mux|Selector14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector14~8_combout\,
	combout => \proc|R1|Q[1]~feeder_combout\);

-- Location: LCCOMB_X111_Y44_N30
\proc|Selector15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector15~3_combout\ = (\proc|IR|Q\(10) & (!\proc|IR|Q\(9) & (\proc|IR|Q\(11) & !\proc|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(10),
	datab => \proc|IR|Q\(9),
	datac => \proc|IR|Q\(11),
	datad => \proc|WideOr15~combout\,
	combout => \proc|Selector15~3_combout\);

-- Location: LCCOMB_X111_Y44_N8
\proc|R_enable[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(1) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector15~3_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|R_enable\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector15~3_combout\,
	datac => \proc|R_enable\(1),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(1));

-- Location: FF_X109_Y45_N7
\proc|R1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[1]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(1));

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

-- Location: LCCOMB_X108_Y43_N0
\proc|mux|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal0~2_combout\ = (\proc|mux_control\(9) & (!\proc|mux_control\(8) & (!\proc|mux_control\(3) & \proc|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(9),
	datab => \proc|mux_control\(8),
	datac => \proc|mux_control\(3),
	datad => \proc|mux|Equal0~1_combout\,
	combout => \proc|mux|Equal0~2_combout\);

-- Location: LCCOMB_X108_Y43_N16
\proc|mux|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal2~0_combout\ = (!\proc|mux_control\(3) & (!\proc|mux_control\(6) & (!\proc|mux_control\(9) & !\proc|mux_control\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(3),
	datab => \proc|mux_control\(6),
	datac => \proc|mux_control\(9),
	datad => \proc|mux_control\(8),
	combout => \proc|mux|Equal2~0_combout\);

-- Location: LCCOMB_X107_Y43_N16
\proc|mux|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal2~1_combout\ = (\proc|mux_control\(7) & (!\proc|mux_control\(5) & (\proc|mux|Equal0~0_combout\ & \proc|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(7),
	datab => \proc|mux_control\(5),
	datac => \proc|mux|Equal0~0_combout\,
	datad => \proc|mux|Equal2~0_combout\,
	combout => \proc|mux|Equal2~1_combout\);

-- Location: LCCOMB_X109_Y45_N4
\proc|mux|Selector14~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~7_combout\ = (\proc|R1|Q\(1) & ((\proc|mux|Equal2~1_combout\) # ((\SW[1]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(1) & (\SW[1]~input_o\ & (\proc|mux|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(1),
	datab => \SW[1]~input_o\,
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Equal2~1_combout\,
	combout => \proc|mux|Selector14~7_combout\);

-- Location: LCCOMB_X111_Y43_N2
\proc|Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector11~3_combout\ = (\proc|IR|Q\(10) & (\proc|IR|Q\(9) & (!\proc|WideOr15~combout\ & !\proc|IR|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(10),
	datab => \proc|IR|Q\(9),
	datac => \proc|WideOr15~combout\,
	datad => \proc|IR|Q\(11),
	combout => \proc|Selector11~3_combout\);

-- Location: LCCOMB_X111_Y43_N28
\proc|R_enable[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(4) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector11~3_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|R_enable\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector11~3_combout\,
	datac => \proc|R_enable\(4),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(4));

-- Location: FF_X107_Y45_N23
\proc|R4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector14~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(1));

-- Location: LCCOMB_X108_Y43_N30
\proc|mux|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal5~0_combout\ = (!\proc|mux_control\(7) & (!\proc|mux_control\(0) & (!\proc|mux_control\(5) & \proc|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(7),
	datab => \proc|mux_control\(0),
	datac => \proc|mux_control\(5),
	datad => \proc|mux|Equal2~0_combout\,
	combout => \proc|mux|Equal5~0_combout\);

-- Location: LCCOMB_X108_Y43_N8
\proc|mux|Equal5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal5~1_combout\ = (!\proc|mux_control\(2) & (!\proc|mux_control\(1) & (\proc|mux|Equal5~0_combout\ & \proc|mux_control\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux_control\(1),
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux_control\(4),
	combout => \proc|mux|Equal5~1_combout\);

-- Location: LCCOMB_X107_Y45_N22
\proc|mux|Selector14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~6_combout\ = (\proc|R4|Q\(1) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(1),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector14~6_combout\);

-- Location: LCCOMB_X108_Y43_N2
\proc|mux|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal4~0_combout\ = (!\proc|mux_control\(7) & !\proc|mux_control\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(7),
	datad => \proc|mux_control\(0),
	combout => \proc|mux|Equal4~0_combout\);

-- Location: LCCOMB_X106_Y43_N30
\proc|Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector12~3_combout\ = (\proc|IR|Q\(11) & (!\proc|IR|Q\(9) & (!\proc|WideOr15~combout\ & !\proc|IR|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(11),
	datab => \proc|IR|Q\(9),
	datac => \proc|WideOr15~combout\,
	datad => \proc|IR|Q\(10),
	combout => \proc|Selector12~3_combout\);

-- Location: LCCOMB_X106_Y43_N2
\proc|R_enable[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(3) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|Selector12~3_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|R_enable\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R_enable\(3),
	datac => \proc|Selector12~3_combout\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(3));

-- Location: FF_X109_Y42_N19
\proc|R3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector14~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(1));

-- Location: LCCOMB_X107_Y43_N28
\proc|mux|Equal4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal4~1_combout\ = (!\proc|mux_control\(4) & (\proc|mux_control\(5) & (!\proc|mux_control\(2) & !\proc|mux_control\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(4),
	datab => \proc|mux_control\(5),
	datac => \proc|mux_control\(2),
	datad => \proc|mux_control\(1),
	combout => \proc|mux|Equal4~1_combout\);

-- Location: LCCOMB_X109_Y42_N18
\proc|mux|Selector14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(1) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(1),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector14~2_combout\);

-- Location: LCCOMB_X111_Y44_N26
\proc|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector7~2_combout\ = (!\proc|IR|Q\(10) & (!\proc|IR|Q\(9) & (!\proc|IR|Q\(11) & !\proc|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(10),
	datab => \proc|IR|Q\(9),
	datac => \proc|IR|Q\(11),
	datad => \proc|WideOr15~combout\,
	combout => \proc|Selector7~2_combout\);

-- Location: LCCOMB_X111_Y44_N4
\proc|R_enable[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(7) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector7~2_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|R_enable\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|Selector7~2_combout\,
	datac => \proc|R_enable\(7),
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(7));

-- Location: FF_X107_Y45_N21
\proc|R7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector14~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(1));

-- Location: LCCOMB_X108_Y44_N28
\proc|mux|Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal8~0_combout\ = (\proc|mux_control\(1) & !\proc|mux_control\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(1),
	datad => \proc|mux_control\(4),
	combout => \proc|mux|Equal8~0_combout\);

-- Location: LCCOMB_X107_Y45_N20
\proc|mux|Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R7|Q\(1) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R7|Q\(1),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector14~1_combout\);

-- Location: LCCOMB_X107_Y43_N14
\proc|mux|Equal4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal4~2_combout\ = (!\proc|mux_control\(1) & !\proc|mux_control\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux_control\(1),
	datad => \proc|mux_control\(4),
	combout => \proc|mux|Equal4~2_combout\);

-- Location: LCCOMB_X111_Y44_N20
\proc|Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector8~3_combout\ = (!\proc|IR|Q\(10) & (\proc|IR|Q\(9) & (!\proc|IR|Q\(11) & !\proc|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(10),
	datab => \proc|IR|Q\(9),
	datac => \proc|IR|Q\(11),
	datad => \proc|WideOr15~combout\,
	combout => \proc|Selector8~3_combout\);

-- Location: LCCOMB_X111_Y44_N18
\proc|R_enable[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(6) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|Selector8~3_combout\)) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|R_enable\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|Selector8~3_combout\,
	datac => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	datad => \proc|R_enable\(6),
	combout => \proc|R_enable\(6));

-- Location: FF_X108_Y41_N13
\proc|R6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector14~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(1));

-- Location: LCCOMB_X108_Y41_N12
\proc|mux|Selector14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(1) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(1),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector14~3_combout\);

-- Location: LCCOMB_X107_Y43_N0
\proc|mux|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal3~0_combout\ = (!\proc|mux_control\(7) & (!\proc|mux_control\(5) & \proc|mux|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux_control\(7),
	datac => \proc|mux_control\(5),
	datad => \proc|mux|Equal0~0_combout\,
	combout => \proc|mux|Equal3~0_combout\);

-- Location: LCCOMB_X111_Y44_N24
\proc|Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|Selector13~2_combout\ = (!\proc|IR|Q\(10) & (\proc|IR|Q\(9) & (\proc|IR|Q\(11) & !\proc|WideOr15~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|IR|Q\(10),
	datab => \proc|IR|Q\(9),
	datac => \proc|IR|Q\(11),
	datad => \proc|WideOr15~combout\,
	combout => \proc|Selector13~2_combout\);

-- Location: LCCOMB_X111_Y44_N10
\proc|R_enable[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R_enable\(2) = (GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & ((\proc|Selector13~2_combout\))) # (!GLOBAL(\proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\) & (\proc|R_enable\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R_enable\(2),
	datab => \proc|Selector13~2_combout\,
	datad => \proc|fsmflipflops:current_state_var.fetch~clkctrl_outclk\,
	combout => \proc|R_enable\(2));

-- Location: FF_X109_Y44_N1
\proc|R2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector14~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(1));

-- Location: LCCOMB_X108_Y41_N4
\proc|mux|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Equal2~2_combout\ = (!\proc|mux_control\(3) & (!\proc|mux_control\(8) & !\proc|mux_control\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(3),
	datac => \proc|mux_control\(8),
	datad => \proc|mux_control\(9),
	combout => \proc|mux|Equal2~2_combout\);

-- Location: LCCOMB_X109_Y44_N0
\proc|mux|Selector14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(1) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(1),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector14~4_combout\);

-- Location: LCCOMB_X109_Y45_N16
\proc|mux|Selector14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~5_combout\ = (\proc|mux|Selector14~2_combout\) # ((\proc|mux|Selector14~1_combout\) # ((\proc|mux|Selector14~3_combout\) # (\proc|mux|Selector14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~2_combout\,
	datab => \proc|mux|Selector14~1_combout\,
	datac => \proc|mux|Selector14~3_combout\,
	datad => \proc|mux|Selector14~4_combout\,
	combout => \proc|mux|Selector14~5_combout\);

-- Location: LCCOMB_X109_Y45_N10
\proc|mux|Selector14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector14~8_combout\ = (\proc|mux|Selector14~0_combout\) # ((\proc|mux|Selector14~7_combout\) # ((\proc|mux|Selector14~6_combout\) # (\proc|mux|Selector14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~0_combout\,
	datab => \proc|mux|Selector14~7_combout\,
	datac => \proc|mux|Selector14~6_combout\,
	datad => \proc|mux|Selector14~5_combout\,
	combout => \proc|mux|Selector14~8_combout\);

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

-- Location: LCCOMB_X109_Y45_N8
\proc|R1|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[2]~feeder_combout\ = \proc|mux|Selector13~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector13~8_combout\,
	combout => \proc|R1|Q[2]~feeder_combout\);

-- Location: FF_X109_Y45_N9
\proc|R1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[2]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(2));

-- Location: LCCOMB_X109_Y45_N26
\proc|mux|Selector13~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~7_combout\ = (\SW[2]~input_o\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R1|Q\(2) & \proc|mux|Equal2~1_combout\)))) # (!\SW[2]~input_o\ & (\proc|R1|Q\(2) & ((\proc|mux|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \proc|R1|Q\(2),
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Equal2~1_combout\,
	combout => \proc|mux|Selector13~7_combout\);

-- Location: LCCOMB_X109_Y45_N12
\proc|R0|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[2]~feeder_combout\ = \proc|mux|Selector13~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector13~8_combout\,
	combout => \proc|R0|Q[2]~feeder_combout\);

-- Location: FF_X109_Y45_N13
\proc|R0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[2]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(2));

-- Location: FF_X108_Y45_N19
\proc|R5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector13~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(2));

-- Location: LCCOMB_X108_Y45_N18
\proc|mux|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~0_combout\ = (\proc|mux|Equal1~0_combout\ & ((\proc|R0|Q\(2)) # ((\proc|R5|Q\(2) & \proc|mux|Equal6~0_combout\)))) # (!\proc|mux|Equal1~0_combout\ & (((\proc|R5|Q\(2) & \proc|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal1~0_combout\,
	datab => \proc|R0|Q\(2),
	datac => \proc|R5|Q\(2),
	datad => \proc|mux|Equal6~0_combout\,
	combout => \proc|mux|Selector13~0_combout\);

-- Location: FF_X107_Y45_N7
\proc|R4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector13~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(2));

-- Location: LCCOMB_X107_Y45_N6
\proc|mux|Selector13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~6_combout\ = (\proc|R4|Q\(2) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(2),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector13~6_combout\);

-- Location: FF_X108_Y44_N27
\proc|R7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector13~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(2));

-- Location: LCCOMB_X108_Y44_N26
\proc|mux|Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~1_combout\ = (\proc|mux|Equal5~0_combout\ & (!\proc|mux_control\(2) & (\proc|R7|Q\(2) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~0_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(2),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector13~1_combout\);

-- Location: FF_X109_Y44_N11
\proc|R2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector13~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(2));

-- Location: LCCOMB_X109_Y44_N10
\proc|mux|Selector13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(2) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(2),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector13~4_combout\);

-- Location: FF_X108_Y41_N11
\proc|R6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector13~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(2));

-- Location: LCCOMB_X108_Y41_N10
\proc|mux|Selector13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(2) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(2),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector13~3_combout\);

-- Location: FF_X109_Y42_N21
\proc|R3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector13~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(2));

-- Location: LCCOMB_X109_Y42_N20
\proc|mux|Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(2) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(2),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector13~2_combout\);

-- Location: LCCOMB_X109_Y45_N18
\proc|mux|Selector13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~5_combout\ = (\proc|mux|Selector13~1_combout\) # ((\proc|mux|Selector13~4_combout\) # ((\proc|mux|Selector13~3_combout\) # (\proc|mux|Selector13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector13~1_combout\,
	datab => \proc|mux|Selector13~4_combout\,
	datac => \proc|mux|Selector13~3_combout\,
	datad => \proc|mux|Selector13~2_combout\,
	combout => \proc|mux|Selector13~5_combout\);

-- Location: LCCOMB_X109_Y45_N20
\proc|mux|Selector13~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector13~8_combout\ = (\proc|mux|Selector13~7_combout\) # ((\proc|mux|Selector13~0_combout\) # ((\proc|mux|Selector13~6_combout\) # (\proc|mux|Selector13~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector13~7_combout\,
	datab => \proc|mux|Selector13~0_combout\,
	datac => \proc|mux|Selector13~6_combout\,
	datad => \proc|mux|Selector13~5_combout\,
	combout => \proc|mux|Selector13~8_combout\);

-- Location: LCCOMB_X109_Y45_N28
\proc|R0|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[3]~feeder_combout\ = \proc|mux|Selector12~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector12~8_combout\,
	combout => \proc|R0|Q[3]~feeder_combout\);

-- Location: FF_X109_Y45_N29
\proc|R0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[3]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(3));

-- Location: FF_X108_Y45_N17
\proc|R5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector12~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(3));

-- Location: LCCOMB_X108_Y45_N16
\proc|mux|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~0_combout\ = (\proc|mux|Equal1~0_combout\ & ((\proc|R0|Q\(3)) # ((\proc|R5|Q\(3) & \proc|mux|Equal6~0_combout\)))) # (!\proc|mux|Equal1~0_combout\ & (((\proc|R5|Q\(3) & \proc|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal1~0_combout\,
	datab => \proc|R0|Q\(3),
	datac => \proc|R5|Q\(3),
	datad => \proc|mux|Equal6~0_combout\,
	combout => \proc|mux|Selector12~0_combout\);

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

-- Location: LCCOMB_X109_Y45_N14
\proc|R1|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[3]~feeder_combout\ = \proc|mux|Selector12~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector12~8_combout\,
	combout => \proc|R1|Q[3]~feeder_combout\);

-- Location: FF_X109_Y45_N15
\proc|R1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[3]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(3));

-- Location: LCCOMB_X109_Y45_N24
\proc|mux|Selector12~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~7_combout\ = (\SW[3]~input_o\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R1|Q\(3) & \proc|mux|Equal2~1_combout\)))) # (!\SW[3]~input_o\ & (\proc|R1|Q\(3) & ((\proc|mux|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \proc|R1|Q\(3),
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Equal2~1_combout\,
	combout => \proc|mux|Selector12~7_combout\);

-- Location: FF_X107_Y45_N25
\proc|R4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector12~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(3));

-- Location: LCCOMB_X107_Y45_N24
\proc|mux|Selector12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~6_combout\ = (\proc|R4|Q\(3) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(3),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector12~6_combout\);

-- Location: FF_X108_Y44_N11
\proc|R6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector12~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(3));

-- Location: LCCOMB_X108_Y44_N10
\proc|mux|Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(3) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(3),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector12~3_combout\);

-- Location: FF_X109_Y44_N25
\proc|R2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector12~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(3));

-- Location: LCCOMB_X109_Y44_N24
\proc|mux|Selector12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(3) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(3),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector12~4_combout\);

-- Location: FF_X108_Y44_N9
\proc|R7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector12~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(3));

-- Location: LCCOMB_X108_Y44_N8
\proc|mux|Selector12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~1_combout\ = (\proc|mux|Equal5~0_combout\ & (!\proc|mux_control\(2) & (\proc|R7|Q\(3) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~0_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(3),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector12~1_combout\);

-- Location: FF_X108_Y43_N7
\proc|R3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector12~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(3));

-- Location: LCCOMB_X108_Y43_N6
\proc|mux|Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~2_combout\ = (\proc|mux|Equal2~0_combout\ & (\proc|mux|Equal4~0_combout\ & (\proc|R3|Q\(3) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~0_combout\,
	datab => \proc|mux|Equal4~0_combout\,
	datac => \proc|R3|Q\(3),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector12~2_combout\);

-- Location: LCCOMB_X108_Y44_N0
\proc|mux|Selector12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~5_combout\ = (\proc|mux|Selector12~3_combout\) # ((\proc|mux|Selector12~4_combout\) # ((\proc|mux|Selector12~1_combout\) # (\proc|mux|Selector12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector12~3_combout\,
	datab => \proc|mux|Selector12~4_combout\,
	datac => \proc|mux|Selector12~1_combout\,
	datad => \proc|mux|Selector12~2_combout\,
	combout => \proc|mux|Selector12~5_combout\);

-- Location: LCCOMB_X109_Y45_N30
\proc|mux|Selector12~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector12~8_combout\ = (\proc|mux|Selector12~0_combout\) # ((\proc|mux|Selector12~7_combout\) # ((\proc|mux|Selector12~6_combout\) # (\proc|mux|Selector12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector12~0_combout\,
	datab => \proc|mux|Selector12~7_combout\,
	datac => \proc|mux|Selector12~6_combout\,
	datad => \proc|mux|Selector12~5_combout\,
	combout => \proc|mux|Selector12~8_combout\);

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

-- Location: FF_X108_Y43_N23
\proc|R5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector15~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(0));

-- Location: LCCOMB_X108_Y43_N22
\proc|mux|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~2_combout\ = (\SW[0]~input_o\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R5|Q\(0) & \proc|mux|Equal6~0_combout\)))) # (!\SW[0]~input_o\ & (((\proc|R5|Q\(0) & \proc|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \proc|mux|Equal0~2_combout\,
	datac => \proc|R5|Q\(0),
	datad => \proc|mux|Equal6~0_combout\,
	combout => \proc|mux|Selector15~2_combout\);

-- Location: FF_X108_Y43_N21
\proc|R3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector15~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(0));

-- Location: LCCOMB_X108_Y43_N20
\proc|mux|Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~0_combout\ = (\proc|mux|Equal2~0_combout\ & (\proc|mux|Equal4~0_combout\ & (\proc|R3|Q\(0) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~0_combout\,
	datab => \proc|mux|Equal4~0_combout\,
	datac => \proc|R3|Q\(0),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector15~0_combout\);

-- Location: LCCOMB_X109_Y45_N0
\proc|R0|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[0]~feeder_combout\ = \proc|mux|Selector15~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector15~7_combout\,
	combout => \proc|R0|Q[0]~feeder_combout\);

-- Location: FF_X109_Y45_N1
\proc|R0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[0]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(0));

-- Location: FF_X109_Y45_N3
\proc|R1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector15~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(0));

-- Location: LCCOMB_X109_Y45_N2
\proc|mux|Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~1_combout\ = (\proc|mux|Equal2~1_combout\ & ((\proc|R1|Q\(0)) # ((\proc|R0|Q\(0) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal2~1_combout\ & (\proc|R0|Q\(0) & ((\proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~1_combout\,
	datab => \proc|R0|Q\(0),
	datac => \proc|R1|Q\(0),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector15~1_combout\);

-- Location: FF_X109_Y44_N23
\proc|R2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector15~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(0));

-- Location: LCCOMB_X109_Y44_N22
\proc|mux|Selector15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~3_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(0) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(0),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector15~3_combout\);

-- Location: FF_X109_Y44_N5
\proc|R4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector15~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(0));

-- Location: FF_X108_Y44_N19
\proc|R7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector15~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(0));

-- Location: FF_X108_Y44_N17
\proc|R6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector15~7_combout\,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(0));

-- Location: LCCOMB_X108_Y44_N18
\proc|mux|Selector15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~4_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal4~2_combout\ & ((\proc|R6|Q\(0))))) # (!\proc|mux_control\(2) & (((\proc|R7|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(0),
	datad => \proc|R6|Q\(0),
	combout => \proc|mux|Selector15~4_combout\);

-- Location: LCCOMB_X108_Y44_N14
\proc|mux|Selector15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~5_combout\ = (\proc|mux|Equal5~0_combout\ & (\proc|mux|Selector15~4_combout\ & ((\proc|mux|Equal8~0_combout\) # (\proc|mux_control\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~0_combout\,
	datab => \proc|mux|Equal8~0_combout\,
	datac => \proc|mux_control\(2),
	datad => \proc|mux|Selector15~4_combout\,
	combout => \proc|mux|Selector15~5_combout\);

-- Location: LCCOMB_X109_Y44_N4
\proc|mux|Selector15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~6_combout\ = (\proc|mux|Selector15~3_combout\) # ((\proc|mux|Selector15~5_combout\) # ((\proc|mux|Equal5~1_combout\ & \proc|R4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector15~3_combout\,
	datab => \proc|mux|Equal5~1_combout\,
	datac => \proc|R4|Q\(0),
	datad => \proc|mux|Selector15~5_combout\,
	combout => \proc|mux|Selector15~6_combout\);

-- Location: LCCOMB_X108_Y44_N16
\proc|mux|Selector15~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector15~7_combout\ = (\proc|mux|Selector15~2_combout\) # ((\proc|mux|Selector15~0_combout\) # ((\proc|mux|Selector15~1_combout\) # (\proc|mux|Selector15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector15~2_combout\,
	datab => \proc|mux|Selector15~0_combout\,
	datac => \proc|mux|Selector15~1_combout\,
	datad => \proc|mux|Selector15~6_combout\,
	combout => \proc|mux|Selector15~7_combout\);

-- Location: LCCOMB_X107_Y45_N4
\disp0|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[0]~0_combout\ = (\proc|mux|Selector13~8_combout\ & (!\proc|mux|Selector14~8_combout\ & (\proc|mux|Selector12~8_combout\ $ (!\proc|mux|Selector15~7_combout\)))) # (!\proc|mux|Selector13~8_combout\ & (\proc|mux|Selector15~7_combout\ & 
-- (\proc|mux|Selector14~8_combout\ $ (!\proc|mux|Selector12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y45_N26
\disp0|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[1]~1_combout\ = (\proc|mux|Selector14~8_combout\ & ((\proc|mux|Selector15~7_combout\ & ((\proc|mux|Selector12~8_combout\))) # (!\proc|mux|Selector15~7_combout\ & (\proc|mux|Selector13~8_combout\)))) # (!\proc|mux|Selector14~8_combout\ & 
-- (\proc|mux|Selector13~8_combout\ & (\proc|mux|Selector12~8_combout\ $ (\proc|mux|Selector15~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[1]~1_combout\);

-- Location: LCCOMB_X107_Y45_N16
\disp0|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[2]~2_combout\ = (\proc|mux|Selector13~8_combout\ & (\proc|mux|Selector12~8_combout\ & ((\proc|mux|Selector14~8_combout\) # (!\proc|mux|Selector15~7_combout\)))) # (!\proc|mux|Selector13~8_combout\ & (\proc|mux|Selector14~8_combout\ & 
-- (!\proc|mux|Selector12~8_combout\ & !\proc|mux|Selector15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[2]~2_combout\);

-- Location: LCCOMB_X107_Y45_N18
\disp0|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[3]~3_combout\ = (\proc|mux|Selector15~7_combout\ & (\proc|mux|Selector14~8_combout\ $ ((!\proc|mux|Selector13~8_combout\)))) # (!\proc|mux|Selector15~7_combout\ & ((\proc|mux|Selector14~8_combout\ & (!\proc|mux|Selector13~8_combout\ & 
-- \proc|mux|Selector12~8_combout\)) # (!\proc|mux|Selector14~8_combout\ & (\proc|mux|Selector13~8_combout\ & !\proc|mux|Selector12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[3]~3_combout\);

-- Location: LCCOMB_X107_Y45_N8
\disp0|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[4]~4_combout\ = (\proc|mux|Selector14~8_combout\ & (((!\proc|mux|Selector12~8_combout\ & \proc|mux|Selector15~7_combout\)))) # (!\proc|mux|Selector14~8_combout\ & ((\proc|mux|Selector13~8_combout\ & (!\proc|mux|Selector12~8_combout\)) # 
-- (!\proc|mux|Selector13~8_combout\ & ((\proc|mux|Selector15~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[4]~4_combout\);

-- Location: LCCOMB_X107_Y45_N2
\disp0|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[5]~5_combout\ = (\proc|mux|Selector14~8_combout\ & (!\proc|mux|Selector12~8_combout\ & ((\proc|mux|Selector15~7_combout\) # (!\proc|mux|Selector13~8_combout\)))) # (!\proc|mux|Selector14~8_combout\ & (\proc|mux|Selector15~7_combout\ & 
-- (\proc|mux|Selector13~8_combout\ $ (!\proc|mux|Selector12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[5]~5_combout\);

-- Location: LCCOMB_X107_Y45_N28
\disp0|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[6]~6_combout\ = (\proc|mux|Selector15~7_combout\ & (!\proc|mux|Selector12~8_combout\ & (\proc|mux|Selector14~8_combout\ $ (!\proc|mux|Selector13~8_combout\)))) # (!\proc|mux|Selector15~7_combout\ & (!\proc|mux|Selector14~8_combout\ & 
-- (\proc|mux|Selector13~8_combout\ $ (!\proc|mux|Selector12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector14~8_combout\,
	datab => \proc|mux|Selector13~8_combout\,
	datac => \proc|mux|Selector12~8_combout\,
	datad => \proc|mux|Selector15~7_combout\,
	combout => \disp0|dec_out[6]~6_combout\);

-- Location: LCCOMB_X108_Y42_N24
\proc|R4|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R4|Q[6]~feeder_combout\ = \proc|mux|Selector9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector9~8_combout\,
	combout => \proc|R4|Q[6]~feeder_combout\);

-- Location: FF_X108_Y42_N25
\proc|R4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R4|Q[6]~feeder_combout\,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(6));

-- Location: LCCOMB_X109_Y42_N30
\proc|mux|Selector9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~6_combout\ = (\proc|mux|Equal5~1_combout\ & \proc|R4|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Equal5~1_combout\,
	datad => \proc|R4|Q\(6),
	combout => \proc|mux|Selector9~6_combout\);

-- Location: LCCOMB_X109_Y42_N12
\proc|R1|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[6]~feeder_combout\ = \proc|mux|Selector9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector9~8_combout\,
	combout => \proc|R1|Q[6]~feeder_combout\);

-- Location: FF_X109_Y42_N13
\proc|R1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[6]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(6));

-- Location: LCCOMB_X109_Y42_N14
\proc|mux|Selector9~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~7_combout\ = (\proc|R1|Q\(6) & ((\proc|mux|Equal2~1_combout\) # ((\SW[6]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(6) & (\SW[6]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(6),
	datab => \SW[6]~input_o\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector9~7_combout\);

-- Location: FF_X107_Y42_N13
\proc|R5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector9~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(6));

-- Location: LCCOMB_X107_Y42_N18
\proc|R0|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[6]~feeder_combout\ = \proc|mux|Selector9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector9~8_combout\,
	combout => \proc|R0|Q[6]~feeder_combout\);

-- Location: FF_X107_Y42_N19
\proc|R0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[6]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(6));

-- Location: LCCOMB_X107_Y42_N12
\proc|mux|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(6)) # ((\proc|mux|Equal1~0_combout\ & \proc|R0|Q\(6))))) # (!\proc|mux|Equal6~0_combout\ & (\proc|mux|Equal1~0_combout\ & ((\proc|R0|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|mux|Equal1~0_combout\,
	datac => \proc|R5|Q\(6),
	datad => \proc|R0|Q\(6),
	combout => \proc|mux|Selector9~0_combout\);

-- Location: FF_X109_Y42_N27
\proc|R3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector9~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(6));

-- Location: LCCOMB_X109_Y42_N26
\proc|mux|Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(6) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(6),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector9~2_combout\);

-- Location: FF_X108_Y42_N31
\proc|R7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector9~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(6));

-- Location: LCCOMB_X108_Y42_N30
\proc|mux|Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~1_combout\ = (\proc|mux|Equal5~0_combout\ & (!\proc|mux_control\(2) & (\proc|R7|Q\(6) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~0_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(6),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector9~1_combout\);

-- Location: FF_X106_Y42_N23
\proc|R6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector9~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(6));

-- Location: LCCOMB_X106_Y42_N22
\proc|mux|Selector9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~3_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R6|Q\(6) & \proc|mux|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R6|Q\(6),
	datad => \proc|mux|Equal4~2_combout\,
	combout => \proc|mux|Selector9~3_combout\);

-- Location: FF_X107_Y41_N1
\proc|R2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector9~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(6));

-- Location: LCCOMB_X107_Y41_N0
\proc|mux|Selector9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~4_combout\ = (\proc|mux|Equal2~2_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(6) & \proc|mux|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~2_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(6),
	datad => \proc|mux|Equal3~0_combout\,
	combout => \proc|mux|Selector9~4_combout\);

-- Location: LCCOMB_X109_Y42_N0
\proc|mux|Selector9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~5_combout\ = (\proc|mux|Selector9~2_combout\) # ((\proc|mux|Selector9~1_combout\) # ((\proc|mux|Selector9~3_combout\) # (\proc|mux|Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~2_combout\,
	datab => \proc|mux|Selector9~1_combout\,
	datac => \proc|mux|Selector9~3_combout\,
	datad => \proc|mux|Selector9~4_combout\,
	combout => \proc|mux|Selector9~5_combout\);

-- Location: LCCOMB_X109_Y42_N4
\proc|mux|Selector9~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector9~8_combout\ = (\proc|mux|Selector9~6_combout\) # ((\proc|mux|Selector9~7_combout\) # ((\proc|mux|Selector9~0_combout\) # (\proc|mux|Selector9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~6_combout\,
	datab => \proc|mux|Selector9~7_combout\,
	datac => \proc|mux|Selector9~0_combout\,
	datad => \proc|mux|Selector9~5_combout\,
	combout => \proc|mux|Selector9~8_combout\);

-- Location: LCCOMB_X109_Y42_N28
\proc|R1|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[7]~feeder_combout\ = \proc|mux|Selector8~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector8~8_combout\,
	combout => \proc|R1|Q[7]~feeder_combout\);

-- Location: FF_X109_Y42_N29
\proc|R1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[7]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(7));

-- Location: LCCOMB_X109_Y42_N10
\proc|mux|Selector8~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~7_combout\ = (\SW[7]~input_o\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R1|Q\(7) & \proc|mux|Equal2~1_combout\)))) # (!\SW[7]~input_o\ & (\proc|R1|Q\(7) & (\proc|mux|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \proc|R1|Q\(7),
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector8~7_combout\);

-- Location: FF_X108_Y42_N21
\proc|R4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector8~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(7));

-- Location: LCCOMB_X108_Y42_N20
\proc|mux|Selector8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~6_combout\ = (\proc|R4|Q\(7) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(7),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector8~6_combout\);

-- Location: LCCOMB_X107_Y42_N14
\proc|R0|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[7]~feeder_combout\ = \proc|mux|Selector8~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector8~8_combout\,
	combout => \proc|R0|Q[7]~feeder_combout\);

-- Location: FF_X107_Y42_N15
\proc|R0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[7]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(7));

-- Location: FF_X107_Y42_N21
\proc|R5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector8~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(7));

-- Location: LCCOMB_X107_Y42_N20
\proc|mux|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(7)) # ((\proc|R0|Q\(7) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (\proc|R0|Q\(7) & ((\proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|R0|Q\(7),
	datac => \proc|R5|Q\(7),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector8~0_combout\);

-- Location: FF_X108_Y42_N15
\proc|R7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector8~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(7));

-- Location: LCCOMB_X108_Y42_N14
\proc|mux|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~1_combout\ = (\proc|mux|Equal5~0_combout\ & (!\proc|mux_control\(2) & (\proc|R7|Q\(7) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~0_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(7),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector8~1_combout\);

-- Location: FF_X109_Y42_N25
\proc|R3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector8~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(7));

-- Location: LCCOMB_X109_Y42_N24
\proc|mux|Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(7) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(7),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector8~2_combout\);

-- Location: FF_X106_Y42_N21
\proc|R6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector8~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(7));

-- Location: LCCOMB_X106_Y42_N20
\proc|mux|Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~3_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R6|Q\(7) & \proc|mux|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R6|Q\(7),
	datad => \proc|mux|Equal4~2_combout\,
	combout => \proc|mux|Selector8~3_combout\);

-- Location: FF_X109_Y44_N19
\proc|R2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector8~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(7));

-- Location: LCCOMB_X109_Y44_N18
\proc|mux|Selector8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(7) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(7),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector8~4_combout\);

-- Location: LCCOMB_X109_Y42_N6
\proc|mux|Selector8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~5_combout\ = (\proc|mux|Selector8~1_combout\) # ((\proc|mux|Selector8~2_combout\) # ((\proc|mux|Selector8~3_combout\) # (\proc|mux|Selector8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector8~1_combout\,
	datab => \proc|mux|Selector8~2_combout\,
	datac => \proc|mux|Selector8~3_combout\,
	datad => \proc|mux|Selector8~4_combout\,
	combout => \proc|mux|Selector8~5_combout\);

-- Location: LCCOMB_X109_Y42_N16
\proc|mux|Selector8~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector8~8_combout\ = (\proc|mux|Selector8~7_combout\) # ((\proc|mux|Selector8~6_combout\) # ((\proc|mux|Selector8~0_combout\) # (\proc|mux|Selector8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector8~7_combout\,
	datab => \proc|mux|Selector8~6_combout\,
	datac => \proc|mux|Selector8~0_combout\,
	datad => \proc|mux|Selector8~5_combout\,
	combout => \proc|mux|Selector8~8_combout\);

-- Location: LCCOMB_X106_Y42_N16
\proc|mux|Selector11~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~10_combout\ = (!\proc|mux_control\(4) & (!\proc|mux_control\(1) & (\proc|mux|Equal5~0_combout\ & \proc|mux_control\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(4),
	datab => \proc|mux_control\(1),
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux_control\(2),
	combout => \proc|mux|Selector11~10_combout\);

-- Location: FF_X106_Y42_N15
\proc|R6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector11~9_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(4));

-- Location: LCCOMB_X105_Y42_N20
\proc|R1|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[4]~feeder_combout\ = \proc|mux|Selector11~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector11~9_combout\,
	combout => \proc|R1|Q[4]~feeder_combout\);

-- Location: FF_X105_Y42_N21
\proc|R1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[4]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(4));

-- Location: LCCOMB_X106_Y42_N14
\proc|mux|Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~3_combout\ = (\proc|mux|Equal2~1_combout\ & ((\proc|R1|Q\(4)) # ((\proc|mux|Selector11~10_combout\ & \proc|R6|Q\(4))))) # (!\proc|mux|Equal2~1_combout\ & (\proc|mux|Selector11~10_combout\ & (\proc|R6|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~1_combout\,
	datab => \proc|mux|Selector11~10_combout\,
	datac => \proc|R6|Q\(4),
	datad => \proc|R1|Q\(4),
	combout => \proc|mux|Selector11~3_combout\);

-- Location: LCCOMB_X108_Y42_N16
\proc|R4|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R4|Q[4]~feeder_combout\ = \proc|mux|Selector11~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector11~9_combout\,
	combout => \proc|R4|Q[4]~feeder_combout\);

-- Location: FF_X108_Y42_N17
\proc|R4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R4|Q[4]~feeder_combout\,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(4));

-- Location: FF_X107_Y42_N25
\proc|R5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector11~9_combout\,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(4));

-- Location: FF_X107_Y42_N27
\proc|R0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector11~9_combout\,
	sload => VCC,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(4));

-- Location: LCCOMB_X107_Y42_N10
\proc|mux|Selector11~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~7_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(4)) # ((\proc|R0|Q\(4) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (((\proc|R0|Q\(4) & \proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|R5|Q\(4),
	datac => \proc|R0|Q\(4),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector11~7_combout\);

-- Location: LCCOMB_X107_Y42_N16
\proc|mux|Selector11~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~8_combout\ = (\proc|mux|Selector11~7_combout\) # ((\proc|R4|Q\(4) & \proc|mux|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|R4|Q\(4),
	datac => \proc|mux|Equal5~1_combout\,
	datad => \proc|mux|Selector11~7_combout\,
	combout => \proc|mux|Selector11~8_combout\);

-- Location: LCCOMB_X106_Y42_N24
\proc|R2|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R2|Q[4]~feeder_combout\ = \proc|mux|Selector11~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector11~9_combout\,
	combout => \proc|R2|Q[4]~feeder_combout\);

-- Location: FF_X106_Y42_N25
\proc|R2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R2|Q[4]~feeder_combout\,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(4));

-- Location: LCCOMB_X107_Y42_N4
\proc|mux|Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~2_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|mux|Equal2~2_combout\ & \proc|R2|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|mux|Equal2~2_combout\,
	datad => \proc|R2|Q\(4),
	combout => \proc|mux|Selector11~2_combout\);

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

-- Location: FF_X108_Y44_N5
\proc|R7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector11~9_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(4));

-- Location: LCCOMB_X108_Y44_N4
\proc|mux|Selector11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~4_combout\ = (\proc|mux|Equal5~0_combout\ & (!\proc|mux_control\(2) & (\proc|R7|Q\(4) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~0_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(4),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector11~4_combout\);

-- Location: FF_X107_Y44_N21
\proc|R3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector11~9_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(4));

-- Location: LCCOMB_X107_Y44_N20
\proc|mux|Selector11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~5_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(4) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(4),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector11~5_combout\);

-- Location: LCCOMB_X108_Y44_N2
\proc|mux|Selector11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~6_combout\ = (\proc|mux|Selector11~4_combout\) # ((\proc|mux|Selector11~5_combout\) # ((\SW[4]~input_o\ & \proc|mux|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \proc|mux|Selector11~4_combout\,
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Selector11~5_combout\,
	combout => \proc|mux|Selector11~6_combout\);

-- Location: LCCOMB_X107_Y42_N24
\proc|mux|Selector11~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector11~9_combout\ = (\proc|mux|Selector11~3_combout\) # ((\proc|mux|Selector11~8_combout\) # ((\proc|mux|Selector11~2_combout\) # (\proc|mux|Selector11~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector11~3_combout\,
	datab => \proc|mux|Selector11~8_combout\,
	datac => \proc|mux|Selector11~2_combout\,
	datad => \proc|mux|Selector11~6_combout\,
	combout => \proc|mux|Selector11~9_combout\);

-- Location: FF_X107_Y41_N25
\proc|R4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector10~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(5));

-- Location: LCCOMB_X107_Y41_N24
\proc|mux|Selector10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~6_combout\ = (\proc|R4|Q\(5) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(5),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector10~6_combout\);

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

-- Location: FF_X109_Y41_N27
\proc|R1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector10~8_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(5));

-- Location: LCCOMB_X109_Y41_N24
\proc|mux|Selector10~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~7_combout\ = (\proc|mux|Equal2~1_combout\ & ((\proc|R1|Q\(5)) # ((\SW[5]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|mux|Equal2~1_combout\ & (\SW[5]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~1_combout\,
	datab => \SW[5]~input_o\,
	datac => \proc|R1|Q\(5),
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector10~7_combout\);

-- Location: FF_X108_Y41_N7
\proc|R7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector10~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(5));

-- Location: LCCOMB_X108_Y41_N6
\proc|mux|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R7|Q\(5) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R7|Q\(5),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector10~1_combout\);

-- Location: FF_X108_Y41_N29
\proc|R6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector10~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(5));

-- Location: LCCOMB_X108_Y41_N28
\proc|mux|Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(5) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(5),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector10~3_combout\);

-- Location: FF_X107_Y41_N7
\proc|R2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector10~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(5));

-- Location: LCCOMB_X107_Y41_N6
\proc|mux|Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~4_combout\ = (\proc|mux|Equal2~2_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(5) & \proc|mux|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~2_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(5),
	datad => \proc|mux|Equal3~0_combout\,
	combout => \proc|mux|Selector10~4_combout\);

-- Location: FF_X109_Y41_N17
\proc|R3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector10~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(5));

-- Location: LCCOMB_X109_Y41_N16
\proc|mux|Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(5) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(5),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector10~2_combout\);

-- Location: LCCOMB_X108_Y41_N26
\proc|mux|Selector10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~5_combout\ = (\proc|mux|Selector10~1_combout\) # ((\proc|mux|Selector10~3_combout\) # ((\proc|mux|Selector10~4_combout\) # (\proc|mux|Selector10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector10~1_combout\,
	datab => \proc|mux|Selector10~3_combout\,
	datac => \proc|mux|Selector10~4_combout\,
	datad => \proc|mux|Selector10~2_combout\,
	combout => \proc|mux|Selector10~5_combout\);

-- Location: LCCOMB_X108_Y45_N12
\proc|R5|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R5|Q[5]~feeder_combout\ = \proc|mux|Selector10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector10~8_combout\,
	combout => \proc|R5|Q[5]~feeder_combout\);

-- Location: FF_X108_Y45_N13
\proc|R5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R5|Q[5]~feeder_combout\,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(5));

-- Location: LCCOMB_X108_Y45_N10
\proc|R0|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[5]~feeder_combout\ = \proc|mux|Selector10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector10~8_combout\,
	combout => \proc|R0|Q[5]~feeder_combout\);

-- Location: FF_X108_Y45_N11
\proc|R0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[5]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(5));

-- Location: LCCOMB_X108_Y45_N14
\proc|mux|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~0_combout\ = (\proc|R5|Q\(5) & ((\proc|mux|Equal6~0_combout\) # ((\proc|mux|Equal1~0_combout\ & \proc|R0|Q\(5))))) # (!\proc|R5|Q\(5) & (((\proc|mux|Equal1~0_combout\ & \proc|R0|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R5|Q\(5),
	datab => \proc|mux|Equal6~0_combout\,
	datac => \proc|mux|Equal1~0_combout\,
	datad => \proc|R0|Q\(5),
	combout => \proc|mux|Selector10~0_combout\);

-- Location: LCCOMB_X109_Y41_N26
\proc|mux|Selector10~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector10~8_combout\ = (\proc|mux|Selector10~6_combout\) # ((\proc|mux|Selector10~7_combout\) # ((\proc|mux|Selector10~5_combout\) # (\proc|mux|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector10~6_combout\,
	datab => \proc|mux|Selector10~7_combout\,
	datac => \proc|mux|Selector10~5_combout\,
	datad => \proc|mux|Selector10~0_combout\,
	combout => \proc|mux|Selector10~8_combout\);

-- Location: LCCOMB_X50_Y45_N4
\disp1|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[0]~0_combout\ = (\proc|mux|Selector9~8_combout\ & (!\proc|mux|Selector10~8_combout\ & (\proc|mux|Selector8~8_combout\ $ (!\proc|mux|Selector11~9_combout\)))) # (!\proc|mux|Selector9~8_combout\ & (\proc|mux|Selector11~9_combout\ & 
-- (\proc|mux|Selector8~8_combout\ $ (!\proc|mux|Selector10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[0]~0_combout\);

-- Location: LCCOMB_X50_Y45_N14
\disp1|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[1]~1_combout\ = (\proc|mux|Selector8~8_combout\ & ((\proc|mux|Selector11~9_combout\ & ((\proc|mux|Selector10~8_combout\))) # (!\proc|mux|Selector11~9_combout\ & (\proc|mux|Selector9~8_combout\)))) # (!\proc|mux|Selector8~8_combout\ & 
-- (\proc|mux|Selector9~8_combout\ & (\proc|mux|Selector11~9_combout\ $ (\proc|mux|Selector10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[1]~1_combout\);

-- Location: LCCOMB_X50_Y45_N24
\disp1|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[2]~2_combout\ = (\proc|mux|Selector9~8_combout\ & (\proc|mux|Selector8~8_combout\ & ((\proc|mux|Selector10~8_combout\) # (!\proc|mux|Selector11~9_combout\)))) # (!\proc|mux|Selector9~8_combout\ & (!\proc|mux|Selector8~8_combout\ & 
-- (!\proc|mux|Selector11~9_combout\ & \proc|mux|Selector10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[2]~2_combout\);

-- Location: LCCOMB_X50_Y45_N10
\disp1|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[3]~3_combout\ = (\proc|mux|Selector11~9_combout\ & (\proc|mux|Selector9~8_combout\ $ (((!\proc|mux|Selector10~8_combout\))))) # (!\proc|mux|Selector11~9_combout\ & ((\proc|mux|Selector9~8_combout\ & (!\proc|mux|Selector8~8_combout\ & 
-- !\proc|mux|Selector10~8_combout\)) # (!\proc|mux|Selector9~8_combout\ & (\proc|mux|Selector8~8_combout\ & \proc|mux|Selector10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[3]~3_combout\);

-- Location: LCCOMB_X50_Y45_N0
\disp1|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[4]~4_combout\ = (\proc|mux|Selector10~8_combout\ & (((!\proc|mux|Selector8~8_combout\ & \proc|mux|Selector11~9_combout\)))) # (!\proc|mux|Selector10~8_combout\ & ((\proc|mux|Selector9~8_combout\ & (!\proc|mux|Selector8~8_combout\)) # 
-- (!\proc|mux|Selector9~8_combout\ & ((\proc|mux|Selector11~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[4]~4_combout\);

-- Location: LCCOMB_X50_Y45_N22
\disp1|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[5]~5_combout\ = (\proc|mux|Selector9~8_combout\ & (\proc|mux|Selector11~9_combout\ & (\proc|mux|Selector8~8_combout\ $ (\proc|mux|Selector10~8_combout\)))) # (!\proc|mux|Selector9~8_combout\ & (!\proc|mux|Selector8~8_combout\ & 
-- ((\proc|mux|Selector11~9_combout\) # (\proc|mux|Selector10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[5]~5_combout\);

-- Location: LCCOMB_X50_Y45_N12
\disp1|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[6]~6_combout\ = (\proc|mux|Selector11~9_combout\ & (!\proc|mux|Selector8~8_combout\ & (\proc|mux|Selector9~8_combout\ $ (!\proc|mux|Selector10~8_combout\)))) # (!\proc|mux|Selector11~9_combout\ & (!\proc|mux|Selector10~8_combout\ & 
-- (\proc|mux|Selector9~8_combout\ $ (!\proc|mux|Selector8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector9~8_combout\,
	datab => \proc|mux|Selector8~8_combout\,
	datac => \proc|mux|Selector11~9_combout\,
	datad => \proc|mux|Selector10~8_combout\,
	combout => \disp1|dec_out[6]~6_combout\);

-- Location: FF_X109_Y44_N21
\proc|R2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector5~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(10));

-- Location: LCCOMB_X109_Y44_N20
\proc|mux|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~0_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(10) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(10),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector5~0_combout\);

-- Location: LCCOMB_X106_Y44_N24
\proc|R0|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[10]~feeder_combout\ = \proc|mux|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector5~7_combout\,
	combout => \proc|R0|Q[10]~feeder_combout\);

-- Location: FF_X106_Y44_N25
\proc|R0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[10]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(10));

-- Location: FF_X107_Y44_N7
\proc|R1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector5~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(10));

-- Location: LCCOMB_X107_Y44_N6
\proc|mux|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~1_combout\ = (\proc|R0|Q\(10) & ((\proc|mux|Equal1~0_combout\) # ((\proc|R1|Q\(10) & \proc|mux|Equal2~1_combout\)))) # (!\proc|R0|Q\(10) & (((\proc|R1|Q\(10) & \proc|mux|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|mux|Equal1~0_combout\,
	datac => \proc|R1|Q\(10),
	datad => \proc|mux|Equal2~1_combout\,
	combout => \proc|mux|Selector5~1_combout\);

-- Location: FF_X107_Y42_N3
\proc|R5|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector5~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(10));

-- Location: LCCOMB_X107_Y42_N2
\proc|mux|Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~2_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(10)) # ((\SW[10]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (\SW[10]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \SW[10]~input_o\,
	datac => \proc|R5|Q\(10),
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector5~2_combout\);

-- Location: FF_X107_Y44_N17
\proc|R3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector5~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(10));

-- Location: LCCOMB_X107_Y44_N16
\proc|mux|Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~3_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(10) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(10),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector5~3_combout\);

-- Location: LCCOMB_X109_Y44_N6
\proc|R4|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R4|Q[10]~feeder_combout\ = \proc|mux|Selector5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector5~7_combout\,
	combout => \proc|R4|Q[10]~feeder_combout\);

-- Location: FF_X109_Y44_N7
\proc|R4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R4|Q[10]~feeder_combout\,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(10));

-- Location: FF_X108_Y44_N25
\proc|R7|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector5~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(10));

-- Location: FF_X108_Y44_N29
\proc|R6|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector5~7_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(10));

-- Location: LCCOMB_X108_Y44_N24
\proc|mux|Selector5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~4_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal4~2_combout\ & ((\proc|R6|Q\(10))))) # (!\proc|mux_control\(2) & (((\proc|R7|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R7|Q\(10),
	datad => \proc|R6|Q\(10),
	combout => \proc|mux|Selector5~4_combout\);

-- Location: LCCOMB_X107_Y44_N18
\proc|mux|Selector5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~5_combout\ = (\proc|mux|Equal5~0_combout\ & (\proc|mux|Selector5~4_combout\ & ((\proc|mux_control\(2)) # (\proc|mux|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal8~0_combout\,
	datac => \proc|mux|Equal5~0_combout\,
	datad => \proc|mux|Selector5~4_combout\,
	combout => \proc|mux|Selector5~5_combout\);

-- Location: LCCOMB_X107_Y44_N8
\proc|mux|Selector5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~6_combout\ = (\proc|mux|Selector5~3_combout\) # ((\proc|mux|Selector5~5_combout\) # ((\proc|mux|Equal5~1_combout\ & \proc|R4|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal5~1_combout\,
	datab => \proc|mux|Selector5~3_combout\,
	datac => \proc|R4|Q\(10),
	datad => \proc|mux|Selector5~5_combout\,
	combout => \proc|mux|Selector5~6_combout\);

-- Location: LCCOMB_X108_Y44_N22
\proc|mux|Selector5~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector5~7_combout\ = (\proc|mux|Selector5~0_combout\) # ((\proc|mux|Selector5~1_combout\) # ((\proc|mux|Selector5~2_combout\) # (\proc|mux|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~0_combout\,
	datab => \proc|mux|Selector5~1_combout\,
	datac => \proc|mux|Selector5~2_combout\,
	datad => \proc|mux|Selector5~6_combout\,
	combout => \proc|mux|Selector5~7_combout\);

-- Location: FF_X106_Y41_N29
\proc|R0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(9));

-- Location: FF_X106_Y41_N19
\proc|R5|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(9));

-- Location: LCCOMB_X106_Y41_N18
\proc|mux|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(9)) # ((\proc|R0|Q\(9) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (\proc|R0|Q\(9) & ((\proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|R0|Q\(9),
	datac => \proc|R5|Q\(9),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector6~0_combout\);

-- Location: FF_X109_Y41_N9
\proc|R1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector6~8_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(9));

-- Location: LCCOMB_X109_Y41_N2
\proc|mux|Selector6~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~7_combout\ = (\proc|R1|Q\(9) & ((\proc|mux|Equal2~1_combout\) # ((\SW[9]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(9) & (\SW[9]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(9),
	datab => \SW[9]~input_o\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector6~7_combout\);

-- Location: FF_X108_Y41_N17
\proc|R7|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(9));

-- Location: LCCOMB_X108_Y41_N16
\proc|mux|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R7|Q\(9) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R7|Q\(9),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector6~1_combout\);

-- Location: FF_X108_Y41_N19
\proc|R6|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(9));

-- Location: LCCOMB_X108_Y41_N18
\proc|mux|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(9) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(9),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector6~3_combout\);

-- Location: FF_X107_Y41_N3
\proc|R2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(9));

-- Location: LCCOMB_X107_Y41_N2
\proc|mux|Selector6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~4_combout\ = (\proc|mux|Equal2~2_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(9) & \proc|mux|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~2_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(9),
	datad => \proc|mux|Equal3~0_combout\,
	combout => \proc|mux|Selector6~4_combout\);

-- Location: FF_X109_Y41_N29
\proc|R3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(9));

-- Location: LCCOMB_X109_Y41_N28
\proc|mux|Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(9) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(9),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector6~2_combout\);

-- Location: LCCOMB_X109_Y41_N22
\proc|mux|Selector6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~5_combout\ = (\proc|mux|Selector6~1_combout\) # ((\proc|mux|Selector6~3_combout\) # ((\proc|mux|Selector6~4_combout\) # (\proc|mux|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector6~1_combout\,
	datab => \proc|mux|Selector6~3_combout\,
	datac => \proc|mux|Selector6~4_combout\,
	datad => \proc|mux|Selector6~2_combout\,
	combout => \proc|mux|Selector6~5_combout\);

-- Location: FF_X107_Y41_N5
\proc|R4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector6~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(9));

-- Location: LCCOMB_X107_Y41_N4
\proc|mux|Selector6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~6_combout\ = (\proc|R4|Q\(9) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(9),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector6~6_combout\);

-- Location: LCCOMB_X109_Y41_N8
\proc|mux|Selector6~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector6~8_combout\ = (\proc|mux|Selector6~0_combout\) # ((\proc|mux|Selector6~7_combout\) # ((\proc|mux|Selector6~5_combout\) # (\proc|mux|Selector6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector6~0_combout\,
	datab => \proc|mux|Selector6~7_combout\,
	datac => \proc|mux|Selector6~5_combout\,
	datad => \proc|mux|Selector6~6_combout\,
	combout => \proc|mux|Selector6~8_combout\);

-- Location: LCCOMB_X106_Y41_N8
\proc|R0|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[8]~feeder_combout\ = \proc|mux|Selector7~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector7~8_combout\,
	combout => \proc|R0|Q[8]~feeder_combout\);

-- Location: FF_X106_Y41_N9
\proc|R0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[8]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(8));

-- Location: FF_X106_Y41_N15
\proc|R5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector7~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(8));

-- Location: LCCOMB_X106_Y41_N14
\proc|mux|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(8)) # ((\proc|R0|Q\(8) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (\proc|R0|Q\(8) & ((\proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|R0|Q\(8),
	datac => \proc|R5|Q\(8),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector7~0_combout\);

-- Location: FF_X109_Y41_N7
\proc|R1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector7~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(8));

-- Location: LCCOMB_X109_Y41_N20
\proc|mux|Selector7~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~7_combout\ = (\proc|R1|Q\(8) & ((\proc|mux|Equal2~1_combout\) # ((\SW[8]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(8) & (\SW[8]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(8),
	datab => \SW[8]~input_o\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector7~7_combout\);

-- Location: LCCOMB_X107_Y41_N20
\proc|R4|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R4|Q[8]~feeder_combout\ = \proc|mux|Selector7~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector7~8_combout\,
	combout => \proc|R4|Q[8]~feeder_combout\);

-- Location: FF_X107_Y41_N21
\proc|R4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R4|Q[8]~feeder_combout\,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(8));

-- Location: LCCOMB_X109_Y41_N4
\proc|mux|Selector7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~6_combout\ = (\proc|mux|Equal5~1_combout\ & \proc|R4|Q\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Equal5~1_combout\,
	datad => \proc|R4|Q\(8),
	combout => \proc|mux|Selector7~6_combout\);

-- Location: FF_X109_Y41_N15
\proc|R3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector7~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(8));

-- Location: LCCOMB_X109_Y41_N14
\proc|mux|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(8) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(8),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector7~2_combout\);

-- Location: FF_X108_Y41_N3
\proc|R6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector7~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(8));

-- Location: LCCOMB_X108_Y41_N2
\proc|mux|Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(8) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(8),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector7~3_combout\);

-- Location: FF_X108_Y41_N9
\proc|R7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector7~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(8));

-- Location: LCCOMB_X108_Y41_N8
\proc|mux|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R7|Q\(8) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R7|Q\(8),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector7~1_combout\);

-- Location: FF_X107_Y41_N15
\proc|R2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector7~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(8));

-- Location: LCCOMB_X107_Y41_N14
\proc|mux|Selector7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~4_combout\ = (\proc|mux|Equal2~2_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(8) & \proc|mux|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~2_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(8),
	datad => \proc|mux|Equal3~0_combout\,
	combout => \proc|mux|Selector7~4_combout\);

-- Location: LCCOMB_X108_Y41_N24
\proc|mux|Selector7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~5_combout\ = (\proc|mux|Selector7~2_combout\) # ((\proc|mux|Selector7~3_combout\) # ((\proc|mux|Selector7~1_combout\) # (\proc|mux|Selector7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector7~2_combout\,
	datab => \proc|mux|Selector7~3_combout\,
	datac => \proc|mux|Selector7~1_combout\,
	datad => \proc|mux|Selector7~4_combout\,
	combout => \proc|mux|Selector7~5_combout\);

-- Location: LCCOMB_X109_Y41_N30
\proc|mux|Selector7~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector7~8_combout\ = (\proc|mux|Selector7~0_combout\) # ((\proc|mux|Selector7~7_combout\) # ((\proc|mux|Selector7~6_combout\) # (\proc|mux|Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector7~0_combout\,
	datab => \proc|mux|Selector7~7_combout\,
	datac => \proc|mux|Selector7~6_combout\,
	datad => \proc|mux|Selector7~5_combout\,
	combout => \proc|mux|Selector7~8_combout\);

-- Location: FF_X109_Y41_N13
\proc|R1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector4~8_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(11));

-- Location: LCCOMB_X109_Y41_N10
\proc|mux|Selector4~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~7_combout\ = (\proc|R1|Q\(11) & ((\proc|mux|Equal2~1_combout\) # ((\SW[11]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(11) & (\SW[11]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(11),
	datab => \SW[11]~input_o\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector4~7_combout\);

-- Location: LCCOMB_X107_Y41_N12
\proc|R4|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R4|Q[11]~feeder_combout\ = \proc|mux|Selector4~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector4~8_combout\,
	combout => \proc|R4|Q[11]~feeder_combout\);

-- Location: FF_X107_Y41_N13
\proc|R4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R4|Q[11]~feeder_combout\,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(11));

-- Location: LCCOMB_X109_Y41_N18
\proc|mux|Selector4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~6_combout\ = (\proc|mux|Equal5~1_combout\ & \proc|R4|Q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Equal5~1_combout\,
	datad => \proc|R4|Q\(11),
	combout => \proc|mux|Selector4~6_combout\);

-- Location: FF_X106_Y41_N21
\proc|R0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector4~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(11));

-- Location: FF_X106_Y41_N23
\proc|R5|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector4~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(11));

-- Location: LCCOMB_X106_Y41_N22
\proc|mux|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(11)) # ((\proc|R0|Q\(11) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (\proc|R0|Q\(11) & ((\proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|R0|Q\(11),
	datac => \proc|R5|Q\(11),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector4~0_combout\);

-- Location: FF_X108_Y41_N31
\proc|R7|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector4~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(11));

-- Location: LCCOMB_X108_Y41_N30
\proc|mux|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal5~0_combout\ & (\proc|R7|Q\(11) & \proc|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal5~0_combout\,
	datac => \proc|R7|Q\(11),
	datad => \proc|mux|Equal8~0_combout\,
	combout => \proc|mux|Selector4~1_combout\);

-- Location: FF_X108_Y41_N21
\proc|R6|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector4~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(11));

-- Location: LCCOMB_X108_Y41_N20
\proc|mux|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(11) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(11),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector4~3_combout\);

-- Location: FF_X109_Y41_N1
\proc|R3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector4~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(11));

-- Location: LCCOMB_X109_Y41_N0
\proc|mux|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~2_combout\ = (\proc|mux|Equal4~0_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(11) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~0_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(11),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector4~2_combout\);

-- Location: FF_X107_Y41_N11
\proc|R2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector4~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(11));

-- Location: LCCOMB_X107_Y41_N10
\proc|mux|Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(11) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(11),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector4~4_combout\);

-- Location: LCCOMB_X108_Y41_N22
\proc|mux|Selector4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~5_combout\ = (\proc|mux|Selector4~1_combout\) # ((\proc|mux|Selector4~3_combout\) # ((\proc|mux|Selector4~2_combout\) # (\proc|mux|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector4~1_combout\,
	datab => \proc|mux|Selector4~3_combout\,
	datac => \proc|mux|Selector4~2_combout\,
	datad => \proc|mux|Selector4~4_combout\,
	combout => \proc|mux|Selector4~5_combout\);

-- Location: LCCOMB_X109_Y41_N12
\proc|mux|Selector4~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector4~8_combout\ = (\proc|mux|Selector4~7_combout\) # ((\proc|mux|Selector4~6_combout\) # ((\proc|mux|Selector4~0_combout\) # (\proc|mux|Selector4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector4~7_combout\,
	datab => \proc|mux|Selector4~6_combout\,
	datac => \proc|mux|Selector4~0_combout\,
	datad => \proc|mux|Selector4~5_combout\,
	combout => \proc|mux|Selector4~8_combout\);

-- Location: LCCOMB_X107_Y44_N10
\disp2|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[0]~0_combout\ = (\proc|mux|Selector5~7_combout\ & (!\proc|mux|Selector6~8_combout\ & (\proc|mux|Selector7~8_combout\ $ (!\proc|mux|Selector4~8_combout\)))) # (!\proc|mux|Selector5~7_combout\ & (\proc|mux|Selector7~8_combout\ & 
-- (\proc|mux|Selector6~8_combout\ $ (!\proc|mux|Selector4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~7_combout\,
	datab => \proc|mux|Selector6~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector4~8_combout\,
	combout => \disp2|dec_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y44_N4
\disp2|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[1]~1_combout\ = (\proc|mux|Selector6~8_combout\ & ((\proc|mux|Selector7~8_combout\ & ((\proc|mux|Selector4~8_combout\))) # (!\proc|mux|Selector7~8_combout\ & (\proc|mux|Selector5~7_combout\)))) # (!\proc|mux|Selector6~8_combout\ & 
-- (\proc|mux|Selector5~7_combout\ & (\proc|mux|Selector7~8_combout\ $ (\proc|mux|Selector4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~7_combout\,
	datab => \proc|mux|Selector6~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector4~8_combout\,
	combout => \disp2|dec_out[1]~1_combout\);

-- Location: LCCOMB_X107_Y44_N22
\disp2|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[2]~2_combout\ = (\proc|mux|Selector5~7_combout\ & (\proc|mux|Selector4~8_combout\ & ((\proc|mux|Selector6~8_combout\) # (!\proc|mux|Selector7~8_combout\)))) # (!\proc|mux|Selector5~7_combout\ & (\proc|mux|Selector6~8_combout\ & 
-- (!\proc|mux|Selector7~8_combout\ & !\proc|mux|Selector4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~7_combout\,
	datab => \proc|mux|Selector6~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector4~8_combout\,
	combout => \disp2|dec_out[2]~2_combout\);

-- Location: LCCOMB_X109_Y41_N6
\disp2|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[3]~3_combout\ = (\proc|mux|Selector7~8_combout\ & (\proc|mux|Selector6~8_combout\ $ (((!\proc|mux|Selector5~7_combout\))))) # (!\proc|mux|Selector7~8_combout\ & ((\proc|mux|Selector6~8_combout\ & (\proc|mux|Selector4~8_combout\ & 
-- !\proc|mux|Selector5~7_combout\)) # (!\proc|mux|Selector6~8_combout\ & (!\proc|mux|Selector4~8_combout\ & \proc|mux|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector6~8_combout\,
	datab => \proc|mux|Selector4~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector5~7_combout\,
	combout => \disp2|dec_out[3]~3_combout\);

-- Location: LCCOMB_X107_Y44_N12
\disp2|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[4]~4_combout\ = (\proc|mux|Selector6~8_combout\ & (((\proc|mux|Selector7~8_combout\ & !\proc|mux|Selector4~8_combout\)))) # (!\proc|mux|Selector6~8_combout\ & ((\proc|mux|Selector5~7_combout\ & ((!\proc|mux|Selector4~8_combout\))) # 
-- (!\proc|mux|Selector5~7_combout\ & (\proc|mux|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~7_combout\,
	datab => \proc|mux|Selector6~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector4~8_combout\,
	combout => \disp2|dec_out[4]~4_combout\);

-- Location: LCCOMB_X107_Y44_N30
\disp2|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[5]~5_combout\ = (\proc|mux|Selector5~7_combout\ & (\proc|mux|Selector7~8_combout\ & (\proc|mux|Selector6~8_combout\ $ (\proc|mux|Selector4~8_combout\)))) # (!\proc|mux|Selector5~7_combout\ & (!\proc|mux|Selector4~8_combout\ & 
-- ((\proc|mux|Selector6~8_combout\) # (\proc|mux|Selector7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~7_combout\,
	datab => \proc|mux|Selector6~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector4~8_combout\,
	combout => \disp2|dec_out[5]~5_combout\);

-- Location: LCCOMB_X107_Y44_N28
\disp2|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[6]~6_combout\ = (\proc|mux|Selector7~8_combout\ & (!\proc|mux|Selector4~8_combout\ & (\proc|mux|Selector5~7_combout\ $ (!\proc|mux|Selector6~8_combout\)))) # (!\proc|mux|Selector7~8_combout\ & (!\proc|mux|Selector6~8_combout\ & 
-- (\proc|mux|Selector5~7_combout\ $ (!\proc|mux|Selector4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector5~7_combout\,
	datab => \proc|mux|Selector6~8_combout\,
	datac => \proc|mux|Selector7~8_combout\,
	datad => \proc|mux|Selector4~8_combout\,
	combout => \disp2|dec_out[6]~6_combout\);

-- Location: FF_X109_Y43_N13
\proc|R1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(15));

-- Location: LCCOMB_X109_Y43_N30
\proc|mux|Selector0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~7_combout\ = (\proc|R1|Q\(15) & ((\proc|mux|Equal2~1_combout\) # ((\SW[15]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(15) & (((\SW[15]~input_o\ & \proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(15),
	datab => \proc|mux|Equal2~1_combout\,
	datac => \SW[15]~input_o\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector0~7_combout\);

-- Location: FF_X109_Y43_N27
\proc|R0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(15));

-- Location: FF_X108_Y43_N19
\proc|R5|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(15));

-- Location: LCCOMB_X109_Y43_N16
\proc|mux|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~0_combout\ = (\proc|R0|Q\(15) & ((\proc|mux|Equal1~0_combout\) # ((\proc|R5|Q\(15) & \proc|mux|Equal6~0_combout\)))) # (!\proc|R0|Q\(15) & (((\proc|R5|Q\(15) & \proc|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(15),
	datab => \proc|mux|Equal1~0_combout\,
	datac => \proc|R5|Q\(15),
	datad => \proc|mux|Equal6~0_combout\,
	combout => \proc|mux|Selector0~0_combout\);

-- Location: FF_X105_Y43_N31
\proc|R4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(15));

-- Location: LCCOMB_X105_Y43_N30
\proc|mux|Selector0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~6_combout\ = (\proc|R4|Q\(15) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(15),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector0~6_combout\);

-- Location: FF_X106_Y43_N9
\proc|R3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(15));

-- Location: LCCOMB_X106_Y43_N8
\proc|mux|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~2_combout\ = (\proc|mux|Equal2~0_combout\ & (\proc|mux|Equal4~1_combout\ & (\proc|R3|Q\(15) & \proc|mux|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~0_combout\,
	datab => \proc|mux|Equal4~1_combout\,
	datac => \proc|R3|Q\(15),
	datad => \proc|mux|Equal4~0_combout\,
	combout => \proc|mux|Selector0~2_combout\);

-- Location: FF_X106_Y43_N19
\proc|R6|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(15));

-- Location: LCCOMB_X106_Y43_N18
\proc|mux|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~3_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal4~2_combout\ & (\proc|R6|Q\(15) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal4~2_combout\,
	datac => \proc|R6|Q\(15),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector0~3_combout\);

-- Location: FF_X109_Y44_N31
\proc|R2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(15));

-- Location: LCCOMB_X109_Y44_N30
\proc|mux|Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(15) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(15),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector0~4_combout\);

-- Location: FF_X108_Y44_N7
\proc|R7|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector0~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(15));

-- Location: LCCOMB_X108_Y44_N6
\proc|mux|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal8~0_combout\ & (\proc|R7|Q\(15) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal8~0_combout\,
	datac => \proc|R7|Q\(15),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector0~1_combout\);

-- Location: LCCOMB_X109_Y43_N6
\proc|mux|Selector0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~5_combout\ = (\proc|mux|Selector0~2_combout\) # ((\proc|mux|Selector0~3_combout\) # ((\proc|mux|Selector0~4_combout\) # (\proc|mux|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~2_combout\,
	datab => \proc|mux|Selector0~3_combout\,
	datac => \proc|mux|Selector0~4_combout\,
	datad => \proc|mux|Selector0~1_combout\,
	combout => \proc|mux|Selector0~5_combout\);

-- Location: LCCOMB_X109_Y43_N4
\proc|mux|Selector0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector0~8_combout\ = (\proc|mux|Selector0~7_combout\) # ((\proc|mux|Selector0~0_combout\) # ((\proc|mux|Selector0~6_combout\) # (\proc|mux|Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~7_combout\,
	datab => \proc|mux|Selector0~0_combout\,
	datac => \proc|mux|Selector0~6_combout\,
	datad => \proc|mux|Selector0~5_combout\,
	combout => \proc|mux|Selector0~8_combout\);

-- Location: LCCOMB_X109_Y43_N24
\proc|R0|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[12]~feeder_combout\ = \proc|mux|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc|mux|Selector3~8_combout\,
	combout => \proc|R0|Q[12]~feeder_combout\);

-- Location: FF_X109_Y43_N25
\proc|R0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[12]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(12));

-- Location: FF_X108_Y43_N13
\proc|R5|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector3~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(12));

-- Location: LCCOMB_X108_Y43_N12
\proc|mux|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~0_combout\ = (\proc|R0|Q\(12) & ((\proc|mux|Equal1~0_combout\) # ((\proc|mux|Equal6~0_combout\ & \proc|R5|Q\(12))))) # (!\proc|R0|Q\(12) & (\proc|mux|Equal6~0_combout\ & (\proc|R5|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(12),
	datab => \proc|mux|Equal6~0_combout\,
	datac => \proc|R5|Q\(12),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector3~0_combout\);

-- Location: LCCOMB_X109_Y43_N20
\proc|R1|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R1|Q[12]~feeder_combout\ = \proc|mux|Selector3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc|mux|Selector3~8_combout\,
	combout => \proc|R1|Q[12]~feeder_combout\);

-- Location: FF_X109_Y43_N21
\proc|R1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R1|Q[12]~feeder_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(12));

-- Location: LCCOMB_X109_Y43_N14
\proc|mux|Selector3~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~7_combout\ = (\SW[12]~input_o\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R1|Q\(12) & \proc|mux|Equal2~1_combout\)))) # (!\SW[12]~input_o\ & (\proc|R1|Q\(12) & (\proc|mux|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \proc|R1|Q\(12),
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector3~7_combout\);

-- Location: FF_X105_Y43_N1
\proc|R4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector3~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(12));

-- Location: LCCOMB_X105_Y43_N0
\proc|mux|Selector3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~6_combout\ = (\proc|R4|Q\(12) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(12),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector3~6_combout\);

-- Location: FF_X106_Y43_N11
\proc|R6|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector3~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(12));

-- Location: LCCOMB_X106_Y43_N10
\proc|mux|Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~3_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal4~2_combout\ & (\proc|R6|Q\(12) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal4~2_combout\,
	datac => \proc|R6|Q\(12),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector3~3_combout\);

-- Location: FF_X106_Y43_N17
\proc|R3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector3~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(12));

-- Location: LCCOMB_X106_Y43_N16
\proc|mux|Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~2_combout\ = (\proc|mux|Equal2~0_combout\ & (\proc|mux|Equal4~1_combout\ & (\proc|R3|Q\(12) & \proc|mux|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~0_combout\,
	datab => \proc|mux|Equal4~1_combout\,
	datac => \proc|R3|Q\(12),
	datad => \proc|mux|Equal4~0_combout\,
	combout => \proc|mux|Selector3~2_combout\);

-- Location: FF_X108_Y44_N21
\proc|R7|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector3~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(12));

-- Location: LCCOMB_X108_Y44_N20
\proc|mux|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal8~0_combout\ & (\proc|R7|Q\(12) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal8~0_combout\,
	datac => \proc|R7|Q\(12),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector3~1_combout\);

-- Location: FF_X109_Y44_N13
\proc|R2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector3~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(12));

-- Location: LCCOMB_X109_Y44_N12
\proc|mux|Selector3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(12) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(12),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector3~4_combout\);

-- Location: LCCOMB_X109_Y43_N18
\proc|mux|Selector3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~5_combout\ = (\proc|mux|Selector3~3_combout\) # ((\proc|mux|Selector3~2_combout\) # ((\proc|mux|Selector3~1_combout\) # (\proc|mux|Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector3~3_combout\,
	datab => \proc|mux|Selector3~2_combout\,
	datac => \proc|mux|Selector3~1_combout\,
	datad => \proc|mux|Selector3~4_combout\,
	combout => \proc|mux|Selector3~5_combout\);

-- Location: LCCOMB_X109_Y43_N0
\proc|mux|Selector3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector3~8_combout\ = (\proc|mux|Selector3~0_combout\) # ((\proc|mux|Selector3~7_combout\) # ((\proc|mux|Selector3~6_combout\) # (\proc|mux|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector3~0_combout\,
	datab => \proc|mux|Selector3~7_combout\,
	datac => \proc|mux|Selector3~6_combout\,
	datad => \proc|mux|Selector3~5_combout\,
	combout => \proc|mux|Selector3~8_combout\);

-- Location: FF_X105_Y43_N15
\proc|R4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector1~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(14));

-- Location: LCCOMB_X105_Y43_N14
\proc|mux|Selector1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~6_combout\ = (\proc|R4|Q\(14) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(14),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector1~6_combout\);

-- Location: FF_X109_Y43_N11
\proc|R1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector1~8_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(14));

-- Location: LCCOMB_X109_Y43_N28
\proc|mux|Selector1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~7_combout\ = (\proc|R1|Q\(14) & ((\proc|mux|Equal2~1_combout\) # ((\SW[14]~input_o\ & \proc|mux|Equal0~2_combout\)))) # (!\proc|R1|Q\(14) & (\SW[14]~input_o\ & ((\proc|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R1|Q\(14),
	datab => \SW[14]~input_o\,
	datac => \proc|mux|Equal2~1_combout\,
	datad => \proc|mux|Equal0~2_combout\,
	combout => \proc|mux|Selector1~7_combout\);

-- Location: FF_X106_Y43_N21
\proc|R6|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector1~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(14));

-- Location: LCCOMB_X106_Y43_N20
\proc|mux|Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~3_combout\ = (\proc|mux_control\(2) & (\proc|mux|Equal4~2_combout\ & (\proc|R6|Q\(14) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal4~2_combout\,
	datac => \proc|R6|Q\(14),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector1~3_combout\);

-- Location: FF_X108_Y43_N25
\proc|R3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector1~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(14));

-- Location: LCCOMB_X108_Y43_N24
\proc|mux|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~2_combout\ = (\proc|mux|Equal2~0_combout\ & (\proc|mux|Equal4~0_combout\ & (\proc|R3|Q\(14) & \proc|mux|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal2~0_combout\,
	datab => \proc|mux|Equal4~0_combout\,
	datac => \proc|R3|Q\(14),
	datad => \proc|mux|Equal4~1_combout\,
	combout => \proc|mux|Selector1~2_combout\);

-- Location: FF_X108_Y44_N13
\proc|R7|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector1~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(14));

-- Location: LCCOMB_X108_Y44_N12
\proc|mux|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal8~0_combout\ & (\proc|R7|Q\(14) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal8~0_combout\,
	datac => \proc|R7|Q\(14),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector1~1_combout\);

-- Location: FF_X109_Y44_N9
\proc|R2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector1~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(14));

-- Location: LCCOMB_X109_Y44_N8
\proc|mux|Selector1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~4_combout\ = (\proc|mux|Equal3~0_combout\ & (\proc|mux_control\(6) & (\proc|R2|Q\(14) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal3~0_combout\,
	datab => \proc|mux_control\(6),
	datac => \proc|R2|Q\(14),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector1~4_combout\);

-- Location: LCCOMB_X109_Y43_N8
\proc|mux|Selector1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~5_combout\ = (\proc|mux|Selector1~3_combout\) # ((\proc|mux|Selector1~2_combout\) # ((\proc|mux|Selector1~1_combout\) # (\proc|mux|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector1~3_combout\,
	datab => \proc|mux|Selector1~2_combout\,
	datac => \proc|mux|Selector1~1_combout\,
	datad => \proc|mux|Selector1~4_combout\,
	combout => \proc|mux|Selector1~5_combout\);

-- Location: FF_X105_Y43_N25
\proc|R5|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector1~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(14));

-- Location: LCCOMB_X109_Y43_N22
\proc|R0|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[14]~feeder_combout\ = \proc|mux|Selector1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector1~8_combout\,
	combout => \proc|R0|Q[14]~feeder_combout\);

-- Location: FF_X109_Y43_N23
\proc|R0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[14]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(14));

-- Location: LCCOMB_X105_Y43_N24
\proc|mux|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(14)) # ((\proc|mux|Equal1~0_combout\ & \proc|R0|Q\(14))))) # (!\proc|mux|Equal6~0_combout\ & (\proc|mux|Equal1~0_combout\ & ((\proc|R0|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|mux|Equal1~0_combout\,
	datac => \proc|R5|Q\(14),
	datad => \proc|R0|Q\(14),
	combout => \proc|mux|Selector1~0_combout\);

-- Location: LCCOMB_X109_Y43_N10
\proc|mux|Selector1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector1~8_combout\ = (\proc|mux|Selector1~6_combout\) # ((\proc|mux|Selector1~7_combout\) # ((\proc|mux|Selector1~5_combout\) # (\proc|mux|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector1~6_combout\,
	datab => \proc|mux|Selector1~7_combout\,
	datac => \proc|mux|Selector1~5_combout\,
	datad => \proc|mux|Selector1~0_combout\,
	combout => \proc|mux|Selector1~8_combout\);

-- Location: FF_X109_Y44_N15
\proc|R4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector2~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R4|Q\(13));

-- Location: LCCOMB_X109_Y44_N14
\proc|mux|Selector2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~6_combout\ = (\proc|R4|Q\(13) & \proc|mux|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|R4|Q\(13),
	datad => \proc|mux|Equal5~1_combout\,
	combout => \proc|mux|Selector2~6_combout\);

-- Location: FF_X107_Y44_N1
\proc|R1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|mux|Selector2~8_combout\,
	ena => \proc|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R1|Q\(13));

-- Location: LCCOMB_X107_Y44_N2
\proc|mux|Selector2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~7_combout\ = (\SW[13]~input_o\ & ((\proc|mux|Equal0~2_combout\) # ((\proc|R1|Q\(13) & \proc|mux|Equal2~1_combout\)))) # (!\SW[13]~input_o\ & (\proc|R1|Q\(13) & ((\proc|mux|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \proc|R1|Q\(13),
	datac => \proc|mux|Equal0~2_combout\,
	datad => \proc|mux|Equal2~1_combout\,
	combout => \proc|mux|Selector2~7_combout\);

-- Location: FF_X108_Y44_N31
\proc|R7|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector2~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R7|Q\(13));

-- Location: LCCOMB_X108_Y44_N30
\proc|mux|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~1_combout\ = (!\proc|mux_control\(2) & (\proc|mux|Equal8~0_combout\ & (\proc|R7|Q\(13) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(2),
	datab => \proc|mux|Equal8~0_combout\,
	datac => \proc|R7|Q\(13),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector2~1_combout\);

-- Location: LCCOMB_X106_Y44_N26
\proc|R2|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R2|Q[13]~feeder_combout\ = \proc|mux|Selector2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector2~8_combout\,
	combout => \proc|R2|Q[13]~feeder_combout\);

-- Location: FF_X106_Y44_N27
\proc|R2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R2|Q[13]~feeder_combout\,
	ena => \proc|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R2|Q\(13));

-- Location: LCCOMB_X107_Y44_N24
\proc|mux|Selector2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~4_combout\ = (\proc|mux_control\(6) & (\proc|mux|Equal3~0_combout\ & (\proc|R2|Q\(13) & \proc|mux|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux_control\(6),
	datab => \proc|mux|Equal3~0_combout\,
	datac => \proc|R2|Q\(13),
	datad => \proc|mux|Equal2~2_combout\,
	combout => \proc|mux|Selector2~4_combout\);

-- Location: FF_X106_Y43_N23
\proc|R6|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector2~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R6|Q\(13));

-- Location: LCCOMB_X106_Y43_N22
\proc|mux|Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~3_combout\ = (\proc|mux|Equal4~2_combout\ & (\proc|mux_control\(2) & (\proc|R6|Q\(13) & \proc|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~2_combout\,
	datab => \proc|mux_control\(2),
	datac => \proc|R6|Q\(13),
	datad => \proc|mux|Equal5~0_combout\,
	combout => \proc|mux|Selector2~3_combout\);

-- Location: FF_X107_Y44_N15
\proc|R3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	asdata => \proc|mux|Selector2~8_combout\,
	sload => VCC,
	ena => \proc|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R3|Q\(13));

-- Location: LCCOMB_X107_Y44_N14
\proc|mux|Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~2_combout\ = (\proc|mux|Equal4~1_combout\ & (\proc|mux|Equal2~0_combout\ & (\proc|R3|Q\(13) & \proc|mux|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal4~1_combout\,
	datab => \proc|mux|Equal2~0_combout\,
	datac => \proc|R3|Q\(13),
	datad => \proc|mux|Equal4~0_combout\,
	combout => \proc|mux|Selector2~2_combout\);

-- Location: LCCOMB_X107_Y44_N26
\proc|mux|Selector2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~5_combout\ = (\proc|mux|Selector2~1_combout\) # ((\proc|mux|Selector2~4_combout\) # ((\proc|mux|Selector2~3_combout\) # (\proc|mux|Selector2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector2~1_combout\,
	datab => \proc|mux|Selector2~4_combout\,
	datac => \proc|mux|Selector2~3_combout\,
	datad => \proc|mux|Selector2~2_combout\,
	combout => \proc|mux|Selector2~5_combout\);

-- Location: LCCOMB_X106_Y44_N30
\proc|R0|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R0|Q[13]~feeder_combout\ = \proc|mux|Selector2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector2~8_combout\,
	combout => \proc|R0|Q[13]~feeder_combout\);

-- Location: FF_X106_Y44_N31
\proc|R0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R0|Q[13]~feeder_combout\,
	ena => \proc|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R0|Q\(13));

-- Location: LCCOMB_X105_Y44_N16
\proc|R5|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|R5|Q[13]~feeder_combout\ = \proc|mux|Selector2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc|mux|Selector2~8_combout\,
	combout => \proc|R5|Q[13]~feeder_combout\);

-- Location: FF_X105_Y44_N17
\proc|R5|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[1]~input_o\,
	d => \proc|R5|Q[13]~feeder_combout\,
	ena => \proc|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc|R5|Q\(13));

-- Location: LCCOMB_X106_Y44_N16
\proc|mux|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~0_combout\ = (\proc|mux|Equal6~0_combout\ & ((\proc|R5|Q\(13)) # ((\proc|R0|Q\(13) & \proc|mux|Equal1~0_combout\)))) # (!\proc|mux|Equal6~0_combout\ & (\proc|R0|Q\(13) & ((\proc|mux|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Equal6~0_combout\,
	datab => \proc|R0|Q\(13),
	datac => \proc|R5|Q\(13),
	datad => \proc|mux|Equal1~0_combout\,
	combout => \proc|mux|Selector2~0_combout\);

-- Location: LCCOMB_X107_Y44_N0
\proc|mux|Selector2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc|mux|Selector2~8_combout\ = (\proc|mux|Selector2~6_combout\) # ((\proc|mux|Selector2~7_combout\) # ((\proc|mux|Selector2~5_combout\) # (\proc|mux|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector2~6_combout\,
	datab => \proc|mux|Selector2~7_combout\,
	datac => \proc|mux|Selector2~5_combout\,
	datad => \proc|mux|Selector2~0_combout\,
	combout => \proc|mux|Selector2~8_combout\);

-- Location: LCCOMB_X105_Y43_N12
\disp3|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[0]~0_combout\ = (\proc|mux|Selector0~8_combout\ & (\proc|mux|Selector3~8_combout\ & (\proc|mux|Selector1~8_combout\ $ (\proc|mux|Selector2~8_combout\)))) # (!\proc|mux|Selector0~8_combout\ & (!\proc|mux|Selector2~8_combout\ & 
-- (\proc|mux|Selector3~8_combout\ $ (\proc|mux|Selector1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[0]~0_combout\);

-- Location: LCCOMB_X105_Y43_N22
\disp3|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[1]~1_combout\ = (\proc|mux|Selector0~8_combout\ & ((\proc|mux|Selector3~8_combout\ & ((\proc|mux|Selector2~8_combout\))) # (!\proc|mux|Selector3~8_combout\ & (\proc|mux|Selector1~8_combout\)))) # (!\proc|mux|Selector0~8_combout\ & 
-- (\proc|mux|Selector1~8_combout\ & (\proc|mux|Selector3~8_combout\ $ (\proc|mux|Selector2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[1]~1_combout\);

-- Location: LCCOMB_X105_Y43_N16
\disp3|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[2]~2_combout\ = (\proc|mux|Selector0~8_combout\ & (\proc|mux|Selector1~8_combout\ & ((\proc|mux|Selector2~8_combout\) # (!\proc|mux|Selector3~8_combout\)))) # (!\proc|mux|Selector0~8_combout\ & (!\proc|mux|Selector3~8_combout\ & 
-- (!\proc|mux|Selector1~8_combout\ & \proc|mux|Selector2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[2]~2_combout\);

-- Location: LCCOMB_X105_Y43_N18
\disp3|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[3]~3_combout\ = (\proc|mux|Selector3~8_combout\ & ((\proc|mux|Selector1~8_combout\ $ (!\proc|mux|Selector2~8_combout\)))) # (!\proc|mux|Selector3~8_combout\ & ((\proc|mux|Selector0~8_combout\ & (!\proc|mux|Selector1~8_combout\ & 
-- \proc|mux|Selector2~8_combout\)) # (!\proc|mux|Selector0~8_combout\ & (\proc|mux|Selector1~8_combout\ & !\proc|mux|Selector2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[3]~3_combout\);

-- Location: LCCOMB_X105_Y43_N28
\disp3|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[4]~4_combout\ = (\proc|mux|Selector2~8_combout\ & (!\proc|mux|Selector0~8_combout\ & (\proc|mux|Selector3~8_combout\))) # (!\proc|mux|Selector2~8_combout\ & ((\proc|mux|Selector1~8_combout\ & (!\proc|mux|Selector0~8_combout\)) # 
-- (!\proc|mux|Selector1~8_combout\ & ((\proc|mux|Selector3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[4]~4_combout\);

-- Location: LCCOMB_X105_Y43_N10
\disp3|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[5]~5_combout\ = (\proc|mux|Selector3~8_combout\ & (\proc|mux|Selector0~8_combout\ $ (((\proc|mux|Selector2~8_combout\) # (!\proc|mux|Selector1~8_combout\))))) # (!\proc|mux|Selector3~8_combout\ & (!\proc|mux|Selector0~8_combout\ & 
-- (!\proc|mux|Selector1~8_combout\ & \proc|mux|Selector2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[5]~5_combout\);

-- Location: LCCOMB_X105_Y43_N4
\disp3|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[6]~6_combout\ = (\proc|mux|Selector3~8_combout\ & (!\proc|mux|Selector0~8_combout\ & (\proc|mux|Selector1~8_combout\ $ (!\proc|mux|Selector2~8_combout\)))) # (!\proc|mux|Selector3~8_combout\ & (!\proc|mux|Selector2~8_combout\ & 
-- (\proc|mux|Selector0~8_combout\ $ (!\proc|mux|Selector1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|mux|Selector0~8_combout\,
	datab => \proc|mux|Selector3~8_combout\,
	datac => \proc|mux|Selector1~8_combout\,
	datad => \proc|mux|Selector2~8_combout\,
	combout => \disp3|dec_out[6]~6_combout\);

-- Location: LCCOMB_X108_Y45_N28
\disp4|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[0]~0_combout\ = (\proc|R0|Q\(3) & (\proc|R0|Q\(0) & (\proc|R0|Q\(2) $ (\proc|R0|Q\(1))))) # (!\proc|R0|Q\(3) & (!\proc|R0|Q\(1) & (\proc|R0|Q\(0) $ (\proc|R0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[0]~0_combout\);

-- Location: LCCOMB_X108_Y45_N22
\disp4|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[1]~1_combout\ = (\proc|R0|Q\(3) & ((\proc|R0|Q\(0) & ((\proc|R0|Q\(1)))) # (!\proc|R0|Q\(0) & (\proc|R0|Q\(2))))) # (!\proc|R0|Q\(3) & (\proc|R0|Q\(2) & (\proc|R0|Q\(0) $ (\proc|R0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[1]~1_combout\);

-- Location: LCCOMB_X108_Y45_N8
\disp4|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[2]~2_combout\ = (\proc|R0|Q\(3) & (\proc|R0|Q\(2) & ((\proc|R0|Q\(1)) # (!\proc|R0|Q\(0))))) # (!\proc|R0|Q\(3) & (!\proc|R0|Q\(0) & (!\proc|R0|Q\(2) & \proc|R0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[2]~2_combout\);

-- Location: LCCOMB_X108_Y45_N30
\disp4|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[3]~3_combout\ = (\proc|R0|Q\(0) & ((\proc|R0|Q\(2) $ (!\proc|R0|Q\(1))))) # (!\proc|R0|Q\(0) & ((\proc|R0|Q\(3) & (!\proc|R0|Q\(2) & \proc|R0|Q\(1))) # (!\proc|R0|Q\(3) & (\proc|R0|Q\(2) & !\proc|R0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[3]~3_combout\);

-- Location: LCCOMB_X108_Y45_N24
\disp4|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[4]~4_combout\ = (\proc|R0|Q\(1) & (!\proc|R0|Q\(3) & (\proc|R0|Q\(0)))) # (!\proc|R0|Q\(1) & ((\proc|R0|Q\(2) & (!\proc|R0|Q\(3))) # (!\proc|R0|Q\(2) & ((\proc|R0|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[4]~4_combout\);

-- Location: LCCOMB_X108_Y45_N6
\disp4|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[5]~5_combout\ = (\proc|R0|Q\(0) & (\proc|R0|Q\(3) $ (((\proc|R0|Q\(1)) # (!\proc|R0|Q\(2)))))) # (!\proc|R0|Q\(0) & (!\proc|R0|Q\(3) & (!\proc|R0|Q\(2) & \proc|R0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[5]~5_combout\);

-- Location: LCCOMB_X108_Y45_N20
\disp4|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[6]~6_combout\ = (\proc|R0|Q\(0) & (!\proc|R0|Q\(3) & (\proc|R0|Q\(2) $ (!\proc|R0|Q\(1))))) # (!\proc|R0|Q\(0) & (!\proc|R0|Q\(1) & (\proc|R0|Q\(3) $ (!\proc|R0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(3),
	datab => \proc|R0|Q\(0),
	datac => \proc|R0|Q\(2),
	datad => \proc|R0|Q\(1),
	combout => \disp4|dec_out[6]~6_combout\);

-- Location: LCCOMB_X107_Y42_N26
\disp5|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[0]~0_combout\ = (\proc|R0|Q\(7) & (\proc|R0|Q\(4) & (\proc|R0|Q\(5) $ (\proc|R0|Q\(6))))) # (!\proc|R0|Q\(7) & (!\proc|R0|Q\(5) & (\proc|R0|Q\(4) $ (\proc|R0|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(5),
	datab => \proc|R0|Q\(7),
	datac => \proc|R0|Q\(4),
	datad => \proc|R0|Q\(6),
	combout => \disp5|dec_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y42_N28
\disp5|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[1]~1_combout\ = (\proc|R0|Q\(7) & ((\proc|R0|Q\(4) & ((\proc|R0|Q\(5)))) # (!\proc|R0|Q\(4) & (\proc|R0|Q\(6))))) # (!\proc|R0|Q\(7) & (\proc|R0|Q\(6) & (\proc|R0|Q\(4) $ (\proc|R0|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(4),
	datab => \proc|R0|Q\(6),
	datac => \proc|R0|Q\(7),
	datad => \proc|R0|Q\(5),
	combout => \disp5|dec_out[1]~1_combout\);

-- Location: LCCOMB_X107_Y42_N22
\disp5|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[2]~2_combout\ = (\proc|R0|Q\(6) & (\proc|R0|Q\(7) & ((\proc|R0|Q\(5)) # (!\proc|R0|Q\(4))))) # (!\proc|R0|Q\(6) & (!\proc|R0|Q\(4) & (!\proc|R0|Q\(7) & \proc|R0|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(4),
	datab => \proc|R0|Q\(6),
	datac => \proc|R0|Q\(7),
	datad => \proc|R0|Q\(5),
	combout => \disp5|dec_out[2]~2_combout\);

-- Location: LCCOMB_X107_Y42_N8
\disp5|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[3]~3_combout\ = (\proc|R0|Q\(4) & (\proc|R0|Q\(6) $ (((!\proc|R0|Q\(5)))))) # (!\proc|R0|Q\(4) & ((\proc|R0|Q\(6) & (!\proc|R0|Q\(7) & !\proc|R0|Q\(5))) # (!\proc|R0|Q\(6) & (\proc|R0|Q\(7) & \proc|R0|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(4),
	datab => \proc|R0|Q\(6),
	datac => \proc|R0|Q\(7),
	datad => \proc|R0|Q\(5),
	combout => \disp5|dec_out[3]~3_combout\);

-- Location: LCCOMB_X107_Y42_N30
\disp5|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[4]~4_combout\ = (\proc|R0|Q\(5) & (\proc|R0|Q\(4) & ((!\proc|R0|Q\(7))))) # (!\proc|R0|Q\(5) & ((\proc|R0|Q\(6) & ((!\proc|R0|Q\(7)))) # (!\proc|R0|Q\(6) & (\proc|R0|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(4),
	datab => \proc|R0|Q\(6),
	datac => \proc|R0|Q\(7),
	datad => \proc|R0|Q\(5),
	combout => \disp5|dec_out[4]~4_combout\);

-- Location: LCCOMB_X107_Y42_N0
\disp5|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[5]~5_combout\ = (\proc|R0|Q\(4) & (\proc|R0|Q\(7) $ (((\proc|R0|Q\(5)) # (!\proc|R0|Q\(6)))))) # (!\proc|R0|Q\(4) & (!\proc|R0|Q\(6) & (!\proc|R0|Q\(7) & \proc|R0|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(4),
	datab => \proc|R0|Q\(6),
	datac => \proc|R0|Q\(7),
	datad => \proc|R0|Q\(5),
	combout => \disp5|dec_out[5]~5_combout\);

-- Location: LCCOMB_X107_Y42_N6
\disp5|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[6]~6_combout\ = (\proc|R0|Q\(4) & (!\proc|R0|Q\(7) & (\proc|R0|Q\(6) $ (!\proc|R0|Q\(5))))) # (!\proc|R0|Q\(4) & (!\proc|R0|Q\(5) & (\proc|R0|Q\(6) $ (!\proc|R0|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(4),
	datab => \proc|R0|Q\(6),
	datac => \proc|R0|Q\(7),
	datad => \proc|R0|Q\(5),
	combout => \disp5|dec_out[6]~6_combout\);

-- Location: LCCOMB_X106_Y41_N12
\disp6|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[0]~0_combout\ = (\proc|R0|Q\(10) & (!\proc|R0|Q\(9) & (\proc|R0|Q\(11) $ (!\proc|R0|Q\(8))))) # (!\proc|R0|Q\(10) & (\proc|R0|Q\(8) & (\proc|R0|Q\(11) $ (!\proc|R0|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(11),
	datac => \proc|R0|Q\(8),
	datad => \proc|R0|Q\(9),
	combout => \disp6|dec_out[0]~0_combout\);

-- Location: LCCOMB_X106_Y41_N6
\disp6|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[1]~1_combout\ = (\proc|R0|Q\(11) & ((\proc|R0|Q\(8) & ((\proc|R0|Q\(9)))) # (!\proc|R0|Q\(8) & (\proc|R0|Q\(10))))) # (!\proc|R0|Q\(11) & (\proc|R0|Q\(10) & (\proc|R0|Q\(8) $ (\proc|R0|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(11),
	datac => \proc|R0|Q\(8),
	datad => \proc|R0|Q\(9),
	combout => \disp6|dec_out[1]~1_combout\);

-- Location: LCCOMB_X106_Y41_N0
\disp6|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[2]~2_combout\ = (\proc|R0|Q\(10) & (\proc|R0|Q\(11) & ((\proc|R0|Q\(9)) # (!\proc|R0|Q\(8))))) # (!\proc|R0|Q\(10) & (!\proc|R0|Q\(11) & (!\proc|R0|Q\(8) & \proc|R0|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(11),
	datac => \proc|R0|Q\(8),
	datad => \proc|R0|Q\(9),
	combout => \disp6|dec_out[2]~2_combout\);

-- Location: LCCOMB_X106_Y41_N2
\disp6|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[3]~3_combout\ = (\proc|R0|Q\(8) & (\proc|R0|Q\(10) $ (((!\proc|R0|Q\(9)))))) # (!\proc|R0|Q\(8) & ((\proc|R0|Q\(10) & (!\proc|R0|Q\(11) & !\proc|R0|Q\(9))) # (!\proc|R0|Q\(10) & (\proc|R0|Q\(11) & \proc|R0|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(11),
	datac => \proc|R0|Q\(8),
	datad => \proc|R0|Q\(9),
	combout => \disp6|dec_out[3]~3_combout\);

-- Location: LCCOMB_X106_Y41_N20
\disp6|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[4]~4_combout\ = (\proc|R0|Q\(9) & (((\proc|R0|Q\(8) & !\proc|R0|Q\(11))))) # (!\proc|R0|Q\(9) & ((\proc|R0|Q\(10) & ((!\proc|R0|Q\(11)))) # (!\proc|R0|Q\(10) & (\proc|R0|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(8),
	datac => \proc|R0|Q\(11),
	datad => \proc|R0|Q\(9),
	combout => \disp6|dec_out[4]~4_combout\);

-- Location: LCCOMB_X106_Y41_N24
\disp6|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[5]~5_combout\ = (\proc|R0|Q\(10) & (\proc|R0|Q\(8) & (\proc|R0|Q\(11) $ (\proc|R0|Q\(9))))) # (!\proc|R0|Q\(10) & (!\proc|R0|Q\(11) & ((\proc|R0|Q\(8)) # (\proc|R0|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(11),
	datac => \proc|R0|Q\(8),
	datad => \proc|R0|Q\(9),
	combout => \disp6|dec_out[5]~5_combout\);

-- Location: LCCOMB_X106_Y41_N28
\disp6|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[6]~6_combout\ = (\proc|R0|Q\(8) & (!\proc|R0|Q\(11) & (\proc|R0|Q\(10) $ (!\proc|R0|Q\(9))))) # (!\proc|R0|Q\(8) & (!\proc|R0|Q\(9) & (\proc|R0|Q\(10) $ (!\proc|R0|Q\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(10),
	datab => \proc|R0|Q\(8),
	datac => \proc|R0|Q\(9),
	datad => \proc|R0|Q\(11),
	combout => \disp6|dec_out[6]~6_combout\);

-- Location: LCCOMB_X106_Y41_N10
\disp7|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[0]~0_combout\ = (\proc|R0|Q\(15) & (\proc|R0|Q\(12) & (\proc|R0|Q\(14) $ (\proc|R0|Q\(13))))) # (!\proc|R0|Q\(15) & (!\proc|R0|Q\(13) & (\proc|R0|Q\(12) $ (\proc|R0|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(15),
	datab => \proc|R0|Q\(12),
	datac => \proc|R0|Q\(14),
	datad => \proc|R0|Q\(13),
	combout => \disp7|dec_out[0]~0_combout\);

-- Location: LCCOMB_X106_Y41_N16
\disp7|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[1]~1_combout\ = (\proc|R0|Q\(15) & ((\proc|R0|Q\(12) & ((\proc|R0|Q\(13)))) # (!\proc|R0|Q\(12) & (\proc|R0|Q\(14))))) # (!\proc|R0|Q\(15) & (\proc|R0|Q\(14) & (\proc|R0|Q\(12) $ (\proc|R0|Q\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(15),
	datab => \proc|R0|Q\(12),
	datac => \proc|R0|Q\(14),
	datad => \proc|R0|Q\(13),
	combout => \disp7|dec_out[1]~1_combout\);

-- Location: LCCOMB_X106_Y41_N30
\disp7|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[2]~2_combout\ = (\proc|R0|Q\(15) & (\proc|R0|Q\(14) & ((\proc|R0|Q\(13)) # (!\proc|R0|Q\(12))))) # (!\proc|R0|Q\(15) & (!\proc|R0|Q\(12) & (!\proc|R0|Q\(14) & \proc|R0|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(15),
	datab => \proc|R0|Q\(12),
	datac => \proc|R0|Q\(14),
	datad => \proc|R0|Q\(13),
	combout => \disp7|dec_out[2]~2_combout\);

-- Location: LCCOMB_X109_Y43_N2
\disp7|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[3]~3_combout\ = (\proc|R0|Q\(12) & (\proc|R0|Q\(13) $ (((!\proc|R0|Q\(14)))))) # (!\proc|R0|Q\(12) & ((\proc|R0|Q\(13) & (\proc|R0|Q\(15) & !\proc|R0|Q\(14))) # (!\proc|R0|Q\(13) & (!\proc|R0|Q\(15) & \proc|R0|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(13),
	datab => \proc|R0|Q\(12),
	datac => \proc|R0|Q\(15),
	datad => \proc|R0|Q\(14),
	combout => \disp7|dec_out[3]~3_combout\);

-- Location: LCCOMB_X106_Y41_N4
\disp7|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[4]~4_combout\ = (\proc|R0|Q\(13) & (!\proc|R0|Q\(15) & (\proc|R0|Q\(12)))) # (!\proc|R0|Q\(13) & ((\proc|R0|Q\(14) & (!\proc|R0|Q\(15))) # (!\proc|R0|Q\(14) & ((\proc|R0|Q\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(15),
	datab => \proc|R0|Q\(12),
	datac => \proc|R0|Q\(14),
	datad => \proc|R0|Q\(13),
	combout => \disp7|dec_out[4]~4_combout\);

-- Location: LCCOMB_X106_Y41_N26
\disp7|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[5]~5_combout\ = (\proc|R0|Q\(12) & (\proc|R0|Q\(15) $ (((\proc|R0|Q\(13)) # (!\proc|R0|Q\(14)))))) # (!\proc|R0|Q\(12) & (!\proc|R0|Q\(15) & (!\proc|R0|Q\(14) & \proc|R0|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(15),
	datab => \proc|R0|Q\(12),
	datac => \proc|R0|Q\(14),
	datad => \proc|R0|Q\(13),
	combout => \disp7|dec_out[5]~5_combout\);

-- Location: LCCOMB_X109_Y43_N26
\disp7|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[6]~6_combout\ = (\proc|R0|Q\(12) & (!\proc|R0|Q\(15) & (\proc|R0|Q\(13) $ (!\proc|R0|Q\(14))))) # (!\proc|R0|Q\(12) & (!\proc|R0|Q\(13) & (\proc|R0|Q\(14) $ (!\proc|R0|Q\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc|R0|Q\(13),
	datab => \proc|R0|Q\(14),
	datac => \proc|R0|Q\(15),
	datad => \proc|R0|Q\(12),
	combout => \disp7|dec_out[6]~6_combout\);

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


