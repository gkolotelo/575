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

-- DATE "05/06/2016 21:13:09"

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

ENTITY 	Exp8_Part1 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(8 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Exp8_Part1;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_C30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_T24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_T27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AJ16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp8_Part1 IS
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
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \seconds_counter|completed_value~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \seconds_counter|Add1~0_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~91_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \seconds_counter|Add1~1\ : std_logic;
SIGNAL \seconds_counter|Add1~2_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~92_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~3\ : std_logic;
SIGNAL \seconds_counter|Add1~4_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~90_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~5\ : std_logic;
SIGNAL \seconds_counter|Add1~6_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~89_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~7\ : std_logic;
SIGNAL \seconds_counter|Add1~8_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~88_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~9\ : std_logic;
SIGNAL \seconds_counter|Add1~10_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~87_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~11\ : std_logic;
SIGNAL \seconds_counter|Add1~12_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~86_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~13\ : std_logic;
SIGNAL \seconds_counter|Add1~14_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~85_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~15\ : std_logic;
SIGNAL \seconds_counter|Add1~16_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~84_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~17\ : std_logic;
SIGNAL \seconds_counter|Add1~18_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~83_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~19\ : std_logic;
SIGNAL \seconds_counter|Add1~20_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~82_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~21\ : std_logic;
SIGNAL \seconds_counter|Add1~22_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~81_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~23\ : std_logic;
SIGNAL \seconds_counter|Add1~24_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~80_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~25\ : std_logic;
SIGNAL \seconds_counter|Add1~26_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~79_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~27\ : std_logic;
SIGNAL \seconds_counter|Add1~28_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~78_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~29\ : std_logic;
SIGNAL \seconds_counter|Add1~30_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~77_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~31\ : std_logic;
SIGNAL \seconds_counter|Add1~32_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~76_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~33\ : std_logic;
SIGNAL \seconds_counter|Add1~34_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~75_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~35\ : std_logic;
SIGNAL \seconds_counter|Add1~36_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~74_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~37\ : std_logic;
SIGNAL \seconds_counter|Add1~38_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~73_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~39\ : std_logic;
SIGNAL \seconds_counter|Add1~40_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~72_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~41\ : std_logic;
SIGNAL \seconds_counter|Add1~42_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~71_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~43\ : std_logic;
SIGNAL \seconds_counter|Add1~44_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~70_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~45\ : std_logic;
SIGNAL \seconds_counter|Add1~46_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~69_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~47\ : std_logic;
SIGNAL \seconds_counter|Add1~48_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~68_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~49\ : std_logic;
SIGNAL \seconds_counter|Add1~50_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~67_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~51\ : std_logic;
SIGNAL \seconds_counter|Add1~52_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~66_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~53\ : std_logic;
SIGNAL \seconds_counter|Add1~54_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~65_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~55\ : std_logic;
SIGNAL \seconds_counter|Add1~56_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~64_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~57\ : std_logic;
SIGNAL \seconds_counter|Add1~58_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~63_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~59\ : std_logic;
SIGNAL \seconds_counter|Add1~60_combout\ : std_logic;
SIGNAL \seconds_counter|Add1~62_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~1_cout\ : std_logic;
SIGNAL \seconds_counter|Add0~3_cout\ : std_logic;
SIGNAL \seconds_counter|Add0~5_cout\ : std_logic;
SIGNAL \seconds_counter|Add0~7_cout\ : std_logic;
SIGNAL \seconds_counter|Add0~9_cout\ : std_logic;
SIGNAL \seconds_counter|Add0~11_cout\ : std_logic;
SIGNAL \seconds_counter|Add0~13\ : std_logic;
SIGNAL \seconds_counter|Add0~15\ : std_logic;
SIGNAL \seconds_counter|Add0~17\ : std_logic;
SIGNAL \seconds_counter|Add0~19\ : std_logic;
SIGNAL \seconds_counter|Add0~21\ : std_logic;
SIGNAL \seconds_counter|Add0~23\ : std_logic;
SIGNAL \seconds_counter|Add0~25\ : std_logic;
SIGNAL \seconds_counter|Add0~27\ : std_logic;
SIGNAL \seconds_counter|Add0~29\ : std_logic;
SIGNAL \seconds_counter|Add0~31\ : std_logic;
SIGNAL \seconds_counter|Add0~33\ : std_logic;
SIGNAL \seconds_counter|Add0~35\ : std_logic;
SIGNAL \seconds_counter|Add0~37\ : std_logic;
SIGNAL \seconds_counter|Add0~39\ : std_logic;
SIGNAL \seconds_counter|Add0~41\ : std_logic;
SIGNAL \seconds_counter|Add0~43\ : std_logic;
SIGNAL \seconds_counter|Add0~45\ : std_logic;
SIGNAL \seconds_counter|Add0~47\ : std_logic;
SIGNAL \seconds_counter|Add0~49\ : std_logic;
SIGNAL \seconds_counter|Add0~51\ : std_logic;
SIGNAL \seconds_counter|Add0~53\ : std_logic;
SIGNAL \seconds_counter|Add0~55\ : std_logic;
SIGNAL \seconds_counter|Add0~57\ : std_logic;
SIGNAL \seconds_counter|Add0~59\ : std_logic;
SIGNAL \seconds_counter|Add0~60_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~58_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~52_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~56_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~54_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~7_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~48_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~50_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~46_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~30_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~32_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~34_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~36_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~38_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~0_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~40_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~44_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~42_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~1_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~20_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~14_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~12_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~16_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~18_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~3_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~24_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~22_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~28_combout\ : std_logic;
SIGNAL \seconds_counter|Add0~26_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~2_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~4_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~5_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~6_combout\ : std_logic;
SIGNAL \seconds_counter|LessThan0~8_combout\ : std_logic;
SIGNAL \seconds_counter|completed_value~q\ : std_logic;
SIGNAL \seconds_counter|completed_value~clkctrl_outclk\ : std_logic;
SIGNAL \timer_open|count[0]~34_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \timer_yellow_light|count[0]~30_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \t_status.E1~q\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \t_status.E2~q\ : std_logic;
SIGNAL \reset_yellow~0_combout\ : std_logic;
SIGNAL \reset_yellow~1_combout\ : std_logic;
SIGNAL \reset_yellow~q\ : std_logic;
SIGNAL \timer_yellow_light|count[1]~31_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[1]~32\ : std_logic;
SIGNAL \timer_yellow_light|count[2]~33_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[2]~34\ : std_logic;
SIGNAL \timer_yellow_light|count[3]~35_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[3]~36\ : std_logic;
SIGNAL \timer_yellow_light|count[4]~37_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[4]~38\ : std_logic;
SIGNAL \timer_yellow_light|count[5]~39_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[5]~40\ : std_logic;
SIGNAL \timer_yellow_light|count[6]~41_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[6]~42\ : std_logic;
SIGNAL \timer_yellow_light|count[7]~43_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[7]~44\ : std_logic;
SIGNAL \timer_yellow_light|count[8]~45_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[8]~46\ : std_logic;
SIGNAL \timer_yellow_light|count[9]~47_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[9]~48\ : std_logic;
SIGNAL \timer_yellow_light|count[10]~49_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[10]~50\ : std_logic;
SIGNAL \timer_yellow_light|count[11]~51_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[11]~52\ : std_logic;
SIGNAL \timer_yellow_light|count[12]~53_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[12]~54\ : std_logic;
SIGNAL \timer_yellow_light|count[13]~55_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[13]~56\ : std_logic;
SIGNAL \timer_yellow_light|count[14]~57_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[14]~58\ : std_logic;
SIGNAL \timer_yellow_light|count[15]~59_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[15]~60\ : std_logic;
SIGNAL \timer_yellow_light|count[16]~61_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[16]~62\ : std_logic;
SIGNAL \timer_yellow_light|count[17]~63_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[17]~64\ : std_logic;
SIGNAL \timer_yellow_light|count[18]~65_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[18]~66\ : std_logic;
SIGNAL \timer_yellow_light|count[19]~67_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~5_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~0_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~3_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~1_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~2_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~4_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[19]~68\ : std_logic;
SIGNAL \timer_yellow_light|count[20]~69_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[20]~70\ : std_logic;
SIGNAL \timer_yellow_light|count[21]~71_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[21]~72\ : std_logic;
SIGNAL \timer_yellow_light|count[22]~73_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[22]~74\ : std_logic;
SIGNAL \timer_yellow_light|count[23]~75_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~6_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[23]~76\ : std_logic;
SIGNAL \timer_yellow_light|count[24]~77_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[24]~78\ : std_logic;
SIGNAL \timer_yellow_light|count[25]~79_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[25]~80\ : std_logic;
SIGNAL \timer_yellow_light|count[26]~81_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[26]~82\ : std_logic;
SIGNAL \timer_yellow_light|count[27]~83_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[27]~84\ : std_logic;
SIGNAL \timer_yellow_light|count[28]~85_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[28]~86\ : std_logic;
SIGNAL \timer_yellow_light|count[29]~87_combout\ : std_logic;
SIGNAL \timer_yellow_light|count[29]~88\ : std_logic;
SIGNAL \timer_yellow_light|count[30]~89_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~7_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~8_combout\ : std_logic;
SIGNAL \timer_yellow_light|Equal0~9_combout\ : std_logic;
SIGNAL \timer_yellow_light|completed~0_combout\ : std_logic;
SIGNAL \timer_yellow_light|completed~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \t_status.E3~q\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \t_status.E0~q\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \reset_open~q\ : std_logic;
SIGNAL \timer_open|count[1]~30_combout\ : std_logic;
SIGNAL \timer_open|count[1]~31\ : std_logic;
SIGNAL \timer_open|count[2]~32_combout\ : std_logic;
SIGNAL \timer_open|count[2]~33\ : std_logic;
SIGNAL \timer_open|count[3]~35_combout\ : std_logic;
SIGNAL \timer_open|count[3]~36\ : std_logic;
SIGNAL \timer_open|count[4]~37_combout\ : std_logic;
SIGNAL \timer_open|count[4]~38\ : std_logic;
SIGNAL \timer_open|count[5]~39_combout\ : std_logic;
SIGNAL \timer_open|count[5]~40\ : std_logic;
SIGNAL \timer_open|count[6]~41_combout\ : std_logic;
SIGNAL \timer_open|count[6]~42\ : std_logic;
SIGNAL \timer_open|count[7]~43_combout\ : std_logic;
SIGNAL \timer_open|count[7]~44\ : std_logic;
SIGNAL \timer_open|count[8]~45_combout\ : std_logic;
SIGNAL \timer_open|count[8]~46\ : std_logic;
SIGNAL \timer_open|count[9]~47_combout\ : std_logic;
SIGNAL \timer_open|count[9]~48\ : std_logic;
SIGNAL \timer_open|count[10]~49_combout\ : std_logic;
SIGNAL \timer_open|count[10]~50\ : std_logic;
SIGNAL \timer_open|count[11]~51_combout\ : std_logic;
SIGNAL \timer_open|count[11]~52\ : std_logic;
SIGNAL \timer_open|count[12]~53_combout\ : std_logic;
SIGNAL \timer_open|count[12]~54\ : std_logic;
SIGNAL \timer_open|count[13]~55_combout\ : std_logic;
SIGNAL \timer_open|count[13]~56\ : std_logic;
SIGNAL \timer_open|count[14]~57_combout\ : std_logic;
SIGNAL \timer_open|count[14]~58\ : std_logic;
SIGNAL \timer_open|count[15]~59_combout\ : std_logic;
SIGNAL \timer_open|count[15]~60\ : std_logic;
SIGNAL \timer_open|count[16]~61_combout\ : std_logic;
SIGNAL \timer_open|count[16]~62\ : std_logic;
SIGNAL \timer_open|count[17]~63_combout\ : std_logic;
SIGNAL \timer_open|count[17]~64\ : std_logic;
SIGNAL \timer_open|count[18]~65_combout\ : std_logic;
SIGNAL \timer_open|count[18]~66\ : std_logic;
SIGNAL \timer_open|count[19]~67_combout\ : std_logic;
SIGNAL \timer_open|Equal0~5_combout\ : std_logic;
SIGNAL \timer_open|count[19]~68\ : std_logic;
SIGNAL \timer_open|count[20]~69_combout\ : std_logic;
SIGNAL \timer_open|count[20]~70\ : std_logic;
SIGNAL \timer_open|count[21]~71_combout\ : std_logic;
SIGNAL \timer_open|count[21]~72\ : std_logic;
SIGNAL \timer_open|count[22]~73_combout\ : std_logic;
SIGNAL \timer_open|count[22]~74\ : std_logic;
SIGNAL \timer_open|count[23]~75_combout\ : std_logic;
SIGNAL \timer_open|Equal0~6_combout\ : std_logic;
SIGNAL \timer_open|Equal0~0_combout\ : std_logic;
SIGNAL \timer_open|Equal0~2_combout\ : std_logic;
SIGNAL \timer_open|Equal0~3_combout\ : std_logic;
SIGNAL \timer_open|Equal0~1_combout\ : std_logic;
SIGNAL \timer_open|Equal0~4_combout\ : std_logic;
SIGNAL \timer_open|count[23]~76\ : std_logic;
SIGNAL \timer_open|count[24]~77_combout\ : std_logic;
SIGNAL \timer_open|count[24]~78\ : std_logic;
SIGNAL \timer_open|count[25]~79_combout\ : std_logic;
SIGNAL \timer_open|count[25]~80\ : std_logic;
SIGNAL \timer_open|count[26]~81_combout\ : std_logic;
SIGNAL \timer_open|count[26]~82\ : std_logic;
SIGNAL \timer_open|count[27]~83_combout\ : std_logic;
SIGNAL \timer_open|count[27]~84\ : std_logic;
SIGNAL \timer_open|count[28]~85_combout\ : std_logic;
SIGNAL \timer_open|count[28]~86\ : std_logic;
SIGNAL \timer_open|count[29]~87_combout\ : std_logic;
SIGNAL \timer_open|count[29]~88\ : std_logic;
SIGNAL \timer_open|count[30]~89_combout\ : std_logic;
SIGNAL \timer_open|Equal0~7_combout\ : std_logic;
SIGNAL \timer_open|Equal0~8_combout\ : std_logic;
SIGNAL \timer_open|Equal0~9_combout\ : std_logic;
SIGNAL \timer_open|completed~0_combout\ : std_logic;
SIGNAL \timer_open|completed~q\ : std_logic;
SIGNAL \T2|dec_out[2]~0_combout\ : std_logic;
SIGNAL \T2|dec_out\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \timer_yellow_light|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \timer_open|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL lights_2 : std_logic_vector(1 DOWNTO 0);
SIGNAL \seconds_counter|value\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \timer_yellow_light|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \timer_open|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \ALT_INV_reset_yellow~q\ : std_logic;
SIGNAL \ALT_INV_reset_open~q\ : std_logic;

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

\seconds_counter|completed_value~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \seconds_counter|completed_value~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\timer_yellow_light|ALT_INV_Equal0~9_combout\ <= NOT \timer_yellow_light|Equal0~9_combout\;
\timer_open|ALT_INV_Equal0~9_combout\ <= NOT \timer_open|Equal0~9_combout\;
\ALT_INV_reset_yellow~q\ <= NOT \reset_yellow~q\;
\ALT_INV_reset_open~q\ <= NOT \reset_open~q\;

-- Location: IOOBUF_X117_Y43_N2
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timer_open|completed~q\,
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
	i => \reset_open~q\,
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
	i => \timer_yellow_light|completed~q\,
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
	i => \reset_yellow~q\,
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

-- Location: IOOBUF_X117_Y7_N9
\LEDG[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => \T2|dec_out\(0),
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
	i => \T2|dec_out\(0),
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
	i => \T2|dec_out[2]~0_combout\,
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
	i => \T2|dec_out[2]~0_combout\,
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
	i => \T2|dec_out[2]~0_combout\,
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
	i => \T2|dec_out\(0),
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
	i => GND,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => VCC,
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
	i => lights_2(1),
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
	i => lights_2(1),
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
	i => \t_status.E0~q\,
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
	i => \t_status.E0~q\,
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
	i => \t_status.E0~q\,
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
	i => lights_2(1),
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
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

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

-- Location: CLKCTRL_G28
\CLOCK_50~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X79_Y37_N2
\seconds_counter|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~0_combout\ = \seconds_counter|value\(0) $ (VCC)
-- \seconds_counter|Add1~1\ = CARRY(\seconds_counter|value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(0),
	datad => VCC,
	combout => \seconds_counter|Add1~0_combout\,
	cout => \seconds_counter|Add1~1\);

-- Location: LCCOMB_X77_Y37_N2
\seconds_counter|Add1~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~91_combout\ = (\seconds_counter|Add1~0_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~0_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~91_combout\);

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

-- Location: FF_X77_Y37_N3
\seconds_counter|value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~91_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(0));

-- Location: LCCOMB_X79_Y37_N4
\seconds_counter|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~2_combout\ = (\seconds_counter|value\(1) & (!\seconds_counter|Add1~1\)) # (!\seconds_counter|value\(1) & ((\seconds_counter|Add1~1\) # (GND)))
-- \seconds_counter|Add1~3\ = CARRY((!\seconds_counter|Add1~1\) # (!\seconds_counter|value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(1),
	datad => VCC,
	cin => \seconds_counter|Add1~1\,
	combout => \seconds_counter|Add1~2_combout\,
	cout => \seconds_counter|Add1~3\);

-- Location: LCCOMB_X77_Y36_N16
\seconds_counter|Add1~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~92_combout\ = (\seconds_counter|Add1~2_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~2_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~92_combout\);

-- Location: FF_X77_Y36_N17
\seconds_counter|value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~92_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(1));

-- Location: LCCOMB_X79_Y37_N6
\seconds_counter|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~4_combout\ = (\seconds_counter|value\(2) & (\seconds_counter|Add1~3\ $ (GND))) # (!\seconds_counter|value\(2) & (!\seconds_counter|Add1~3\ & VCC))
-- \seconds_counter|Add1~5\ = CARRY((\seconds_counter|value\(2) & !\seconds_counter|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(2),
	datad => VCC,
	cin => \seconds_counter|Add1~3\,
	combout => \seconds_counter|Add1~4_combout\,
	cout => \seconds_counter|Add1~5\);

-- Location: LCCOMB_X77_Y37_N20
\seconds_counter|Add1~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~90_combout\ = (\seconds_counter|Add1~4_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~4_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~90_combout\);

-- Location: FF_X77_Y37_N21
\seconds_counter|value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~90_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(2));

-- Location: LCCOMB_X79_Y37_N8
\seconds_counter|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~6_combout\ = (\seconds_counter|value\(3) & (!\seconds_counter|Add1~5\)) # (!\seconds_counter|value\(3) & ((\seconds_counter|Add1~5\) # (GND)))
-- \seconds_counter|Add1~7\ = CARRY((!\seconds_counter|Add1~5\) # (!\seconds_counter|value\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(3),
	datad => VCC,
	cin => \seconds_counter|Add1~5\,
	combout => \seconds_counter|Add1~6_combout\,
	cout => \seconds_counter|Add1~7\);

-- Location: LCCOMB_X77_Y37_N10
\seconds_counter|Add1~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~89_combout\ = (\seconds_counter|Add1~6_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~6_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~89_combout\);

-- Location: FF_X77_Y37_N11
\seconds_counter|value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~89_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(3));

-- Location: LCCOMB_X79_Y37_N10
\seconds_counter|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~8_combout\ = (\seconds_counter|value\(4) & (\seconds_counter|Add1~7\ $ (GND))) # (!\seconds_counter|value\(4) & (!\seconds_counter|Add1~7\ & VCC))
-- \seconds_counter|Add1~9\ = CARRY((\seconds_counter|value\(4) & !\seconds_counter|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(4),
	datad => VCC,
	cin => \seconds_counter|Add1~7\,
	combout => \seconds_counter|Add1~8_combout\,
	cout => \seconds_counter|Add1~9\);

-- Location: LCCOMB_X77_Y37_N16
\seconds_counter|Add1~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~88_combout\ = (\seconds_counter|Add1~8_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~8_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~88_combout\);

-- Location: FF_X77_Y37_N17
\seconds_counter|value[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~88_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(4));

-- Location: LCCOMB_X79_Y37_N12
\seconds_counter|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~10_combout\ = (\seconds_counter|value\(5) & (!\seconds_counter|Add1~9\)) # (!\seconds_counter|value\(5) & ((\seconds_counter|Add1~9\) # (GND)))
-- \seconds_counter|Add1~11\ = CARRY((!\seconds_counter|Add1~9\) # (!\seconds_counter|value\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(5),
	datad => VCC,
	cin => \seconds_counter|Add1~9\,
	combout => \seconds_counter|Add1~10_combout\,
	cout => \seconds_counter|Add1~11\);

-- Location: LCCOMB_X77_Y37_N22
\seconds_counter|Add1~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~87_combout\ = (\seconds_counter|Add1~10_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~10_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~87_combout\);

-- Location: FF_X77_Y37_N23
\seconds_counter|value[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~87_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(5));

-- Location: LCCOMB_X79_Y37_N14
\seconds_counter|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~12_combout\ = (\seconds_counter|value\(6) & (\seconds_counter|Add1~11\ $ (GND))) # (!\seconds_counter|value\(6) & (!\seconds_counter|Add1~11\ & VCC))
-- \seconds_counter|Add1~13\ = CARRY((\seconds_counter|value\(6) & !\seconds_counter|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(6),
	datad => VCC,
	cin => \seconds_counter|Add1~11\,
	combout => \seconds_counter|Add1~12_combout\,
	cout => \seconds_counter|Add1~13\);

-- Location: LCCOMB_X77_Y37_N4
\seconds_counter|Add1~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~86_combout\ = (\seconds_counter|Add1~12_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add1~12_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~86_combout\);

-- Location: FF_X77_Y37_N5
\seconds_counter|value[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~86_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(6));

-- Location: LCCOMB_X79_Y37_N16
\seconds_counter|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~14_combout\ = (\seconds_counter|value\(7) & (!\seconds_counter|Add1~13\)) # (!\seconds_counter|value\(7) & ((\seconds_counter|Add1~13\) # (GND)))
-- \seconds_counter|Add1~15\ = CARRY((!\seconds_counter|Add1~13\) # (!\seconds_counter|value\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(7),
	datad => VCC,
	cin => \seconds_counter|Add1~13\,
	combout => \seconds_counter|Add1~14_combout\,
	cout => \seconds_counter|Add1~15\);

-- Location: LCCOMB_X77_Y37_N18
\seconds_counter|Add1~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~85_combout\ = (\seconds_counter|Add1~14_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~14_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~85_combout\);

-- Location: FF_X77_Y37_N19
\seconds_counter|value[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~85_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(7));

-- Location: LCCOMB_X79_Y37_N18
\seconds_counter|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~16_combout\ = (\seconds_counter|value\(8) & (\seconds_counter|Add1~15\ $ (GND))) # (!\seconds_counter|value\(8) & (!\seconds_counter|Add1~15\ & VCC))
-- \seconds_counter|Add1~17\ = CARRY((\seconds_counter|value\(8) & !\seconds_counter|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(8),
	datad => VCC,
	cin => \seconds_counter|Add1~15\,
	combout => \seconds_counter|Add1~16_combout\,
	cout => \seconds_counter|Add1~17\);

-- Location: LCCOMB_X77_Y36_N20
\seconds_counter|Add1~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~84_combout\ = (\seconds_counter|Add1~16_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~16_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~84_combout\);

-- Location: FF_X77_Y36_N21
\seconds_counter|value[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~84_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(8));

-- Location: LCCOMB_X79_Y37_N20
\seconds_counter|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~18_combout\ = (\seconds_counter|value\(9) & (!\seconds_counter|Add1~17\)) # (!\seconds_counter|value\(9) & ((\seconds_counter|Add1~17\) # (GND)))
-- \seconds_counter|Add1~19\ = CARRY((!\seconds_counter|Add1~17\) # (!\seconds_counter|value\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(9),
	datad => VCC,
	cin => \seconds_counter|Add1~17\,
	combout => \seconds_counter|Add1~18_combout\,
	cout => \seconds_counter|Add1~19\);

-- Location: LCCOMB_X77_Y36_N28
\seconds_counter|Add1~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~83_combout\ = (\seconds_counter|Add1~18_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~18_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~83_combout\);

-- Location: FF_X77_Y36_N29
\seconds_counter|value[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~83_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(9));

-- Location: LCCOMB_X79_Y37_N22
\seconds_counter|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~20_combout\ = (\seconds_counter|value\(10) & (\seconds_counter|Add1~19\ $ (GND))) # (!\seconds_counter|value\(10) & (!\seconds_counter|Add1~19\ & VCC))
-- \seconds_counter|Add1~21\ = CARRY((\seconds_counter|value\(10) & !\seconds_counter|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(10),
	datad => VCC,
	cin => \seconds_counter|Add1~19\,
	combout => \seconds_counter|Add1~20_combout\,
	cout => \seconds_counter|Add1~21\);

-- Location: LCCOMB_X77_Y36_N22
\seconds_counter|Add1~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~82_combout\ = (\seconds_counter|Add1~20_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~20_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~82_combout\);

-- Location: FF_X77_Y36_N23
\seconds_counter|value[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~82_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(10));

-- Location: LCCOMB_X79_Y37_N24
\seconds_counter|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~22_combout\ = (\seconds_counter|value\(11) & (!\seconds_counter|Add1~21\)) # (!\seconds_counter|value\(11) & ((\seconds_counter|Add1~21\) # (GND)))
-- \seconds_counter|Add1~23\ = CARRY((!\seconds_counter|Add1~21\) # (!\seconds_counter|value\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(11),
	datad => VCC,
	cin => \seconds_counter|Add1~21\,
	combout => \seconds_counter|Add1~22_combout\,
	cout => \seconds_counter|Add1~23\);

-- Location: LCCOMB_X77_Y36_N14
\seconds_counter|Add1~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~81_combout\ = (\seconds_counter|Add1~22_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~22_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~81_combout\);

-- Location: FF_X77_Y36_N15
\seconds_counter|value[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~81_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(11));

-- Location: LCCOMB_X79_Y37_N26
\seconds_counter|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~24_combout\ = (\seconds_counter|value\(12) & (\seconds_counter|Add1~23\ $ (GND))) # (!\seconds_counter|value\(12) & (!\seconds_counter|Add1~23\ & VCC))
-- \seconds_counter|Add1~25\ = CARRY((\seconds_counter|value\(12) & !\seconds_counter|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(12),
	datad => VCC,
	cin => \seconds_counter|Add1~23\,
	combout => \seconds_counter|Add1~24_combout\,
	cout => \seconds_counter|Add1~25\);

-- Location: LCCOMB_X77_Y36_N2
\seconds_counter|Add1~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~80_combout\ = (\seconds_counter|Add1~24_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~24_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~80_combout\);

-- Location: FF_X77_Y36_N3
\seconds_counter|value[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~80_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(12));

-- Location: LCCOMB_X79_Y37_N28
\seconds_counter|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~26_combout\ = (\seconds_counter|value\(13) & (!\seconds_counter|Add1~25\)) # (!\seconds_counter|value\(13) & ((\seconds_counter|Add1~25\) # (GND)))
-- \seconds_counter|Add1~27\ = CARRY((!\seconds_counter|Add1~25\) # (!\seconds_counter|value\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(13),
	datad => VCC,
	cin => \seconds_counter|Add1~25\,
	combout => \seconds_counter|Add1~26_combout\,
	cout => \seconds_counter|Add1~27\);

-- Location: LCCOMB_X77_Y37_N12
\seconds_counter|Add1~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~79_combout\ = (\seconds_counter|Add1~26_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~26_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~79_combout\);

-- Location: FF_X77_Y37_N13
\seconds_counter|value[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~79_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(13));

-- Location: LCCOMB_X79_Y37_N30
\seconds_counter|Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~28_combout\ = (\seconds_counter|value\(14) & (\seconds_counter|Add1~27\ $ (GND))) # (!\seconds_counter|value\(14) & (!\seconds_counter|Add1~27\ & VCC))
-- \seconds_counter|Add1~29\ = CARRY((\seconds_counter|value\(14) & !\seconds_counter|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(14),
	datad => VCC,
	cin => \seconds_counter|Add1~27\,
	combout => \seconds_counter|Add1~28_combout\,
	cout => \seconds_counter|Add1~29\);

-- Location: LCCOMB_X77_Y37_N26
\seconds_counter|Add1~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~78_combout\ = (\seconds_counter|Add1~28_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~28_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~78_combout\);

-- Location: FF_X77_Y37_N27
\seconds_counter|value[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~78_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(14));

-- Location: LCCOMB_X79_Y36_N0
\seconds_counter|Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~30_combout\ = (\seconds_counter|value\(15) & (!\seconds_counter|Add1~29\)) # (!\seconds_counter|value\(15) & ((\seconds_counter|Add1~29\) # (GND)))
-- \seconds_counter|Add1~31\ = CARRY((!\seconds_counter|Add1~29\) # (!\seconds_counter|value\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(15),
	datad => VCC,
	cin => \seconds_counter|Add1~29\,
	combout => \seconds_counter|Add1~30_combout\,
	cout => \seconds_counter|Add1~31\);

-- Location: LCCOMB_X77_Y37_N24
\seconds_counter|Add1~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~77_combout\ = (\seconds_counter|Add1~30_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~30_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~77_combout\);

-- Location: FF_X77_Y37_N25
\seconds_counter|value[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~77_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(15));

-- Location: LCCOMB_X79_Y36_N2
\seconds_counter|Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~32_combout\ = (\seconds_counter|value\(16) & (\seconds_counter|Add1~31\ $ (GND))) # (!\seconds_counter|value\(16) & (!\seconds_counter|Add1~31\ & VCC))
-- \seconds_counter|Add1~33\ = CARRY((\seconds_counter|value\(16) & !\seconds_counter|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(16),
	datad => VCC,
	cin => \seconds_counter|Add1~31\,
	combout => \seconds_counter|Add1~32_combout\,
	cout => \seconds_counter|Add1~33\);

-- Location: LCCOMB_X78_Y36_N0
\seconds_counter|Add1~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~76_combout\ = (\seconds_counter|Add1~32_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~32_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~76_combout\);

-- Location: FF_X78_Y36_N1
\seconds_counter|value[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~76_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(16));

-- Location: LCCOMB_X79_Y36_N4
\seconds_counter|Add1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~34_combout\ = (\seconds_counter|value\(17) & (!\seconds_counter|Add1~33\)) # (!\seconds_counter|value\(17) & ((\seconds_counter|Add1~33\) # (GND)))
-- \seconds_counter|Add1~35\ = CARRY((!\seconds_counter|Add1~33\) # (!\seconds_counter|value\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(17),
	datad => VCC,
	cin => \seconds_counter|Add1~33\,
	combout => \seconds_counter|Add1~34_combout\,
	cout => \seconds_counter|Add1~35\);

-- Location: LCCOMB_X78_Y36_N2
\seconds_counter|Add1~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~75_combout\ = (\seconds_counter|Add1~34_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add1~34_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~75_combout\);

-- Location: FF_X78_Y36_N3
\seconds_counter|value[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~75_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(17));

-- Location: LCCOMB_X79_Y36_N6
\seconds_counter|Add1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~36_combout\ = (\seconds_counter|value\(18) & (\seconds_counter|Add1~35\ $ (GND))) # (!\seconds_counter|value\(18) & (!\seconds_counter|Add1~35\ & VCC))
-- \seconds_counter|Add1~37\ = CARRY((\seconds_counter|value\(18) & !\seconds_counter|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(18),
	datad => VCC,
	cin => \seconds_counter|Add1~35\,
	combout => \seconds_counter|Add1~36_combout\,
	cout => \seconds_counter|Add1~37\);

-- Location: LCCOMB_X77_Y36_N6
\seconds_counter|Add1~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~74_combout\ = (\seconds_counter|Add1~36_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~36_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~74_combout\);

-- Location: FF_X77_Y36_N7
\seconds_counter|value[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~74_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(18));

-- Location: LCCOMB_X79_Y36_N8
\seconds_counter|Add1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~38_combout\ = (\seconds_counter|value\(19) & (!\seconds_counter|Add1~37\)) # (!\seconds_counter|value\(19) & ((\seconds_counter|Add1~37\) # (GND)))
-- \seconds_counter|Add1~39\ = CARRY((!\seconds_counter|Add1~37\) # (!\seconds_counter|value\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(19),
	datad => VCC,
	cin => \seconds_counter|Add1~37\,
	combout => \seconds_counter|Add1~38_combout\,
	cout => \seconds_counter|Add1~39\);

-- Location: LCCOMB_X78_Y36_N4
\seconds_counter|Add1~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~73_combout\ = (\seconds_counter|Add1~38_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~38_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~73_combout\);

-- Location: FF_X78_Y36_N5
\seconds_counter|value[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~73_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(19));

-- Location: LCCOMB_X79_Y36_N10
\seconds_counter|Add1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~40_combout\ = (\seconds_counter|value\(20) & (\seconds_counter|Add1~39\ $ (GND))) # (!\seconds_counter|value\(20) & (!\seconds_counter|Add1~39\ & VCC))
-- \seconds_counter|Add1~41\ = CARRY((\seconds_counter|value\(20) & !\seconds_counter|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(20),
	datad => VCC,
	cin => \seconds_counter|Add1~39\,
	combout => \seconds_counter|Add1~40_combout\,
	cout => \seconds_counter|Add1~41\);

-- Location: LCCOMB_X78_Y36_N14
\seconds_counter|Add1~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~72_combout\ = (\seconds_counter|Add1~40_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~40_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~72_combout\);

-- Location: FF_X78_Y36_N15
\seconds_counter|value[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~72_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(20));

-- Location: LCCOMB_X79_Y36_N12
\seconds_counter|Add1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~42_combout\ = (\seconds_counter|value\(21) & (!\seconds_counter|Add1~41\)) # (!\seconds_counter|value\(21) & ((\seconds_counter|Add1~41\) # (GND)))
-- \seconds_counter|Add1~43\ = CARRY((!\seconds_counter|Add1~41\) # (!\seconds_counter|value\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(21),
	datad => VCC,
	cin => \seconds_counter|Add1~41\,
	combout => \seconds_counter|Add1~42_combout\,
	cout => \seconds_counter|Add1~43\);

-- Location: LCCOMB_X78_Y36_N20
\seconds_counter|Add1~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~71_combout\ = (\seconds_counter|Add1~42_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~42_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~71_combout\);

-- Location: FF_X78_Y36_N21
\seconds_counter|value[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~71_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(21));

-- Location: LCCOMB_X79_Y36_N14
\seconds_counter|Add1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~44_combout\ = (\seconds_counter|value\(22) & (\seconds_counter|Add1~43\ $ (GND))) # (!\seconds_counter|value\(22) & (!\seconds_counter|Add1~43\ & VCC))
-- \seconds_counter|Add1~45\ = CARRY((\seconds_counter|value\(22) & !\seconds_counter|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(22),
	datad => VCC,
	cin => \seconds_counter|Add1~43\,
	combout => \seconds_counter|Add1~44_combout\,
	cout => \seconds_counter|Add1~45\);

-- Location: LCCOMB_X77_Y36_N4
\seconds_counter|Add1~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~70_combout\ = (\seconds_counter|Add1~44_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|Add1~44_combout\,
	datad => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~70_combout\);

-- Location: FF_X77_Y36_N5
\seconds_counter|value[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~70_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(22));

-- Location: LCCOMB_X79_Y36_N16
\seconds_counter|Add1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~46_combout\ = (\seconds_counter|value\(23) & (!\seconds_counter|Add1~45\)) # (!\seconds_counter|value\(23) & ((\seconds_counter|Add1~45\) # (GND)))
-- \seconds_counter|Add1~47\ = CARRY((!\seconds_counter|Add1~45\) # (!\seconds_counter|value\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(23),
	datad => VCC,
	cin => \seconds_counter|Add1~45\,
	combout => \seconds_counter|Add1~46_combout\,
	cout => \seconds_counter|Add1~47\);

-- Location: LCCOMB_X78_Y36_N26
\seconds_counter|Add1~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~69_combout\ = (\seconds_counter|Add1~46_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~46_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~69_combout\);

-- Location: FF_X78_Y36_N27
\seconds_counter|value[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~69_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(23));

-- Location: LCCOMB_X79_Y36_N18
\seconds_counter|Add1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~48_combout\ = (\seconds_counter|value\(24) & (\seconds_counter|Add1~47\ $ (GND))) # (!\seconds_counter|value\(24) & (!\seconds_counter|Add1~47\ & VCC))
-- \seconds_counter|Add1~49\ = CARRY((\seconds_counter|value\(24) & !\seconds_counter|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(24),
	datad => VCC,
	cin => \seconds_counter|Add1~47\,
	combout => \seconds_counter|Add1~48_combout\,
	cout => \seconds_counter|Add1~49\);

-- Location: LCCOMB_X78_Y36_N28
\seconds_counter|Add1~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~68_combout\ = (\seconds_counter|Add1~48_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~48_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~68_combout\);

-- Location: FF_X78_Y36_N29
\seconds_counter|value[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~68_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(24));

-- Location: LCCOMB_X79_Y36_N20
\seconds_counter|Add1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~50_combout\ = (\seconds_counter|value\(25) & (!\seconds_counter|Add1~49\)) # (!\seconds_counter|value\(25) & ((\seconds_counter|Add1~49\) # (GND)))
-- \seconds_counter|Add1~51\ = CARRY((!\seconds_counter|Add1~49\) # (!\seconds_counter|value\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(25),
	datad => VCC,
	cin => \seconds_counter|Add1~49\,
	combout => \seconds_counter|Add1~50_combout\,
	cout => \seconds_counter|Add1~51\);

-- Location: LCCOMB_X78_Y36_N18
\seconds_counter|Add1~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~67_combout\ = (\seconds_counter|Add1~50_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add1~50_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~67_combout\);

-- Location: FF_X78_Y36_N19
\seconds_counter|value[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~67_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(25));

-- Location: LCCOMB_X79_Y36_N22
\seconds_counter|Add1~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~52_combout\ = (\seconds_counter|value\(26) & (\seconds_counter|Add1~51\ $ (GND))) # (!\seconds_counter|value\(26) & (!\seconds_counter|Add1~51\ & VCC))
-- \seconds_counter|Add1~53\ = CARRY((\seconds_counter|value\(26) & !\seconds_counter|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(26),
	datad => VCC,
	cin => \seconds_counter|Add1~51\,
	combout => \seconds_counter|Add1~52_combout\,
	cout => \seconds_counter|Add1~53\);

-- Location: LCCOMB_X78_Y36_N8
\seconds_counter|Add1~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~66_combout\ = (\seconds_counter|Add1~52_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~52_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~66_combout\);

-- Location: FF_X78_Y36_N9
\seconds_counter|value[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~66_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(26));

-- Location: LCCOMB_X79_Y36_N24
\seconds_counter|Add1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~54_combout\ = (\seconds_counter|value\(27) & (!\seconds_counter|Add1~53\)) # (!\seconds_counter|value\(27) & ((\seconds_counter|Add1~53\) # (GND)))
-- \seconds_counter|Add1~55\ = CARRY((!\seconds_counter|Add1~53\) # (!\seconds_counter|value\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(27),
	datad => VCC,
	cin => \seconds_counter|Add1~53\,
	combout => \seconds_counter|Add1~54_combout\,
	cout => \seconds_counter|Add1~55\);

-- Location: LCCOMB_X78_Y36_N10
\seconds_counter|Add1~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~65_combout\ = (\seconds_counter|Add1~54_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~54_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~65_combout\);

-- Location: FF_X78_Y36_N11
\seconds_counter|value[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~65_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(27));

-- Location: LCCOMB_X79_Y36_N26
\seconds_counter|Add1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~56_combout\ = (\seconds_counter|value\(28) & (\seconds_counter|Add1~55\ $ (GND))) # (!\seconds_counter|value\(28) & (!\seconds_counter|Add1~55\ & VCC))
-- \seconds_counter|Add1~57\ = CARRY((\seconds_counter|value\(28) & !\seconds_counter|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(28),
	datad => VCC,
	cin => \seconds_counter|Add1~55\,
	combout => \seconds_counter|Add1~56_combout\,
	cout => \seconds_counter|Add1~57\);

-- Location: LCCOMB_X78_Y36_N12
\seconds_counter|Add1~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~64_combout\ = (!\seconds_counter|LessThan0~8_combout\ & \seconds_counter|Add1~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seconds_counter|LessThan0~8_combout\,
	datad => \seconds_counter|Add1~56_combout\,
	combout => \seconds_counter|Add1~64_combout\);

-- Location: FF_X78_Y36_N13
\seconds_counter|value[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~64_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(28));

-- Location: LCCOMB_X79_Y36_N28
\seconds_counter|Add1~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~58_combout\ = (\seconds_counter|value\(29) & (!\seconds_counter|Add1~57\)) # (!\seconds_counter|value\(29) & ((\seconds_counter|Add1~57\) # (GND)))
-- \seconds_counter|Add1~59\ = CARRY((!\seconds_counter|Add1~57\) # (!\seconds_counter|value\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(29),
	datad => VCC,
	cin => \seconds_counter|Add1~57\,
	combout => \seconds_counter|Add1~58_combout\,
	cout => \seconds_counter|Add1~59\);

-- Location: LCCOMB_X78_Y36_N22
\seconds_counter|Add1~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~63_combout\ = (\seconds_counter|Add1~58_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add1~58_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~63_combout\);

-- Location: FF_X78_Y36_N23
\seconds_counter|value[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~63_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(29));

-- Location: LCCOMB_X79_Y36_N30
\seconds_counter|Add1~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~60_combout\ = \seconds_counter|Add1~59\ $ (!\seconds_counter|value\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \seconds_counter|value\(30),
	cin => \seconds_counter|Add1~59\,
	combout => \seconds_counter|Add1~60_combout\);

-- Location: LCCOMB_X78_Y36_N24
\seconds_counter|Add1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add1~62_combout\ = (\seconds_counter|Add1~60_combout\ & !\seconds_counter|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add1~60_combout\,
	datac => \seconds_counter|LessThan0~8_combout\,
	combout => \seconds_counter|Add1~62_combout\);

-- Location: FF_X78_Y36_N25
\seconds_counter|value[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|Add1~62_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|value\(30));

-- Location: LCCOMB_X76_Y37_N2
\seconds_counter|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~1_cout\ = CARRY((\seconds_counter|value\(0) & \seconds_counter|value\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(0),
	datab => \seconds_counter|value\(1),
	datad => VCC,
	cout => \seconds_counter|Add0~1_cout\);

-- Location: LCCOMB_X76_Y37_N4
\seconds_counter|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~3_cout\ = CARRY((!\seconds_counter|Add0~1_cout\) # (!\seconds_counter|value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(2),
	datad => VCC,
	cin => \seconds_counter|Add0~1_cout\,
	cout => \seconds_counter|Add0~3_cout\);

-- Location: LCCOMB_X76_Y37_N6
\seconds_counter|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~5_cout\ = CARRY((\seconds_counter|value\(3) & !\seconds_counter|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(3),
	datad => VCC,
	cin => \seconds_counter|Add0~3_cout\,
	cout => \seconds_counter|Add0~5_cout\);

-- Location: LCCOMB_X76_Y37_N8
\seconds_counter|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~7_cout\ = CARRY((!\seconds_counter|Add0~5_cout\) # (!\seconds_counter|value\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(4),
	datad => VCC,
	cin => \seconds_counter|Add0~5_cout\,
	cout => \seconds_counter|Add0~7_cout\);

-- Location: LCCOMB_X76_Y37_N10
\seconds_counter|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~9_cout\ = CARRY((\seconds_counter|value\(5) & !\seconds_counter|Add0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(5),
	datad => VCC,
	cin => \seconds_counter|Add0~7_cout\,
	cout => \seconds_counter|Add0~9_cout\);

-- Location: LCCOMB_X76_Y37_N12
\seconds_counter|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~11_cout\ = CARRY((!\seconds_counter|Add0~9_cout\) # (!\seconds_counter|value\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(6),
	datad => VCC,
	cin => \seconds_counter|Add0~9_cout\,
	cout => \seconds_counter|Add0~11_cout\);

-- Location: LCCOMB_X76_Y37_N14
\seconds_counter|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~12_combout\ = (\seconds_counter|value\(7) & (\seconds_counter|Add0~11_cout\ $ (GND))) # (!\seconds_counter|value\(7) & (!\seconds_counter|Add0~11_cout\ & VCC))
-- \seconds_counter|Add0~13\ = CARRY((\seconds_counter|value\(7) & !\seconds_counter|Add0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(7),
	datad => VCC,
	cin => \seconds_counter|Add0~11_cout\,
	combout => \seconds_counter|Add0~12_combout\,
	cout => \seconds_counter|Add0~13\);

-- Location: LCCOMB_X76_Y37_N16
\seconds_counter|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~14_combout\ = (\seconds_counter|value\(8) & (!\seconds_counter|Add0~13\)) # (!\seconds_counter|value\(8) & ((\seconds_counter|Add0~13\) # (GND)))
-- \seconds_counter|Add0~15\ = CARRY((!\seconds_counter|Add0~13\) # (!\seconds_counter|value\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(8),
	datad => VCC,
	cin => \seconds_counter|Add0~13\,
	combout => \seconds_counter|Add0~14_combout\,
	cout => \seconds_counter|Add0~15\);

-- Location: LCCOMB_X76_Y37_N18
\seconds_counter|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~16_combout\ = (\seconds_counter|value\(9) & (\seconds_counter|Add0~15\ $ (GND))) # (!\seconds_counter|value\(9) & (!\seconds_counter|Add0~15\ & VCC))
-- \seconds_counter|Add0~17\ = CARRY((\seconds_counter|value\(9) & !\seconds_counter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(9),
	datad => VCC,
	cin => \seconds_counter|Add0~15\,
	combout => \seconds_counter|Add0~16_combout\,
	cout => \seconds_counter|Add0~17\);

-- Location: LCCOMB_X76_Y37_N20
\seconds_counter|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~18_combout\ = (\seconds_counter|value\(10) & (!\seconds_counter|Add0~17\)) # (!\seconds_counter|value\(10) & ((\seconds_counter|Add0~17\) # (GND)))
-- \seconds_counter|Add0~19\ = CARRY((!\seconds_counter|Add0~17\) # (!\seconds_counter|value\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(10),
	datad => VCC,
	cin => \seconds_counter|Add0~17\,
	combout => \seconds_counter|Add0~18_combout\,
	cout => \seconds_counter|Add0~19\);

-- Location: LCCOMB_X76_Y37_N22
\seconds_counter|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~20_combout\ = (\seconds_counter|value\(11) & (\seconds_counter|Add0~19\ $ (GND))) # (!\seconds_counter|value\(11) & (!\seconds_counter|Add0~19\ & VCC))
-- \seconds_counter|Add0~21\ = CARRY((\seconds_counter|value\(11) & !\seconds_counter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(11),
	datad => VCC,
	cin => \seconds_counter|Add0~19\,
	combout => \seconds_counter|Add0~20_combout\,
	cout => \seconds_counter|Add0~21\);

-- Location: LCCOMB_X76_Y37_N24
\seconds_counter|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~22_combout\ = (\seconds_counter|value\(12) & (!\seconds_counter|Add0~21\)) # (!\seconds_counter|value\(12) & ((\seconds_counter|Add0~21\) # (GND)))
-- \seconds_counter|Add0~23\ = CARRY((!\seconds_counter|Add0~21\) # (!\seconds_counter|value\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(12),
	datad => VCC,
	cin => \seconds_counter|Add0~21\,
	combout => \seconds_counter|Add0~22_combout\,
	cout => \seconds_counter|Add0~23\);

-- Location: LCCOMB_X76_Y37_N26
\seconds_counter|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~24_combout\ = (\seconds_counter|value\(13) & (\seconds_counter|Add0~23\ $ (GND))) # (!\seconds_counter|value\(13) & (!\seconds_counter|Add0~23\ & VCC))
-- \seconds_counter|Add0~25\ = CARRY((\seconds_counter|value\(13) & !\seconds_counter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(13),
	datad => VCC,
	cin => \seconds_counter|Add0~23\,
	combout => \seconds_counter|Add0~24_combout\,
	cout => \seconds_counter|Add0~25\);

-- Location: LCCOMB_X76_Y37_N28
\seconds_counter|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~26_combout\ = (\seconds_counter|value\(14) & (!\seconds_counter|Add0~25\)) # (!\seconds_counter|value\(14) & ((\seconds_counter|Add0~25\) # (GND)))
-- \seconds_counter|Add0~27\ = CARRY((!\seconds_counter|Add0~25\) # (!\seconds_counter|value\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(14),
	datad => VCC,
	cin => \seconds_counter|Add0~25\,
	combout => \seconds_counter|Add0~26_combout\,
	cout => \seconds_counter|Add0~27\);

-- Location: LCCOMB_X76_Y37_N30
\seconds_counter|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~28_combout\ = (\seconds_counter|value\(15) & (\seconds_counter|Add0~27\ $ (GND))) # (!\seconds_counter|value\(15) & (!\seconds_counter|Add0~27\ & VCC))
-- \seconds_counter|Add0~29\ = CARRY((\seconds_counter|value\(15) & !\seconds_counter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(15),
	datad => VCC,
	cin => \seconds_counter|Add0~27\,
	combout => \seconds_counter|Add0~28_combout\,
	cout => \seconds_counter|Add0~29\);

-- Location: LCCOMB_X76_Y36_N0
\seconds_counter|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~30_combout\ = (\seconds_counter|value\(16) & (!\seconds_counter|Add0~29\)) # (!\seconds_counter|value\(16) & ((\seconds_counter|Add0~29\) # (GND)))
-- \seconds_counter|Add0~31\ = CARRY((!\seconds_counter|Add0~29\) # (!\seconds_counter|value\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(16),
	datad => VCC,
	cin => \seconds_counter|Add0~29\,
	combout => \seconds_counter|Add0~30_combout\,
	cout => \seconds_counter|Add0~31\);

-- Location: LCCOMB_X76_Y36_N2
\seconds_counter|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~32_combout\ = (\seconds_counter|value\(17) & (\seconds_counter|Add0~31\ $ (GND))) # (!\seconds_counter|value\(17) & (!\seconds_counter|Add0~31\ & VCC))
-- \seconds_counter|Add0~33\ = CARRY((\seconds_counter|value\(17) & !\seconds_counter|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(17),
	datad => VCC,
	cin => \seconds_counter|Add0~31\,
	combout => \seconds_counter|Add0~32_combout\,
	cout => \seconds_counter|Add0~33\);

-- Location: LCCOMB_X76_Y36_N4
\seconds_counter|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~34_combout\ = (\seconds_counter|value\(18) & (!\seconds_counter|Add0~33\)) # (!\seconds_counter|value\(18) & ((\seconds_counter|Add0~33\) # (GND)))
-- \seconds_counter|Add0~35\ = CARRY((!\seconds_counter|Add0~33\) # (!\seconds_counter|value\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(18),
	datad => VCC,
	cin => \seconds_counter|Add0~33\,
	combout => \seconds_counter|Add0~34_combout\,
	cout => \seconds_counter|Add0~35\);

-- Location: LCCOMB_X76_Y36_N6
\seconds_counter|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~36_combout\ = (\seconds_counter|value\(19) & (\seconds_counter|Add0~35\ $ (GND))) # (!\seconds_counter|value\(19) & (!\seconds_counter|Add0~35\ & VCC))
-- \seconds_counter|Add0~37\ = CARRY((\seconds_counter|value\(19) & !\seconds_counter|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(19),
	datad => VCC,
	cin => \seconds_counter|Add0~35\,
	combout => \seconds_counter|Add0~36_combout\,
	cout => \seconds_counter|Add0~37\);

-- Location: LCCOMB_X76_Y36_N8
\seconds_counter|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~38_combout\ = (\seconds_counter|value\(20) & (!\seconds_counter|Add0~37\)) # (!\seconds_counter|value\(20) & ((\seconds_counter|Add0~37\) # (GND)))
-- \seconds_counter|Add0~39\ = CARRY((!\seconds_counter|Add0~37\) # (!\seconds_counter|value\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(20),
	datad => VCC,
	cin => \seconds_counter|Add0~37\,
	combout => \seconds_counter|Add0~38_combout\,
	cout => \seconds_counter|Add0~39\);

-- Location: LCCOMB_X76_Y36_N10
\seconds_counter|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~40_combout\ = (\seconds_counter|value\(21) & (\seconds_counter|Add0~39\ $ (GND))) # (!\seconds_counter|value\(21) & (!\seconds_counter|Add0~39\ & VCC))
-- \seconds_counter|Add0~41\ = CARRY((\seconds_counter|value\(21) & !\seconds_counter|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(21),
	datad => VCC,
	cin => \seconds_counter|Add0~39\,
	combout => \seconds_counter|Add0~40_combout\,
	cout => \seconds_counter|Add0~41\);

-- Location: LCCOMB_X76_Y36_N12
\seconds_counter|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~42_combout\ = (\seconds_counter|value\(22) & (!\seconds_counter|Add0~41\)) # (!\seconds_counter|value\(22) & ((\seconds_counter|Add0~41\) # (GND)))
-- \seconds_counter|Add0~43\ = CARRY((!\seconds_counter|Add0~41\) # (!\seconds_counter|value\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(22),
	datad => VCC,
	cin => \seconds_counter|Add0~41\,
	combout => \seconds_counter|Add0~42_combout\,
	cout => \seconds_counter|Add0~43\);

-- Location: LCCOMB_X76_Y36_N14
\seconds_counter|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~44_combout\ = (\seconds_counter|value\(23) & (\seconds_counter|Add0~43\ $ (GND))) # (!\seconds_counter|value\(23) & (!\seconds_counter|Add0~43\ & VCC))
-- \seconds_counter|Add0~45\ = CARRY((\seconds_counter|value\(23) & !\seconds_counter|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(23),
	datad => VCC,
	cin => \seconds_counter|Add0~43\,
	combout => \seconds_counter|Add0~44_combout\,
	cout => \seconds_counter|Add0~45\);

-- Location: LCCOMB_X76_Y36_N16
\seconds_counter|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~46_combout\ = (\seconds_counter|value\(24) & (!\seconds_counter|Add0~45\)) # (!\seconds_counter|value\(24) & ((\seconds_counter|Add0~45\) # (GND)))
-- \seconds_counter|Add0~47\ = CARRY((!\seconds_counter|Add0~45\) # (!\seconds_counter|value\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(24),
	datad => VCC,
	cin => \seconds_counter|Add0~45\,
	combout => \seconds_counter|Add0~46_combout\,
	cout => \seconds_counter|Add0~47\);

-- Location: LCCOMB_X76_Y36_N18
\seconds_counter|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~48_combout\ = (\seconds_counter|value\(25) & (\seconds_counter|Add0~47\ $ (GND))) # (!\seconds_counter|value\(25) & (!\seconds_counter|Add0~47\ & VCC))
-- \seconds_counter|Add0~49\ = CARRY((\seconds_counter|value\(25) & !\seconds_counter|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(25),
	datad => VCC,
	cin => \seconds_counter|Add0~47\,
	combout => \seconds_counter|Add0~48_combout\,
	cout => \seconds_counter|Add0~49\);

-- Location: LCCOMB_X76_Y36_N20
\seconds_counter|Add0~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~50_combout\ = (\seconds_counter|value\(26) & (!\seconds_counter|Add0~49\)) # (!\seconds_counter|value\(26) & ((\seconds_counter|Add0~49\) # (GND)))
-- \seconds_counter|Add0~51\ = CARRY((!\seconds_counter|Add0~49\) # (!\seconds_counter|value\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(26),
	datad => VCC,
	cin => \seconds_counter|Add0~49\,
	combout => \seconds_counter|Add0~50_combout\,
	cout => \seconds_counter|Add0~51\);

-- Location: LCCOMB_X76_Y36_N22
\seconds_counter|Add0~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~52_combout\ = (\seconds_counter|value\(27) & (\seconds_counter|Add0~51\ $ (GND))) # (!\seconds_counter|value\(27) & (!\seconds_counter|Add0~51\ & VCC))
-- \seconds_counter|Add0~53\ = CARRY((\seconds_counter|value\(27) & !\seconds_counter|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(27),
	datad => VCC,
	cin => \seconds_counter|Add0~51\,
	combout => \seconds_counter|Add0~52_combout\,
	cout => \seconds_counter|Add0~53\);

-- Location: LCCOMB_X76_Y36_N24
\seconds_counter|Add0~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~54_combout\ = (\seconds_counter|value\(28) & (!\seconds_counter|Add0~53\)) # (!\seconds_counter|value\(28) & ((\seconds_counter|Add0~53\) # (GND)))
-- \seconds_counter|Add0~55\ = CARRY((!\seconds_counter|Add0~53\) # (!\seconds_counter|value\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(28),
	datad => VCC,
	cin => \seconds_counter|Add0~53\,
	combout => \seconds_counter|Add0~54_combout\,
	cout => \seconds_counter|Add0~55\);

-- Location: LCCOMB_X76_Y36_N26
\seconds_counter|Add0~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~56_combout\ = (\seconds_counter|value\(29) & (\seconds_counter|Add0~55\ $ (GND))) # (!\seconds_counter|value\(29) & (!\seconds_counter|Add0~55\ & VCC))
-- \seconds_counter|Add0~57\ = CARRY((\seconds_counter|value\(29) & !\seconds_counter|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|value\(29),
	datad => VCC,
	cin => \seconds_counter|Add0~55\,
	combout => \seconds_counter|Add0~56_combout\,
	cout => \seconds_counter|Add0~57\);

-- Location: LCCOMB_X76_Y36_N28
\seconds_counter|Add0~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~58_combout\ = (\seconds_counter|value\(30) & (!\seconds_counter|Add0~57\)) # (!\seconds_counter|value\(30) & ((\seconds_counter|Add0~57\) # (GND)))
-- \seconds_counter|Add0~59\ = CARRY((!\seconds_counter|Add0~57\) # (!\seconds_counter|value\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|value\(30),
	datad => VCC,
	cin => \seconds_counter|Add0~57\,
	combout => \seconds_counter|Add0~58_combout\,
	cout => \seconds_counter|Add0~59\);

-- Location: LCCOMB_X76_Y36_N30
\seconds_counter|Add0~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|Add0~60_combout\ = !\seconds_counter|Add0~59\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \seconds_counter|Add0~59\,
	combout => \seconds_counter|Add0~60_combout\);

-- Location: LCCOMB_X77_Y36_N8
\seconds_counter|LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~7_combout\ = (!\seconds_counter|Add0~52_combout\ & (!\seconds_counter|Add0~56_combout\ & !\seconds_counter|Add0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seconds_counter|Add0~52_combout\,
	datac => \seconds_counter|Add0~56_combout\,
	datad => \seconds_counter|Add0~54_combout\,
	combout => \seconds_counter|LessThan0~7_combout\);

-- Location: LCCOMB_X77_Y36_N24
\seconds_counter|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~0_combout\ = (((!\seconds_counter|Add0~32_combout\ & !\seconds_counter|Add0~34_combout\)) # (!\seconds_counter|Add0~38_combout\)) # (!\seconds_counter|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~32_combout\,
	datab => \seconds_counter|Add0~34_combout\,
	datac => \seconds_counter|Add0~36_combout\,
	datad => \seconds_counter|Add0~38_combout\,
	combout => \seconds_counter|LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y36_N26
\seconds_counter|LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~1_combout\ = ((!\seconds_counter|Add0~42_combout\) # (!\seconds_counter|Add0~44_combout\)) # (!\seconds_counter|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~40_combout\,
	datac => \seconds_counter|Add0~44_combout\,
	datad => \seconds_counter|Add0~42_combout\,
	combout => \seconds_counter|LessThan0~1_combout\);

-- Location: LCCOMB_X77_Y36_N30
\seconds_counter|LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~3_combout\ = (!\seconds_counter|Add0~14_combout\ & (!\seconds_counter|Add0~12_combout\ & (!\seconds_counter|Add0~16_combout\ & !\seconds_counter|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~14_combout\,
	datab => \seconds_counter|Add0~12_combout\,
	datac => \seconds_counter|Add0~16_combout\,
	datad => \seconds_counter|Add0~18_combout\,
	combout => \seconds_counter|LessThan0~3_combout\);

-- Location: LCCOMB_X76_Y37_N0
\seconds_counter|LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~2_combout\ = (((!\seconds_counter|Add0~26_combout\) # (!\seconds_counter|Add0~28_combout\)) # (!\seconds_counter|Add0~22_combout\)) # (!\seconds_counter|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~24_combout\,
	datab => \seconds_counter|Add0~22_combout\,
	datac => \seconds_counter|Add0~28_combout\,
	datad => \seconds_counter|Add0~26_combout\,
	combout => \seconds_counter|LessThan0~2_combout\);

-- Location: LCCOMB_X77_Y36_N10
\seconds_counter|LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~4_combout\ = (!\seconds_counter|Add0~34_combout\ & ((\seconds_counter|LessThan0~2_combout\) # ((!\seconds_counter|Add0~20_combout\ & \seconds_counter|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~20_combout\,
	datab => \seconds_counter|Add0~34_combout\,
	datac => \seconds_counter|LessThan0~3_combout\,
	datad => \seconds_counter|LessThan0~2_combout\,
	combout => \seconds_counter|LessThan0~4_combout\);

-- Location: LCCOMB_X77_Y36_N12
\seconds_counter|LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~5_combout\ = (\seconds_counter|LessThan0~0_combout\) # ((\seconds_counter|LessThan0~1_combout\) # ((!\seconds_counter|Add0~30_combout\ & \seconds_counter|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~30_combout\,
	datab => \seconds_counter|LessThan0~0_combout\,
	datac => \seconds_counter|LessThan0~1_combout\,
	datad => \seconds_counter|LessThan0~4_combout\,
	combout => \seconds_counter|LessThan0~5_combout\);

-- Location: LCCOMB_X77_Y36_N18
\seconds_counter|LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~6_combout\ = (!\seconds_counter|Add0~50_combout\ & (((!\seconds_counter|Add0~46_combout\ & \seconds_counter|LessThan0~5_combout\)) # (!\seconds_counter|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~48_combout\,
	datab => \seconds_counter|Add0~50_combout\,
	datac => \seconds_counter|Add0~46_combout\,
	datad => \seconds_counter|LessThan0~5_combout\,
	combout => \seconds_counter|LessThan0~6_combout\);

-- Location: LCCOMB_X77_Y36_N0
\seconds_counter|LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \seconds_counter|LessThan0~8_combout\ = (\seconds_counter|Add0~60_combout\) # ((\seconds_counter|Add0~58_combout\) # ((!\seconds_counter|LessThan0~6_combout\) # (!\seconds_counter|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seconds_counter|Add0~60_combout\,
	datab => \seconds_counter|Add0~58_combout\,
	datac => \seconds_counter|LessThan0~7_combout\,
	datad => \seconds_counter|LessThan0~6_combout\,
	combout => \seconds_counter|LessThan0~8_combout\);

-- Location: FF_X77_Y36_N1
\seconds_counter|completed_value\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \seconds_counter|LessThan0~8_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \seconds_counter|completed_value~q\);

-- Location: CLKCTRL_G14
\seconds_counter|completed_value~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \seconds_counter|completed_value~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \seconds_counter|completed_value~clkctrl_outclk\);

-- Location: LCCOMB_X113_Y45_N0
\timer_open|count[0]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[0]~34_combout\ = (!\timer_open|count\(0) & !\timer_open|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_open|count\(0),
	datad => \timer_open|Equal0~9_combout\,
	combout => \timer_open|count[0]~34_combout\);

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

-- Location: LCCOMB_X116_Y44_N0
\timer_yellow_light|count[0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[0]~30_combout\ = (!\timer_yellow_light|Equal0~9_combout\ & !\timer_yellow_light|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|Equal0~9_combout\,
	datac => \timer_yellow_light|count\(0),
	combout => \timer_yellow_light|count[0]~30_combout\);

-- Location: LCCOMB_X114_Y45_N20
\Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\t_status.E2~q\ & ((\timer_open|completed~q\) # (!\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \t_status.E2~q\,
	datad => \timer_open|completed~q\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X114_Y45_N28
\Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\SW[8]~input_o\ & (!\t_status.E0~q\ & \timer_open|completed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \t_status.E0~q\,
	datad => \timer_open|completed~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X114_Y45_N30
\Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (!\Selector2~2_combout\ & ((\Selector2~1_combout\) # ((!\timer_yellow_light|completed~q\ & \t_status.E1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|completed~q\,
	datab => \Selector2~2_combout\,
	datac => \t_status.E1~q\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~3_combout\);

-- Location: FF_X114_Y45_N31
\t_status.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector2~3_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_status.E1~q\);

-- Location: LCCOMB_X114_Y45_N0
\Selector3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\SW[8]~input_o\ & (\t_status.E2~q\ & !\timer_open|completed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \t_status.E2~q\,
	datad => \timer_open|completed~q\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X114_Y45_N22
\Selector3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\timer_yellow_light|completed~q\ & (!\t_status.E3~q\ & ((\t_status.E1~q\) # (\Selector3~4_combout\)))) # (!\timer_yellow_light|completed~q\ & (((\Selector3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_status.E3~q\,
	datab => \timer_yellow_light|completed~q\,
	datac => \t_status.E1~q\,
	datad => \Selector3~4_combout\,
	combout => \Selector3~5_combout\);

-- Location: FF_X114_Y45_N23
\t_status.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector3~5_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_status.E2~q\);

-- Location: LCCOMB_X114_Y45_N18
\reset_yellow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_yellow~0_combout\ = (\KEY[0]~input_o\ & (!\t_status.E2~q\ & \t_status.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \t_status.E2~q\,
	datad => \t_status.E0~q\,
	combout => \reset_yellow~0_combout\);

-- Location: LCCOMB_X115_Y44_N16
\reset_yellow~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \reset_yellow~1_combout\ = (\reset_yellow~0_combout\ & (\timer_yellow_light|completed~q\)) # (!\reset_yellow~0_combout\ & ((\reset_yellow~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|completed~q\,
	datac => \reset_yellow~q\,
	datad => \reset_yellow~0_combout\,
	combout => \reset_yellow~1_combout\);

-- Location: FF_X115_Y44_N17
reset_yellow : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \reset_yellow~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_yellow~q\);

-- Location: FF_X116_Y44_N1
\timer_yellow_light|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[0]~30_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(0));

-- Location: LCCOMB_X116_Y44_N2
\timer_yellow_light|count[1]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[1]~31_combout\ = (\timer_yellow_light|count\(0) & (\timer_yellow_light|count\(1) & VCC)) # (!\timer_yellow_light|count\(0) & (\timer_yellow_light|count\(1) $ (VCC)))
-- \timer_yellow_light|count[1]~32\ = CARRY((!\timer_yellow_light|count\(0) & \timer_yellow_light|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(0),
	datab => \timer_yellow_light|count\(1),
	datad => VCC,
	combout => \timer_yellow_light|count[1]~31_combout\,
	cout => \timer_yellow_light|count[1]~32\);

-- Location: FF_X116_Y44_N3
\timer_yellow_light|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[1]~31_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(1));

-- Location: LCCOMB_X116_Y44_N4
\timer_yellow_light|count[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[2]~33_combout\ = (\timer_yellow_light|count\(2) & (!\timer_yellow_light|count[1]~32\)) # (!\timer_yellow_light|count\(2) & ((\timer_yellow_light|count[1]~32\) # (GND)))
-- \timer_yellow_light|count[2]~34\ = CARRY((!\timer_yellow_light|count[1]~32\) # (!\timer_yellow_light|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(2),
	datad => VCC,
	cin => \timer_yellow_light|count[1]~32\,
	combout => \timer_yellow_light|count[2]~33_combout\,
	cout => \timer_yellow_light|count[2]~34\);

-- Location: FF_X116_Y44_N5
\timer_yellow_light|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[2]~33_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(2));

-- Location: LCCOMB_X116_Y44_N6
\timer_yellow_light|count[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[3]~35_combout\ = (\timer_yellow_light|count\(3) & (\timer_yellow_light|count[2]~34\ $ (GND))) # (!\timer_yellow_light|count\(3) & (!\timer_yellow_light|count[2]~34\ & VCC))
-- \timer_yellow_light|count[3]~36\ = CARRY((\timer_yellow_light|count\(3) & !\timer_yellow_light|count[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(3),
	datad => VCC,
	cin => \timer_yellow_light|count[2]~34\,
	combout => \timer_yellow_light|count[3]~35_combout\,
	cout => \timer_yellow_light|count[3]~36\);

-- Location: FF_X116_Y44_N7
\timer_yellow_light|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[3]~35_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(3));

-- Location: LCCOMB_X116_Y44_N8
\timer_yellow_light|count[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[4]~37_combout\ = (\timer_yellow_light|count\(4) & (!\timer_yellow_light|count[3]~36\)) # (!\timer_yellow_light|count\(4) & ((\timer_yellow_light|count[3]~36\) # (GND)))
-- \timer_yellow_light|count[4]~38\ = CARRY((!\timer_yellow_light|count[3]~36\) # (!\timer_yellow_light|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(4),
	datad => VCC,
	cin => \timer_yellow_light|count[3]~36\,
	combout => \timer_yellow_light|count[4]~37_combout\,
	cout => \timer_yellow_light|count[4]~38\);

-- Location: FF_X116_Y44_N9
\timer_yellow_light|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[4]~37_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(4));

-- Location: LCCOMB_X116_Y44_N10
\timer_yellow_light|count[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[5]~39_combout\ = (\timer_yellow_light|count\(5) & (\timer_yellow_light|count[4]~38\ $ (GND))) # (!\timer_yellow_light|count\(5) & (!\timer_yellow_light|count[4]~38\ & VCC))
-- \timer_yellow_light|count[5]~40\ = CARRY((\timer_yellow_light|count\(5) & !\timer_yellow_light|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(5),
	datad => VCC,
	cin => \timer_yellow_light|count[4]~38\,
	combout => \timer_yellow_light|count[5]~39_combout\,
	cout => \timer_yellow_light|count[5]~40\);

-- Location: FF_X116_Y44_N11
\timer_yellow_light|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[5]~39_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(5));

-- Location: LCCOMB_X116_Y44_N12
\timer_yellow_light|count[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[6]~41_combout\ = (\timer_yellow_light|count\(6) & (!\timer_yellow_light|count[5]~40\)) # (!\timer_yellow_light|count\(6) & ((\timer_yellow_light|count[5]~40\) # (GND)))
-- \timer_yellow_light|count[6]~42\ = CARRY((!\timer_yellow_light|count[5]~40\) # (!\timer_yellow_light|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(6),
	datad => VCC,
	cin => \timer_yellow_light|count[5]~40\,
	combout => \timer_yellow_light|count[6]~41_combout\,
	cout => \timer_yellow_light|count[6]~42\);

-- Location: FF_X116_Y44_N13
\timer_yellow_light|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[6]~41_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(6));

-- Location: LCCOMB_X116_Y44_N14
\timer_yellow_light|count[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[7]~43_combout\ = (\timer_yellow_light|count\(7) & (\timer_yellow_light|count[6]~42\ $ (GND))) # (!\timer_yellow_light|count\(7) & (!\timer_yellow_light|count[6]~42\ & VCC))
-- \timer_yellow_light|count[7]~44\ = CARRY((\timer_yellow_light|count\(7) & !\timer_yellow_light|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(7),
	datad => VCC,
	cin => \timer_yellow_light|count[6]~42\,
	combout => \timer_yellow_light|count[7]~43_combout\,
	cout => \timer_yellow_light|count[7]~44\);

-- Location: FF_X116_Y44_N15
\timer_yellow_light|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[7]~43_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(7));

-- Location: LCCOMB_X116_Y44_N16
\timer_yellow_light|count[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[8]~45_combout\ = (\timer_yellow_light|count\(8) & (!\timer_yellow_light|count[7]~44\)) # (!\timer_yellow_light|count\(8) & ((\timer_yellow_light|count[7]~44\) # (GND)))
-- \timer_yellow_light|count[8]~46\ = CARRY((!\timer_yellow_light|count[7]~44\) # (!\timer_yellow_light|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(8),
	datad => VCC,
	cin => \timer_yellow_light|count[7]~44\,
	combout => \timer_yellow_light|count[8]~45_combout\,
	cout => \timer_yellow_light|count[8]~46\);

-- Location: FF_X116_Y44_N17
\timer_yellow_light|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[8]~45_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(8));

-- Location: LCCOMB_X116_Y44_N18
\timer_yellow_light|count[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[9]~47_combout\ = (\timer_yellow_light|count\(9) & (\timer_yellow_light|count[8]~46\ $ (GND))) # (!\timer_yellow_light|count\(9) & (!\timer_yellow_light|count[8]~46\ & VCC))
-- \timer_yellow_light|count[9]~48\ = CARRY((\timer_yellow_light|count\(9) & !\timer_yellow_light|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(9),
	datad => VCC,
	cin => \timer_yellow_light|count[8]~46\,
	combout => \timer_yellow_light|count[9]~47_combout\,
	cout => \timer_yellow_light|count[9]~48\);

-- Location: FF_X116_Y44_N19
\timer_yellow_light|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[9]~47_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(9));

-- Location: LCCOMB_X116_Y44_N20
\timer_yellow_light|count[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[10]~49_combout\ = (\timer_yellow_light|count\(10) & (!\timer_yellow_light|count[9]~48\)) # (!\timer_yellow_light|count\(10) & ((\timer_yellow_light|count[9]~48\) # (GND)))
-- \timer_yellow_light|count[10]~50\ = CARRY((!\timer_yellow_light|count[9]~48\) # (!\timer_yellow_light|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(10),
	datad => VCC,
	cin => \timer_yellow_light|count[9]~48\,
	combout => \timer_yellow_light|count[10]~49_combout\,
	cout => \timer_yellow_light|count[10]~50\);

-- Location: FF_X116_Y44_N21
\timer_yellow_light|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[10]~49_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(10));

-- Location: LCCOMB_X116_Y44_N22
\timer_yellow_light|count[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[11]~51_combout\ = (\timer_yellow_light|count\(11) & (\timer_yellow_light|count[10]~50\ $ (GND))) # (!\timer_yellow_light|count\(11) & (!\timer_yellow_light|count[10]~50\ & VCC))
-- \timer_yellow_light|count[11]~52\ = CARRY((\timer_yellow_light|count\(11) & !\timer_yellow_light|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(11),
	datad => VCC,
	cin => \timer_yellow_light|count[10]~50\,
	combout => \timer_yellow_light|count[11]~51_combout\,
	cout => \timer_yellow_light|count[11]~52\);

-- Location: FF_X116_Y44_N23
\timer_yellow_light|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[11]~51_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(11));

-- Location: LCCOMB_X116_Y44_N24
\timer_yellow_light|count[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[12]~53_combout\ = (\timer_yellow_light|count\(12) & (!\timer_yellow_light|count[11]~52\)) # (!\timer_yellow_light|count\(12) & ((\timer_yellow_light|count[11]~52\) # (GND)))
-- \timer_yellow_light|count[12]~54\ = CARRY((!\timer_yellow_light|count[11]~52\) # (!\timer_yellow_light|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(12),
	datad => VCC,
	cin => \timer_yellow_light|count[11]~52\,
	combout => \timer_yellow_light|count[12]~53_combout\,
	cout => \timer_yellow_light|count[12]~54\);

-- Location: FF_X116_Y44_N25
\timer_yellow_light|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[12]~53_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(12));

-- Location: LCCOMB_X116_Y44_N26
\timer_yellow_light|count[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[13]~55_combout\ = (\timer_yellow_light|count\(13) & (\timer_yellow_light|count[12]~54\ $ (GND))) # (!\timer_yellow_light|count\(13) & (!\timer_yellow_light|count[12]~54\ & VCC))
-- \timer_yellow_light|count[13]~56\ = CARRY((\timer_yellow_light|count\(13) & !\timer_yellow_light|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(13),
	datad => VCC,
	cin => \timer_yellow_light|count[12]~54\,
	combout => \timer_yellow_light|count[13]~55_combout\,
	cout => \timer_yellow_light|count[13]~56\);

-- Location: FF_X116_Y44_N27
\timer_yellow_light|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[13]~55_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(13));

-- Location: LCCOMB_X116_Y44_N28
\timer_yellow_light|count[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[14]~57_combout\ = (\timer_yellow_light|count\(14) & (!\timer_yellow_light|count[13]~56\)) # (!\timer_yellow_light|count\(14) & ((\timer_yellow_light|count[13]~56\) # (GND)))
-- \timer_yellow_light|count[14]~58\ = CARRY((!\timer_yellow_light|count[13]~56\) # (!\timer_yellow_light|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(14),
	datad => VCC,
	cin => \timer_yellow_light|count[13]~56\,
	combout => \timer_yellow_light|count[14]~57_combout\,
	cout => \timer_yellow_light|count[14]~58\);

-- Location: FF_X116_Y44_N29
\timer_yellow_light|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[14]~57_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(14));

-- Location: LCCOMB_X116_Y44_N30
\timer_yellow_light|count[15]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[15]~59_combout\ = (\timer_yellow_light|count\(15) & (\timer_yellow_light|count[14]~58\ $ (GND))) # (!\timer_yellow_light|count\(15) & (!\timer_yellow_light|count[14]~58\ & VCC))
-- \timer_yellow_light|count[15]~60\ = CARRY((\timer_yellow_light|count\(15) & !\timer_yellow_light|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(15),
	datad => VCC,
	cin => \timer_yellow_light|count[14]~58\,
	combout => \timer_yellow_light|count[15]~59_combout\,
	cout => \timer_yellow_light|count[15]~60\);

-- Location: FF_X116_Y44_N31
\timer_yellow_light|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[15]~59_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(15));

-- Location: LCCOMB_X116_Y43_N0
\timer_yellow_light|count[16]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[16]~61_combout\ = (\timer_yellow_light|count\(16) & (!\timer_yellow_light|count[15]~60\)) # (!\timer_yellow_light|count\(16) & ((\timer_yellow_light|count[15]~60\) # (GND)))
-- \timer_yellow_light|count[16]~62\ = CARRY((!\timer_yellow_light|count[15]~60\) # (!\timer_yellow_light|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(16),
	datad => VCC,
	cin => \timer_yellow_light|count[15]~60\,
	combout => \timer_yellow_light|count[16]~61_combout\,
	cout => \timer_yellow_light|count[16]~62\);

-- Location: FF_X116_Y43_N1
\timer_yellow_light|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[16]~61_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(16));

-- Location: LCCOMB_X116_Y43_N2
\timer_yellow_light|count[17]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[17]~63_combout\ = (\timer_yellow_light|count\(17) & (\timer_yellow_light|count[16]~62\ $ (GND))) # (!\timer_yellow_light|count\(17) & (!\timer_yellow_light|count[16]~62\ & VCC))
-- \timer_yellow_light|count[17]~64\ = CARRY((\timer_yellow_light|count\(17) & !\timer_yellow_light|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(17),
	datad => VCC,
	cin => \timer_yellow_light|count[16]~62\,
	combout => \timer_yellow_light|count[17]~63_combout\,
	cout => \timer_yellow_light|count[17]~64\);

-- Location: FF_X116_Y43_N3
\timer_yellow_light|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[17]~63_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(17));

-- Location: LCCOMB_X116_Y43_N4
\timer_yellow_light|count[18]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[18]~65_combout\ = (\timer_yellow_light|count\(18) & (!\timer_yellow_light|count[17]~64\)) # (!\timer_yellow_light|count\(18) & ((\timer_yellow_light|count[17]~64\) # (GND)))
-- \timer_yellow_light|count[18]~66\ = CARRY((!\timer_yellow_light|count[17]~64\) # (!\timer_yellow_light|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(18),
	datad => VCC,
	cin => \timer_yellow_light|count[17]~64\,
	combout => \timer_yellow_light|count[18]~65_combout\,
	cout => \timer_yellow_light|count[18]~66\);

-- Location: FF_X116_Y43_N5
\timer_yellow_light|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[18]~65_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(18));

-- Location: LCCOMB_X116_Y43_N6
\timer_yellow_light|count[19]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[19]~67_combout\ = (\timer_yellow_light|count\(19) & (\timer_yellow_light|count[18]~66\ $ (GND))) # (!\timer_yellow_light|count\(19) & (!\timer_yellow_light|count[18]~66\ & VCC))
-- \timer_yellow_light|count[19]~68\ = CARRY((\timer_yellow_light|count\(19) & !\timer_yellow_light|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(19),
	datad => VCC,
	cin => \timer_yellow_light|count[18]~66\,
	combout => \timer_yellow_light|count[19]~67_combout\,
	cout => \timer_yellow_light|count[19]~68\);

-- Location: FF_X116_Y43_N7
\timer_yellow_light|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[19]~67_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(19));

-- Location: LCCOMB_X115_Y44_N12
\timer_yellow_light|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~5_combout\ = (!\timer_yellow_light|count\(19) & (!\timer_yellow_light|count\(16) & (!\timer_yellow_light|count\(17) & !\timer_yellow_light|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(19),
	datab => \timer_yellow_light|count\(16),
	datac => \timer_yellow_light|count\(17),
	datad => \timer_yellow_light|count\(18),
	combout => \timer_yellow_light|Equal0~5_combout\);

-- Location: LCCOMB_X115_Y44_N22
\timer_yellow_light|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~0_combout\ = (!\timer_yellow_light|count\(3) & (!\timer_yellow_light|count\(2) & (!\timer_yellow_light|count\(0) & !\timer_yellow_light|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(3),
	datab => \timer_yellow_light|count\(2),
	datac => \timer_yellow_light|count\(0),
	datad => \timer_yellow_light|count\(1),
	combout => \timer_yellow_light|Equal0~0_combout\);

-- Location: LCCOMB_X115_Y44_N8
\timer_yellow_light|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~3_combout\ = (!\timer_yellow_light|count\(15) & (!\timer_yellow_light|count\(12) & (!\timer_yellow_light|count\(13) & !\timer_yellow_light|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(15),
	datab => \timer_yellow_light|count\(12),
	datac => \timer_yellow_light|count\(13),
	datad => \timer_yellow_light|count\(14),
	combout => \timer_yellow_light|Equal0~3_combout\);

-- Location: LCCOMB_X115_Y44_N4
\timer_yellow_light|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~1_combout\ = (!\timer_yellow_light|count\(5) & (!\timer_yellow_light|count\(4) & (!\timer_yellow_light|count\(6) & !\timer_yellow_light|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(5),
	datab => \timer_yellow_light|count\(4),
	datac => \timer_yellow_light|count\(6),
	datad => \timer_yellow_light|count\(7),
	combout => \timer_yellow_light|Equal0~1_combout\);

-- Location: LCCOMB_X115_Y44_N18
\timer_yellow_light|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~2_combout\ = (!\timer_yellow_light|count\(10) & (!\timer_yellow_light|count\(11) & (!\timer_yellow_light|count\(8) & !\timer_yellow_light|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(10),
	datab => \timer_yellow_light|count\(11),
	datac => \timer_yellow_light|count\(8),
	datad => \timer_yellow_light|count\(9),
	combout => \timer_yellow_light|Equal0~2_combout\);

-- Location: LCCOMB_X115_Y44_N2
\timer_yellow_light|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~4_combout\ = (\timer_yellow_light|Equal0~0_combout\ & (\timer_yellow_light|Equal0~3_combout\ & (\timer_yellow_light|Equal0~1_combout\ & \timer_yellow_light|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|Equal0~0_combout\,
	datab => \timer_yellow_light|Equal0~3_combout\,
	datac => \timer_yellow_light|Equal0~1_combout\,
	datad => \timer_yellow_light|Equal0~2_combout\,
	combout => \timer_yellow_light|Equal0~4_combout\);

-- Location: LCCOMB_X116_Y43_N8
\timer_yellow_light|count[20]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[20]~69_combout\ = (\timer_yellow_light|count\(20) & (!\timer_yellow_light|count[19]~68\)) # (!\timer_yellow_light|count\(20) & ((\timer_yellow_light|count[19]~68\) # (GND)))
-- \timer_yellow_light|count[20]~70\ = CARRY((!\timer_yellow_light|count[19]~68\) # (!\timer_yellow_light|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(20),
	datad => VCC,
	cin => \timer_yellow_light|count[19]~68\,
	combout => \timer_yellow_light|count[20]~69_combout\,
	cout => \timer_yellow_light|count[20]~70\);

-- Location: FF_X116_Y43_N9
\timer_yellow_light|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[20]~69_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(20));

-- Location: LCCOMB_X116_Y43_N10
\timer_yellow_light|count[21]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[21]~71_combout\ = (\timer_yellow_light|count\(21) & (\timer_yellow_light|count[20]~70\ $ (GND))) # (!\timer_yellow_light|count\(21) & (!\timer_yellow_light|count[20]~70\ & VCC))
-- \timer_yellow_light|count[21]~72\ = CARRY((\timer_yellow_light|count\(21) & !\timer_yellow_light|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(21),
	datad => VCC,
	cin => \timer_yellow_light|count[20]~70\,
	combout => \timer_yellow_light|count[21]~71_combout\,
	cout => \timer_yellow_light|count[21]~72\);

-- Location: FF_X116_Y43_N11
\timer_yellow_light|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[21]~71_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(21));

-- Location: LCCOMB_X116_Y43_N12
\timer_yellow_light|count[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[22]~73_combout\ = (\timer_yellow_light|count\(22) & (!\timer_yellow_light|count[21]~72\)) # (!\timer_yellow_light|count\(22) & ((\timer_yellow_light|count[21]~72\) # (GND)))
-- \timer_yellow_light|count[22]~74\ = CARRY((!\timer_yellow_light|count[21]~72\) # (!\timer_yellow_light|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(22),
	datad => VCC,
	cin => \timer_yellow_light|count[21]~72\,
	combout => \timer_yellow_light|count[22]~73_combout\,
	cout => \timer_yellow_light|count[22]~74\);

-- Location: FF_X116_Y43_N13
\timer_yellow_light|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[22]~73_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(22));

-- Location: LCCOMB_X116_Y43_N14
\timer_yellow_light|count[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[23]~75_combout\ = (\timer_yellow_light|count\(23) & (\timer_yellow_light|count[22]~74\ $ (GND))) # (!\timer_yellow_light|count\(23) & (!\timer_yellow_light|count[22]~74\ & VCC))
-- \timer_yellow_light|count[23]~76\ = CARRY((\timer_yellow_light|count\(23) & !\timer_yellow_light|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(23),
	datad => VCC,
	cin => \timer_yellow_light|count[22]~74\,
	combout => \timer_yellow_light|count[23]~75_combout\,
	cout => \timer_yellow_light|count[23]~76\);

-- Location: FF_X116_Y43_N15
\timer_yellow_light|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[23]~75_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(23));

-- Location: LCCOMB_X115_Y44_N30
\timer_yellow_light|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~6_combout\ = (!\timer_yellow_light|count\(22) & (!\timer_yellow_light|count\(20) & (!\timer_yellow_light|count\(23) & !\timer_yellow_light|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(22),
	datab => \timer_yellow_light|count\(20),
	datac => \timer_yellow_light|count\(23),
	datad => \timer_yellow_light|count\(21),
	combout => \timer_yellow_light|Equal0~6_combout\);

-- Location: LCCOMB_X116_Y43_N16
\timer_yellow_light|count[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[24]~77_combout\ = (\timer_yellow_light|count\(24) & (!\timer_yellow_light|count[23]~76\)) # (!\timer_yellow_light|count\(24) & ((\timer_yellow_light|count[23]~76\) # (GND)))
-- \timer_yellow_light|count[24]~78\ = CARRY((!\timer_yellow_light|count[23]~76\) # (!\timer_yellow_light|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(24),
	datad => VCC,
	cin => \timer_yellow_light|count[23]~76\,
	combout => \timer_yellow_light|count[24]~77_combout\,
	cout => \timer_yellow_light|count[24]~78\);

-- Location: FF_X116_Y43_N17
\timer_yellow_light|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[24]~77_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(24));

-- Location: LCCOMB_X116_Y43_N18
\timer_yellow_light|count[25]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[25]~79_combout\ = (\timer_yellow_light|count\(25) & (\timer_yellow_light|count[24]~78\ $ (GND))) # (!\timer_yellow_light|count\(25) & (!\timer_yellow_light|count[24]~78\ & VCC))
-- \timer_yellow_light|count[25]~80\ = CARRY((\timer_yellow_light|count\(25) & !\timer_yellow_light|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(25),
	datad => VCC,
	cin => \timer_yellow_light|count[24]~78\,
	combout => \timer_yellow_light|count[25]~79_combout\,
	cout => \timer_yellow_light|count[25]~80\);

-- Location: FF_X116_Y43_N19
\timer_yellow_light|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[25]~79_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(25));

-- Location: LCCOMB_X116_Y43_N20
\timer_yellow_light|count[26]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[26]~81_combout\ = (\timer_yellow_light|count\(26) & (!\timer_yellow_light|count[25]~80\)) # (!\timer_yellow_light|count\(26) & ((\timer_yellow_light|count[25]~80\) # (GND)))
-- \timer_yellow_light|count[26]~82\ = CARRY((!\timer_yellow_light|count[25]~80\) # (!\timer_yellow_light|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(26),
	datad => VCC,
	cin => \timer_yellow_light|count[25]~80\,
	combout => \timer_yellow_light|count[26]~81_combout\,
	cout => \timer_yellow_light|count[26]~82\);

-- Location: FF_X116_Y43_N21
\timer_yellow_light|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[26]~81_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(26));

-- Location: LCCOMB_X116_Y43_N22
\timer_yellow_light|count[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[27]~83_combout\ = (\timer_yellow_light|count\(27) & (\timer_yellow_light|count[26]~82\ $ (GND))) # (!\timer_yellow_light|count\(27) & (!\timer_yellow_light|count[26]~82\ & VCC))
-- \timer_yellow_light|count[27]~84\ = CARRY((\timer_yellow_light|count\(27) & !\timer_yellow_light|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(27),
	datad => VCC,
	cin => \timer_yellow_light|count[26]~82\,
	combout => \timer_yellow_light|count[27]~83_combout\,
	cout => \timer_yellow_light|count[27]~84\);

-- Location: FF_X116_Y43_N23
\timer_yellow_light|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[27]~83_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(27));

-- Location: LCCOMB_X116_Y43_N24
\timer_yellow_light|count[28]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[28]~85_combout\ = (\timer_yellow_light|count\(28) & (!\timer_yellow_light|count[27]~84\)) # (!\timer_yellow_light|count\(28) & ((\timer_yellow_light|count[27]~84\) # (GND)))
-- \timer_yellow_light|count[28]~86\ = CARRY((!\timer_yellow_light|count[27]~84\) # (!\timer_yellow_light|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|count\(28),
	datad => VCC,
	cin => \timer_yellow_light|count[27]~84\,
	combout => \timer_yellow_light|count[28]~85_combout\,
	cout => \timer_yellow_light|count[28]~86\);

-- Location: FF_X116_Y43_N25
\timer_yellow_light|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[28]~85_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(28));

-- Location: LCCOMB_X116_Y43_N26
\timer_yellow_light|count[29]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[29]~87_combout\ = (\timer_yellow_light|count\(29) & (\timer_yellow_light|count[28]~86\ $ (GND))) # (!\timer_yellow_light|count\(29) & (!\timer_yellow_light|count[28]~86\ & VCC))
-- \timer_yellow_light|count[29]~88\ = CARRY((\timer_yellow_light|count\(29) & !\timer_yellow_light|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(29),
	datad => VCC,
	cin => \timer_yellow_light|count[28]~86\,
	combout => \timer_yellow_light|count[29]~87_combout\,
	cout => \timer_yellow_light|count[29]~88\);

-- Location: FF_X116_Y43_N27
\timer_yellow_light|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[29]~87_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(29));

-- Location: LCCOMB_X116_Y43_N28
\timer_yellow_light|count[30]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|count[30]~89_combout\ = \timer_yellow_light|count[29]~88\ $ (\timer_yellow_light|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_yellow_light|count\(30),
	cin => \timer_yellow_light|count[29]~88\,
	combout => \timer_yellow_light|count[30]~89_combout\);

-- Location: FF_X116_Y43_N29
\timer_yellow_light|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|count[30]~89_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	ena => \timer_yellow_light|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|count\(30));

-- Location: LCCOMB_X116_Y43_N30
\timer_yellow_light|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~7_combout\ = (!\timer_yellow_light|count\(26) & (!\timer_yellow_light|count\(24) & (!\timer_yellow_light|count\(27) & !\timer_yellow_light|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(26),
	datab => \timer_yellow_light|count\(24),
	datac => \timer_yellow_light|count\(27),
	datad => \timer_yellow_light|count\(25),
	combout => \timer_yellow_light|Equal0~7_combout\);

-- Location: LCCOMB_X115_Y44_N28
\timer_yellow_light|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~8_combout\ = (!\timer_yellow_light|count\(29) & (!\timer_yellow_light|count\(30) & (!\timer_yellow_light|count\(28) & \timer_yellow_light|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|count\(29),
	datab => \timer_yellow_light|count\(30),
	datac => \timer_yellow_light|count\(28),
	datad => \timer_yellow_light|Equal0~7_combout\,
	combout => \timer_yellow_light|Equal0~8_combout\);

-- Location: LCCOMB_X115_Y44_N6
\timer_yellow_light|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|Equal0~9_combout\ = (\timer_yellow_light|Equal0~5_combout\ & (\timer_yellow_light|Equal0~4_combout\ & (\timer_yellow_light|Equal0~6_combout\ & \timer_yellow_light|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_yellow_light|Equal0~5_combout\,
	datab => \timer_yellow_light|Equal0~4_combout\,
	datac => \timer_yellow_light|Equal0~6_combout\,
	datad => \timer_yellow_light|Equal0~8_combout\,
	combout => \timer_yellow_light|Equal0~9_combout\);

-- Location: LCCOMB_X115_Y45_N22
\timer_yellow_light|completed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_yellow_light|completed~0_combout\ = (\timer_yellow_light|completed~q\) # (\timer_yellow_light|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_yellow_light|completed~q\,
	datad => \timer_yellow_light|Equal0~9_combout\,
	combout => \timer_yellow_light|completed~0_combout\);

-- Location: FF_X115_Y45_N23
\timer_yellow_light|completed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_yellow_light|completed~0_combout\,
	clrn => \ALT_INV_reset_yellow~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_yellow_light|completed~q\);

-- Location: LCCOMB_X114_Y45_N26
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector2~2_combout\) # ((!\timer_yellow_light|completed~q\ & \t_status.E3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timer_yellow_light|completed~q\,
	datac => \t_status.E3~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X114_Y45_N27
\t_status.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_status.E3~q\);

-- Location: LCCOMB_X114_Y45_N10
\Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\t_status.E3~q\ & \timer_yellow_light|completed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \t_status.E3~q\,
	datad => \timer_yellow_light|completed~q\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X114_Y45_N12
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\Selector3~3_combout\ & ((\t_status.E0~q\) # ((\timer_open|completed~q\ & \SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|completed~q\,
	datab => \SW[8]~input_o\,
	datac => \t_status.E0~q\,
	datad => \Selector3~3_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X114_Y45_N13
\t_status.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \t_status.E0~q\);

-- Location: LCCOMB_X114_Y45_N24
\Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\t_status.E2~q\ & (((\timer_open|completed~q\)) # (!\SW[8]~input_o\))) # (!\t_status.E2~q\ & (((\reset_open~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \reset_open~q\,
	datac => \t_status.E2~q\,
	datad => \timer_open|completed~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X114_Y45_N16
\Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\t_status.E0~q\ & (((\Selector0~2_combout\)))) # (!\t_status.E0~q\ & (\timer_open|completed~q\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|completed~q\,
	datab => \SW[8]~input_o\,
	datac => \t_status.E0~q\,
	datad => \Selector0~2_combout\,
	combout => \Selector0~3_combout\);

-- Location: FF_X114_Y45_N17
reset_open : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Selector0~3_combout\,
	ena => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_open~q\);

-- Location: FF_X113_Y45_N1
\timer_open|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[0]~34_combout\,
	clrn => \ALT_INV_reset_open~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(0));

-- Location: LCCOMB_X113_Y45_N2
\timer_open|count[1]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[1]~30_combout\ = (\timer_open|count\(0) & (\timer_open|count\(1) & VCC)) # (!\timer_open|count\(0) & (\timer_open|count\(1) $ (VCC)))
-- \timer_open|count[1]~31\ = CARRY((!\timer_open|count\(0) & \timer_open|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(0),
	datab => \timer_open|count\(1),
	datad => VCC,
	combout => \timer_open|count[1]~30_combout\,
	cout => \timer_open|count[1]~31\);

-- Location: FF_X113_Y45_N3
\timer_open|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[1]~30_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(1));

-- Location: LCCOMB_X113_Y45_N4
\timer_open|count[2]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[2]~32_combout\ = (\timer_open|count\(2) & (!\timer_open|count[1]~31\)) # (!\timer_open|count\(2) & ((\timer_open|count[1]~31\) # (GND)))
-- \timer_open|count[2]~33\ = CARRY((!\timer_open|count[1]~31\) # (!\timer_open|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(2),
	datad => VCC,
	cin => \timer_open|count[1]~31\,
	combout => \timer_open|count[2]~32_combout\,
	cout => \timer_open|count[2]~33\);

-- Location: FF_X113_Y45_N5
\timer_open|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[2]~32_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(2));

-- Location: LCCOMB_X113_Y45_N6
\timer_open|count[3]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[3]~35_combout\ = (\timer_open|count\(3) & (\timer_open|count[2]~33\ $ (GND))) # (!\timer_open|count\(3) & (!\timer_open|count[2]~33\ & VCC))
-- \timer_open|count[3]~36\ = CARRY((\timer_open|count\(3) & !\timer_open|count[2]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(3),
	datad => VCC,
	cin => \timer_open|count[2]~33\,
	combout => \timer_open|count[3]~35_combout\,
	cout => \timer_open|count[3]~36\);

-- Location: FF_X113_Y45_N7
\timer_open|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[3]~35_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(3));

-- Location: LCCOMB_X113_Y45_N8
\timer_open|count[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[4]~37_combout\ = (\timer_open|count\(4) & (!\timer_open|count[3]~36\)) # (!\timer_open|count\(4) & ((\timer_open|count[3]~36\) # (GND)))
-- \timer_open|count[4]~38\ = CARRY((!\timer_open|count[3]~36\) # (!\timer_open|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(4),
	datad => VCC,
	cin => \timer_open|count[3]~36\,
	combout => \timer_open|count[4]~37_combout\,
	cout => \timer_open|count[4]~38\);

-- Location: FF_X113_Y45_N9
\timer_open|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[4]~37_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(4));

-- Location: LCCOMB_X113_Y45_N10
\timer_open|count[5]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[5]~39_combout\ = (\timer_open|count\(5) & (\timer_open|count[4]~38\ $ (GND))) # (!\timer_open|count\(5) & (!\timer_open|count[4]~38\ & VCC))
-- \timer_open|count[5]~40\ = CARRY((\timer_open|count\(5) & !\timer_open|count[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(5),
	datad => VCC,
	cin => \timer_open|count[4]~38\,
	combout => \timer_open|count[5]~39_combout\,
	cout => \timer_open|count[5]~40\);

-- Location: FF_X113_Y45_N11
\timer_open|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[5]~39_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(5));

-- Location: LCCOMB_X113_Y45_N12
\timer_open|count[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[6]~41_combout\ = (\timer_open|count\(6) & (!\timer_open|count[5]~40\)) # (!\timer_open|count\(6) & ((\timer_open|count[5]~40\) # (GND)))
-- \timer_open|count[6]~42\ = CARRY((!\timer_open|count[5]~40\) # (!\timer_open|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(6),
	datad => VCC,
	cin => \timer_open|count[5]~40\,
	combout => \timer_open|count[6]~41_combout\,
	cout => \timer_open|count[6]~42\);

-- Location: FF_X113_Y45_N13
\timer_open|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[6]~41_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(6));

-- Location: LCCOMB_X113_Y45_N14
\timer_open|count[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[7]~43_combout\ = (\timer_open|count\(7) & (\timer_open|count[6]~42\ $ (GND))) # (!\timer_open|count\(7) & (!\timer_open|count[6]~42\ & VCC))
-- \timer_open|count[7]~44\ = CARRY((\timer_open|count\(7) & !\timer_open|count[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(7),
	datad => VCC,
	cin => \timer_open|count[6]~42\,
	combout => \timer_open|count[7]~43_combout\,
	cout => \timer_open|count[7]~44\);

-- Location: FF_X113_Y45_N15
\timer_open|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[7]~43_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(7));

-- Location: LCCOMB_X113_Y45_N16
\timer_open|count[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[8]~45_combout\ = (\timer_open|count\(8) & (!\timer_open|count[7]~44\)) # (!\timer_open|count\(8) & ((\timer_open|count[7]~44\) # (GND)))
-- \timer_open|count[8]~46\ = CARRY((!\timer_open|count[7]~44\) # (!\timer_open|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(8),
	datad => VCC,
	cin => \timer_open|count[7]~44\,
	combout => \timer_open|count[8]~45_combout\,
	cout => \timer_open|count[8]~46\);

-- Location: FF_X113_Y45_N17
\timer_open|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[8]~45_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(8));

-- Location: LCCOMB_X113_Y45_N18
\timer_open|count[9]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[9]~47_combout\ = (\timer_open|count\(9) & (\timer_open|count[8]~46\ $ (GND))) # (!\timer_open|count\(9) & (!\timer_open|count[8]~46\ & VCC))
-- \timer_open|count[9]~48\ = CARRY((\timer_open|count\(9) & !\timer_open|count[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(9),
	datad => VCC,
	cin => \timer_open|count[8]~46\,
	combout => \timer_open|count[9]~47_combout\,
	cout => \timer_open|count[9]~48\);

-- Location: FF_X113_Y45_N19
\timer_open|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[9]~47_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(9));

-- Location: LCCOMB_X113_Y45_N20
\timer_open|count[10]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[10]~49_combout\ = (\timer_open|count\(10) & (!\timer_open|count[9]~48\)) # (!\timer_open|count\(10) & ((\timer_open|count[9]~48\) # (GND)))
-- \timer_open|count[10]~50\ = CARRY((!\timer_open|count[9]~48\) # (!\timer_open|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(10),
	datad => VCC,
	cin => \timer_open|count[9]~48\,
	combout => \timer_open|count[10]~49_combout\,
	cout => \timer_open|count[10]~50\);

-- Location: FF_X113_Y45_N21
\timer_open|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[10]~49_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(10));

-- Location: LCCOMB_X113_Y45_N22
\timer_open|count[11]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[11]~51_combout\ = (\timer_open|count\(11) & (\timer_open|count[10]~50\ $ (GND))) # (!\timer_open|count\(11) & (!\timer_open|count[10]~50\ & VCC))
-- \timer_open|count[11]~52\ = CARRY((\timer_open|count\(11) & !\timer_open|count[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(11),
	datad => VCC,
	cin => \timer_open|count[10]~50\,
	combout => \timer_open|count[11]~51_combout\,
	cout => \timer_open|count[11]~52\);

-- Location: FF_X113_Y45_N23
\timer_open|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[11]~51_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(11));

-- Location: LCCOMB_X113_Y45_N24
\timer_open|count[12]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[12]~53_combout\ = (\timer_open|count\(12) & (!\timer_open|count[11]~52\)) # (!\timer_open|count\(12) & ((\timer_open|count[11]~52\) # (GND)))
-- \timer_open|count[12]~54\ = CARRY((!\timer_open|count[11]~52\) # (!\timer_open|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(12),
	datad => VCC,
	cin => \timer_open|count[11]~52\,
	combout => \timer_open|count[12]~53_combout\,
	cout => \timer_open|count[12]~54\);

-- Location: FF_X113_Y45_N25
\timer_open|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[12]~53_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(12));

-- Location: LCCOMB_X113_Y45_N26
\timer_open|count[13]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[13]~55_combout\ = (\timer_open|count\(13) & (\timer_open|count[12]~54\ $ (GND))) # (!\timer_open|count\(13) & (!\timer_open|count[12]~54\ & VCC))
-- \timer_open|count[13]~56\ = CARRY((\timer_open|count\(13) & !\timer_open|count[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(13),
	datad => VCC,
	cin => \timer_open|count[12]~54\,
	combout => \timer_open|count[13]~55_combout\,
	cout => \timer_open|count[13]~56\);

-- Location: FF_X113_Y45_N27
\timer_open|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[13]~55_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(13));

-- Location: LCCOMB_X113_Y45_N28
\timer_open|count[14]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[14]~57_combout\ = (\timer_open|count\(14) & (!\timer_open|count[13]~56\)) # (!\timer_open|count\(14) & ((\timer_open|count[13]~56\) # (GND)))
-- \timer_open|count[14]~58\ = CARRY((!\timer_open|count[13]~56\) # (!\timer_open|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(14),
	datad => VCC,
	cin => \timer_open|count[13]~56\,
	combout => \timer_open|count[14]~57_combout\,
	cout => \timer_open|count[14]~58\);

-- Location: FF_X113_Y45_N29
\timer_open|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[14]~57_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(14));

-- Location: LCCOMB_X113_Y45_N30
\timer_open|count[15]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[15]~59_combout\ = (\timer_open|count\(15) & (\timer_open|count[14]~58\ $ (GND))) # (!\timer_open|count\(15) & (!\timer_open|count[14]~58\ & VCC))
-- \timer_open|count[15]~60\ = CARRY((\timer_open|count\(15) & !\timer_open|count[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(15),
	datad => VCC,
	cin => \timer_open|count[14]~58\,
	combout => \timer_open|count[15]~59_combout\,
	cout => \timer_open|count[15]~60\);

-- Location: FF_X113_Y45_N31
\timer_open|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[15]~59_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(15));

-- Location: LCCOMB_X113_Y44_N0
\timer_open|count[16]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[16]~61_combout\ = (\timer_open|count\(16) & (!\timer_open|count[15]~60\)) # (!\timer_open|count\(16) & ((\timer_open|count[15]~60\) # (GND)))
-- \timer_open|count[16]~62\ = CARRY((!\timer_open|count[15]~60\) # (!\timer_open|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(16),
	datad => VCC,
	cin => \timer_open|count[15]~60\,
	combout => \timer_open|count[16]~61_combout\,
	cout => \timer_open|count[16]~62\);

-- Location: FF_X113_Y44_N1
\timer_open|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[16]~61_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(16));

-- Location: LCCOMB_X113_Y44_N2
\timer_open|count[17]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[17]~63_combout\ = (\timer_open|count\(17) & (\timer_open|count[16]~62\ $ (GND))) # (!\timer_open|count\(17) & (!\timer_open|count[16]~62\ & VCC))
-- \timer_open|count[17]~64\ = CARRY((\timer_open|count\(17) & !\timer_open|count[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(17),
	datad => VCC,
	cin => \timer_open|count[16]~62\,
	combout => \timer_open|count[17]~63_combout\,
	cout => \timer_open|count[17]~64\);

-- Location: FF_X113_Y44_N3
\timer_open|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[17]~63_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(17));

-- Location: LCCOMB_X113_Y44_N4
\timer_open|count[18]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[18]~65_combout\ = (\timer_open|count\(18) & (!\timer_open|count[17]~64\)) # (!\timer_open|count\(18) & ((\timer_open|count[17]~64\) # (GND)))
-- \timer_open|count[18]~66\ = CARRY((!\timer_open|count[17]~64\) # (!\timer_open|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(18),
	datad => VCC,
	cin => \timer_open|count[17]~64\,
	combout => \timer_open|count[18]~65_combout\,
	cout => \timer_open|count[18]~66\);

-- Location: FF_X113_Y44_N5
\timer_open|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[18]~65_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(18));

-- Location: LCCOMB_X113_Y44_N6
\timer_open|count[19]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[19]~67_combout\ = (\timer_open|count\(19) & (\timer_open|count[18]~66\ $ (GND))) # (!\timer_open|count\(19) & (!\timer_open|count[18]~66\ & VCC))
-- \timer_open|count[19]~68\ = CARRY((\timer_open|count\(19) & !\timer_open|count[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(19),
	datad => VCC,
	cin => \timer_open|count[18]~66\,
	combout => \timer_open|count[19]~67_combout\,
	cout => \timer_open|count[19]~68\);

-- Location: FF_X113_Y44_N7
\timer_open|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[19]~67_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(19));

-- Location: LCCOMB_X112_Y45_N30
\timer_open|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~5_combout\ = (!\timer_open|count\(17) & (!\timer_open|count\(19) & (!\timer_open|count\(16) & !\timer_open|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(17),
	datab => \timer_open|count\(19),
	datac => \timer_open|count\(16),
	datad => \timer_open|count\(18),
	combout => \timer_open|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y44_N8
\timer_open|count[20]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[20]~69_combout\ = (\timer_open|count\(20) & (!\timer_open|count[19]~68\)) # (!\timer_open|count\(20) & ((\timer_open|count[19]~68\) # (GND)))
-- \timer_open|count[20]~70\ = CARRY((!\timer_open|count[19]~68\) # (!\timer_open|count\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(20),
	datad => VCC,
	cin => \timer_open|count[19]~68\,
	combout => \timer_open|count[20]~69_combout\,
	cout => \timer_open|count[20]~70\);

-- Location: FF_X113_Y44_N9
\timer_open|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[20]~69_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(20));

-- Location: LCCOMB_X113_Y44_N10
\timer_open|count[21]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[21]~71_combout\ = (\timer_open|count\(21) & (\timer_open|count[20]~70\ $ (GND))) # (!\timer_open|count\(21) & (!\timer_open|count[20]~70\ & VCC))
-- \timer_open|count[21]~72\ = CARRY((\timer_open|count\(21) & !\timer_open|count[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(21),
	datad => VCC,
	cin => \timer_open|count[20]~70\,
	combout => \timer_open|count[21]~71_combout\,
	cout => \timer_open|count[21]~72\);

-- Location: FF_X113_Y44_N11
\timer_open|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[21]~71_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(21));

-- Location: LCCOMB_X113_Y44_N12
\timer_open|count[22]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[22]~73_combout\ = (\timer_open|count\(22) & (!\timer_open|count[21]~72\)) # (!\timer_open|count\(22) & ((\timer_open|count[21]~72\) # (GND)))
-- \timer_open|count[22]~74\ = CARRY((!\timer_open|count[21]~72\) # (!\timer_open|count\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(22),
	datad => VCC,
	cin => \timer_open|count[21]~72\,
	combout => \timer_open|count[22]~73_combout\,
	cout => \timer_open|count[22]~74\);

-- Location: FF_X113_Y44_N13
\timer_open|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[22]~73_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(22));

-- Location: LCCOMB_X113_Y44_N14
\timer_open|count[23]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[23]~75_combout\ = (\timer_open|count\(23) & (\timer_open|count[22]~74\ $ (GND))) # (!\timer_open|count\(23) & (!\timer_open|count[22]~74\ & VCC))
-- \timer_open|count[23]~76\ = CARRY((\timer_open|count\(23) & !\timer_open|count[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(23),
	datad => VCC,
	cin => \timer_open|count[22]~74\,
	combout => \timer_open|count[23]~75_combout\,
	cout => \timer_open|count[23]~76\);

-- Location: FF_X113_Y44_N15
\timer_open|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[23]~75_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(23));

-- Location: LCCOMB_X112_Y45_N20
\timer_open|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~6_combout\ = (!\timer_open|count\(23) & (!\timer_open|count\(22) & (!\timer_open|count\(21) & !\timer_open|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(23),
	datab => \timer_open|count\(22),
	datac => \timer_open|count\(21),
	datad => \timer_open|count\(20),
	combout => \timer_open|Equal0~6_combout\);

-- Location: LCCOMB_X112_Y45_N12
\timer_open|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~0_combout\ = (\timer_open|count\(2) & (!\timer_open|count\(0) & (!\timer_open|count\(1) & !\timer_open|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(2),
	datab => \timer_open|count\(0),
	datac => \timer_open|count\(1),
	datad => \timer_open|count\(3),
	combout => \timer_open|Equal0~0_combout\);

-- Location: LCCOMB_X112_Y45_N24
\timer_open|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~2_combout\ = (!\timer_open|count\(10) & (!\timer_open|count\(11) & (!\timer_open|count\(8) & !\timer_open|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(10),
	datab => \timer_open|count\(11),
	datac => \timer_open|count\(8),
	datad => \timer_open|count\(9),
	combout => \timer_open|Equal0~2_combout\);

-- Location: LCCOMB_X112_Y45_N22
\timer_open|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~3_combout\ = (!\timer_open|count\(15) & (!\timer_open|count\(12) & (!\timer_open|count\(14) & !\timer_open|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(15),
	datab => \timer_open|count\(12),
	datac => \timer_open|count\(14),
	datad => \timer_open|count\(13),
	combout => \timer_open|Equal0~3_combout\);

-- Location: LCCOMB_X112_Y45_N2
\timer_open|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~1_combout\ = (!\timer_open|count\(4) & (!\timer_open|count\(6) & (!\timer_open|count\(5) & !\timer_open|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(4),
	datab => \timer_open|count\(6),
	datac => \timer_open|count\(5),
	datad => \timer_open|count\(7),
	combout => \timer_open|Equal0~1_combout\);

-- Location: LCCOMB_X112_Y45_N4
\timer_open|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~4_combout\ = (\timer_open|Equal0~0_combout\ & (\timer_open|Equal0~2_combout\ & (\timer_open|Equal0~3_combout\ & \timer_open|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|Equal0~0_combout\,
	datab => \timer_open|Equal0~2_combout\,
	datac => \timer_open|Equal0~3_combout\,
	datad => \timer_open|Equal0~1_combout\,
	combout => \timer_open|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y44_N16
\timer_open|count[24]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[24]~77_combout\ = (\timer_open|count\(24) & (!\timer_open|count[23]~76\)) # (!\timer_open|count\(24) & ((\timer_open|count[23]~76\) # (GND)))
-- \timer_open|count[24]~78\ = CARRY((!\timer_open|count[23]~76\) # (!\timer_open|count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(24),
	datad => VCC,
	cin => \timer_open|count[23]~76\,
	combout => \timer_open|count[24]~77_combout\,
	cout => \timer_open|count[24]~78\);

-- Location: FF_X113_Y44_N17
\timer_open|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[24]~77_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(24));

-- Location: LCCOMB_X113_Y44_N18
\timer_open|count[25]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[25]~79_combout\ = (\timer_open|count\(25) & (\timer_open|count[24]~78\ $ (GND))) # (!\timer_open|count\(25) & (!\timer_open|count[24]~78\ & VCC))
-- \timer_open|count[25]~80\ = CARRY((\timer_open|count\(25) & !\timer_open|count[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(25),
	datad => VCC,
	cin => \timer_open|count[24]~78\,
	combout => \timer_open|count[25]~79_combout\,
	cout => \timer_open|count[25]~80\);

-- Location: FF_X113_Y44_N19
\timer_open|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[25]~79_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(25));

-- Location: LCCOMB_X113_Y44_N20
\timer_open|count[26]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[26]~81_combout\ = (\timer_open|count\(26) & (!\timer_open|count[25]~80\)) # (!\timer_open|count\(26) & ((\timer_open|count[25]~80\) # (GND)))
-- \timer_open|count[26]~82\ = CARRY((!\timer_open|count[25]~80\) # (!\timer_open|count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(26),
	datad => VCC,
	cin => \timer_open|count[25]~80\,
	combout => \timer_open|count[26]~81_combout\,
	cout => \timer_open|count[26]~82\);

-- Location: FF_X113_Y44_N21
\timer_open|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[26]~81_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(26));

-- Location: LCCOMB_X113_Y44_N22
\timer_open|count[27]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[27]~83_combout\ = (\timer_open|count\(27) & (\timer_open|count[26]~82\ $ (GND))) # (!\timer_open|count\(27) & (!\timer_open|count[26]~82\ & VCC))
-- \timer_open|count[27]~84\ = CARRY((\timer_open|count\(27) & !\timer_open|count[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(27),
	datad => VCC,
	cin => \timer_open|count[26]~82\,
	combout => \timer_open|count[27]~83_combout\,
	cout => \timer_open|count[27]~84\);

-- Location: FF_X113_Y44_N23
\timer_open|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[27]~83_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(27));

-- Location: LCCOMB_X113_Y44_N24
\timer_open|count[28]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[28]~85_combout\ = (\timer_open|count\(28) & (!\timer_open|count[27]~84\)) # (!\timer_open|count\(28) & ((\timer_open|count[27]~84\) # (GND)))
-- \timer_open|count[28]~86\ = CARRY((!\timer_open|count[27]~84\) # (!\timer_open|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \timer_open|count\(28),
	datad => VCC,
	cin => \timer_open|count[27]~84\,
	combout => \timer_open|count[28]~85_combout\,
	cout => \timer_open|count[28]~86\);

-- Location: FF_X113_Y44_N25
\timer_open|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[28]~85_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(28));

-- Location: LCCOMB_X113_Y44_N26
\timer_open|count[29]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[29]~87_combout\ = (\timer_open|count\(29) & (\timer_open|count[28]~86\ $ (GND))) # (!\timer_open|count\(29) & (!\timer_open|count[28]~86\ & VCC))
-- \timer_open|count[29]~88\ = CARRY((\timer_open|count\(29) & !\timer_open|count[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(29),
	datad => VCC,
	cin => \timer_open|count[28]~86\,
	combout => \timer_open|count[29]~87_combout\,
	cout => \timer_open|count[29]~88\);

-- Location: FF_X113_Y44_N27
\timer_open|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[29]~87_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(29));

-- Location: LCCOMB_X113_Y44_N28
\timer_open|count[30]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|count[30]~89_combout\ = \timer_open|count[29]~88\ $ (\timer_open|count\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \timer_open|count\(30),
	cin => \timer_open|count[29]~88\,
	combout => \timer_open|count[30]~89_combout\);

-- Location: FF_X113_Y44_N29
\timer_open|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|count[30]~89_combout\,
	clrn => \ALT_INV_reset_open~q\,
	ena => \timer_open|ALT_INV_Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|count\(30));

-- Location: LCCOMB_X113_Y44_N30
\timer_open|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~7_combout\ = (!\timer_open|count\(25) & (!\timer_open|count\(24) & (!\timer_open|count\(27) & !\timer_open|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(25),
	datab => \timer_open|count\(24),
	datac => \timer_open|count\(27),
	datad => \timer_open|count\(26),
	combout => \timer_open|Equal0~7_combout\);

-- Location: LCCOMB_X112_Y45_N18
\timer_open|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~8_combout\ = (!\timer_open|count\(30) & (!\timer_open|count\(29) & (\timer_open|Equal0~7_combout\ & !\timer_open|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|count\(30),
	datab => \timer_open|count\(29),
	datac => \timer_open|Equal0~7_combout\,
	datad => \timer_open|count\(28),
	combout => \timer_open|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y45_N28
\timer_open|Equal0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|Equal0~9_combout\ = (\timer_open|Equal0~5_combout\ & (\timer_open|Equal0~6_combout\ & (\timer_open|Equal0~4_combout\ & \timer_open|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timer_open|Equal0~5_combout\,
	datab => \timer_open|Equal0~6_combout\,
	datac => \timer_open|Equal0~4_combout\,
	datad => \timer_open|Equal0~8_combout\,
	combout => \timer_open|Equal0~9_combout\);

-- Location: LCCOMB_X115_Y45_N4
\timer_open|completed~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \timer_open|completed~0_combout\ = (\timer_open|completed~q\) # (\timer_open|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timer_open|completed~q\,
	datad => \timer_open|Equal0~9_combout\,
	combout => \timer_open|completed~0_combout\);

-- Location: FF_X115_Y45_N5
\timer_open|completed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \seconds_counter|completed_value~clkctrl_outclk\,
	d => \timer_open|completed~0_combout\,
	clrn => \ALT_INV_reset_open~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timer_open|completed~q\);

-- Location: LCCOMB_X37_Y87_N4
\T2|dec_out[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|dec_out\(0) = (\t_status.E3~q\) # ((!\t_status.E1~q\ & \t_status.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_status.E1~q\,
	datac => \t_status.E0~q\,
	datad => \t_status.E3~q\,
	combout => \T2|dec_out\(0));

-- Location: LCCOMB_X37_Y87_N2
\T2|dec_out[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \T2|dec_out[2]~0_combout\ = (\t_status.E1~q\) # ((\t_status.E3~q\) # (!\t_status.E0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_status.E1~q\,
	datac => \t_status.E0~q\,
	datad => \t_status.E3~q\,
	combout => \T2|dec_out[2]~0_combout\);

-- Location: LCCOMB_X37_Y87_N24
\lights_2[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- lights_2(1) = (\t_status.E1~q\) # (!\t_status.E0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \t_status.E1~q\,
	datac => \t_status.E0~q\,
	combout => lights_2(1));

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

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


