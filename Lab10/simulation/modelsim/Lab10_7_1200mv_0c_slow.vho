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

-- DATE "06/10/2016 21:47:34"

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

ENTITY 	Exp10_Part3 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(17 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
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
END Exp10_Part3;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_U30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_T28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_R30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_P30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_R29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[2]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exp10_Part3 IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \proc_instance|Selector68~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc_instance|alufn[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
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
SIGNAL \proc_instance|reg_4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector46~2_combout\ : std_logic;
SIGNAL \proc_instance|A_enable~combout\ : std_logic;
SIGNAL \proc_instance|alufn[0]~0_combout\ : std_logic;
SIGNAL \proc_instance|Mux3~0_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~1_cout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~3\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~5\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~7\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~8_combout\ : std_logic;
SIGNAL \proc_instance|alufn[0]~clkctrl_outclk\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~4_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~6_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~1_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~4_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~2_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~2_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[1]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[0]~17\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[1]~19\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[2]~21\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[3]~23\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[4]~24_combout\ : std_logic;
SIGNAL \proc_instance|Selector2~0_combout\ : std_logic;
SIGNAL \proc_instance|G_enable~combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \proc_instance|Selector23~3_combout\ : std_logic;
SIGNAL \proc_instance|Selector10~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector10~1_combout\ : std_logic;
SIGNAL \proc_instance|TstepQ_Curr.T0~q\ : std_logic;
SIGNAL \proc_instance|TstepD_Next.T0_f1~0_combout\ : std_logic;
SIGNAL \proc_instance|TstepQ_Curr.T0_f1~q\ : std_logic;
SIGNAL \proc_instance|WideOr12~0_combout\ : std_logic;
SIGNAL \proc_instance|Mux6~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector56~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector70~0_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector52~2_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~9\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~11\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~13\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~14_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~5_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[7]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~12_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~10_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~7_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[4]~25\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[5]~27\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[6]~29\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[7]~30_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \proc_instance|Mux1~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector15~0_combout\ : std_logic;
SIGNAL \proc_instance|Incr_PC~combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \proc_instance|Mux5~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector88~0_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~15\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~16_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~8_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[7]~31\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[8]~32_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \proc_instance|Selector49~2_combout\ : std_logic;
SIGNAL \proc_instance|decY|Mux0~0_combout\ : std_logic;
SIGNAL \proc_instance|invalid_instruction~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector70~3_combout\ : std_logic;
SIGNAL \proc_instance|Selector70~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector70~2_combout\ : std_logic;
SIGNAL \proc_instance|Selector70~4_combout\ : std_logic;
SIGNAL \proc_instance|Selector74~2_combout\ : std_logic;
SIGNAL \proc_instance|Selector76~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector74~3_combout\ : std_logic;
SIGNAL \proc_instance|Selector74~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal0~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector82~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector82~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector82~2_combout\ : std_logic;
SIGNAL \proc_instance|Selector66~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector86~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector86~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal9~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal9~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal0~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal5~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal6~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector60~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal4~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector58~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal0~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~5_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector64~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal1~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal2~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal1~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector7~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[9]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[9]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~5_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~17\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~18_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~11_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[8]~33\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[9]~34_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector6~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[10]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_4|Q[10]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~4_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~19\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~20_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~10_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[9]~35\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[10]~36_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector5~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[11]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[11]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~0_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~21\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~22_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~9_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[10]~37\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[11]~38_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector4~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_6|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~23\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~24_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~12_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[11]~39\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[12]~40_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_4|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector3~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_3|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~4_combout\ : std_logic;
SIGNAL \proc_instance|reg_6|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[13]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~25\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~26_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~15_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[12]~41\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[13]~42_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector2~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_4|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_3|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~4_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~27\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~28_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~14_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[13]~43\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[14]~44_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector1~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[15]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[15]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_3|Q[15]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~4_combout\ : std_logic;
SIGNAL \proc_instance|reg_6|Q[15]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[15]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~29\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add1~30_combout\ : std_logic;
SIGNAL \proc_instance|ALU_component|Add0~13_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[14]~45\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[15]~46_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector0~6_combout\ : std_logic;
SIGNAL \proc_instance|Selector80~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector80~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal8~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal8~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~5_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[7]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector8~6_combout\ : std_logic;
SIGNAL \proc_instance|Selector78~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector56~2_combout\ : std_logic;
SIGNAL \proc_instance|Selector78~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal7~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[6]~28_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector9~6_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[6]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector76~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector76~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal5~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector10~6_combout\ : std_logic;
SIGNAL \proc_instance|reg_A|Q[5]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[5]~26_combout\ : std_logic;
SIGNAL \proc_instance|Equal0~1_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[3]~22_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[1]~18_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[2]~20_combout\ : std_logic;
SIGNAL \proc_instance|reg_G|Q[0]~16_combout\ : std_logic;
SIGNAL \proc_instance|Equal0~0_combout\ : std_logic;
SIGNAL \proc_instance|Equal0~2_combout\ : std_logic;
SIGNAL \proc_instance|Equal0~3_combout\ : std_logic;
SIGNAL \proc_instance|Equal0~4_combout\ : std_logic;
SIGNAL \proc_instance|Selector56~4_combout\ : std_logic;
SIGNAL \proc_instance|Selector49~3_combout\ : std_logic;
SIGNAL \proc_instance|Selector49~4_combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~3_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~5_combout\ : std_logic;
SIGNAL \proc_instance|reg_4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector11~6_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[4]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector54~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector12~6_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[3]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector62~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~5_combout\ : std_logic;
SIGNAL \proc_instance|reg_5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector13~6_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[2]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector84~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector84~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Equal3~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~5_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~0_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector14~6_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[1]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|Selector23~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector23~2_combout\ : std_logic;
SIGNAL \proc_instance|TstepD_Next.T3~0_combout\ : std_logic;
SIGNAL \proc_instance|TstepQ_Curr.T3~q\ : std_logic;
SIGNAL \proc_instance|Selector6~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector6~1_combout\ : std_logic;
SIGNAL \proc_instance|Addr_enable~combout\ : std_logic;
SIGNAL \proc_instance|WideNor0~combout\ : std_logic;
SIGNAL \proc_instance|Mux4~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector68~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector68~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector68~1clkctrl_outclk\ : std_logic;
SIGNAL \proc_instance|Selector56~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~0_combout\ : std_logic;
SIGNAL \proc_instance|reg_0|Q[0]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|reg_1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~1_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~2_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~3_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~4_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~5_combout\ : std_logic;
SIGNAL \proc_instance|mux|Selector15~6_combout\ : std_logic;
SIGNAL \proc_instance|Selector23~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector17~0_combout\ : std_logic;
SIGNAL \proc_instance|Selector17~1_combout\ : std_logic;
SIGNAL \proc_instance|Selector20~1_combout\ : std_logic;
SIGNAL \proc_instance|invalid_instruction~combout\ : std_logic;
SIGNAL \proc_instance|TstepD_Next.T0_f2~0_combout\ : std_logic;
SIGNAL \proc_instance|TstepQ_Curr.T0_f2~q\ : std_logic;
SIGNAL \proc_instance|Selector13~0_combout\ : std_logic;
SIGNAL \proc_instance|TstepQ_Curr.T1~q\ : std_logic;
SIGNAL \proc_instance|TstepD_Next.T2~0_combout\ : std_logic;
SIGNAL \proc_instance|TstepD_Next.T2~1_combout\ : std_logic;
SIGNAL \proc_instance|TstepQ_Curr.T2~q\ : std_logic;
SIGNAL \proc_instance|Selector20~0_combout\ : std_logic;
SIGNAL \proc_instance|mem_wren|Q[0]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[12]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[14]~feeder_combout\ : std_logic;
SIGNAL \proc_instance|mem_addrsd|Q[13]~feeder_combout\ : std_logic;
SIGNAL \MemAddrEn~0_combout\ : std_logic;
SIGNAL \MemAddrEn~combout\ : std_logic;
SIGNAL \proc_instance|WideOr0~0_combout\ : std_logic;
SIGNAL \disp0|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp0|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp0|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp0|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp0|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp0|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp0|dec_out[6]~6_combout\ : std_logic;
SIGNAL \disp1|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp1|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp1|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp1|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp1|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp1|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp1|dec_out[6]~6_combout\ : std_logic;
SIGNAL \disp2|dec_out[0]~0_combout\ : std_logic;
SIGNAL \disp2|dec_out[1]~1_combout\ : std_logic;
SIGNAL \disp2|dec_out[2]~2_combout\ : std_logic;
SIGNAL \disp2|dec_out[3]~3_combout\ : std_logic;
SIGNAL \disp2|dec_out[4]~4_combout\ : std_logic;
SIGNAL \disp2|dec_out[5]~5_combout\ : std_logic;
SIGNAL \disp2|dec_out[6]~6_combout\ : std_logic;
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
SIGNAL \proc_instance|reg_0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_5|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_6|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_A|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|reg_G|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|mem_addrsd|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|mem_dada|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|mem_wren|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \run_reg|Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \mem_ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|mux_selection\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \proc_instance|debug_signals\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|alufn\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \proc_instance|W_D\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \proc_instance|R_enable\ : std_logic_vector(0 TO 7);
SIGNAL \proc_instance|IR|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|ALU_component|operand\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc_instance|ALT_INV_WideOr0~0_combout\ : std_logic;

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

\mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \proc_instance|mem_dada|Q\(15) & \proc_instance|mem_dada|Q\(14) & \proc_instance|mem_dada|Q\(13) & \proc_instance|mem_dada|Q\(12) & 
\proc_instance|mem_dada|Q\(11) & \proc_instance|mem_dada|Q\(10) & \proc_instance|mem_dada|Q\(9) & \proc_instance|mem_dada|Q\(8) & \proc_instance|mem_dada|Q\(7) & \proc_instance|mem_dada|Q\(6) & \proc_instance|mem_dada|Q\(5) & 
\proc_instance|mem_dada|Q\(4) & \proc_instance|mem_dada|Q\(3) & \proc_instance|mem_dada|Q\(2) & \proc_instance|mem_dada|Q\(1) & \proc_instance|mem_dada|Q\(0));

\mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\proc_instance|mem_addrsd|Q\(6) & \proc_instance|mem_addrsd|Q\(5) & \proc_instance|mem_addrsd|Q\(4) & \proc_instance|mem_addrsd|Q\(3) & \proc_instance|mem_addrsd|Q\(2)
& \proc_instance|mem_addrsd|Q\(1) & \proc_instance|mem_addrsd|Q\(0));

\mem_ram|altsyncram_component|auto_generated|q_a\(0) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem_ram|altsyncram_component|auto_generated|q_a\(1) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem_ram|altsyncram_component|auto_generated|q_a\(2) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem_ram|altsyncram_component|auto_generated|q_a\(3) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem_ram|altsyncram_component|auto_generated|q_a\(4) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem_ram|altsyncram_component|auto_generated|q_a\(5) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem_ram|altsyncram_component|auto_generated|q_a\(6) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem_ram|altsyncram_component|auto_generated|q_a\(7) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem_ram|altsyncram_component|auto_generated|q_a\(8) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem_ram|altsyncram_component|auto_generated|q_a\(9) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem_ram|altsyncram_component|auto_generated|q_a\(10) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem_ram|altsyncram_component|auto_generated|q_a\(11) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mem_ram|altsyncram_component|auto_generated|q_a\(12) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mem_ram|altsyncram_component|auto_generated|q_a\(13) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\mem_ram|altsyncram_component|auto_generated|q_a\(14) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\mem_ram|altsyncram_component|auto_generated|q_a\(15) <= \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\proc_instance|Selector68~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc_instance|Selector68~1_combout\);

\proc_instance|alufn[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \proc_instance|alufn\(0));
\proc_instance|ALT_INV_WideOr0~0_combout\ <= NOT \proc_instance|WideOr0~0_combout\;

-- Location: IOOBUF_X117_Y43_N2
\LEDR[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \proc_instance|IR|Q\(12),
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
	i => \proc_instance|IR|Q\(13),
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
	i => \proc_instance|IR|Q\(14),
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
	i => \proc_instance|IR|Q\(15),
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
	i => \proc_instance|WideOr12~0_combout\,
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
	i => \proc_instance|ALT_INV_WideOr0~0_combout\,
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
	i => \proc_instance|debug_signals\(6),
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
	i => \proc_instance|TstepQ_Curr.T3~q\,
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
	i => \proc_instance|Selector23~3_combout\,
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
	i => \KEY[1]~input_o\,
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

-- Location: LCCOMB_X108_Y10_N2
\proc_instance|reg_4|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_4|Q[0]~feeder_combout\ = \proc_instance|mux|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector15~6_combout\,
	combout => \proc_instance|reg_4|Q[0]~feeder_combout\);

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

-- Location: LCCOMB_X111_Y12_N16
\proc_instance|reg_1|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[2]~feeder_combout\ = \proc_instance|mux|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector13~6_combout\,
	combout => \proc_instance|reg_1|Q[2]~feeder_combout\);

-- Location: LCCOMB_X112_Y13_N10
\proc_instance|Selector46~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector46~2_combout\ = (!\proc_instance|IR|Q\(14) & (\proc_instance|IR|Q\(13) & (!\proc_instance|IR|Q\(15) & \proc_instance|TstepQ_Curr.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(14),
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(15),
	datad => \proc_instance|TstepQ_Curr.T1~q\,
	combout => \proc_instance|Selector46~2_combout\);

-- Location: LCCOMB_X112_Y13_N4
\proc_instance|A_enable\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|A_enable~combout\ = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|Selector46~2_combout\)) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|A_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector46~2_combout\,
	datab => \proc_instance|A_enable~combout\,
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|A_enable~combout\);

-- Location: FF_X108_Y11_N31
\proc_instance|reg_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(4));

-- Location: LCCOMB_X113_Y13_N30
\proc_instance|alufn[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|alufn[0]~0_combout\ = (\proc_instance|IR|Q\(13) & (\proc_instance|TstepQ_Curr.T2~q\ & (!\proc_instance|IR|Q\(14) & !\proc_instance|IR|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(13),
	datab => \proc_instance|TstepQ_Curr.T2~q\,
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(15),
	combout => \proc_instance|alufn[0]~0_combout\);

-- Location: LCCOMB_X112_Y13_N30
\proc_instance|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Mux3~0_combout\ = (!\proc_instance|IR|Q\(14) & (\proc_instance|IR|Q\(13) & (!\proc_instance|IR|Q\(15) & \proc_instance|IR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(14),
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(15),
	datad => \proc_instance|IR|Q\(12),
	combout => \proc_instance|Mux3~0_combout\);

-- Location: LCCOMB_X108_Y12_N16
\proc_instance|alufn[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|alufn\(0) = (\proc_instance|alufn[0]~0_combout\ & ((\proc_instance|Mux3~0_combout\))) # (!\proc_instance|alufn[0]~0_combout\ & (\proc_instance|alufn\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|alufn\(0),
	datac => \proc_instance|alufn[0]~0_combout\,
	datad => \proc_instance|Mux3~0_combout\,
	combout => \proc_instance|alufn\(0));

-- Location: LCCOMB_X108_Y11_N0
\proc_instance|ALU_component|Add1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~1_cout\ = CARRY(!\proc_instance|mux|Selector15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector15~6_combout\,
	datad => VCC,
	cout => \proc_instance|ALU_component|Add1~1_cout\);

-- Location: LCCOMB_X108_Y11_N2
\proc_instance|ALU_component|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~2_combout\ = (\proc_instance|mux|Selector14~6_combout\ & ((\proc_instance|ALU_component|Add1~1_cout\) # (GND))) # (!\proc_instance|mux|Selector14~6_combout\ & (!\proc_instance|ALU_component|Add1~1_cout\))
-- \proc_instance|ALU_component|Add1~3\ = CARRY((\proc_instance|mux|Selector14~6_combout\) # (!\proc_instance|ALU_component|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector14~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~1_cout\,
	combout => \proc_instance|ALU_component|Add1~2_combout\,
	cout => \proc_instance|ALU_component|Add1~3\);

-- Location: LCCOMB_X108_Y11_N4
\proc_instance|ALU_component|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~4_combout\ = (\proc_instance|mux|Selector13~6_combout\ & (!\proc_instance|ALU_component|Add1~3\ & VCC)) # (!\proc_instance|mux|Selector13~6_combout\ & (\proc_instance|ALU_component|Add1~3\ $ (GND)))
-- \proc_instance|ALU_component|Add1~5\ = CARRY((!\proc_instance|mux|Selector13~6_combout\ & !\proc_instance|ALU_component|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector13~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~3\,
	combout => \proc_instance|ALU_component|Add1~4_combout\,
	cout => \proc_instance|ALU_component|Add1~5\);

-- Location: LCCOMB_X108_Y11_N6
\proc_instance|ALU_component|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~6_combout\ = (\proc_instance|mux|Selector12~6_combout\ & ((\proc_instance|ALU_component|Add1~5\) # (GND))) # (!\proc_instance|mux|Selector12~6_combout\ & (!\proc_instance|ALU_component|Add1~5\))
-- \proc_instance|ALU_component|Add1~7\ = CARRY((\proc_instance|mux|Selector12~6_combout\) # (!\proc_instance|ALU_component|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~5\,
	combout => \proc_instance|ALU_component|Add1~6_combout\,
	cout => \proc_instance|ALU_component|Add1~7\);

-- Location: LCCOMB_X108_Y11_N8
\proc_instance|ALU_component|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~8_combout\ = (\proc_instance|mux|Selector11~6_combout\ & (!\proc_instance|ALU_component|Add1~7\ & VCC)) # (!\proc_instance|mux|Selector11~6_combout\ & (\proc_instance|ALU_component|Add1~7\ $ (GND)))
-- \proc_instance|ALU_component|Add1~9\ = CARRY((!\proc_instance|mux|Selector11~6_combout\ & !\proc_instance|ALU_component|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector11~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~7\,
	combout => \proc_instance|ALU_component|Add1~8_combout\,
	cout => \proc_instance|ALU_component|Add1~9\);

-- Location: CLKCTRL_G16
\proc_instance|alufn[0]~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc_instance|alufn[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc_instance|alufn[0]~clkctrl_outclk\);

-- Location: LCCOMB_X109_Y11_N16
\proc_instance|ALU_component|operand[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(4) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~8_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(4),
	datac => \proc_instance|ALU_component|Add1~8_combout\,
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(4));

-- Location: LCCOMB_X108_Y12_N4
\proc_instance|ALU_component|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~4_combout\ = (\proc_instance|alufn\(0) & ((\proc_instance|ALU_component|operand\(4)))) # (!\proc_instance|alufn\(0) & (\proc_instance|mux|Selector11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector11~6_combout\,
	datab => \proc_instance|alufn\(0),
	datad => \proc_instance|ALU_component|operand\(4),
	combout => \proc_instance|ALU_component|Add0~4_combout\);

-- Location: FF_X108_Y11_N29
\proc_instance|reg_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(3));

-- Location: LCCOMB_X108_Y12_N14
\proc_instance|ALU_component|operand[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(3) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|Add1~6_combout\)) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|operand\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|Add1~6_combout\,
	datac => \proc_instance|ALU_component|operand\(3),
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(3));

-- Location: LCCOMB_X108_Y12_N24
\proc_instance|ALU_component|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~1_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(3))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector12~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(3),
	datad => \proc_instance|mux|Selector12~6_combout\,
	combout => \proc_instance|ALU_component|Add0~1_combout\);

-- Location: LCCOMB_X108_Y12_N26
\proc_instance|ALU_component|operand[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(2) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|Add1~4_combout\)) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|operand\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|Add1~4_combout\,
	datac => \proc_instance|ALU_component|operand\(2),
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(2));

-- Location: LCCOMB_X108_Y12_N18
\proc_instance|ALU_component|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~2_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(2))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(2),
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \proc_instance|ALU_component|Add0~2_combout\);

-- Location: LCCOMB_X113_Y12_N16
\proc_instance|reg_A|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[2]~feeder_combout\ = \proc_instance|mux|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \proc_instance|reg_A|Q[2]~feeder_combout\);

-- Location: FF_X113_Y12_N17
\proc_instance|reg_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(2));

-- Location: LCCOMB_X108_Y12_N8
\proc_instance|ALU_component|operand[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(1) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~2_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(1),
	datac => \proc_instance|ALU_component|Add1~2_combout\,
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(1));

-- Location: LCCOMB_X108_Y12_N30
\proc_instance|ALU_component|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~3_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(1))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(1),
	datad => \proc_instance|mux|Selector14~6_combout\,
	combout => \proc_instance|ALU_component|Add0~3_combout\);

-- Location: LCCOMB_X113_Y12_N20
\proc_instance|reg_A|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[1]~feeder_combout\ = \proc_instance|mux|Selector14~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector14~6_combout\,
	combout => \proc_instance|reg_A|Q[1]~feeder_combout\);

-- Location: FF_X113_Y12_N21
\proc_instance|reg_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(1));

-- Location: FF_X108_Y11_N3
\proc_instance|reg_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(0));

-- Location: LCCOMB_X108_Y12_N28
\proc_instance|ALU_component|operand[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(0) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|mux|Selector15~6_combout\)) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|operand\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector15~6_combout\,
	datab => \proc_instance|ALU_component|operand\(0),
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(0));

-- Location: LCCOMB_X108_Y12_N10
\proc_instance|ALU_component|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~0_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(0))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(0),
	datac => \proc_instance|alufn\(0),
	datad => \proc_instance|mux|Selector15~6_combout\,
	combout => \proc_instance|ALU_component|Add0~0_combout\);

-- Location: LCCOMB_X109_Y12_N0
\proc_instance|reg_G|Q[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[0]~16_combout\ = (\proc_instance|reg_A|Q\(0) & (\proc_instance|ALU_component|Add0~0_combout\ $ (VCC))) # (!\proc_instance|reg_A|Q\(0) & (\proc_instance|ALU_component|Add0~0_combout\ & VCC))
-- \proc_instance|reg_G|Q[0]~17\ = CARRY((\proc_instance|reg_A|Q\(0) & \proc_instance|ALU_component|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(0),
	datab => \proc_instance|ALU_component|Add0~0_combout\,
	datad => VCC,
	combout => \proc_instance|reg_G|Q[0]~16_combout\,
	cout => \proc_instance|reg_G|Q[0]~17\);

-- Location: LCCOMB_X109_Y12_N2
\proc_instance|reg_G|Q[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[1]~18_combout\ = (\proc_instance|ALU_component|Add0~3_combout\ & ((\proc_instance|reg_A|Q\(1) & (\proc_instance|reg_G|Q[0]~17\ & VCC)) # (!\proc_instance|reg_A|Q\(1) & (!\proc_instance|reg_G|Q[0]~17\)))) # 
-- (!\proc_instance|ALU_component|Add0~3_combout\ & ((\proc_instance|reg_A|Q\(1) & (!\proc_instance|reg_G|Q[0]~17\)) # (!\proc_instance|reg_A|Q\(1) & ((\proc_instance|reg_G|Q[0]~17\) # (GND)))))
-- \proc_instance|reg_G|Q[1]~19\ = CARRY((\proc_instance|ALU_component|Add0~3_combout\ & (!\proc_instance|reg_A|Q\(1) & !\proc_instance|reg_G|Q[0]~17\)) # (!\proc_instance|ALU_component|Add0~3_combout\ & ((!\proc_instance|reg_G|Q[0]~17\) # 
-- (!\proc_instance|reg_A|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|Add0~3_combout\,
	datab => \proc_instance|reg_A|Q\(1),
	datad => VCC,
	cin => \proc_instance|reg_G|Q[0]~17\,
	combout => \proc_instance|reg_G|Q[1]~18_combout\,
	cout => \proc_instance|reg_G|Q[1]~19\);

-- Location: LCCOMB_X109_Y12_N4
\proc_instance|reg_G|Q[2]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[2]~20_combout\ = ((\proc_instance|ALU_component|Add0~2_combout\ $ (\proc_instance|reg_A|Q\(2) $ (!\proc_instance|reg_G|Q[1]~19\)))) # (GND)
-- \proc_instance|reg_G|Q[2]~21\ = CARRY((\proc_instance|ALU_component|Add0~2_combout\ & ((\proc_instance|reg_A|Q\(2)) # (!\proc_instance|reg_G|Q[1]~19\))) # (!\proc_instance|ALU_component|Add0~2_combout\ & (\proc_instance|reg_A|Q\(2) & 
-- !\proc_instance|reg_G|Q[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|Add0~2_combout\,
	datab => \proc_instance|reg_A|Q\(2),
	datad => VCC,
	cin => \proc_instance|reg_G|Q[1]~19\,
	combout => \proc_instance|reg_G|Q[2]~20_combout\,
	cout => \proc_instance|reg_G|Q[2]~21\);

-- Location: LCCOMB_X109_Y12_N6
\proc_instance|reg_G|Q[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[3]~22_combout\ = (\proc_instance|reg_A|Q\(3) & ((\proc_instance|ALU_component|Add0~1_combout\ & (\proc_instance|reg_G|Q[2]~21\ & VCC)) # (!\proc_instance|ALU_component|Add0~1_combout\ & (!\proc_instance|reg_G|Q[2]~21\)))) # 
-- (!\proc_instance|reg_A|Q\(3) & ((\proc_instance|ALU_component|Add0~1_combout\ & (!\proc_instance|reg_G|Q[2]~21\)) # (!\proc_instance|ALU_component|Add0~1_combout\ & ((\proc_instance|reg_G|Q[2]~21\) # (GND)))))
-- \proc_instance|reg_G|Q[3]~23\ = CARRY((\proc_instance|reg_A|Q\(3) & (!\proc_instance|ALU_component|Add0~1_combout\ & !\proc_instance|reg_G|Q[2]~21\)) # (!\proc_instance|reg_A|Q\(3) & ((!\proc_instance|reg_G|Q[2]~21\) # 
-- (!\proc_instance|ALU_component|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(3),
	datab => \proc_instance|ALU_component|Add0~1_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[2]~21\,
	combout => \proc_instance|reg_G|Q[3]~22_combout\,
	cout => \proc_instance|reg_G|Q[3]~23\);

-- Location: LCCOMB_X109_Y12_N8
\proc_instance|reg_G|Q[4]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[4]~24_combout\ = ((\proc_instance|reg_A|Q\(4) $ (\proc_instance|ALU_component|Add0~4_combout\ $ (!\proc_instance|reg_G|Q[3]~23\)))) # (GND)
-- \proc_instance|reg_G|Q[4]~25\ = CARRY((\proc_instance|reg_A|Q\(4) & ((\proc_instance|ALU_component|Add0~4_combout\) # (!\proc_instance|reg_G|Q[3]~23\))) # (!\proc_instance|reg_A|Q\(4) & (\proc_instance|ALU_component|Add0~4_combout\ & 
-- !\proc_instance|reg_G|Q[3]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(4),
	datab => \proc_instance|ALU_component|Add0~4_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[3]~23\,
	combout => \proc_instance|reg_G|Q[4]~24_combout\,
	cout => \proc_instance|reg_G|Q[4]~25\);

-- Location: LCCOMB_X113_Y13_N10
\proc_instance|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector2~0_combout\ = (\proc_instance|TstepQ_Curr.T2~q\ & ((\proc_instance|IR|Q\(13)) # ((\proc_instance|IR|Q\(15)) # (!\proc_instance|IR|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T2~q\,
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(15),
	combout => \proc_instance|Selector2~0_combout\);

-- Location: LCCOMB_X114_Y12_N22
\proc_instance|G_enable\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|G_enable~combout\ = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|Selector2~0_combout\)) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|G_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector2~0_combout\,
	datac => \proc_instance|G_enable~combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|G_enable~combout\);

-- Location: FF_X109_Y12_N9
\proc_instance|reg_G|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[4]~24_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(4));

-- Location: LCCOMB_X106_Y12_N0
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

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

-- Location: FF_X116_Y10_N25
\run_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \SW[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \run_reg|Q\(0));

-- Location: LCCOMB_X114_Y13_N6
\proc_instance|Selector23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector23~3_combout\ = \proc_instance|TstepQ_Curr.T3~q\ $ (((\proc_instance|Selector23~2_combout\) # ((\proc_instance|Selector23~0_combout\ & \proc_instance|TstepQ_Curr.T2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector23~2_combout\,
	datab => \proc_instance|Selector23~0_combout\,
	datac => \proc_instance|TstepQ_Curr.T2~q\,
	datad => \proc_instance|TstepQ_Curr.T3~q\,
	combout => \proc_instance|Selector23~3_combout\);

-- Location: LCCOMB_X114_Y13_N30
\proc_instance|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector10~0_combout\ = (\proc_instance|TstepQ_Curr.T3~q\) # ((!\run_reg|Q\(0) & !\proc_instance|TstepQ_Curr.T0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \run_reg|Q\(0),
	datac => \proc_instance|TstepQ_Curr.T3~q\,
	datad => \proc_instance|TstepQ_Curr.T0~q\,
	combout => \proc_instance|Selector10~0_combout\);

-- Location: LCCOMB_X112_Y13_N28
\proc_instance|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector10~1_combout\ = (!\proc_instance|Selector10~0_combout\ & (((!\proc_instance|TstepQ_Curr.T2~q\ & !\proc_instance|TstepQ_Curr.T1~q\)) # (!\proc_instance|Selector23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector23~3_combout\,
	datab => \proc_instance|Selector10~0_combout\,
	datac => \proc_instance|TstepQ_Curr.T2~q\,
	datad => \proc_instance|TstepQ_Curr.T1~q\,
	combout => \proc_instance|Selector10~1_combout\);

-- Location: FF_X112_Y13_N29
\proc_instance|TstepQ_Curr.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|Selector10~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|TstepQ_Curr.T0~q\);

-- Location: LCCOMB_X114_Y13_N14
\proc_instance|TstepD_Next.T0_f1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|TstepD_Next.T0_f1~0_combout\ = (\run_reg|Q\(0) & !\proc_instance|TstepQ_Curr.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \run_reg|Q\(0),
	datad => \proc_instance|TstepQ_Curr.T0~q\,
	combout => \proc_instance|TstepD_Next.T0_f1~0_combout\);

-- Location: FF_X112_Y13_N25
\proc_instance|TstepQ_Curr.T0_f1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|TstepD_Next.T0_f1~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|TstepQ_Curr.T0_f1~q\);

-- Location: LCCOMB_X112_Y13_N22
\proc_instance|WideOr12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|WideOr12~0_combout\ = (\proc_instance|TstepQ_Curr.T0_f1~q\) # ((\proc_instance|TstepQ_Curr.T0_f2~q\) # (!\proc_instance|TstepQ_Curr.T0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T0_f1~q\,
	datab => \proc_instance|TstepQ_Curr.T0_f2~q\,
	datad => \proc_instance|TstepQ_Curr.T0~q\,
	combout => \proc_instance|WideOr12~0_combout\);

-- Location: LCCOMB_X112_Y13_N24
\proc_instance|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Mux6~0_combout\ = (!\proc_instance|IR|Q\(15) & (!\proc_instance|IR|Q\(13) & \proc_instance|IR|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(15),
	datab => \proc_instance|IR|Q\(13),
	datad => \proc_instance|IR|Q\(14),
	combout => \proc_instance|Mux6~0_combout\);

-- Location: LCCOMB_X112_Y13_N6
\proc_instance|Selector56~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector56~3_combout\ = (\proc_instance|IR|Q\(13) & (!\proc_instance|IR|Q\(12) & (!\proc_instance|IR|Q\(15) & \proc_instance|IR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(13),
	datab => \proc_instance|IR|Q\(12),
	datac => \proc_instance|IR|Q\(15),
	datad => \proc_instance|IR|Q\(14),
	combout => \proc_instance|Selector56~3_combout\);

-- Location: LCCOMB_X116_Y14_N18
\proc_instance|reg_5|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[5]~feeder_combout\ = \proc_instance|mux|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector10~6_combout\,
	combout => \proc_instance|reg_5|Q[5]~feeder_combout\);

-- Location: FF_X116_Y14_N19
\proc_instance|reg_5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(5));

-- Location: LCCOMB_X112_Y13_N26
\proc_instance|Selector70~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector70~0_combout\ = (\proc_instance|IR|Q\(9) & ((\proc_instance|Selector20~0_combout\) # (\proc_instance|Selector46~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|Selector20~0_combout\,
	datac => \proc_instance|IR|Q\(9),
	datad => \proc_instance|Selector46~2_combout\,
	combout => \proc_instance|Selector70~0_combout\);

-- Location: LCCOMB_X107_Y12_N0
\proc_instance|mem_addrsd|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[5]~feeder_combout\ = \proc_instance|mux|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector10~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[5]~feeder_combout\);

-- Location: FF_X107_Y12_N1
\proc_instance|mem_addrsd|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(5));

-- Location: FF_X108_Y12_N21
\proc_instance|mem_dada|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(1));

-- Location: FF_X108_Y12_N1
\proc_instance|mem_dada|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(2));

-- Location: FF_X108_Y12_N3
\proc_instance|mem_dada|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(3));

-- Location: FF_X107_Y11_N25
\proc_instance|mem_dada|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(4));

-- Location: FF_X108_Y14_N9
\proc_instance|mem_dada|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector10~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(5));

-- Location: FF_X108_Y14_N25
\proc_instance|mem_dada|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(6));

-- Location: LCCOMB_X112_Y12_N18
\proc_instance|Selector52~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector52~2_combout\ = (!\proc_instance|IR|Q\(9) & (\proc_instance|IR|Q\(10) & (\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector52~2_combout\);

-- Location: LCCOMB_X112_Y12_N22
\proc_instance|R_enable[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(6) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector52~2_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|R_enable\(6),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector52~2_combout\,
	combout => \proc_instance|R_enable\(6));

-- Location: FF_X106_Y13_N3
\proc_instance|reg_6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector8~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(7));

-- Location: LCCOMB_X108_Y11_N10
\proc_instance|ALU_component|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~10_combout\ = (\proc_instance|mux|Selector10~6_combout\ & ((\proc_instance|ALU_component|Add1~9\) # (GND))) # (!\proc_instance|mux|Selector10~6_combout\ & (!\proc_instance|ALU_component|Add1~9\))
-- \proc_instance|ALU_component|Add1~11\ = CARRY((\proc_instance|mux|Selector10~6_combout\) # (!\proc_instance|ALU_component|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector10~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~9\,
	combout => \proc_instance|ALU_component|Add1~10_combout\,
	cout => \proc_instance|ALU_component|Add1~11\);

-- Location: LCCOMB_X108_Y11_N12
\proc_instance|ALU_component|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~12_combout\ = (\proc_instance|mux|Selector9~6_combout\ & (!\proc_instance|ALU_component|Add1~11\ & VCC)) # (!\proc_instance|mux|Selector9~6_combout\ & (\proc_instance|ALU_component|Add1~11\ $ (GND)))
-- \proc_instance|ALU_component|Add1~13\ = CARRY((!\proc_instance|mux|Selector9~6_combout\ & !\proc_instance|ALU_component|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector9~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~11\,
	combout => \proc_instance|ALU_component|Add1~12_combout\,
	cout => \proc_instance|ALU_component|Add1~13\);

-- Location: LCCOMB_X108_Y11_N14
\proc_instance|ALU_component|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~14_combout\ = (\proc_instance|mux|Selector8~6_combout\ & ((\proc_instance|ALU_component|Add1~13\) # (GND))) # (!\proc_instance|mux|Selector8~6_combout\ & (!\proc_instance|ALU_component|Add1~13\))
-- \proc_instance|ALU_component|Add1~15\ = CARRY((\proc_instance|mux|Selector8~6_combout\) # (!\proc_instance|ALU_component|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector8~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~13\,
	combout => \proc_instance|ALU_component|Add1~14_combout\,
	cout => \proc_instance|ALU_component|Add1~15\);

-- Location: LCCOMB_X109_Y11_N26
\proc_instance|ALU_component|operand[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(7) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~14_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|operand\(7),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~14_combout\,
	combout => \proc_instance|ALU_component|operand\(7));

-- Location: LCCOMB_X109_Y11_N8
\proc_instance|ALU_component|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~5_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(7))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(7),
	datad => \proc_instance|mux|Selector8~6_combout\,
	combout => \proc_instance|ALU_component|Add0~5_combout\);

-- Location: LCCOMB_X113_Y14_N16
\proc_instance|reg_A|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[7]~feeder_combout\ = \proc_instance|mux|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector8~6_combout\,
	combout => \proc_instance|reg_A|Q[7]~feeder_combout\);

-- Location: FF_X113_Y14_N17
\proc_instance|reg_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(7));

-- Location: LCCOMB_X107_Y11_N22
\proc_instance|ALU_component|operand[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(6) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|Add1~12_combout\)) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|operand\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn[0]~clkctrl_outclk\,
	datac => \proc_instance|ALU_component|Add1~12_combout\,
	datad => \proc_instance|ALU_component|operand\(6),
	combout => \proc_instance|ALU_component|operand\(6));

-- Location: LCCOMB_X108_Y14_N28
\proc_instance|ALU_component|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~6_combout\ = (\proc_instance|alufn\(0) & ((\proc_instance|ALU_component|operand\(6)))) # (!\proc_instance|alufn\(0) & (\proc_instance|mux|Selector9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datab => \proc_instance|mux|Selector9~6_combout\,
	datad => \proc_instance|ALU_component|operand\(6),
	combout => \proc_instance|ALU_component|Add0~6_combout\);

-- Location: LCCOMB_X113_Y14_N30
\proc_instance|reg_A|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[6]~feeder_combout\ = \proc_instance|mux|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \proc_instance|reg_A|Q[6]~feeder_combout\);

-- Location: FF_X113_Y14_N31
\proc_instance|reg_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(6));

-- Location: LCCOMB_X109_Y11_N28
\proc_instance|ALU_component|operand[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(5) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|Add1~10_combout\)) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|operand\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|Add1~10_combout\,
	datab => \proc_instance|ALU_component|operand\(5),
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(5));

-- Location: LCCOMB_X108_Y14_N6
\proc_instance|ALU_component|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~7_combout\ = (\proc_instance|alufn\(0) & ((\proc_instance|ALU_component|operand\(5)))) # (!\proc_instance|alufn\(0) & (\proc_instance|mux|Selector10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|mux|Selector10~6_combout\,
	datad => \proc_instance|ALU_component|operand\(5),
	combout => \proc_instance|ALU_component|Add0~7_combout\);

-- Location: LCCOMB_X109_Y12_N10
\proc_instance|reg_G|Q[5]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[5]~26_combout\ = (\proc_instance|reg_A|Q\(5) & ((\proc_instance|ALU_component|Add0~7_combout\ & (\proc_instance|reg_G|Q[4]~25\ & VCC)) # (!\proc_instance|ALU_component|Add0~7_combout\ & (!\proc_instance|reg_G|Q[4]~25\)))) # 
-- (!\proc_instance|reg_A|Q\(5) & ((\proc_instance|ALU_component|Add0~7_combout\ & (!\proc_instance|reg_G|Q[4]~25\)) # (!\proc_instance|ALU_component|Add0~7_combout\ & ((\proc_instance|reg_G|Q[4]~25\) # (GND)))))
-- \proc_instance|reg_G|Q[5]~27\ = CARRY((\proc_instance|reg_A|Q\(5) & (!\proc_instance|ALU_component|Add0~7_combout\ & !\proc_instance|reg_G|Q[4]~25\)) # (!\proc_instance|reg_A|Q\(5) & ((!\proc_instance|reg_G|Q[4]~25\) # 
-- (!\proc_instance|ALU_component|Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(5),
	datab => \proc_instance|ALU_component|Add0~7_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[4]~25\,
	combout => \proc_instance|reg_G|Q[5]~26_combout\,
	cout => \proc_instance|reg_G|Q[5]~27\);

-- Location: LCCOMB_X109_Y12_N12
\proc_instance|reg_G|Q[6]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[6]~28_combout\ = ((\proc_instance|ALU_component|Add0~6_combout\ $ (\proc_instance|reg_A|Q\(6) $ (!\proc_instance|reg_G|Q[5]~27\)))) # (GND)
-- \proc_instance|reg_G|Q[6]~29\ = CARRY((\proc_instance|ALU_component|Add0~6_combout\ & ((\proc_instance|reg_A|Q\(6)) # (!\proc_instance|reg_G|Q[5]~27\))) # (!\proc_instance|ALU_component|Add0~6_combout\ & (\proc_instance|reg_A|Q\(6) & 
-- !\proc_instance|reg_G|Q[5]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|Add0~6_combout\,
	datab => \proc_instance|reg_A|Q\(6),
	datad => VCC,
	cin => \proc_instance|reg_G|Q[5]~27\,
	combout => \proc_instance|reg_G|Q[6]~28_combout\,
	cout => \proc_instance|reg_G|Q[6]~29\);

-- Location: LCCOMB_X109_Y12_N14
\proc_instance|reg_G|Q[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[7]~30_combout\ = (\proc_instance|ALU_component|Add0~5_combout\ & ((\proc_instance|reg_A|Q\(7) & (\proc_instance|reg_G|Q[6]~29\ & VCC)) # (!\proc_instance|reg_A|Q\(7) & (!\proc_instance|reg_G|Q[6]~29\)))) # 
-- (!\proc_instance|ALU_component|Add0~5_combout\ & ((\proc_instance|reg_A|Q\(7) & (!\proc_instance|reg_G|Q[6]~29\)) # (!\proc_instance|reg_A|Q\(7) & ((\proc_instance|reg_G|Q[6]~29\) # (GND)))))
-- \proc_instance|reg_G|Q[7]~31\ = CARRY((\proc_instance|ALU_component|Add0~5_combout\ & (!\proc_instance|reg_A|Q\(7) & !\proc_instance|reg_G|Q[6]~29\)) # (!\proc_instance|ALU_component|Add0~5_combout\ & ((!\proc_instance|reg_G|Q[6]~29\) # 
-- (!\proc_instance|reg_A|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|Add0~5_combout\,
	datab => \proc_instance|reg_A|Q\(7),
	datad => VCC,
	cin => \proc_instance|reg_G|Q[6]~29\,
	combout => \proc_instance|reg_G|Q[7]~30_combout\,
	cout => \proc_instance|reg_G|Q[7]~31\);

-- Location: FF_X109_Y12_N15
\proc_instance|reg_G|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[7]~30_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(7));

-- Location: LCCOMB_X106_Y12_N8
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X106_Y12_N10
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X113_Y13_N28
\proc_instance|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Mux1~0_combout\ = (!\proc_instance|IR|Q\(15) & (!\proc_instance|IR|Q\(13) & (!\proc_instance|IR|Q\(14) & \proc_instance|IR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(15),
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(12),
	combout => \proc_instance|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y12_N28
\proc_instance|Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector15~0_combout\ = (\proc_instance|WideOr12~0_combout\) # ((\proc_instance|Mux1~0_combout\ & \proc_instance|TstepQ_Curr.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|WideOr12~0_combout\,
	datab => \proc_instance|Mux1~0_combout\,
	datad => \proc_instance|TstepQ_Curr.T1~q\,
	combout => \proc_instance|Selector15~0_combout\);

-- Location: LCCOMB_X113_Y12_N6
\proc_instance|Incr_PC\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Incr_PC~combout\ = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector15~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|Incr_PC~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Incr_PC~combout\,
	datac => \proc_instance|Selector15~0_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|Incr_PC~combout\);

-- Location: LCCOMB_X111_Y12_N8
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\proc_instance|R_enable\(7)) # (\proc_instance|Incr_PC~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|R_enable\(7),
	datad => \proc_instance|Incr_PC~combout\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X106_Y12_N11
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \proc_instance|mux|Selector10~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X106_Y12_N12
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X106_Y12_N13
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X106_Y12_N14
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X106_Y12_N15
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \proc_instance|mux|Selector8~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X113_Y13_N0
\proc_instance|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Mux5~0_combout\ = (!\proc_instance|IR|Q\(15) & (\proc_instance|IR|Q\(14) & (!\proc_instance|IR|Q\(13) & !\proc_instance|IR|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(15),
	datab => \proc_instance|IR|Q\(14),
	datac => \proc_instance|IR|Q\(13),
	datad => \proc_instance|IR|Q\(12),
	combout => \proc_instance|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y13_N2
\proc_instance|Selector88~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector88~0_combout\ = (\proc_instance|TstepQ_Curr.T1~q\ & ((\proc_instance|Mux1~0_combout\) # ((\proc_instance|TstepQ_Curr.T3~q\ & \proc_instance|Mux5~0_combout\)))) # (!\proc_instance|TstepQ_Curr.T1~q\ & (\proc_instance|TstepQ_Curr.T3~q\ 
-- & (\proc_instance|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T1~q\,
	datab => \proc_instance|TstepQ_Curr.T3~q\,
	datac => \proc_instance|Mux5~0_combout\,
	datad => \proc_instance|Mux1~0_combout\,
	combout => \proc_instance|Selector88~0_combout\);

-- Location: LCCOMB_X107_Y13_N10
\proc_instance|mux_selection[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(9) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector88~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(9),
	datac => \proc_instance|Selector88~0_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(9));

-- Location: FF_X106_Y14_N15
\proc_instance|reg_6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(8));

-- Location: FF_X108_Y11_N7
\proc_instance|reg_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(8));

-- Location: LCCOMB_X108_Y11_N16
\proc_instance|ALU_component|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~16_combout\ = (\proc_instance|mux|Selector7~6_combout\ & (!\proc_instance|ALU_component|Add1~15\ & VCC)) # (!\proc_instance|mux|Selector7~6_combout\ & (\proc_instance|ALU_component|Add1~15\ $ (GND)))
-- \proc_instance|ALU_component|Add1~17\ = CARRY((!\proc_instance|mux|Selector7~6_combout\ & !\proc_instance|ALU_component|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector7~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~15\,
	combout => \proc_instance|ALU_component|Add1~16_combout\,
	cout => \proc_instance|ALU_component|Add1~17\);

-- Location: LCCOMB_X109_Y11_N30
\proc_instance|ALU_component|operand[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(8) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~16_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|operand\(8),
	datac => \proc_instance|ALU_component|Add1~16_combout\,
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(8));

-- Location: LCCOMB_X109_Y11_N6
\proc_instance|ALU_component|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~8_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(8))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(8),
	datad => \proc_instance|mux|Selector7~6_combout\,
	combout => \proc_instance|ALU_component|Add0~8_combout\);

-- Location: LCCOMB_X109_Y12_N16
\proc_instance|reg_G|Q[8]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[8]~32_combout\ = ((\proc_instance|reg_A|Q\(8) $ (\proc_instance|ALU_component|Add0~8_combout\ $ (!\proc_instance|reg_G|Q[7]~31\)))) # (GND)
-- \proc_instance|reg_G|Q[8]~33\ = CARRY((\proc_instance|reg_A|Q\(8) & ((\proc_instance|ALU_component|Add0~8_combout\) # (!\proc_instance|reg_G|Q[7]~31\))) # (!\proc_instance|reg_A|Q\(8) & (\proc_instance|ALU_component|Add0~8_combout\ & 
-- !\proc_instance|reg_G|Q[7]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(8),
	datab => \proc_instance|ALU_component|Add0~8_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[7]~31\,
	combout => \proc_instance|reg_G|Q[8]~32_combout\,
	cout => \proc_instance|reg_G|Q[8]~33\);

-- Location: FF_X109_Y12_N17
\proc_instance|reg_G|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[8]~32_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(8));

-- Location: LCCOMB_X106_Y12_N16
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X106_Y12_N17
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X111_Y13_N2
\proc_instance|Selector49~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector49~2_combout\ = (\proc_instance|IR|Q\(10) & \proc_instance|IR|Q\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(10),
	datad => \proc_instance|IR|Q\(11),
	combout => \proc_instance|Selector49~2_combout\);

-- Location: LCCOMB_X112_Y13_N20
\proc_instance|decY|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|decY|Mux0~0_combout\ = (\proc_instance|IR|Q\(6) & (\proc_instance|IR|Q\(7) & \proc_instance|IR|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(6),
	datab => \proc_instance|IR|Q\(7),
	datad => \proc_instance|IR|Q\(8),
	combout => \proc_instance|decY|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y13_N4
\proc_instance|invalid_instruction~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|invalid_instruction~0_combout\ = ((\proc_instance|IR|Q\(14)) # (\proc_instance|IR|Q\(15))) # (!\proc_instance|IR|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(15),
	combout => \proc_instance|invalid_instruction~0_combout\);

-- Location: LCCOMB_X112_Y13_N0
\proc_instance|Selector70~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector70~3_combout\ = (\proc_instance|TstepQ_Curr.T2~q\ & ((\proc_instance|Mux5~0_combout\) # ((\proc_instance|decY|Mux0~0_combout\ & !\proc_instance|invalid_instruction~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T2~q\,
	datab => \proc_instance|decY|Mux0~0_combout\,
	datac => \proc_instance|Mux5~0_combout\,
	datad => \proc_instance|invalid_instruction~0_combout\,
	combout => \proc_instance|Selector70~3_combout\);

-- Location: LCCOMB_X112_Y13_N18
\proc_instance|Selector70~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector70~1_combout\ = (\proc_instance|TstepQ_Curr.T1~q\ & ((\proc_instance|IR|Q\(14) & ((!\proc_instance|IR|Q\(12)) # (!\proc_instance|IR|Q\(13)))) # (!\proc_instance|IR|Q\(14) & (!\proc_instance|IR|Q\(13) & !\proc_instance|IR|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(14),
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(12),
	datad => \proc_instance|TstepQ_Curr.T1~q\,
	combout => \proc_instance|Selector70~1_combout\);

-- Location: LCCOMB_X111_Y13_N24
\proc_instance|Selector70~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector70~2_combout\ = (\proc_instance|WideOr12~0_combout\) # ((\proc_instance|decY|Mux0~0_combout\ & (!\proc_instance|IR|Q\(15) & \proc_instance|Selector70~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|decY|Mux0~0_combout\,
	datab => \proc_instance|WideOr12~0_combout\,
	datac => \proc_instance|IR|Q\(15),
	datad => \proc_instance|Selector70~1_combout\,
	combout => \proc_instance|Selector70~2_combout\);

-- Location: LCCOMB_X111_Y13_N12
\proc_instance|Selector70~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector70~4_combout\ = (\proc_instance|Selector70~3_combout\) # ((\proc_instance|Selector70~2_combout\) # ((\proc_instance|Selector49~2_combout\ & \proc_instance|Selector70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector49~2_combout\,
	datab => \proc_instance|Selector70~3_combout\,
	datac => \proc_instance|Selector70~2_combout\,
	datad => \proc_instance|Selector70~0_combout\,
	combout => \proc_instance|Selector70~4_combout\);

-- Location: LCCOMB_X107_Y13_N6
\proc_instance|mux_selection[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(1) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector70~4_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(1),
	datac => \proc_instance|Selector70~4_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(1));

-- Location: LCCOMB_X111_Y13_N28
\proc_instance|Selector74~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector74~2_combout\ = (!\proc_instance|IR|Q\(9) & ((\proc_instance|Selector46~2_combout\) # (\proc_instance|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector46~2_combout\,
	datac => \proc_instance|Selector20~0_combout\,
	datad => \proc_instance|IR|Q\(9),
	combout => \proc_instance|Selector74~2_combout\);

-- Location: LCCOMB_X113_Y13_N26
\proc_instance|Selector76~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector76~0_combout\ = (\proc_instance|Selector2~0_combout\) # ((\proc_instance|TstepQ_Curr.T1~q\ & (!\proc_instance|Mux1~0_combout\ & \proc_instance|invalid_instruction~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T1~q\,
	datab => \proc_instance|Mux1~0_combout\,
	datac => \proc_instance|invalid_instruction~0_combout\,
	datad => \proc_instance|Selector2~0_combout\,
	combout => \proc_instance|Selector76~0_combout\);

-- Location: LCCOMB_X111_Y13_N18
\proc_instance|Selector74~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector74~3_combout\ = (\proc_instance|IR|Q\(7) & (\proc_instance|IR|Q\(8) & (!\proc_instance|IR|Q\(6) & \proc_instance|Selector76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(7),
	datab => \proc_instance|IR|Q\(8),
	datac => \proc_instance|IR|Q\(6),
	datad => \proc_instance|Selector76~0_combout\,
	combout => \proc_instance|Selector74~3_combout\);

-- Location: LCCOMB_X111_Y13_N0
\proc_instance|Selector74~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector74~4_combout\ = (\proc_instance|Selector74~3_combout\) # ((\proc_instance|IR|Q\(10) & (\proc_instance|Selector74~2_combout\ & \proc_instance|IR|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(10),
	datab => \proc_instance|Selector74~2_combout\,
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector74~3_combout\,
	combout => \proc_instance|Selector74~4_combout\);

-- Location: LCCOMB_X107_Y13_N2
\proc_instance|mux_selection[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(2) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector74~4_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux_selection\(2),
	datac => \proc_instance|Selector74~4_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(2));

-- Location: LCCOMB_X107_Y13_N12
\proc_instance|mux|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal0~1_combout\ = (!\proc_instance|mux_selection\(1) & (!\proc_instance|mux_selection\(3) & (!\proc_instance|mux_selection\(4) & !\proc_instance|mux_selection\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(1),
	datab => \proc_instance|mux_selection\(3),
	datac => \proc_instance|mux_selection\(4),
	datad => \proc_instance|mux_selection\(2),
	combout => \proc_instance|mux|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y13_N18
\proc_instance|Selector82~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector82~0_combout\ = (\proc_instance|Selector2~0_combout\) # ((\proc_instance|TstepQ_Curr.T1~q\ & (!\proc_instance|Mux1~0_combout\ & \proc_instance|invalid_instruction~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T1~q\,
	datab => \proc_instance|Mux1~0_combout\,
	datac => \proc_instance|invalid_instruction~0_combout\,
	datad => \proc_instance|Selector2~0_combout\,
	combout => \proc_instance|Selector82~0_combout\);

-- Location: LCCOMB_X111_Y13_N4
\proc_instance|Selector82~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector82~1_combout\ = (\proc_instance|IR|Q\(7) & (!\proc_instance|IR|Q\(8) & (\proc_instance|Selector82~0_combout\ & !\proc_instance|IR|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(7),
	datab => \proc_instance|IR|Q\(8),
	datac => \proc_instance|Selector82~0_combout\,
	datad => \proc_instance|IR|Q\(6),
	combout => \proc_instance|Selector82~1_combout\);

-- Location: LCCOMB_X111_Y13_N30
\proc_instance|Selector82~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector82~2_combout\ = (\proc_instance|Selector82~1_combout\) # ((\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & \proc_instance|Selector74~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(10),
	datab => \proc_instance|IR|Q\(11),
	datac => \proc_instance|Selector82~1_combout\,
	datad => \proc_instance|Selector74~2_combout\,
	combout => \proc_instance|Selector82~2_combout\);

-- Location: LCCOMB_X109_Y13_N30
\proc_instance|mux_selection[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(6) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector82~2_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(6),
	datac => \proc_instance|Selector82~2_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(6));

-- Location: LCCOMB_X114_Y13_N22
\proc_instance|Selector66~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector66~0_combout\ = (\proc_instance|TstepQ_Curr.T3~q\ & !\proc_instance|Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|TstepQ_Curr.T3~q\,
	datad => \proc_instance|Mux5~0_combout\,
	combout => \proc_instance|Selector66~0_combout\);

-- Location: LCCOMB_X109_Y13_N24
\proc_instance|mux_selection[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(0) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|Selector66~0_combout\)) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|mux_selection\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector66~0_combout\,
	datab => \proc_instance|mux_selection\(0),
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(0));

-- Location: LCCOMB_X111_Y13_N16
\proc_instance|Selector86~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector86~0_combout\ = (!\proc_instance|IR|Q\(7) & (!\proc_instance|IR|Q\(8) & (!\proc_instance|IR|Q\(6) & \proc_instance|Selector76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(7),
	datab => \proc_instance|IR|Q\(8),
	datac => \proc_instance|IR|Q\(6),
	datad => \proc_instance|Selector76~0_combout\,
	combout => \proc_instance|Selector86~0_combout\);

-- Location: LCCOMB_X111_Y13_N26
\proc_instance|Selector86~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector86~1_combout\ = (\proc_instance|Selector86~0_combout\) # ((!\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & \proc_instance|Selector74~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(10),
	datab => \proc_instance|Selector86~0_combout\,
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector74~2_combout\,
	combout => \proc_instance|Selector86~1_combout\);

-- Location: LCCOMB_X109_Y13_N14
\proc_instance|mux_selection[8]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(8) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector86~1_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector68~1clkctrl_outclk\,
	datac => \proc_instance|mux_selection\(8),
	datad => \proc_instance|Selector86~1_combout\,
	combout => \proc_instance|mux_selection\(8));

-- Location: LCCOMB_X107_Y13_N28
\proc_instance|mux|Equal9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal9~0_combout\ = (!\proc_instance|mux_selection\(6) & (\proc_instance|mux_selection\(0) & (!\proc_instance|mux_selection\(7) & !\proc_instance|mux_selection\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(6),
	datab => \proc_instance|mux_selection\(0),
	datac => \proc_instance|mux_selection\(7),
	datad => \proc_instance|mux_selection\(8),
	combout => \proc_instance|mux|Equal9~0_combout\);

-- Location: LCCOMB_X107_Y13_N18
\proc_instance|mux|Equal9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal9~1_combout\ = (\proc_instance|mux|Equal0~1_combout\ & (!\proc_instance|mux_selection\(5) & (!\proc_instance|mux_selection\(9) & \proc_instance|mux|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal0~1_combout\,
	datab => \proc_instance|mux_selection\(5),
	datac => \proc_instance|mux_selection\(9),
	datad => \proc_instance|mux|Equal9~0_combout\,
	combout => \proc_instance|mux|Equal9~1_combout\);

-- Location: LCCOMB_X106_Y14_N12
\proc_instance|mux|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~2_combout\ = (\proc_instance|reg_G|Q\(8) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(8) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(8),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector7~2_combout\);

-- Location: LCCOMB_X106_Y14_N14
\proc_instance|mux|Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~3_combout\ = (\proc_instance|mux|Selector7~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(8),
	datad => \proc_instance|mux|Selector7~2_combout\,
	combout => \proc_instance|mux|Selector7~3_combout\);

-- Location: LCCOMB_X106_Y10_N14
\proc_instance|reg_4|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_4|Q[8]~feeder_combout\ = \proc_instance|mux|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector7~6_combout\,
	combout => \proc_instance|reg_4|Q[8]~feeder_combout\);

-- Location: FF_X106_Y10_N15
\proc_instance|reg_4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_4|Q[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(8));

-- Location: FF_X107_Y10_N1
\proc_instance|reg_5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(8));

-- Location: LCCOMB_X109_Y13_N8
\proc_instance|mux|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal0~0_combout\ = (!\proc_instance|mux_selection\(6) & (!\proc_instance|mux_selection\(7) & (!\proc_instance|mux_selection\(8) & !\proc_instance|mux_selection\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(6),
	datab => \proc_instance|mux_selection\(7),
	datac => \proc_instance|mux_selection\(8),
	datad => \proc_instance|mux_selection\(0),
	combout => \proc_instance|mux|Equal0~0_combout\);

-- Location: LCCOMB_X107_Y13_N20
\proc_instance|mux|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal5~0_combout\ = (!\proc_instance|mux_selection\(9) & (!\proc_instance|mux_selection\(5) & (!\proc_instance|mux_selection\(1) & \proc_instance|mux|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(9),
	datab => \proc_instance|mux_selection\(5),
	datac => \proc_instance|mux_selection\(1),
	datad => \proc_instance|mux|Equal0~0_combout\,
	combout => \proc_instance|mux|Equal5~0_combout\);

-- Location: LCCOMB_X108_Y10_N24
\proc_instance|mux|Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal6~0_combout\ = (\proc_instance|mux_selection\(3) & (!\proc_instance|mux_selection\(4) & (!\proc_instance|mux_selection\(2) & \proc_instance|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(3),
	datab => \proc_instance|mux_selection\(4),
	datac => \proc_instance|mux_selection\(2),
	datad => \proc_instance|mux|Equal5~0_combout\,
	combout => \proc_instance|mux|Equal6~0_combout\);

-- Location: LCCOMB_X107_Y10_N0
\proc_instance|mux|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~0_combout\ = (\proc_instance|reg_4|Q\(8) & ((\proc_instance|mux|Equal5~1_combout\) # ((\proc_instance|reg_5|Q\(8) & \proc_instance|mux|Equal6~0_combout\)))) # (!\proc_instance|reg_4|Q\(8) & (((\proc_instance|reg_5|Q\(8) & 
-- \proc_instance|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_4|Q\(8),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_5|Q\(8),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector7~0_combout\);

-- Location: LCCOMB_X112_Y12_N24
\proc_instance|Selector60~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector60~0_combout\ = (!\proc_instance|IR|Q\(9) & (\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector60~0_combout\);

-- Location: LCCOMB_X112_Y12_N26
\proc_instance|R_enable[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(2) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector60~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|R_enable\(2),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector60~0_combout\,
	combout => \proc_instance|R_enable\(2));

-- Location: FF_X108_Y13_N5
\proc_instance|reg_2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(8));

-- Location: LCCOMB_X109_Y13_N10
\proc_instance|mux|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal4~0_combout\ = (\proc_instance|mux_selection\(5) & (\proc_instance|mux|Equal0~0_combout\ & (!\proc_instance|mux_selection\(9) & \proc_instance|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(5),
	datab => \proc_instance|mux|Equal0~0_combout\,
	datac => \proc_instance|mux_selection\(9),
	datad => \proc_instance|mux|Equal0~1_combout\,
	combout => \proc_instance|mux|Equal4~0_combout\);

-- Location: LCCOMB_X112_Y12_N6
\proc_instance|Selector58~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector58~0_combout\ = (\proc_instance|IR|Q\(9) & (\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector58~0_combout\);

-- Location: LCCOMB_X112_Y12_N12
\proc_instance|R_enable[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(3) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector58~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|R_enable\(3),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector58~0_combout\,
	combout => \proc_instance|R_enable\(3));

-- Location: FF_X109_Y13_N17
\proc_instance|reg_3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(8));

-- Location: LCCOMB_X109_Y13_N0
\proc_instance|mux|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal0~2_combout\ = (!\proc_instance|mux_selection\(5) & (\proc_instance|mux|Equal0~0_combout\ & (\proc_instance|mux_selection\(9) & \proc_instance|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(5),
	datab => \proc_instance|mux|Equal0~0_combout\,
	datac => \proc_instance|mux_selection\(9),
	datad => \proc_instance|mux|Equal0~1_combout\,
	combout => \proc_instance|mux|Equal0~2_combout\);

-- Location: LCCOMB_X109_Y13_N16
\proc_instance|mux|Selector7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(8)) # ((\mem_ram|altsyncram_component|auto_generated|q_a\(8) & \proc_instance|mux|Equal0~2_combout\)))) # (!\proc_instance|mux|Equal4~0_combout\ & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(8) & ((\proc_instance|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datac => \proc_instance|reg_3|Q\(8),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector7~4_combout\);

-- Location: LCCOMB_X108_Y13_N4
\proc_instance|mux|Selector7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~5_combout\ = (\proc_instance|mux|Selector7~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(8),
	datad => \proc_instance|mux|Selector7~4_combout\,
	combout => \proc_instance|mux|Selector7~5_combout\);

-- Location: LCCOMB_X106_Y11_N16
\proc_instance|reg_0|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[8]~feeder_combout\ = \proc_instance|mux|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector7~6_combout\,
	combout => \proc_instance|reg_0|Q[8]~feeder_combout\);

-- Location: LCCOMB_X112_Y12_N10
\proc_instance|Selector64~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector64~0_combout\ = (!\proc_instance|IR|Q\(9) & (!\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector64~0_combout\);

-- Location: LCCOMB_X112_Y12_N28
\proc_instance|R_enable[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(0) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector64~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|R_enable\(0),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector64~0_combout\,
	combout => \proc_instance|R_enable\(0));

-- Location: FF_X106_Y11_N17
\proc_instance|reg_0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(8));

-- Location: LCCOMB_X107_Y13_N14
\proc_instance|mux|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal1~0_combout\ = (!\proc_instance|mux_selection\(9) & (!\proc_instance|mux_selection\(5) & (!\proc_instance|mux_selection\(0) & \proc_instance|mux|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(9),
	datab => \proc_instance|mux_selection\(5),
	datac => \proc_instance|mux_selection\(0),
	datad => \proc_instance|mux|Equal0~1_combout\,
	combout => \proc_instance|mux|Equal1~0_combout\);

-- Location: LCCOMB_X108_Y13_N8
\proc_instance|mux|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal2~0_combout\ = (\proc_instance|mux_selection\(7) & (!\proc_instance|mux_selection\(8) & (!\proc_instance|mux_selection\(6) & \proc_instance|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(7),
	datab => \proc_instance|mux_selection\(8),
	datac => \proc_instance|mux_selection\(6),
	datad => \proc_instance|mux|Equal1~0_combout\,
	combout => \proc_instance|mux|Equal2~0_combout\);

-- Location: FF_X107_Y15_N15
\proc_instance|reg_1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(8));

-- Location: LCCOMB_X108_Y13_N10
\proc_instance|mux|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal1~1_combout\ = (!\proc_instance|mux_selection\(7) & (\proc_instance|mux_selection\(8) & (!\proc_instance|mux_selection\(6) & \proc_instance|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(7),
	datab => \proc_instance|mux_selection\(8),
	datac => \proc_instance|mux_selection\(6),
	datad => \proc_instance|mux|Equal1~0_combout\,
	combout => \proc_instance|mux|Equal1~1_combout\);

-- Location: LCCOMB_X107_Y15_N14
\proc_instance|mux|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~1_combout\ = (\proc_instance|reg_0|Q\(8) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|mux|Equal2~0_combout\ & \proc_instance|reg_1|Q\(8))))) # (!\proc_instance|reg_0|Q\(8) & 
-- (\proc_instance|mux|Equal2~0_combout\ & (\proc_instance|reg_1|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(8),
	datab => \proc_instance|mux|Equal2~0_combout\,
	datac => \proc_instance|reg_1|Q\(8),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector7~1_combout\);

-- Location: LCCOMB_X107_Y11_N14
\proc_instance|mux|Selector7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector7~6_combout\ = (\proc_instance|mux|Selector7~3_combout\) # ((\proc_instance|mux|Selector7~0_combout\) # ((\proc_instance|mux|Selector7~5_combout\) # (\proc_instance|mux|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector7~3_combout\,
	datab => \proc_instance|mux|Selector7~0_combout\,
	datac => \proc_instance|mux|Selector7~5_combout\,
	datad => \proc_instance|mux|Selector7~1_combout\,
	combout => \proc_instance|mux|Selector7~6_combout\);

-- Location: FF_X107_Y11_N15
\proc_instance|mem_dada|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector7~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(8));

-- Location: LCCOMB_X111_Y10_N16
\proc_instance|reg_5|Q[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[9]~feeder_combout\ = \proc_instance|mux|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector6~6_combout\,
	combout => \proc_instance|reg_5|Q[9]~feeder_combout\);

-- Location: FF_X111_Y10_N17
\proc_instance|reg_5|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(9));

-- Location: FF_X108_Y10_N13
\proc_instance|reg_4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(9));

-- Location: LCCOMB_X108_Y10_N12
\proc_instance|mux|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~0_combout\ = (\proc_instance|reg_5|Q\(9) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(9))))) # (!\proc_instance|reg_5|Q\(9) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(9),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(9),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector6~0_combout\);

-- Location: LCCOMB_X111_Y11_N18
\proc_instance|reg_1|Q[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[9]~feeder_combout\ = \proc_instance|mux|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector6~6_combout\,
	combout => \proc_instance|reg_1|Q[9]~feeder_combout\);

-- Location: FF_X111_Y11_N19
\proc_instance|reg_1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(9));

-- Location: FF_X109_Y11_N15
\proc_instance|reg_0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(9));

-- Location: LCCOMB_X109_Y11_N14
\proc_instance|mux|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~1_combout\ = (\proc_instance|mux|Equal2~0_combout\ & ((\proc_instance|reg_1|Q\(9)) # ((\proc_instance|reg_0|Q\(9) & \proc_instance|mux|Equal1~1_combout\)))) # (!\proc_instance|mux|Equal2~0_combout\ & 
-- (((\proc_instance|reg_0|Q\(9) & \proc_instance|mux|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal2~0_combout\,
	datab => \proc_instance|reg_1|Q\(9),
	datac => \proc_instance|reg_0|Q\(9),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector6~1_combout\);

-- Location: FF_X108_Y13_N17
\proc_instance|reg_2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(9));

-- Location: FF_X105_Y13_N13
\proc_instance|reg_3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(9));

-- Location: LCCOMB_X105_Y13_N12
\proc_instance|mux|Selector6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(9) & ((\proc_instance|mux|Equal0~2_combout\) # ((\proc_instance|mux|Equal4~0_combout\ & \proc_instance|reg_3|Q\(9))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(9) & (\proc_instance|mux|Equal4~0_combout\ & (\proc_instance|reg_3|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datab => \proc_instance|mux|Equal4~0_combout\,
	datac => \proc_instance|reg_3|Q\(9),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector6~4_combout\);

-- Location: LCCOMB_X108_Y13_N16
\proc_instance|mux|Selector6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~5_combout\ = (\proc_instance|mux|Selector6~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(9),
	datad => \proc_instance|mux|Selector6~4_combout\,
	combout => \proc_instance|mux|Selector6~5_combout\);

-- Location: FF_X106_Y14_N21
\proc_instance|reg_6|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(9));

-- Location: FF_X108_Y11_N1
\proc_instance|reg_A|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(9));

-- Location: LCCOMB_X108_Y11_N18
\proc_instance|ALU_component|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~18_combout\ = (\proc_instance|mux|Selector6~6_combout\ & ((\proc_instance|ALU_component|Add1~17\) # (GND))) # (!\proc_instance|mux|Selector6~6_combout\ & (!\proc_instance|ALU_component|Add1~17\))
-- \proc_instance|ALU_component|Add1~19\ = CARRY((\proc_instance|mux|Selector6~6_combout\) # (!\proc_instance|ALU_component|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector6~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~17\,
	combout => \proc_instance|ALU_component|Add1~18_combout\,
	cout => \proc_instance|ALU_component|Add1~19\);

-- Location: LCCOMB_X109_Y11_N24
\proc_instance|ALU_component|operand[9]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(9) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~18_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(9),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~18_combout\,
	combout => \proc_instance|ALU_component|operand\(9));

-- Location: LCCOMB_X108_Y12_N22
\proc_instance|ALU_component|Add0~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~11_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(9))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(9),
	datad => \proc_instance|mux|Selector6~6_combout\,
	combout => \proc_instance|ALU_component|Add0~11_combout\);

-- Location: LCCOMB_X109_Y12_N18
\proc_instance|reg_G|Q[9]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[9]~34_combout\ = (\proc_instance|reg_A|Q\(9) & ((\proc_instance|ALU_component|Add0~11_combout\ & (\proc_instance|reg_G|Q[8]~33\ & VCC)) # (!\proc_instance|ALU_component|Add0~11_combout\ & (!\proc_instance|reg_G|Q[8]~33\)))) # 
-- (!\proc_instance|reg_A|Q\(9) & ((\proc_instance|ALU_component|Add0~11_combout\ & (!\proc_instance|reg_G|Q[8]~33\)) # (!\proc_instance|ALU_component|Add0~11_combout\ & ((\proc_instance|reg_G|Q[8]~33\) # (GND)))))
-- \proc_instance|reg_G|Q[9]~35\ = CARRY((\proc_instance|reg_A|Q\(9) & (!\proc_instance|ALU_component|Add0~11_combout\ & !\proc_instance|reg_G|Q[8]~33\)) # (!\proc_instance|reg_A|Q\(9) & ((!\proc_instance|reg_G|Q[8]~33\) # 
-- (!\proc_instance|ALU_component|Add0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(9),
	datab => \proc_instance|ALU_component|Add0~11_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[8]~33\,
	combout => \proc_instance|reg_G|Q[9]~34_combout\,
	cout => \proc_instance|reg_G|Q[9]~35\);

-- Location: FF_X109_Y12_N19
\proc_instance|reg_G|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[9]~34_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(9));

-- Location: LCCOMB_X106_Y12_N18
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X106_Y12_N19
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X106_Y14_N18
\proc_instance|mux|Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~2_combout\ = (\proc_instance|reg_G|Q\(9) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(9) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(9),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector6~2_combout\);

-- Location: LCCOMB_X106_Y14_N20
\proc_instance|mux|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~3_combout\ = (\proc_instance|mux|Selector6~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(9),
	datad => \proc_instance|mux|Selector6~2_combout\,
	combout => \proc_instance|mux|Selector6~3_combout\);

-- Location: LCCOMB_X107_Y11_N16
\proc_instance|mux|Selector6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector6~6_combout\ = (\proc_instance|mux|Selector6~0_combout\) # ((\proc_instance|mux|Selector6~1_combout\) # ((\proc_instance|mux|Selector6~5_combout\) # (\proc_instance|mux|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector6~0_combout\,
	datab => \proc_instance|mux|Selector6~1_combout\,
	datac => \proc_instance|mux|Selector6~5_combout\,
	datad => \proc_instance|mux|Selector6~3_combout\,
	combout => \proc_instance|mux|Selector6~6_combout\);

-- Location: FF_X107_Y11_N17
\proc_instance|mem_dada|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector6~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(9));

-- Location: LCCOMB_X106_Y11_N18
\proc_instance|reg_0|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[10]~feeder_combout\ = \proc_instance|mux|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector5~6_combout\,
	combout => \proc_instance|reg_0|Q[10]~feeder_combout\);

-- Location: FF_X106_Y11_N19
\proc_instance|reg_0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[10]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(10));

-- Location: FF_X107_Y15_N21
\proc_instance|reg_1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(10));

-- Location: LCCOMB_X107_Y15_N20
\proc_instance|mux|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~1_combout\ = (\proc_instance|reg_0|Q\(10) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|mux|Equal2~0_combout\ & \proc_instance|reg_1|Q\(10))))) # (!\proc_instance|reg_0|Q\(10) & 
-- (\proc_instance|mux|Equal2~0_combout\ & (\proc_instance|reg_1|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(10),
	datab => \proc_instance|mux|Equal2~0_combout\,
	datac => \proc_instance|reg_1|Q\(10),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector5~1_combout\);

-- Location: LCCOMB_X108_Y10_N22
\proc_instance|reg_4|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_4|Q[10]~feeder_combout\ = \proc_instance|mux|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector5~6_combout\,
	combout => \proc_instance|reg_4|Q[10]~feeder_combout\);

-- Location: FF_X108_Y10_N23
\proc_instance|reg_4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_4|Q[10]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(10));

-- Location: FF_X107_Y10_N5
\proc_instance|reg_5|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(10));

-- Location: LCCOMB_X107_Y10_N4
\proc_instance|mux|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~0_combout\ = (\proc_instance|reg_4|Q\(10) & ((\proc_instance|mux|Equal5~1_combout\) # ((\proc_instance|reg_5|Q\(10) & \proc_instance|mux|Equal6~0_combout\)))) # (!\proc_instance|reg_4|Q\(10) & (((\proc_instance|reg_5|Q\(10) & 
-- \proc_instance|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_4|Q\(10),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_5|Q\(10),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector5~0_combout\);

-- Location: FF_X109_Y13_N3
\proc_instance|reg_3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(10));

-- Location: LCCOMB_X109_Y13_N2
\proc_instance|mux|Selector5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(10)) # ((\proc_instance|mux|Equal0~2_combout\ & \mem_ram|altsyncram_component|auto_generated|q_a\(10))))) # (!\proc_instance|mux|Equal4~0_combout\ 
-- & (\proc_instance|mux|Equal0~2_combout\ & ((\mem_ram|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \proc_instance|reg_3|Q\(10),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	combout => \proc_instance|mux|Selector5~4_combout\);

-- Location: FF_X108_Y13_N23
\proc_instance|reg_2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(10));

-- Location: LCCOMB_X106_Y12_N20
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X106_Y12_N21
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X108_Y11_N20
\proc_instance|ALU_component|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~20_combout\ = (\proc_instance|mux|Selector5~6_combout\ & (!\proc_instance|ALU_component|Add1~19\ & VCC)) # (!\proc_instance|mux|Selector5~6_combout\ & (\proc_instance|ALU_component|Add1~19\ $ (GND)))
-- \proc_instance|ALU_component|Add1~21\ = CARRY((!\proc_instance|mux|Selector5~6_combout\ & !\proc_instance|ALU_component|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector5~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~19\,
	combout => \proc_instance|ALU_component|Add1~20_combout\,
	cout => \proc_instance|ALU_component|Add1~21\);

-- Location: LCCOMB_X109_Y11_N22
\proc_instance|ALU_component|operand[10]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(10) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~20_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|operand\(10),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~20_combout\,
	combout => \proc_instance|ALU_component|operand\(10));

-- Location: LCCOMB_X109_Y11_N2
\proc_instance|ALU_component|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~10_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(10))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(10),
	datad => \proc_instance|mux|Selector5~6_combout\,
	combout => \proc_instance|ALU_component|Add0~10_combout\);

-- Location: FF_X108_Y11_N27
\proc_instance|reg_A|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(10));

-- Location: LCCOMB_X109_Y12_N20
\proc_instance|reg_G|Q[10]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[10]~36_combout\ = ((\proc_instance|ALU_component|Add0~10_combout\ $ (\proc_instance|reg_A|Q\(10) $ (!\proc_instance|reg_G|Q[9]~35\)))) # (GND)
-- \proc_instance|reg_G|Q[10]~37\ = CARRY((\proc_instance|ALU_component|Add0~10_combout\ & ((\proc_instance|reg_A|Q\(10)) # (!\proc_instance|reg_G|Q[9]~35\))) # (!\proc_instance|ALU_component|Add0~10_combout\ & (\proc_instance|reg_A|Q\(10) & 
-- !\proc_instance|reg_G|Q[9]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|Add0~10_combout\,
	datab => \proc_instance|reg_A|Q\(10),
	datad => VCC,
	cin => \proc_instance|reg_G|Q[9]~35\,
	combout => \proc_instance|reg_G|Q[10]~36_combout\,
	cout => \proc_instance|reg_G|Q[10]~37\);

-- Location: FF_X109_Y12_N21
\proc_instance|reg_G|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[10]~36_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(10));

-- Location: LCCOMB_X106_Y13_N28
\proc_instance|mux|Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(10) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & (\proc_instance|reg_G|Q\(10) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datab => \proc_instance|reg_G|Q\(10),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector5~2_combout\);

-- Location: FF_X106_Y13_N19
\proc_instance|reg_6|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(10));

-- Location: LCCOMB_X106_Y13_N18
\proc_instance|mux|Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~3_combout\ = (\proc_instance|mux|Selector5~2_combout\) # ((\proc_instance|reg_6|Q\(10) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector5~2_combout\,
	datac => \proc_instance|reg_6|Q\(10),
	datad => \proc_instance|mux|Equal7~0_combout\,
	combout => \proc_instance|mux|Selector5~3_combout\);

-- Location: LCCOMB_X108_Y13_N22
\proc_instance|mux|Selector5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~5_combout\ = (\proc_instance|mux|Selector5~4_combout\) # ((\proc_instance|mux|Selector5~3_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector5~4_combout\,
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(10),
	datad => \proc_instance|mux|Selector5~3_combout\,
	combout => \proc_instance|mux|Selector5~5_combout\);

-- Location: LCCOMB_X107_Y11_N26
\proc_instance|mux|Selector5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector5~6_combout\ = (\proc_instance|mux|Selector5~1_combout\) # ((\proc_instance|mux|Selector5~0_combout\) # (\proc_instance|mux|Selector5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector5~1_combout\,
	datac => \proc_instance|mux|Selector5~0_combout\,
	datad => \proc_instance|mux|Selector5~5_combout\,
	combout => \proc_instance|mux|Selector5~6_combout\);

-- Location: FF_X107_Y11_N27
\proc_instance|mem_dada|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector5~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(10));

-- Location: LCCOMB_X111_Y11_N28
\proc_instance|reg_1|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[11]~feeder_combout\ = \proc_instance|mux|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector4~6_combout\,
	combout => \proc_instance|reg_1|Q[11]~feeder_combout\);

-- Location: FF_X111_Y11_N29
\proc_instance|reg_1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[11]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(11));

-- Location: FF_X109_Y11_N21
\proc_instance|reg_0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(11));

-- Location: LCCOMB_X109_Y11_N20
\proc_instance|mux|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~1_combout\ = (\proc_instance|mux|Equal2~0_combout\ & ((\proc_instance|reg_1|Q\(11)) # ((\proc_instance|reg_0|Q\(11) & \proc_instance|mux|Equal1~1_combout\)))) # (!\proc_instance|mux|Equal2~0_combout\ & 
-- (((\proc_instance|reg_0|Q\(11) & \proc_instance|mux|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal2~0_combout\,
	datab => \proc_instance|reg_1|Q\(11),
	datac => \proc_instance|reg_0|Q\(11),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector4~1_combout\);

-- Location: LCCOMB_X107_Y10_N10
\proc_instance|reg_5|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[11]~feeder_combout\ = \proc_instance|mux|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector4~6_combout\,
	combout => \proc_instance|reg_5|Q[11]~feeder_combout\);

-- Location: FF_X107_Y10_N11
\proc_instance|reg_5|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[11]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(11));

-- Location: FF_X108_Y10_N17
\proc_instance|reg_4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(11));

-- Location: LCCOMB_X108_Y10_N16
\proc_instance|mux|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~0_combout\ = (\proc_instance|reg_5|Q\(11) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(11))))) # (!\proc_instance|reg_5|Q\(11) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(11),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(11),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector4~0_combout\);

-- Location: FF_X106_Y14_N17
\proc_instance|reg_6|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(11));

-- Location: FF_X108_Y11_N17
\proc_instance|reg_A|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(11));

-- Location: LCCOMB_X108_Y11_N22
\proc_instance|ALU_component|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~22_combout\ = (\proc_instance|mux|Selector4~6_combout\ & ((\proc_instance|ALU_component|Add1~21\) # (GND))) # (!\proc_instance|mux|Selector4~6_combout\ & (!\proc_instance|ALU_component|Add1~21\))
-- \proc_instance|ALU_component|Add1~23\ = CARRY((\proc_instance|mux|Selector4~6_combout\) # (!\proc_instance|ALU_component|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector4~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~21\,
	combout => \proc_instance|ALU_component|Add1~22_combout\,
	cout => \proc_instance|ALU_component|Add1~23\);

-- Location: LCCOMB_X109_Y11_N4
\proc_instance|ALU_component|operand[11]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(11) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~22_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(11),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~22_combout\,
	combout => \proc_instance|ALU_component|operand\(11));

-- Location: LCCOMB_X109_Y11_N0
\proc_instance|ALU_component|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~9_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(11))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(11),
	datad => \proc_instance|mux|Selector4~6_combout\,
	combout => \proc_instance|ALU_component|Add0~9_combout\);

-- Location: LCCOMB_X109_Y12_N22
\proc_instance|reg_G|Q[11]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[11]~38_combout\ = (\proc_instance|reg_A|Q\(11) & ((\proc_instance|ALU_component|Add0~9_combout\ & (\proc_instance|reg_G|Q[10]~37\ & VCC)) # (!\proc_instance|ALU_component|Add0~9_combout\ & (!\proc_instance|reg_G|Q[10]~37\)))) # 
-- (!\proc_instance|reg_A|Q\(11) & ((\proc_instance|ALU_component|Add0~9_combout\ & (!\proc_instance|reg_G|Q[10]~37\)) # (!\proc_instance|ALU_component|Add0~9_combout\ & ((\proc_instance|reg_G|Q[10]~37\) # (GND)))))
-- \proc_instance|reg_G|Q[11]~39\ = CARRY((\proc_instance|reg_A|Q\(11) & (!\proc_instance|ALU_component|Add0~9_combout\ & !\proc_instance|reg_G|Q[10]~37\)) # (!\proc_instance|reg_A|Q\(11) & ((!\proc_instance|reg_G|Q[10]~37\) # 
-- (!\proc_instance|ALU_component|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(11),
	datab => \proc_instance|ALU_component|Add0~9_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[10]~37\,
	combout => \proc_instance|reg_G|Q[11]~38_combout\,
	cout => \proc_instance|reg_G|Q[11]~39\);

-- Location: FF_X109_Y12_N23
\proc_instance|reg_G|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[11]~38_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(11));

-- Location: LCCOMB_X106_Y12_N22
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X106_Y12_N23
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X107_Y14_N16
\proc_instance|mux|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~2_combout\ = (\proc_instance|reg_G|Q\(11) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(11) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(11),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector4~2_combout\);

-- Location: LCCOMB_X107_Y14_N10
\proc_instance|mux|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~3_combout\ = (\proc_instance|mux|Selector4~2_combout\) # ((\proc_instance|reg_6|Q\(11) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_6|Q\(11),
	datac => \proc_instance|mux|Equal7~0_combout\,
	datad => \proc_instance|mux|Selector4~2_combout\,
	combout => \proc_instance|mux|Selector4~3_combout\);

-- Location: FF_X107_Y14_N21
\proc_instance|reg_2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(11));

-- Location: FF_X109_Y14_N9
\proc_instance|reg_3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(11));

-- Location: LCCOMB_X109_Y14_N8
\proc_instance|mux|Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(11)) # ((\proc_instance|mux|Equal0~2_combout\ & \mem_ram|altsyncram_component|auto_generated|q_a\(11))))) # (!\proc_instance|mux|Equal4~0_combout\ 
-- & (\proc_instance|mux|Equal0~2_combout\ & ((\mem_ram|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \proc_instance|reg_3|Q\(11),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \proc_instance|mux|Selector4~4_combout\);

-- Location: LCCOMB_X107_Y14_N20
\proc_instance|mux|Selector4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~5_combout\ = (\proc_instance|mux|Selector4~3_combout\) # ((\proc_instance|mux|Selector4~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector4~3_combout\,
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(11),
	datad => \proc_instance|mux|Selector4~4_combout\,
	combout => \proc_instance|mux|Selector4~5_combout\);

-- Location: LCCOMB_X107_Y11_N28
\proc_instance|mux|Selector4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector4~6_combout\ = (\proc_instance|mux|Selector4~1_combout\) # ((\proc_instance|mux|Selector4~0_combout\) # (\proc_instance|mux|Selector4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector4~1_combout\,
	datac => \proc_instance|mux|Selector4~0_combout\,
	datad => \proc_instance|mux|Selector4~5_combout\,
	combout => \proc_instance|mux|Selector4~6_combout\);

-- Location: FF_X107_Y11_N29
\proc_instance|mem_dada|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector4~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(11));

-- Location: LCCOMB_X106_Y14_N8
\proc_instance|reg_6|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_6|Q[12]~feeder_combout\ = \proc_instance|mux|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \proc_instance|reg_6|Q[12]~feeder_combout\);

-- Location: FF_X106_Y14_N9
\proc_instance|reg_6|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_6|Q[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(12));

-- Location: LCCOMB_X106_Y12_N24
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X106_Y12_N25
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	asdata => \proc_instance|mux|Selector3~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: FF_X108_Y11_N25
\proc_instance|reg_A|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector3~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(12));

-- Location: LCCOMB_X108_Y11_N24
\proc_instance|ALU_component|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~24_combout\ = (\proc_instance|mux|Selector3~6_combout\ & (!\proc_instance|ALU_component|Add1~23\ & VCC)) # (!\proc_instance|mux|Selector3~6_combout\ & (\proc_instance|ALU_component|Add1~23\ $ (GND)))
-- \proc_instance|ALU_component|Add1~25\ = CARRY((!\proc_instance|mux|Selector3~6_combout\ & !\proc_instance|ALU_component|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector3~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~23\,
	combout => \proc_instance|ALU_component|Add1~24_combout\,
	cout => \proc_instance|ALU_component|Add1~25\);

-- Location: LCCOMB_X107_Y11_N0
\proc_instance|ALU_component|operand[12]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(12) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~24_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(12),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~24_combout\,
	combout => \proc_instance|ALU_component|operand\(12));

-- Location: LCCOMB_X107_Y11_N12
\proc_instance|ALU_component|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~12_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(12))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datab => \proc_instance|ALU_component|operand\(12),
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \proc_instance|ALU_component|Add0~12_combout\);

-- Location: LCCOMB_X109_Y12_N24
\proc_instance|reg_G|Q[12]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[12]~40_combout\ = ((\proc_instance|reg_A|Q\(12) $ (\proc_instance|ALU_component|Add0~12_combout\ $ (!\proc_instance|reg_G|Q[11]~39\)))) # (GND)
-- \proc_instance|reg_G|Q[12]~41\ = CARRY((\proc_instance|reg_A|Q\(12) & ((\proc_instance|ALU_component|Add0~12_combout\) # (!\proc_instance|reg_G|Q[11]~39\))) # (!\proc_instance|reg_A|Q\(12) & (\proc_instance|ALU_component|Add0~12_combout\ & 
-- !\proc_instance|reg_G|Q[11]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(12),
	datab => \proc_instance|ALU_component|Add0~12_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[11]~39\,
	combout => \proc_instance|reg_G|Q[12]~40_combout\,
	cout => \proc_instance|reg_G|Q[12]~41\);

-- Location: FF_X109_Y12_N25
\proc_instance|reg_G|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[12]~40_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(12));

-- Location: LCCOMB_X107_Y12_N8
\proc_instance|mux|Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(12) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\proc_instance|reg_G|Q\(12) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datab => \proc_instance|reg_G|Q\(12),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector3~2_combout\);

-- Location: LCCOMB_X107_Y12_N30
\proc_instance|mux|Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~3_combout\ = (\proc_instance|mux|Selector3~2_combout\) # ((\proc_instance|reg_6|Q\(12) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|reg_6|Q\(12),
	datac => \proc_instance|mux|Equal7~0_combout\,
	datad => \proc_instance|mux|Selector3~2_combout\,
	combout => \proc_instance|mux|Selector3~3_combout\);

-- Location: LCCOMB_X106_Y11_N12
\proc_instance|reg_0|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[12]~feeder_combout\ = \proc_instance|mux|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \proc_instance|reg_0|Q[12]~feeder_combout\);

-- Location: FF_X106_Y11_N13
\proc_instance|reg_0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(12));

-- Location: LCCOMB_X111_Y11_N4
\proc_instance|reg_1|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[12]~feeder_combout\ = \proc_instance|mux|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \proc_instance|reg_1|Q[12]~feeder_combout\);

-- Location: FF_X111_Y11_N5
\proc_instance|reg_1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(12));

-- Location: LCCOMB_X107_Y11_N20
\proc_instance|mux|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~1_combout\ = (\proc_instance|reg_0|Q\(12) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|reg_1|Q\(12) & \proc_instance|mux|Equal2~0_combout\)))) # (!\proc_instance|reg_0|Q\(12) & (\proc_instance|reg_1|Q\(12) & 
-- (\proc_instance|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(12),
	datab => \proc_instance|reg_1|Q\(12),
	datac => \proc_instance|mux|Equal2~0_combout\,
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector3~1_combout\);

-- Location: LCCOMB_X106_Y10_N16
\proc_instance|reg_4|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_4|Q[12]~feeder_combout\ = \proc_instance|mux|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \proc_instance|reg_4|Q[12]~feeder_combout\);

-- Location: FF_X106_Y10_N17
\proc_instance|reg_4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_4|Q[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(12));

-- Location: FF_X107_Y10_N3
\proc_instance|reg_5|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector3~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(12));

-- Location: LCCOMB_X107_Y10_N2
\proc_instance|mux|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~0_combout\ = (\proc_instance|reg_4|Q\(12) & ((\proc_instance|mux|Equal5~1_combout\) # ((\proc_instance|reg_5|Q\(12) & \proc_instance|mux|Equal6~0_combout\)))) # (!\proc_instance|reg_4|Q\(12) & (((\proc_instance|reg_5|Q\(12) & 
-- \proc_instance|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_4|Q\(12),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_5|Q\(12),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector3~0_combout\);

-- Location: FF_X108_Y13_N15
\proc_instance|reg_2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector3~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(12));

-- Location: FF_X107_Y13_N23
\proc_instance|reg_3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector3~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(12));

-- Location: LCCOMB_X111_Y13_N20
\proc_instance|mux|Selector3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(12) & ((\proc_instance|mux|Equal0~2_combout\) # ((\proc_instance|reg_3|Q\(12) & \proc_instance|mux|Equal4~0_combout\)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (\proc_instance|reg_3|Q\(12) & (\proc_instance|mux|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	datab => \proc_instance|reg_3|Q\(12),
	datac => \proc_instance|mux|Equal4~0_combout\,
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector3~4_combout\);

-- Location: LCCOMB_X108_Y13_N14
\proc_instance|mux|Selector3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~5_combout\ = (\proc_instance|mux|Selector3~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(12),
	datad => \proc_instance|mux|Selector3~4_combout\,
	combout => \proc_instance|mux|Selector3~5_combout\);

-- Location: LCCOMB_X107_Y11_N18
\proc_instance|mux|Selector3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector3~6_combout\ = (\proc_instance|mux|Selector3~3_combout\) # ((\proc_instance|mux|Selector3~1_combout\) # ((\proc_instance|mux|Selector3~0_combout\) # (\proc_instance|mux|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector3~3_combout\,
	datab => \proc_instance|mux|Selector3~1_combout\,
	datac => \proc_instance|mux|Selector3~0_combout\,
	datad => \proc_instance|mux|Selector3~5_combout\,
	combout => \proc_instance|mux|Selector3~6_combout\);

-- Location: FF_X107_Y11_N19
\proc_instance|mem_dada|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector3~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(12));

-- Location: LCCOMB_X111_Y14_N18
\proc_instance|reg_1|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|reg_1|Q[13]~feeder_combout\);

-- Location: FF_X111_Y14_N19
\proc_instance|reg_1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(13));

-- Location: LCCOMB_X109_Y10_N0
\proc_instance|reg_0|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|reg_0|Q[13]~feeder_combout\);

-- Location: FF_X109_Y10_N1
\proc_instance|reg_0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(13));

-- Location: LCCOMB_X108_Y14_N4
\proc_instance|mux|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~1_combout\ = (\proc_instance|reg_1|Q\(13) & ((\proc_instance|mux|Equal2~0_combout\) # ((\proc_instance|reg_0|Q\(13) & \proc_instance|mux|Equal1~1_combout\)))) # (!\proc_instance|reg_1|Q\(13) & (\proc_instance|reg_0|Q\(13) & 
-- ((\proc_instance|mux|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_1|Q\(13),
	datab => \proc_instance|reg_0|Q\(13),
	datac => \proc_instance|mux|Equal2~0_combout\,
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector2~1_combout\);

-- Location: LCCOMB_X107_Y10_N6
\proc_instance|reg_5|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|reg_5|Q[13]~feeder_combout\);

-- Location: FF_X107_Y10_N7
\proc_instance|reg_5|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(13));

-- Location: FF_X108_Y10_N9
\proc_instance|reg_4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector2~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(13));

-- Location: LCCOMB_X108_Y10_N8
\proc_instance|mux|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~0_combout\ = (\proc_instance|reg_5|Q\(13) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|reg_4|Q\(13) & \proc_instance|mux|Equal5~1_combout\)))) # (!\proc_instance|reg_5|Q\(13) & (((\proc_instance|reg_4|Q\(13) & 
-- \proc_instance|mux|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(13),
	datab => \proc_instance|mux|Equal6~0_combout\,
	datac => \proc_instance|reg_4|Q\(13),
	datad => \proc_instance|mux|Equal5~1_combout\,
	combout => \proc_instance|mux|Selector2~0_combout\);

-- Location: LCCOMB_X109_Y14_N14
\proc_instance|reg_3|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_3|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|reg_3|Q[13]~feeder_combout\);

-- Location: FF_X109_Y14_N15
\proc_instance|reg_3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_3|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(13));

-- Location: LCCOMB_X107_Y14_N28
\proc_instance|mux|Selector2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~4_combout\ = (\proc_instance|reg_3|Q\(13) & ((\proc_instance|mux|Equal4~0_combout\) # ((\proc_instance|mux|Equal0~2_combout\ & \mem_ram|altsyncram_component|auto_generated|q_a\(13))))) # (!\proc_instance|reg_3|Q\(13) & 
-- (\proc_instance|mux|Equal0~2_combout\ & (\mem_ram|altsyncram_component|auto_generated|q_a\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_3|Q\(13),
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datad => \proc_instance|mux|Equal4~0_combout\,
	combout => \proc_instance|mux|Selector2~4_combout\);

-- Location: FF_X107_Y14_N15
\proc_instance|reg_2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector2~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(13));

-- Location: LCCOMB_X106_Y14_N28
\proc_instance|reg_6|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_6|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|reg_6|Q[13]~feeder_combout\);

-- Location: FF_X106_Y14_N29
\proc_instance|reg_6|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_6|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(13));

-- Location: LCCOMB_X106_Y12_N26
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X106_Y12_N27
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	asdata => \proc_instance|mux|Selector2~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X113_Y14_N4
\proc_instance|reg_A|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|reg_A|Q[13]~feeder_combout\);

-- Location: FF_X113_Y14_N5
\proc_instance|reg_A|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(13));

-- Location: LCCOMB_X108_Y11_N26
\proc_instance|ALU_component|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~26_combout\ = (\proc_instance|mux|Selector2~6_combout\ & ((\proc_instance|ALU_component|Add1~25\) # (GND))) # (!\proc_instance|mux|Selector2~6_combout\ & (!\proc_instance|ALU_component|Add1~25\))
-- \proc_instance|ALU_component|Add1~27\ = CARRY((\proc_instance|mux|Selector2~6_combout\) # (!\proc_instance|ALU_component|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector2~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~25\,
	combout => \proc_instance|ALU_component|Add1~26_combout\,
	cout => \proc_instance|ALU_component|Add1~27\);

-- Location: LCCOMB_X109_Y11_N10
\proc_instance|ALU_component|operand[13]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(13) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~26_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|operand\(13),
	datac => \proc_instance|ALU_component|Add1~26_combout\,
	datad => \proc_instance|alufn[0]~clkctrl_outclk\,
	combout => \proc_instance|ALU_component|operand\(13));

-- Location: LCCOMB_X108_Y14_N30
\proc_instance|ALU_component|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~15_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(13))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(13),
	datad => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|ALU_component|Add0~15_combout\);

-- Location: LCCOMB_X109_Y12_N26
\proc_instance|reg_G|Q[13]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[13]~42_combout\ = (\proc_instance|reg_A|Q\(13) & ((\proc_instance|ALU_component|Add0~15_combout\ & (\proc_instance|reg_G|Q[12]~41\ & VCC)) # (!\proc_instance|ALU_component|Add0~15_combout\ & (!\proc_instance|reg_G|Q[12]~41\)))) # 
-- (!\proc_instance|reg_A|Q\(13) & ((\proc_instance|ALU_component|Add0~15_combout\ & (!\proc_instance|reg_G|Q[12]~41\)) # (!\proc_instance|ALU_component|Add0~15_combout\ & ((\proc_instance|reg_G|Q[12]~41\) # (GND)))))
-- \proc_instance|reg_G|Q[13]~43\ = CARRY((\proc_instance|reg_A|Q\(13) & (!\proc_instance|ALU_component|Add0~15_combout\ & !\proc_instance|reg_G|Q[12]~41\)) # (!\proc_instance|reg_A|Q\(13) & ((!\proc_instance|reg_G|Q[12]~41\) # 
-- (!\proc_instance|ALU_component|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(13),
	datab => \proc_instance|ALU_component|Add0~15_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[12]~41\,
	combout => \proc_instance|reg_G|Q[13]~42_combout\,
	cout => \proc_instance|reg_G|Q[13]~43\);

-- Location: FF_X109_Y12_N27
\proc_instance|reg_G|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[13]~42_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(13));

-- Location: LCCOMB_X107_Y12_N20
\proc_instance|mux|Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(13) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & (\proc_instance|reg_G|Q\(13) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datab => \proc_instance|reg_G|Q\(13),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector2~2_combout\);

-- Location: LCCOMB_X107_Y12_N2
\proc_instance|mux|Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~3_combout\ = (\proc_instance|mux|Selector2~2_combout\) # ((\proc_instance|reg_6|Q\(13) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|reg_6|Q\(13),
	datac => \proc_instance|mux|Equal7~0_combout\,
	datad => \proc_instance|mux|Selector2~2_combout\,
	combout => \proc_instance|mux|Selector2~3_combout\);

-- Location: LCCOMB_X107_Y14_N14
\proc_instance|mux|Selector2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~5_combout\ = (\proc_instance|mux|Selector2~4_combout\) # ((\proc_instance|mux|Selector2~3_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal3~0_combout\,
	datab => \proc_instance|mux|Selector2~4_combout\,
	datac => \proc_instance|reg_2|Q\(13),
	datad => \proc_instance|mux|Selector2~3_combout\,
	combout => \proc_instance|mux|Selector2~5_combout\);

-- Location: LCCOMB_X108_Y14_N10
\proc_instance|mux|Selector2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector2~6_combout\ = (\proc_instance|mux|Selector2~1_combout\) # ((\proc_instance|mux|Selector2~0_combout\) # (\proc_instance|mux|Selector2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector2~1_combout\,
	datac => \proc_instance|mux|Selector2~0_combout\,
	datad => \proc_instance|mux|Selector2~5_combout\,
	combout => \proc_instance|mux|Selector2~6_combout\);

-- Location: FF_X108_Y14_N11
\proc_instance|mem_dada|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector2~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(13));

-- Location: LCCOMB_X111_Y14_N8
\proc_instance|reg_1|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|reg_1|Q[14]~feeder_combout\);

-- Location: FF_X111_Y14_N9
\proc_instance|reg_1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(14));

-- Location: LCCOMB_X109_Y10_N14
\proc_instance|reg_0|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|reg_0|Q[14]~feeder_combout\);

-- Location: FF_X109_Y10_N15
\proc_instance|reg_0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(14));

-- Location: LCCOMB_X109_Y14_N22
\proc_instance|mux|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~1_combout\ = (\proc_instance|reg_1|Q\(14) & ((\proc_instance|mux|Equal2~0_combout\) # ((\proc_instance|reg_0|Q\(14) & \proc_instance|mux|Equal1~1_combout\)))) # (!\proc_instance|reg_1|Q\(14) & (\proc_instance|reg_0|Q\(14) & 
-- (\proc_instance|mux|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_1|Q\(14),
	datab => \proc_instance|reg_0|Q\(14),
	datac => \proc_instance|mux|Equal1~1_combout\,
	datad => \proc_instance|mux|Equal2~0_combout\,
	combout => \proc_instance|mux|Selector1~1_combout\);

-- Location: LCCOMB_X107_Y10_N16
\proc_instance|reg_5|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|reg_5|Q[14]~feeder_combout\);

-- Location: FF_X107_Y10_N17
\proc_instance|reg_5|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(14));

-- Location: LCCOMB_X108_Y10_N28
\proc_instance|reg_4|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_4|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|reg_4|Q[14]~feeder_combout\);

-- Location: FF_X108_Y10_N29
\proc_instance|reg_4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_4|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(14));

-- Location: LCCOMB_X108_Y10_N30
\proc_instance|mux|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~0_combout\ = (\proc_instance|reg_5|Q\(14) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|reg_4|Q\(14) & \proc_instance|mux|Equal5~1_combout\)))) # (!\proc_instance|reg_5|Q\(14) & (((\proc_instance|reg_4|Q\(14) & 
-- \proc_instance|mux|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(14),
	datab => \proc_instance|mux|Equal6~0_combout\,
	datac => \proc_instance|reg_4|Q\(14),
	datad => \proc_instance|mux|Equal5~1_combout\,
	combout => \proc_instance|mux|Selector1~0_combout\);

-- Location: LCCOMB_X109_Y14_N16
\proc_instance|reg_3|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_3|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|reg_3|Q[14]~feeder_combout\);

-- Location: FF_X109_Y14_N17
\proc_instance|reg_3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_3|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(14));

-- Location: LCCOMB_X107_Y14_N12
\proc_instance|mux|Selector1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~4_combout\ = (\proc_instance|reg_3|Q\(14) & ((\proc_instance|mux|Equal4~0_combout\) # ((\proc_instance|mux|Equal0~2_combout\ & \mem_ram|altsyncram_component|auto_generated|q_a\(14))))) # (!\proc_instance|reg_3|Q\(14) & 
-- (\proc_instance|mux|Equal0~2_combout\ & (\mem_ram|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_3|Q\(14),
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \proc_instance|mux|Equal4~0_combout\,
	combout => \proc_instance|mux|Selector1~4_combout\);

-- Location: FF_X107_Y14_N23
\proc_instance|reg_2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector1~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(14));

-- Location: FF_X106_Y14_N7
\proc_instance|reg_6|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector1~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(14));

-- Location: LCCOMB_X113_Y14_N2
\proc_instance|reg_A|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|reg_A|Q[14]~feeder_combout\);

-- Location: FF_X113_Y14_N3
\proc_instance|reg_A|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(14));

-- Location: LCCOMB_X108_Y11_N28
\proc_instance|ALU_component|Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~28_combout\ = (\proc_instance|mux|Selector1~6_combout\ & (!\proc_instance|ALU_component|Add1~27\ & VCC)) # (!\proc_instance|mux|Selector1~6_combout\ & (\proc_instance|ALU_component|Add1~27\ $ (GND)))
-- \proc_instance|ALU_component|Add1~29\ = CARRY((!\proc_instance|mux|Selector1~6_combout\ & !\proc_instance|ALU_component|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector1~6_combout\,
	datad => VCC,
	cin => \proc_instance|ALU_component|Add1~27\,
	combout => \proc_instance|ALU_component|Add1~28_combout\,
	cout => \proc_instance|ALU_component|Add1~29\);

-- Location: LCCOMB_X109_Y11_N12
\proc_instance|ALU_component|operand[14]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(14) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~28_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|ALU_component|operand\(14),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~28_combout\,
	combout => \proc_instance|ALU_component|operand\(14));

-- Location: LCCOMB_X108_Y14_N16
\proc_instance|ALU_component|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~14_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(14))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datac => \proc_instance|ALU_component|operand\(14),
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|ALU_component|Add0~14_combout\);

-- Location: LCCOMB_X109_Y12_N28
\proc_instance|reg_G|Q[14]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[14]~44_combout\ = ((\proc_instance|reg_A|Q\(14) $ (\proc_instance|ALU_component|Add0~14_combout\ $ (!\proc_instance|reg_G|Q[13]~43\)))) # (GND)
-- \proc_instance|reg_G|Q[14]~45\ = CARRY((\proc_instance|reg_A|Q\(14) & ((\proc_instance|ALU_component|Add0~14_combout\) # (!\proc_instance|reg_G|Q[13]~43\))) # (!\proc_instance|reg_A|Q\(14) & (\proc_instance|ALU_component|Add0~14_combout\ & 
-- !\proc_instance|reg_G|Q[13]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_A|Q\(14),
	datab => \proc_instance|ALU_component|Add0~14_combout\,
	datad => VCC,
	cin => \proc_instance|reg_G|Q[13]~43\,
	combout => \proc_instance|reg_G|Q[14]~44_combout\,
	cout => \proc_instance|reg_G|Q[14]~45\);

-- Location: FF_X109_Y12_N29
\proc_instance|reg_G|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[14]~44_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(14));

-- Location: LCCOMB_X106_Y12_N28
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X106_Y12_N29
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	asdata => \proc_instance|mux|Selector1~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X106_Y14_N24
\proc_instance|mux|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~2_combout\ = (\proc_instance|reg_G|Q\(14) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(14) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(14),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector1~2_combout\);

-- Location: LCCOMB_X106_Y14_N6
\proc_instance|mux|Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~3_combout\ = (\proc_instance|mux|Selector1~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(14),
	datad => \proc_instance|mux|Selector1~2_combout\,
	combout => \proc_instance|mux|Selector1~3_combout\);

-- Location: LCCOMB_X107_Y14_N22
\proc_instance|mux|Selector1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~5_combout\ = (\proc_instance|mux|Selector1~4_combout\) # ((\proc_instance|mux|Selector1~3_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector1~4_combout\,
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(14),
	datad => \proc_instance|mux|Selector1~3_combout\,
	combout => \proc_instance|mux|Selector1~5_combout\);

-- Location: LCCOMB_X108_Y14_N2
\proc_instance|mux|Selector1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector1~6_combout\ = (\proc_instance|mux|Selector1~1_combout\) # ((\proc_instance|mux|Selector1~0_combout\) # (\proc_instance|mux|Selector1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector1~1_combout\,
	datac => \proc_instance|mux|Selector1~0_combout\,
	datad => \proc_instance|mux|Selector1~5_combout\,
	combout => \proc_instance|mux|Selector1~6_combout\);

-- Location: FF_X108_Y14_N3
\proc_instance|mem_dada|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector1~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(14));

-- Location: LCCOMB_X111_Y10_N10
\proc_instance|reg_5|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[15]~feeder_combout\ = \proc_instance|mux|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \proc_instance|reg_5|Q[15]~feeder_combout\);

-- Location: FF_X111_Y10_N11
\proc_instance|reg_5|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(15));

-- Location: FF_X108_Y10_N27
\proc_instance|reg_4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector0~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(15));

-- Location: LCCOMB_X108_Y10_N26
\proc_instance|mux|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~0_combout\ = (\proc_instance|reg_5|Q\(15) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|reg_4|Q\(15) & \proc_instance|mux|Equal5~1_combout\)))) # (!\proc_instance|reg_5|Q\(15) & (((\proc_instance|reg_4|Q\(15) & 
-- \proc_instance|mux|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(15),
	datab => \proc_instance|mux|Equal6~0_combout\,
	datac => \proc_instance|reg_4|Q\(15),
	datad => \proc_instance|mux|Equal5~1_combout\,
	combout => \proc_instance|mux|Selector0~0_combout\);

-- Location: LCCOMB_X112_Y10_N14
\proc_instance|reg_0|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[15]~feeder_combout\ = \proc_instance|mux|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \proc_instance|reg_0|Q[15]~feeder_combout\);

-- Location: FF_X112_Y10_N15
\proc_instance|reg_0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(15));

-- Location: FF_X108_Y15_N27
\proc_instance|reg_1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector0~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(15));

-- Location: LCCOMB_X108_Y15_N26
\proc_instance|mux|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~1_combout\ = (\proc_instance|reg_0|Q\(15) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|mux|Equal2~0_combout\ & \proc_instance|reg_1|Q\(15))))) # (!\proc_instance|reg_0|Q\(15) & 
-- (\proc_instance|mux|Equal2~0_combout\ & (\proc_instance|reg_1|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(15),
	datab => \proc_instance|mux|Equal2~0_combout\,
	datac => \proc_instance|reg_1|Q\(15),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector0~1_combout\);

-- Location: LCCOMB_X109_Y14_N12
\proc_instance|reg_3|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_3|Q[15]~feeder_combout\ = \proc_instance|mux|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \proc_instance|reg_3|Q[15]~feeder_combout\);

-- Location: FF_X109_Y14_N13
\proc_instance|reg_3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_3|Q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(15));

-- Location: LCCOMB_X107_Y14_N8
\proc_instance|mux|Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~4_combout\ = (\proc_instance|reg_3|Q\(15) & ((\proc_instance|mux|Equal4~0_combout\) # ((\proc_instance|mux|Equal0~2_combout\ & \mem_ram|altsyncram_component|auto_generated|q_a\(15))))) # (!\proc_instance|reg_3|Q\(15) & 
-- (\proc_instance|mux|Equal0~2_combout\ & (\mem_ram|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_3|Q\(15),
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datad => \proc_instance|mux|Equal4~0_combout\,
	combout => \proc_instance|mux|Selector0~4_combout\);

-- Location: FF_X107_Y14_N31
\proc_instance|reg_2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector0~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(15));

-- Location: LCCOMB_X106_Y14_N10
\proc_instance|reg_6|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_6|Q[15]~feeder_combout\ = \proc_instance|mux|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \proc_instance|reg_6|Q[15]~feeder_combout\);

-- Location: FF_X106_Y14_N11
\proc_instance|reg_6|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_6|Q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(15));

-- Location: LCCOMB_X113_Y12_N8
\proc_instance|reg_A|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[15]~feeder_combout\ = \proc_instance|mux|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \proc_instance|reg_A|Q[15]~feeder_combout\);

-- Location: FF_X113_Y12_N9
\proc_instance|reg_A|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[15]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(15));

-- Location: LCCOMB_X108_Y11_N30
\proc_instance|ALU_component|Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add1~30_combout\ = \proc_instance|ALU_component|Add1~29\ $ (!\proc_instance|mux|Selector0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector0~6_combout\,
	cin => \proc_instance|ALU_component|Add1~29\,
	combout => \proc_instance|ALU_component|Add1~30_combout\);

-- Location: LCCOMB_X109_Y11_N18
\proc_instance|ALU_component|operand[15]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|operand\(15) = (GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & ((\proc_instance|ALU_component|Add1~30_combout\))) # (!GLOBAL(\proc_instance|alufn[0]~clkctrl_outclk\) & (\proc_instance|ALU_component|operand\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|ALU_component|operand\(15),
	datac => \proc_instance|alufn[0]~clkctrl_outclk\,
	datad => \proc_instance|ALU_component|Add1~30_combout\,
	combout => \proc_instance|ALU_component|operand\(15));

-- Location: LCCOMB_X108_Y12_N12
\proc_instance|ALU_component|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|ALU_component|Add0~13_combout\ = (\proc_instance|alufn\(0) & (\proc_instance|ALU_component|operand\(15))) # (!\proc_instance|alufn\(0) & ((\proc_instance|mux|Selector0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|alufn\(0),
	datab => \proc_instance|ALU_component|operand\(15),
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \proc_instance|ALU_component|Add0~13_combout\);

-- Location: LCCOMB_X109_Y12_N30
\proc_instance|reg_G|Q[15]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_G|Q[15]~46_combout\ = \proc_instance|reg_A|Q\(15) $ (\proc_instance|reg_G|Q[14]~45\ $ (\proc_instance|ALU_component|Add0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|reg_A|Q\(15),
	datad => \proc_instance|ALU_component|Add0~13_combout\,
	cin => \proc_instance|reg_G|Q[14]~45\,
	combout => \proc_instance|reg_G|Q[15]~46_combout\);

-- Location: FF_X109_Y12_N31
\proc_instance|reg_G|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[15]~46_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(15));

-- Location: LCCOMB_X106_Y12_N30
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) $ 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\);

-- Location: FF_X106_Y12_N31
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	asdata => \proc_instance|mux|Selector0~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X107_Y14_N4
\proc_instance|mux|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~2_combout\ = (\proc_instance|reg_G|Q\(15) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(15) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(15),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector0~2_combout\);

-- Location: LCCOMB_X107_Y14_N6
\proc_instance|mux|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~3_combout\ = (\proc_instance|mux|Selector0~2_combout\) # ((\proc_instance|reg_6|Q\(15) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|reg_6|Q\(15),
	datac => \proc_instance|mux|Selector0~2_combout\,
	datad => \proc_instance|mux|Equal7~0_combout\,
	combout => \proc_instance|mux|Selector0~3_combout\);

-- Location: LCCOMB_X107_Y14_N30
\proc_instance|mux|Selector0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~5_combout\ = (\proc_instance|mux|Selector0~4_combout\) # ((\proc_instance|mux|Selector0~3_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal3~0_combout\,
	datab => \proc_instance|mux|Selector0~4_combout\,
	datac => \proc_instance|reg_2|Q\(15),
	datad => \proc_instance|mux|Selector0~3_combout\,
	combout => \proc_instance|mux|Selector0~5_combout\);

-- Location: LCCOMB_X108_Y12_N6
\proc_instance|mux|Selector0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector0~6_combout\ = (\proc_instance|mux|Selector0~0_combout\) # ((\proc_instance|mux|Selector0~1_combout\) # (\proc_instance|mux|Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector0~0_combout\,
	datac => \proc_instance|mux|Selector0~1_combout\,
	datad => \proc_instance|mux|Selector0~5_combout\,
	combout => \proc_instance|mux|Selector0~6_combout\);

-- Location: FF_X108_Y12_N7
\proc_instance|mem_dada|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector0~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(15));

-- Location: M9K_X110_Y13_N0
\mem_ram|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00D900364001A0024400100000F004800000F040000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "scroll_program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:mem_ram|altsyncram:altsyncram_component|altsyncram_2ss3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemAddrEn~combout\,
	portare => VCC,
	clk0 => \KEY[1]~input_o\,
	portadatain => \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem_ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X113_Y13_N9
\proc_instance|IR|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(8));

-- Location: LCCOMB_X113_Y13_N8
\proc_instance|Selector80~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector80~0_combout\ = (\proc_instance|IR|Q\(6) & (\proc_instance|IR|Q\(7) & (!\proc_instance|IR|Q\(8) & \proc_instance|Selector76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(6),
	datab => \proc_instance|IR|Q\(7),
	datac => \proc_instance|IR|Q\(8),
	datad => \proc_instance|Selector76~0_combout\,
	combout => \proc_instance|Selector80~0_combout\);

-- Location: LCCOMB_X113_Y13_N2
\proc_instance|Selector80~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector80~1_combout\ = (\proc_instance|Selector80~0_combout\) # ((!\proc_instance|IR|Q\(11) & (\proc_instance|IR|Q\(10) & \proc_instance|Selector70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(11),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|Selector70~0_combout\,
	datad => \proc_instance|Selector80~0_combout\,
	combout => \proc_instance|Selector80~1_combout\);

-- Location: LCCOMB_X107_Y13_N24
\proc_instance|mux_selection[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(5) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector80~1_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux_selection\(5),
	datac => \proc_instance|Selector80~1_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(5));

-- Location: LCCOMB_X107_Y13_N0
\proc_instance|mux|Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal8~0_combout\ = (!\proc_instance|mux_selection\(4) & (\proc_instance|mux_selection\(1) & (!\proc_instance|mux_selection\(3) & !\proc_instance|mux_selection\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(4),
	datab => \proc_instance|mux_selection\(1),
	datac => \proc_instance|mux_selection\(3),
	datad => \proc_instance|mux_selection\(2),
	combout => \proc_instance|mux|Equal8~0_combout\);

-- Location: LCCOMB_X107_Y13_N30
\proc_instance|mux|Equal8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal8~1_combout\ = (!\proc_instance|mux_selection\(9) & (!\proc_instance|mux_selection\(5) & (\proc_instance|mux|Equal0~0_combout\ & \proc_instance|mux|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(9),
	datab => \proc_instance|mux_selection\(5),
	datac => \proc_instance|mux|Equal0~0_combout\,
	datad => \proc_instance|mux|Equal8~0_combout\,
	combout => \proc_instance|mux|Equal8~1_combout\);

-- Location: LCCOMB_X106_Y13_N20
\proc_instance|mux|Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~2_combout\ = (\proc_instance|reg_G|Q\(7) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(7) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(7),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector8~2_combout\);

-- Location: LCCOMB_X106_Y13_N2
\proc_instance|mux|Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~3_combout\ = (\proc_instance|mux|Selector8~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(7),
	datad => \proc_instance|mux|Selector8~2_combout\,
	combout => \proc_instance|mux|Selector8~3_combout\);

-- Location: LCCOMB_X109_Y10_N18
\proc_instance|reg_0|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[7]~feeder_combout\ = \proc_instance|mux|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector8~6_combout\,
	combout => \proc_instance|reg_0|Q[7]~feeder_combout\);

-- Location: FF_X109_Y10_N19
\proc_instance|reg_0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(7));

-- Location: LCCOMB_X111_Y14_N4
\proc_instance|reg_1|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[7]~feeder_combout\ = \proc_instance|mux|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector8~6_combout\,
	combout => \proc_instance|reg_1|Q[7]~feeder_combout\);

-- Location: FF_X111_Y14_N5
\proc_instance|reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(7));

-- Location: LCCOMB_X108_Y14_N20
\proc_instance|mux|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~1_combout\ = (\proc_instance|reg_0|Q\(7) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|reg_1|Q\(7) & \proc_instance|mux|Equal2~0_combout\)))) # (!\proc_instance|reg_0|Q\(7) & (\proc_instance|reg_1|Q\(7) & 
-- (\proc_instance|mux|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(7),
	datab => \proc_instance|reg_1|Q\(7),
	datac => \proc_instance|mux|Equal2~0_combout\,
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector8~1_combout\);

-- Location: FF_X108_Y13_N3
\proc_instance|reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector8~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(7));

-- Location: FF_X109_Y13_N5
\proc_instance|reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector8~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(7));

-- Location: LCCOMB_X109_Y13_N4
\proc_instance|mux|Selector8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(7) & ((\proc_instance|mux|Equal0~2_combout\) # ((\proc_instance|reg_3|Q\(7) & \proc_instance|mux|Equal4~0_combout\)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(7) & (((\proc_instance|reg_3|Q\(7) & \proc_instance|mux|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \proc_instance|reg_3|Q\(7),
	datad => \proc_instance|mux|Equal4~0_combout\,
	combout => \proc_instance|mux|Selector8~4_combout\);

-- Location: LCCOMB_X108_Y13_N2
\proc_instance|mux|Selector8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~5_combout\ = (\proc_instance|mux|Selector8~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(7),
	datad => \proc_instance|mux|Selector8~4_combout\,
	combout => \proc_instance|mux|Selector8~5_combout\);

-- Location: LCCOMB_X116_Y14_N4
\proc_instance|reg_5|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[7]~feeder_combout\ = \proc_instance|mux|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector8~6_combout\,
	combout => \proc_instance|reg_5|Q[7]~feeder_combout\);

-- Location: FF_X116_Y14_N5
\proc_instance|reg_5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(7));

-- Location: FF_X108_Y10_N15
\proc_instance|reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector8~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(7));

-- Location: LCCOMB_X108_Y10_N14
\proc_instance|mux|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~0_combout\ = (\proc_instance|reg_5|Q\(7) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(7))))) # (!\proc_instance|reg_5|Q\(7) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(7),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(7),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector8~0_combout\);

-- Location: LCCOMB_X108_Y14_N14
\proc_instance|mux|Selector8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector8~6_combout\ = (\proc_instance|mux|Selector8~3_combout\) # ((\proc_instance|mux|Selector8~1_combout\) # ((\proc_instance|mux|Selector8~5_combout\) # (\proc_instance|mux|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector8~3_combout\,
	datab => \proc_instance|mux|Selector8~1_combout\,
	datac => \proc_instance|mux|Selector8~5_combout\,
	datad => \proc_instance|mux|Selector8~0_combout\,
	combout => \proc_instance|mux|Selector8~6_combout\);

-- Location: FF_X108_Y14_N15
\proc_instance|mem_dada|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector8~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(7));

-- Location: FF_X112_Y13_N15
\proc_instance|IR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(7));

-- Location: LCCOMB_X113_Y13_N24
\proc_instance|Selector78~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector78~0_combout\ = (!\proc_instance|IR|Q\(6) & (!\proc_instance|IR|Q\(7) & (\proc_instance|Selector76~0_combout\ & \proc_instance|IR|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(6),
	datab => \proc_instance|IR|Q\(7),
	datac => \proc_instance|Selector76~0_combout\,
	datad => \proc_instance|IR|Q\(8),
	combout => \proc_instance|Selector78~0_combout\);

-- Location: LCCOMB_X111_Y13_N14
\proc_instance|Selector56~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector56~2_combout\ = (!\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(9) & \proc_instance|IR|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(10),
	datab => \proc_instance|IR|Q\(9),
	datad => \proc_instance|IR|Q\(11),
	combout => \proc_instance|Selector56~2_combout\);

-- Location: LCCOMB_X107_Y13_N8
\proc_instance|Selector78~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector78~1_combout\ = (\proc_instance|Selector78~0_combout\) # ((\proc_instance|Selector56~2_combout\ & ((\proc_instance|Selector20~0_combout\) # (\proc_instance|Selector46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector20~0_combout\,
	datab => \proc_instance|Selector46~2_combout\,
	datac => \proc_instance|Selector78~0_combout\,
	datad => \proc_instance|Selector56~2_combout\,
	combout => \proc_instance|Selector78~1_combout\);

-- Location: LCCOMB_X107_Y13_N22
\proc_instance|mux_selection[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(4) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector78~1_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(4),
	datab => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector78~1_combout\,
	combout => \proc_instance|mux_selection\(4));

-- Location: LCCOMB_X107_Y13_N16
\proc_instance|mux|Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal7~0_combout\ = (!\proc_instance|mux_selection\(4) & (\proc_instance|mux_selection\(2) & (!\proc_instance|mux_selection\(3) & \proc_instance|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(4),
	datab => \proc_instance|mux_selection\(2),
	datac => \proc_instance|mux_selection\(3),
	datad => \proc_instance|mux|Equal5~0_combout\,
	combout => \proc_instance|mux|Equal7~0_combout\);

-- Location: FF_X106_Y13_N11
\proc_instance|reg_6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(6));

-- Location: FF_X109_Y12_N13
\proc_instance|reg_G|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[6]~28_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(6));

-- Location: LCCOMB_X106_Y13_N0
\proc_instance|mux|Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(6) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\proc_instance|reg_G|Q\(6) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \proc_instance|reg_G|Q\(6),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector9~2_combout\);

-- Location: LCCOMB_X106_Y13_N10
\proc_instance|mux|Selector9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~3_combout\ = (\proc_instance|mux|Selector9~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(6),
	datad => \proc_instance|mux|Selector9~2_combout\,
	combout => \proc_instance|mux|Selector9~3_combout\);

-- Location: LCCOMB_X112_Y10_N0
\proc_instance|reg_0|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[6]~feeder_combout\ = \proc_instance|mux|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector9~6_combout\,
	combout => \proc_instance|reg_0|Q[6]~feeder_combout\);

-- Location: FF_X112_Y10_N1
\proc_instance|reg_0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(6));

-- Location: FF_X108_Y15_N21
\proc_instance|reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(6));

-- Location: LCCOMB_X108_Y15_N20
\proc_instance|mux|Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~1_combout\ = (\proc_instance|reg_0|Q\(6) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|mux|Equal2~0_combout\ & \proc_instance|reg_1|Q\(6))))) # (!\proc_instance|reg_0|Q\(6) & 
-- (\proc_instance|mux|Equal2~0_combout\ & (\proc_instance|reg_1|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(6),
	datab => \proc_instance|mux|Equal2~0_combout\,
	datac => \proc_instance|reg_1|Q\(6),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector9~1_combout\);

-- Location: LCCOMB_X107_Y10_N22
\proc_instance|reg_5|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[6]~feeder_combout\ = \proc_instance|mux|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \proc_instance|reg_5|Q[6]~feeder_combout\);

-- Location: FF_X107_Y10_N23
\proc_instance|reg_5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(6));

-- Location: FF_X108_Y10_N5
\proc_instance|reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(6));

-- Location: LCCOMB_X108_Y10_N4
\proc_instance|mux|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~0_combout\ = (\proc_instance|reg_5|Q\(6) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|reg_4|Q\(6) & \proc_instance|mux|Equal5~1_combout\)))) # (!\proc_instance|reg_5|Q\(6) & (((\proc_instance|reg_4|Q\(6) & 
-- \proc_instance|mux|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(6),
	datab => \proc_instance|mux|Equal6~0_combout\,
	datac => \proc_instance|reg_4|Q\(6),
	datad => \proc_instance|mux|Equal5~1_combout\,
	combout => \proc_instance|mux|Selector9~0_combout\);

-- Location: FF_X108_Y13_N1
\proc_instance|reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(6));

-- Location: FF_X109_Y13_N19
\proc_instance|reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector9~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(6));

-- Location: LCCOMB_X109_Y13_N18
\proc_instance|mux|Selector9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(6)) # ((\mem_ram|altsyncram_component|auto_generated|q_a\(6) & \proc_instance|mux|Equal0~2_combout\)))) # (!\proc_instance|mux|Equal4~0_combout\ & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(6) & ((\proc_instance|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datac => \proc_instance|reg_3|Q\(6),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector9~4_combout\);

-- Location: LCCOMB_X108_Y13_N0
\proc_instance|mux|Selector9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~5_combout\ = (\proc_instance|mux|Selector9~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(6),
	datad => \proc_instance|mux|Selector9~4_combout\,
	combout => \proc_instance|mux|Selector9~5_combout\);

-- Location: LCCOMB_X108_Y14_N24
\proc_instance|mux|Selector9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector9~6_combout\ = (\proc_instance|mux|Selector9~3_combout\) # ((\proc_instance|mux|Selector9~1_combout\) # ((\proc_instance|mux|Selector9~0_combout\) # (\proc_instance|mux|Selector9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector9~3_combout\,
	datab => \proc_instance|mux|Selector9~1_combout\,
	datac => \proc_instance|mux|Selector9~0_combout\,
	datad => \proc_instance|mux|Selector9~5_combout\,
	combout => \proc_instance|mux|Selector9~6_combout\);

-- Location: LCCOMB_X107_Y12_N18
\proc_instance|mem_addrsd|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[6]~feeder_combout\ = \proc_instance|mux|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector9~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[6]~feeder_combout\);

-- Location: FF_X107_Y12_N19
\proc_instance|mem_addrsd|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(6));

-- Location: FF_X111_Y13_N15
\proc_instance|IR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(6));

-- Location: LCCOMB_X113_Y13_N20
\proc_instance|Selector76~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector76~1_combout\ = (\proc_instance|IR|Q\(6) & (!\proc_instance|IR|Q\(7) & (\proc_instance|Selector76~0_combout\ & \proc_instance|IR|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(6),
	datab => \proc_instance|IR|Q\(7),
	datac => \proc_instance|Selector76~0_combout\,
	datad => \proc_instance|IR|Q\(8),
	combout => \proc_instance|Selector76~1_combout\);

-- Location: LCCOMB_X112_Y13_N8
\proc_instance|Selector76~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector76~2_combout\ = (\proc_instance|Selector76~1_combout\) # ((\proc_instance|Selector70~0_combout\ & (!\proc_instance|IR|Q\(10) & \proc_instance|IR|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector70~0_combout\,
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|Selector76~1_combout\,
	datad => \proc_instance|IR|Q\(11),
	combout => \proc_instance|Selector76~2_combout\);

-- Location: LCCOMB_X107_Y13_N4
\proc_instance|mux_selection[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(3) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector76~2_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux_selection\(3),
	datac => \proc_instance|Selector76~2_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(3));

-- Location: LCCOMB_X107_Y13_N26
\proc_instance|mux|Equal5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal5~1_combout\ = (!\proc_instance|mux_selection\(3) & (!\proc_instance|mux_selection\(2) & (\proc_instance|mux_selection\(4) & \proc_instance|mux|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(3),
	datab => \proc_instance|mux_selection\(2),
	datac => \proc_instance|mux_selection\(4),
	datad => \proc_instance|mux|Equal5~0_combout\,
	combout => \proc_instance|mux|Equal5~1_combout\);

-- Location: FF_X108_Y10_N19
\proc_instance|reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector10~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(5));

-- Location: LCCOMB_X108_Y10_N18
\proc_instance|mux|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~0_combout\ = (\proc_instance|reg_5|Q\(5) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(5))))) # (!\proc_instance|reg_5|Q\(5) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(5),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(5),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector10~0_combout\);

-- Location: LCCOMB_X111_Y14_N6
\proc_instance|reg_1|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[5]~feeder_combout\ = \proc_instance|mux|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector10~6_combout\,
	combout => \proc_instance|reg_1|Q[5]~feeder_combout\);

-- Location: FF_X111_Y14_N7
\proc_instance|reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(5));

-- Location: LCCOMB_X109_Y10_N12
\proc_instance|reg_0|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[5]~feeder_combout\ = \proc_instance|mux|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector10~6_combout\,
	combout => \proc_instance|reg_0|Q[5]~feeder_combout\);

-- Location: FF_X109_Y10_N13
\proc_instance|reg_0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(5));

-- Location: LCCOMB_X108_Y14_N18
\proc_instance|mux|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~1_combout\ = (\proc_instance|reg_1|Q\(5) & ((\proc_instance|mux|Equal2~0_combout\) # ((\proc_instance|reg_0|Q\(5) & \proc_instance|mux|Equal1~1_combout\)))) # (!\proc_instance|reg_1|Q\(5) & (\proc_instance|reg_0|Q\(5) & 
-- ((\proc_instance|mux|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_1|Q\(5),
	datab => \proc_instance|reg_0|Q\(5),
	datac => \proc_instance|mux|Equal2~0_combout\,
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector10~1_combout\);

-- Location: FF_X106_Y14_N3
\proc_instance|reg_6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector10~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(5));

-- Location: LCCOMB_X106_Y14_N0
\proc_instance|mux|Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(5) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\proc_instance|reg_G|Q\(5) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \proc_instance|reg_G|Q\(5),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector10~2_combout\);

-- Location: LCCOMB_X106_Y14_N2
\proc_instance|mux|Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~3_combout\ = (\proc_instance|mux|Selector10~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(5),
	datad => \proc_instance|mux|Selector10~2_combout\,
	combout => \proc_instance|mux|Selector10~3_combout\);

-- Location: FF_X108_Y13_N7
\proc_instance|reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector10~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(5));

-- Location: FF_X109_Y14_N29
\proc_instance|reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector10~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(5));

-- Location: LCCOMB_X109_Y14_N28
\proc_instance|mux|Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(5)) # ((\mem_ram|altsyncram_component|auto_generated|q_a\(5) & \proc_instance|mux|Equal0~2_combout\)))) # (!\proc_instance|mux|Equal4~0_combout\ & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(5) & ((\proc_instance|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datac => \proc_instance|reg_3|Q\(5),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector10~4_combout\);

-- Location: LCCOMB_X108_Y13_N6
\proc_instance|mux|Selector10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~5_combout\ = (\proc_instance|mux|Selector10~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(5),
	datad => \proc_instance|mux|Selector10~4_combout\,
	combout => \proc_instance|mux|Selector10~5_combout\);

-- Location: LCCOMB_X108_Y14_N8
\proc_instance|mux|Selector10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector10~6_combout\ = (\proc_instance|mux|Selector10~0_combout\) # ((\proc_instance|mux|Selector10~1_combout\) # ((\proc_instance|mux|Selector10~3_combout\) # (\proc_instance|mux|Selector10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector10~0_combout\,
	datab => \proc_instance|mux|Selector10~1_combout\,
	datac => \proc_instance|mux|Selector10~3_combout\,
	datad => \proc_instance|mux|Selector10~5_combout\,
	combout => \proc_instance|mux|Selector10~6_combout\);

-- Location: LCCOMB_X113_Y14_N28
\proc_instance|reg_A|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_A|Q[5]~feeder_combout\ = \proc_instance|mux|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector10~6_combout\,
	combout => \proc_instance|reg_A|Q[5]~feeder_combout\);

-- Location: FF_X113_Y14_N29
\proc_instance|reg_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_A|Q[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|A_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_A|Q\(5));

-- Location: FF_X109_Y12_N11
\proc_instance|reg_G|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[5]~26_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(5));

-- Location: LCCOMB_X113_Y12_N26
\proc_instance|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Equal0~1_combout\ = (!\proc_instance|reg_G|Q\(5) & (!\proc_instance|reg_G|Q\(7) & (!\proc_instance|reg_G|Q\(4) & !\proc_instance|reg_G|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(5),
	datab => \proc_instance|reg_G|Q\(7),
	datac => \proc_instance|reg_G|Q\(4),
	datad => \proc_instance|reg_G|Q\(6),
	combout => \proc_instance|Equal0~1_combout\);

-- Location: FF_X109_Y12_N7
\proc_instance|reg_G|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[3]~22_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(3));

-- Location: FF_X109_Y12_N3
\proc_instance|reg_G|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[1]~18_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(1));

-- Location: FF_X109_Y12_N5
\proc_instance|reg_G|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[2]~20_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(2));

-- Location: FF_X109_Y12_N1
\proc_instance|reg_G|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_G|Q[0]~16_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|G_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_G|Q\(0));

-- Location: LCCOMB_X113_Y12_N14
\proc_instance|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Equal0~0_combout\ = (!\proc_instance|reg_G|Q\(3) & (!\proc_instance|reg_G|Q\(1) & (!\proc_instance|reg_G|Q\(2) & !\proc_instance|reg_G|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(3),
	datab => \proc_instance|reg_G|Q\(1),
	datac => \proc_instance|reg_G|Q\(2),
	datad => \proc_instance|reg_G|Q\(0),
	combout => \proc_instance|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y12_N30
\proc_instance|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Equal0~2_combout\ = (!\proc_instance|reg_G|Q\(10) & (!\proc_instance|reg_G|Q\(11) & (!\proc_instance|reg_G|Q\(8) & !\proc_instance|reg_G|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(10),
	datab => \proc_instance|reg_G|Q\(11),
	datac => \proc_instance|reg_G|Q\(8),
	datad => \proc_instance|reg_G|Q\(9),
	combout => \proc_instance|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y12_N12
\proc_instance|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Equal0~3_combout\ = (!\proc_instance|reg_G|Q\(14) & (!\proc_instance|reg_G|Q\(12) & (!\proc_instance|reg_G|Q\(15) & !\proc_instance|reg_G|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(14),
	datab => \proc_instance|reg_G|Q\(12),
	datac => \proc_instance|reg_G|Q\(15),
	datad => \proc_instance|reg_G|Q\(13),
	combout => \proc_instance|Equal0~3_combout\);

-- Location: LCCOMB_X113_Y12_N24
\proc_instance|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Equal0~4_combout\ = (\proc_instance|Equal0~1_combout\ & (\proc_instance|Equal0~0_combout\ & (\proc_instance|Equal0~2_combout\ & \proc_instance|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Equal0~1_combout\,
	datab => \proc_instance|Equal0~0_combout\,
	datac => \proc_instance|Equal0~2_combout\,
	datad => \proc_instance|Equal0~3_combout\,
	combout => \proc_instance|Equal0~4_combout\);

-- Location: LCCOMB_X113_Y12_N10
\proc_instance|Selector56~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector56~4_combout\ = (\proc_instance|TstepQ_Curr.T1~q\ & ((\proc_instance|WideNor0~combout\) # ((\proc_instance|Selector56~3_combout\ & !\proc_instance|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|WideNor0~combout\,
	datab => \proc_instance|TstepQ_Curr.T1~q\,
	datac => \proc_instance|Selector56~3_combout\,
	datad => \proc_instance|Equal0~4_combout\,
	combout => \proc_instance|Selector56~4_combout\);

-- Location: LCCOMB_X113_Y12_N18
\proc_instance|Selector49~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector49~3_combout\ = (\proc_instance|TstepQ_Curr.T2~q\ & (((\proc_instance|Mux6~0_combout\)))) # (!\proc_instance|TstepQ_Curr.T2~q\ & (\proc_instance|WideOr12~0_combout\ $ (((\proc_instance|Selector56~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|WideOr12~0_combout\,
	datab => \proc_instance|Mux6~0_combout\,
	datac => \proc_instance|TstepQ_Curr.T2~q\,
	datad => \proc_instance|Selector56~4_combout\,
	combout => \proc_instance|Selector49~3_combout\);

-- Location: LCCOMB_X112_Y12_N16
\proc_instance|Selector49~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector49~4_combout\ = (\proc_instance|IR|Q\(9) & (\proc_instance|IR|Q\(10) & (\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector49~4_combout\);

-- Location: LCCOMB_X112_Y12_N8
\proc_instance|R_enable[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(7) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector49~4_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|R_enable\(7),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector49~4_combout\,
	combout => \proc_instance|R_enable\(7));

-- Location: FF_X106_Y12_N1
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X106_Y12_N2
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X106_Y12_N3
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X106_Y12_N4
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X106_Y12_N5
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X106_Y12_N6
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X106_Y12_N7
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X106_Y12_N9
\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \proc_instance|R_enable\(7),
	ena => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X106_Y13_N8
\proc_instance|mux|Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~2_combout\ = (\proc_instance|reg_G|Q\(4) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(4) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(4),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector11~2_combout\);

-- Location: FF_X106_Y13_N15
\proc_instance|reg_6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(4));

-- Location: LCCOMB_X106_Y13_N14
\proc_instance|mux|Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~3_combout\ = (\proc_instance|mux|Selector11~2_combout\) # ((\proc_instance|reg_6|Q\(4) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector11~2_combout\,
	datac => \proc_instance|reg_6|Q\(4),
	datad => \proc_instance|mux|Equal7~0_combout\,
	combout => \proc_instance|mux|Selector11~3_combout\);

-- Location: LCCOMB_X106_Y11_N2
\proc_instance|reg_0|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[4]~feeder_combout\ = \proc_instance|mux|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector11~6_combout\,
	combout => \proc_instance|reg_0|Q[4]~feeder_combout\);

-- Location: FF_X106_Y11_N3
\proc_instance|reg_0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(4));

-- Location: FF_X107_Y15_N5
\proc_instance|reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(4));

-- Location: LCCOMB_X107_Y15_N4
\proc_instance|mux|Selector11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~1_combout\ = (\proc_instance|reg_0|Q\(4) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|mux|Equal2~0_combout\ & \proc_instance|reg_1|Q\(4))))) # (!\proc_instance|reg_0|Q\(4) & 
-- (\proc_instance|mux|Equal2~0_combout\ & (\proc_instance|reg_1|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(4),
	datab => \proc_instance|mux|Equal2~0_combout\,
	datac => \proc_instance|reg_1|Q\(4),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector11~1_combout\);

-- Location: FF_X108_Y13_N13
\proc_instance|reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(4));

-- Location: FF_X109_Y13_N23
\proc_instance|reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(4));

-- Location: LCCOMB_X109_Y13_N22
\proc_instance|mux|Selector11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(4) & ((\proc_instance|mux|Equal0~2_combout\) # ((\proc_instance|reg_3|Q\(4) & \proc_instance|mux|Equal4~0_combout\)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (((\proc_instance|reg_3|Q\(4) & \proc_instance|mux|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \proc_instance|reg_3|Q\(4),
	datad => \proc_instance|mux|Equal4~0_combout\,
	combout => \proc_instance|mux|Selector11~4_combout\);

-- Location: LCCOMB_X108_Y13_N12
\proc_instance|mux|Selector11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~5_combout\ = (\proc_instance|mux|Selector11~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(4),
	datad => \proc_instance|mux|Selector11~4_combout\,
	combout => \proc_instance|mux|Selector11~5_combout\);

-- Location: LCCOMB_X106_Y10_N12
\proc_instance|reg_4|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_4|Q[4]~feeder_combout\ = \proc_instance|mux|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector11~6_combout\,
	combout => \proc_instance|reg_4|Q[4]~feeder_combout\);

-- Location: FF_X106_Y10_N13
\proc_instance|reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_4|Q[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(4));

-- Location: FF_X107_Y10_N21
\proc_instance|reg_5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector11~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(4));

-- Location: LCCOMB_X107_Y10_N20
\proc_instance|mux|Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~0_combout\ = (\proc_instance|reg_4|Q\(4) & ((\proc_instance|mux|Equal5~1_combout\) # ((\proc_instance|reg_5|Q\(4) & \proc_instance|mux|Equal6~0_combout\)))) # (!\proc_instance|reg_4|Q\(4) & (((\proc_instance|reg_5|Q\(4) & 
-- \proc_instance|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_4|Q\(4),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_5|Q\(4),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector11~0_combout\);

-- Location: LCCOMB_X107_Y11_N24
\proc_instance|mux|Selector11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector11~6_combout\ = (\proc_instance|mux|Selector11~3_combout\) # ((\proc_instance|mux|Selector11~1_combout\) # ((\proc_instance|mux|Selector11~5_combout\) # (\proc_instance|mux|Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector11~3_combout\,
	datab => \proc_instance|mux|Selector11~1_combout\,
	datac => \proc_instance|mux|Selector11~5_combout\,
	datad => \proc_instance|mux|Selector11~0_combout\,
	combout => \proc_instance|mux|Selector11~6_combout\);

-- Location: LCCOMB_X107_Y12_N22
\proc_instance|mem_addrsd|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[4]~feeder_combout\ = \proc_instance|mux|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector11~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[4]~feeder_combout\);

-- Location: FF_X107_Y12_N23
\proc_instance|mem_addrsd|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[4]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(4));

-- Location: FF_X112_Y13_N3
\proc_instance|IR|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(11));

-- Location: LCCOMB_X112_Y12_N20
\proc_instance|Selector54~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector54~0_combout\ = (\proc_instance|IR|Q\(9) & (!\proc_instance|IR|Q\(10) & (\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector54~0_combout\);

-- Location: LCCOMB_X112_Y12_N30
\proc_instance|R_enable[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(5) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector54~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|R_enable\(5),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector54~0_combout\,
	combout => \proc_instance|R_enable\(5));

-- Location: FF_X107_Y10_N15
\proc_instance|reg_5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(3));

-- Location: FF_X108_Y10_N21
\proc_instance|reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(3));

-- Location: LCCOMB_X108_Y10_N20
\proc_instance|mux|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~0_combout\ = (\proc_instance|reg_5|Q\(3) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(3))))) # (!\proc_instance|reg_5|Q\(3) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(3),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(3),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector12~0_combout\);

-- Location: LCCOMB_X111_Y12_N6
\proc_instance|reg_1|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[3]~feeder_combout\ = \proc_instance|mux|Selector12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector12~6_combout\,
	combout => \proc_instance|reg_1|Q[3]~feeder_combout\);

-- Location: FF_X111_Y12_N7
\proc_instance|reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(3));

-- Location: FF_X109_Y10_N5
\proc_instance|reg_0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(3));

-- Location: LCCOMB_X109_Y10_N4
\proc_instance|mux|Selector12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~1_combout\ = (\proc_instance|reg_1|Q\(3) & ((\proc_instance|mux|Equal2~0_combout\) # ((\proc_instance|mux|Equal1~1_combout\ & \proc_instance|reg_0|Q\(3))))) # (!\proc_instance|reg_1|Q\(3) & 
-- (\proc_instance|mux|Equal1~1_combout\ & (\proc_instance|reg_0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_1|Q\(3),
	datab => \proc_instance|mux|Equal1~1_combout\,
	datac => \proc_instance|reg_0|Q\(3),
	datad => \proc_instance|mux|Equal2~0_combout\,
	combout => \proc_instance|mux|Selector12~1_combout\);

-- Location: FF_X108_Y13_N29
\proc_instance|reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(3));

-- Location: FF_X109_Y13_N13
\proc_instance|reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(3));

-- Location: LCCOMB_X109_Y13_N12
\proc_instance|mux|Selector12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(3)) # ((\mem_ram|altsyncram_component|auto_generated|q_a\(3) & \proc_instance|mux|Equal0~2_combout\)))) # (!\proc_instance|mux|Equal4~0_combout\ & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(3) & ((\proc_instance|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	datac => \proc_instance|reg_3|Q\(3),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector12~4_combout\);

-- Location: LCCOMB_X108_Y13_N28
\proc_instance|mux|Selector12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~5_combout\ = (\proc_instance|mux|Selector12~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(3),
	datad => \proc_instance|mux|Selector12~4_combout\,
	combout => \proc_instance|mux|Selector12~5_combout\);

-- Location: FF_X106_Y13_N23
\proc_instance|reg_6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector12~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(3));

-- Location: LCCOMB_X106_Y13_N12
\proc_instance|mux|Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(3) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\proc_instance|reg_G|Q\(3) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \proc_instance|reg_G|Q\(3),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector12~2_combout\);

-- Location: LCCOMB_X106_Y13_N22
\proc_instance|mux|Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~3_combout\ = (\proc_instance|mux|Selector12~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(3),
	datad => \proc_instance|mux|Selector12~2_combout\,
	combout => \proc_instance|mux|Selector12~3_combout\);

-- Location: LCCOMB_X108_Y12_N2
\proc_instance|mux|Selector12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector12~6_combout\ = (\proc_instance|mux|Selector12~0_combout\) # ((\proc_instance|mux|Selector12~1_combout\) # ((\proc_instance|mux|Selector12~5_combout\) # (\proc_instance|mux|Selector12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~0_combout\,
	datab => \proc_instance|mux|Selector12~1_combout\,
	datac => \proc_instance|mux|Selector12~5_combout\,
	datad => \proc_instance|mux|Selector12~3_combout\,
	combout => \proc_instance|mux|Selector12~6_combout\);

-- Location: LCCOMB_X107_Y12_N16
\proc_instance|mem_addrsd|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[3]~feeder_combout\ = \proc_instance|mux|Selector12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector12~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[3]~feeder_combout\);

-- Location: FF_X107_Y12_N17
\proc_instance|mem_addrsd|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(3));

-- Location: FF_X112_Y13_N27
\proc_instance|IR|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(9));

-- Location: LCCOMB_X112_Y12_N0
\proc_instance|Selector62~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector62~0_combout\ = (\proc_instance|IR|Q\(9) & (!\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector62~0_combout\);

-- Location: LCCOMB_X112_Y12_N14
\proc_instance|R_enable[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(1) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector62~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|R_enable\(1),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector62~0_combout\,
	combout => \proc_instance|R_enable\(1));

-- Location: FF_X111_Y12_N17
\proc_instance|reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(2));

-- Location: FF_X109_Y10_N11
\proc_instance|reg_0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(2));

-- Location: LCCOMB_X109_Y10_N10
\proc_instance|mux|Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~1_combout\ = (\proc_instance|reg_1|Q\(2) & ((\proc_instance|mux|Equal2~0_combout\) # ((\proc_instance|mux|Equal1~1_combout\ & \proc_instance|reg_0|Q\(2))))) # (!\proc_instance|reg_1|Q\(2) & 
-- (\proc_instance|mux|Equal1~1_combout\ & (\proc_instance|reg_0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_1|Q\(2),
	datab => \proc_instance|mux|Equal1~1_combout\,
	datac => \proc_instance|reg_0|Q\(2),
	datad => \proc_instance|mux|Equal2~0_combout\,
	combout => \proc_instance|mux|Selector13~1_combout\);

-- Location: FF_X106_Y13_N31
\proc_instance|reg_6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(2));

-- Location: LCCOMB_X106_Y13_N16
\proc_instance|mux|Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(2) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\proc_instance|reg_G|Q\(2) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \proc_instance|reg_G|Q\(2),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector13~2_combout\);

-- Location: LCCOMB_X106_Y13_N30
\proc_instance|mux|Selector13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~3_combout\ = (\proc_instance|mux|Selector13~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(2),
	datad => \proc_instance|mux|Selector13~2_combout\,
	combout => \proc_instance|mux|Selector13~3_combout\);

-- Location: FF_X108_Y13_N31
\proc_instance|reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(2));

-- Location: FF_X109_Y13_N7
\proc_instance|reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(2));

-- Location: LCCOMB_X109_Y13_N6
\proc_instance|mux|Selector13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(2)) # ((\mem_ram|altsyncram_component|auto_generated|q_a\(2) & \proc_instance|mux|Equal0~2_combout\)))) # (!\proc_instance|mux|Equal4~0_combout\ & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(2) & ((\proc_instance|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datac => \proc_instance|reg_3|Q\(2),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector13~4_combout\);

-- Location: LCCOMB_X108_Y13_N30
\proc_instance|mux|Selector13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~5_combout\ = (\proc_instance|mux|Selector13~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(2),
	datad => \proc_instance|mux|Selector13~4_combout\,
	combout => \proc_instance|mux|Selector13~5_combout\);

-- Location: LCCOMB_X107_Y10_N8
\proc_instance|reg_5|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_5|Q[2]~feeder_combout\ = \proc_instance|mux|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \proc_instance|reg_5|Q[2]~feeder_combout\);

-- Location: FF_X107_Y10_N9
\proc_instance|reg_5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_5|Q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(2));

-- Location: FF_X108_Y10_N11
\proc_instance|reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector13~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(2));

-- Location: LCCOMB_X108_Y10_N10
\proc_instance|mux|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~0_combout\ = (\proc_instance|reg_5|Q\(2) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(2))))) # (!\proc_instance|reg_5|Q\(2) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(2),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(2),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector13~0_combout\);

-- Location: LCCOMB_X108_Y12_N0
\proc_instance|mux|Selector13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector13~6_combout\ = (\proc_instance|mux|Selector13~1_combout\) # ((\proc_instance|mux|Selector13~3_combout\) # ((\proc_instance|mux|Selector13~5_combout\) # (\proc_instance|mux|Selector13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector13~1_combout\,
	datab => \proc_instance|mux|Selector13~3_combout\,
	datac => \proc_instance|mux|Selector13~5_combout\,
	datad => \proc_instance|mux|Selector13~0_combout\,
	combout => \proc_instance|mux|Selector13~6_combout\);

-- Location: LCCOMB_X107_Y12_N26
\proc_instance|mem_addrsd|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[2]~feeder_combout\ = \proc_instance|mux|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector13~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[2]~feeder_combout\);

-- Location: FF_X107_Y12_N27
\proc_instance|mem_addrsd|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(2));

-- Location: FF_X111_Y13_N7
\proc_instance|IR|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(10));

-- Location: LCCOMB_X111_Y13_N8
\proc_instance|Selector84~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector84~0_combout\ = (!\proc_instance|IR|Q\(7) & (!\proc_instance|IR|Q\(8) & (\proc_instance|IR|Q\(6) & \proc_instance|Selector76~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(7),
	datab => \proc_instance|IR|Q\(8),
	datac => \proc_instance|IR|Q\(6),
	datad => \proc_instance|Selector76~0_combout\,
	combout => \proc_instance|Selector84~0_combout\);

-- Location: LCCOMB_X111_Y13_N10
\proc_instance|Selector84~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector84~1_combout\ = (\proc_instance|Selector84~0_combout\) # ((!\proc_instance|IR|Q\(10) & (!\proc_instance|IR|Q\(11) & \proc_instance|Selector70~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(10),
	datab => \proc_instance|IR|Q\(11),
	datac => \proc_instance|Selector84~0_combout\,
	datad => \proc_instance|Selector70~0_combout\,
	combout => \proc_instance|Selector84~1_combout\);

-- Location: LCCOMB_X109_Y13_N20
\proc_instance|mux_selection[7]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux_selection\(7) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector84~1_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|mux_selection\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux_selection\(7),
	datac => \proc_instance|Selector84~1_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|mux_selection\(7));

-- Location: LCCOMB_X108_Y13_N24
\proc_instance|mux|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Equal3~0_combout\ = (!\proc_instance|mux_selection\(7) & (!\proc_instance|mux_selection\(8) & (\proc_instance|mux_selection\(6) & \proc_instance|mux|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux_selection\(7),
	datab => \proc_instance|mux_selection\(8),
	datac => \proc_instance|mux_selection\(6),
	datad => \proc_instance|mux|Equal1~0_combout\,
	combout => \proc_instance|mux|Equal3~0_combout\);

-- Location: FF_X108_Y13_N21
\proc_instance|reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(1));

-- Location: FF_X109_Y13_N29
\proc_instance|reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(1));

-- Location: LCCOMB_X109_Y13_N28
\proc_instance|mux|Selector14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~4_combout\ = (\proc_instance|mux|Equal4~0_combout\ & ((\proc_instance|reg_3|Q\(1)) # ((\mem_ram|altsyncram_component|auto_generated|q_a\(1) & \proc_instance|mux|Equal0~2_combout\)))) # (!\proc_instance|mux|Equal4~0_combout\ & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(1) & ((\proc_instance|mux|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Equal4~0_combout\,
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \proc_instance|reg_3|Q\(1),
	datad => \proc_instance|mux|Equal0~2_combout\,
	combout => \proc_instance|mux|Selector14~4_combout\);

-- Location: LCCOMB_X108_Y13_N20
\proc_instance|mux|Selector14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~5_combout\ = (\proc_instance|mux|Selector14~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(1),
	datad => \proc_instance|mux|Selector14~4_combout\,
	combout => \proc_instance|mux|Selector14~5_combout\);

-- Location: LCCOMB_X111_Y12_N10
\proc_instance|reg_1|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[1]~feeder_combout\ = \proc_instance|mux|Selector14~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector14~6_combout\,
	combout => \proc_instance|reg_1|Q[1]~feeder_combout\);

-- Location: FF_X111_Y12_N11
\proc_instance|reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(1));

-- Location: FF_X109_Y10_N17
\proc_instance|reg_0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(1));

-- Location: LCCOMB_X109_Y10_N16
\proc_instance|mux|Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~1_combout\ = (\proc_instance|reg_1|Q\(1) & ((\proc_instance|mux|Equal2~0_combout\) # ((\proc_instance|mux|Equal1~1_combout\ & \proc_instance|reg_0|Q\(1))))) # (!\proc_instance|reg_1|Q\(1) & 
-- (\proc_instance|mux|Equal1~1_combout\ & (\proc_instance|reg_0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_1|Q\(1),
	datab => \proc_instance|mux|Equal1~1_combout\,
	datac => \proc_instance|reg_0|Q\(1),
	datad => \proc_instance|mux|Equal2~0_combout\,
	combout => \proc_instance|mux|Selector14~1_combout\);

-- Location: FF_X107_Y10_N27
\proc_instance|reg_5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(1));

-- Location: FF_X108_Y10_N1
\proc_instance|reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(1));

-- Location: LCCOMB_X108_Y10_N0
\proc_instance|mux|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~0_combout\ = (\proc_instance|reg_5|Q\(1) & ((\proc_instance|mux|Equal6~0_combout\) # ((\proc_instance|mux|Equal5~1_combout\ & \proc_instance|reg_4|Q\(1))))) # (!\proc_instance|reg_5|Q\(1) & 
-- (\proc_instance|mux|Equal5~1_combout\ & (\proc_instance|reg_4|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_5|Q\(1),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_4|Q\(1),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector14~0_combout\);

-- Location: LCCOMB_X106_Y13_N4
\proc_instance|mux|Selector14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~2_combout\ = (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\proc_instance|mux|Equal8~1_combout\) # ((\proc_instance|reg_G|Q\(1) & \proc_instance|mux|Equal9~1_combout\)))) # 
-- (!\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\proc_instance|reg_G|Q\(1) & ((\proc_instance|mux|Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \proc_instance|reg_G|Q\(1),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector14~2_combout\);

-- Location: FF_X106_Y13_N27
\proc_instance|reg_6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector14~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(1));

-- Location: LCCOMB_X106_Y13_N26
\proc_instance|mux|Selector14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~3_combout\ = (\proc_instance|mux|Selector14~2_combout\) # ((\proc_instance|reg_6|Q\(1) & \proc_instance|mux|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Selector14~2_combout\,
	datac => \proc_instance|reg_6|Q\(1),
	datad => \proc_instance|mux|Equal7~0_combout\,
	combout => \proc_instance|mux|Selector14~3_combout\);

-- Location: LCCOMB_X108_Y12_N20
\proc_instance|mux|Selector14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector14~6_combout\ = (\proc_instance|mux|Selector14~5_combout\) # ((\proc_instance|mux|Selector14~1_combout\) # ((\proc_instance|mux|Selector14~0_combout\) # (\proc_instance|mux|Selector14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector14~5_combout\,
	datab => \proc_instance|mux|Selector14~1_combout\,
	datac => \proc_instance|mux|Selector14~0_combout\,
	datad => \proc_instance|mux|Selector14~3_combout\,
	combout => \proc_instance|mux|Selector14~6_combout\);

-- Location: LCCOMB_X107_Y12_N4
\proc_instance|mem_addrsd|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[1]~feeder_combout\ = \proc_instance|mux|Selector14~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector14~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[1]~feeder_combout\);

-- Location: FF_X107_Y12_N5
\proc_instance|mem_addrsd|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[1]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(1));

-- Location: FF_X112_Y13_N11
\proc_instance|IR|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(15));

-- Location: LCCOMB_X114_Y13_N4
\proc_instance|Selector23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector23~1_combout\ = \proc_instance|IR|Q\(14) $ (!\proc_instance|IR|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(13),
	combout => \proc_instance|Selector23~1_combout\);

-- Location: LCCOMB_X114_Y13_N12
\proc_instance|Selector23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector23~2_combout\ = (!\proc_instance|TstepQ_Curr.T2~q\ & (\proc_instance|TstepQ_Curr.T1~q\ & ((\proc_instance|IR|Q\(15)) # (\proc_instance|Selector23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(15),
	datab => \proc_instance|TstepQ_Curr.T2~q\,
	datac => \proc_instance|TstepQ_Curr.T1~q\,
	datad => \proc_instance|Selector23~1_combout\,
	combout => \proc_instance|Selector23~2_combout\);

-- Location: LCCOMB_X114_Y13_N0
\proc_instance|TstepD_Next.T3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|TstepD_Next.T3~0_combout\ = (\proc_instance|TstepQ_Curr.T2~q\ & (\proc_instance|TstepQ_Curr.T3~q\ $ (((!\proc_instance|Selector23~2_combout\ & !\proc_instance|Selector23~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector23~2_combout\,
	datab => \proc_instance|Selector23~0_combout\,
	datac => \proc_instance|TstepQ_Curr.T2~q\,
	datad => \proc_instance|TstepQ_Curr.T3~q\,
	combout => \proc_instance|TstepD_Next.T3~0_combout\);

-- Location: FF_X112_Y13_N23
\proc_instance|TstepQ_Curr.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|TstepD_Next.T3~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|TstepQ_Curr.T3~q\);

-- Location: LCCOMB_X114_Y13_N28
\proc_instance|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector6~0_combout\ = ((\proc_instance|Mux1~0_combout\) # ((\proc_instance|Mux6~0_combout\ & \proc_instance|IR|Q\(12)))) # (!\proc_instance|TstepQ_Curr.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T1~q\,
	datab => \proc_instance|Mux1~0_combout\,
	datac => \proc_instance|Mux6~0_combout\,
	datad => \proc_instance|IR|Q\(12),
	combout => \proc_instance|Selector6~0_combout\);

-- Location: LCCOMB_X114_Y13_N10
\proc_instance|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector6~1_combout\ = \proc_instance|TstepQ_Curr.T3~q\ $ (((\proc_instance|Mux5~0_combout\) # ((!\proc_instance|TstepQ_Curr.T2~q\ & \proc_instance|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T2~q\,
	datab => \proc_instance|TstepQ_Curr.T3~q\,
	datac => \proc_instance|Mux5~0_combout\,
	datad => \proc_instance|Selector6~0_combout\,
	combout => \proc_instance|Selector6~1_combout\);

-- Location: LCCOMB_X114_Y13_N26
\proc_instance|Addr_enable\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Addr_enable~combout\ = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|Selector6~1_combout\)) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Addr_enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|Selector6~1_combout\,
	datac => \proc_instance|Addr_enable~combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|Addr_enable~combout\);

-- Location: FF_X107_Y12_N11
\proc_instance|mem_addrsd|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(0));

-- Location: FF_X113_Y13_N7
\proc_instance|IR|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(14));

-- Location: LCCOMB_X113_Y13_N16
\proc_instance|WideNor0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|WideNor0~combout\ = (!\proc_instance|IR|Q\(15) & (\proc_instance|IR|Q\(13) $ (\proc_instance|IR|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(15),
	combout => \proc_instance|WideNor0~combout\);

-- Location: LCCOMB_X113_Y13_N14
\proc_instance|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Mux4~0_combout\ = (\proc_instance|IR|Q\(15)) # ((\proc_instance|IR|Q\(12) & (\proc_instance|IR|Q\(14) & \proc_instance|IR|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(15),
	datab => \proc_instance|IR|Q\(12),
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(13),
	combout => \proc_instance|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y13_N24
\proc_instance|Selector68~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector68~0_combout\ = (\proc_instance|TstepQ_Curr.T1~q\ & (!\proc_instance|Mux4~0_combout\ & ((!\proc_instance|TstepQ_Curr.T3~q\) # (!\proc_instance|Selector23~0_combout\)))) # (!\proc_instance|TstepQ_Curr.T1~q\ & 
-- (((!\proc_instance|TstepQ_Curr.T3~q\)) # (!\proc_instance|Selector23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T1~q\,
	datab => \proc_instance|Selector23~0_combout\,
	datac => \proc_instance|TstepQ_Curr.T3~q\,
	datad => \proc_instance|Mux4~0_combout\,
	combout => \proc_instance|Selector68~0_combout\);

-- Location: LCCOMB_X114_Y13_N16
\proc_instance|Selector68~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector68~1_combout\ = (\proc_instance|Selector68~0_combout\ & ((\proc_instance|WideNor0~combout\) # (!\proc_instance|TstepQ_Curr.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T2~q\,
	datac => \proc_instance|WideNor0~combout\,
	datad => \proc_instance|Selector68~0_combout\,
	combout => \proc_instance|Selector68~1_combout\);

-- Location: CLKCTRL_G13
\proc_instance|Selector68~1clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \proc_instance|Selector68~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \proc_instance|Selector68~1clkctrl_outclk\);

-- Location: LCCOMB_X112_Y12_N2
\proc_instance|Selector56~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector56~5_combout\ = (!\proc_instance|IR|Q\(9) & (!\proc_instance|IR|Q\(10) & (\proc_instance|IR|Q\(11) & !\proc_instance|Selector49~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(9),
	datab => \proc_instance|IR|Q\(10),
	datac => \proc_instance|IR|Q\(11),
	datad => \proc_instance|Selector49~3_combout\,
	combout => \proc_instance|Selector56~5_combout\);

-- Location: LCCOMB_X112_Y12_N4
\proc_instance|R_enable[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|R_enable\(4) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector56~5_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|R_enable\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|R_enable\(4),
	datac => \proc_instance|Selector68~1clkctrl_outclk\,
	datad => \proc_instance|Selector56~5_combout\,
	combout => \proc_instance|R_enable\(4));

-- Location: FF_X108_Y10_N3
\proc_instance|reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_4|Q[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_4|Q\(0));

-- Location: FF_X107_Y10_N25
\proc_instance|reg_5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_5|Q\(0));

-- Location: LCCOMB_X107_Y10_N24
\proc_instance|mux|Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~0_combout\ = (\proc_instance|reg_4|Q\(0) & ((\proc_instance|mux|Equal5~1_combout\) # ((\proc_instance|reg_5|Q\(0) & \proc_instance|mux|Equal6~0_combout\)))) # (!\proc_instance|reg_4|Q\(0) & (((\proc_instance|reg_5|Q\(0) & 
-- \proc_instance|mux|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_4|Q\(0),
	datab => \proc_instance|mux|Equal5~1_combout\,
	datac => \proc_instance|reg_5|Q\(0),
	datad => \proc_instance|mux|Equal6~0_combout\,
	combout => \proc_instance|mux|Selector15~0_combout\);

-- Location: LCCOMB_X106_Y11_N4
\proc_instance|reg_0|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_0|Q[0]~feeder_combout\ = \proc_instance|mux|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector15~6_combout\,
	combout => \proc_instance|reg_0|Q[0]~feeder_combout\);

-- Location: FF_X106_Y11_N5
\proc_instance|reg_0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_0|Q[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_0|Q\(0));

-- Location: LCCOMB_X111_Y12_N4
\proc_instance|reg_1|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|reg_1|Q[0]~feeder_combout\ = \proc_instance|mux|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector15~6_combout\,
	combout => \proc_instance|reg_1|Q[0]~feeder_combout\);

-- Location: FF_X111_Y12_N5
\proc_instance|reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|reg_1|Q[0]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|R_enable\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_1|Q\(0));

-- Location: LCCOMB_X107_Y12_N28
\proc_instance|mux|Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~1_combout\ = (\proc_instance|reg_0|Q\(0) & ((\proc_instance|mux|Equal1~1_combout\) # ((\proc_instance|mux|Equal2~0_combout\ & \proc_instance|reg_1|Q\(0))))) # (!\proc_instance|reg_0|Q\(0) & 
-- (\proc_instance|mux|Equal2~0_combout\ & (\proc_instance|reg_1|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_0|Q\(0),
	datab => \proc_instance|mux|Equal2~0_combout\,
	datac => \proc_instance|reg_1|Q\(0),
	datad => \proc_instance|mux|Equal1~1_combout\,
	combout => \proc_instance|mux|Selector15~1_combout\);

-- Location: FF_X106_Y13_N7
\proc_instance|reg_6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_6|Q\(0));

-- Location: LCCOMB_X106_Y13_N24
\proc_instance|mux|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~2_combout\ = (\proc_instance|reg_G|Q\(0) & ((\proc_instance|mux|Equal9~1_combout\) # ((\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \proc_instance|mux|Equal8~1_combout\)))) # 
-- (!\proc_instance|reg_G|Q\(0) & (\proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\proc_instance|mux|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|reg_G|Q\(0),
	datab => \proc_instance|pc_instance|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \proc_instance|mux|Equal8~1_combout\,
	datad => \proc_instance|mux|Equal9~1_combout\,
	combout => \proc_instance|mux|Selector15~2_combout\);

-- Location: LCCOMB_X106_Y13_N6
\proc_instance|mux|Selector15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~3_combout\ = (\proc_instance|mux|Selector15~2_combout\) # ((\proc_instance|mux|Equal7~0_combout\ & \proc_instance|reg_6|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal7~0_combout\,
	datac => \proc_instance|reg_6|Q\(0),
	datad => \proc_instance|mux|Selector15~2_combout\,
	combout => \proc_instance|mux|Selector15~3_combout\);

-- Location: FF_X108_Y13_N27
\proc_instance|reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_2|Q\(0));

-- Location: FF_X109_Y13_N27
\proc_instance|reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|R_enable\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|reg_3|Q\(0));

-- Location: LCCOMB_X109_Y13_N26
\proc_instance|mux|Selector15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(0) & ((\proc_instance|mux|Equal0~2_combout\) # ((\proc_instance|reg_3|Q\(0) & \proc_instance|mux|Equal4~0_combout\)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (((\proc_instance|reg_3|Q\(0) & \proc_instance|mux|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \proc_instance|mux|Equal0~2_combout\,
	datac => \proc_instance|reg_3|Q\(0),
	datad => \proc_instance|mux|Equal4~0_combout\,
	combout => \proc_instance|mux|Selector15~4_combout\);

-- Location: LCCOMB_X108_Y13_N26
\proc_instance|mux|Selector15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~5_combout\ = (\proc_instance|mux|Selector15~4_combout\) # ((\proc_instance|mux|Equal3~0_combout\ & \proc_instance|reg_2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mux|Equal3~0_combout\,
	datac => \proc_instance|reg_2|Q\(0),
	datad => \proc_instance|mux|Selector15~4_combout\,
	combout => \proc_instance|mux|Selector15~5_combout\);

-- Location: LCCOMB_X107_Y12_N10
\proc_instance|mux|Selector15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mux|Selector15~6_combout\ = (\proc_instance|mux|Selector15~0_combout\) # ((\proc_instance|mux|Selector15~1_combout\) # ((\proc_instance|mux|Selector15~3_combout\) # (\proc_instance|mux|Selector15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector15~0_combout\,
	datab => \proc_instance|mux|Selector15~1_combout\,
	datac => \proc_instance|mux|Selector15~3_combout\,
	datad => \proc_instance|mux|Selector15~5_combout\,
	combout => \proc_instance|mux|Selector15~6_combout\);

-- Location: FF_X108_Y12_N5
\proc_instance|mem_dada|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector15~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|W_D\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_dada|Q\(0));

-- Location: FF_X113_Y13_N1
\proc_instance|IR|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(13));

-- Location: LCCOMB_X113_Y13_N6
\proc_instance|Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector23~0_combout\ = (\proc_instance|IR|Q\(15)) # ((\proc_instance|IR|Q\(13) & ((\proc_instance|IR|Q\(14)))) # (!\proc_instance|IR|Q\(13) & ((\proc_instance|IR|Q\(12)) # (!\proc_instance|IR|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|IR|Q\(12),
	datab => \proc_instance|IR|Q\(13),
	datac => \proc_instance|IR|Q\(14),
	datad => \proc_instance|IR|Q\(15),
	combout => \proc_instance|Selector23~0_combout\);

-- Location: LCCOMB_X113_Y13_N22
\proc_instance|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector17~0_combout\ = (\proc_instance|Selector23~0_combout\ & (\proc_instance|TstepQ_Curr.T1~q\ & (!\proc_instance|Mux4~0_combout\))) # (!\proc_instance|Selector23~0_combout\ & ((\proc_instance|TstepQ_Curr.T3~q\) # 
-- ((\proc_instance|TstepQ_Curr.T1~q\ & !\proc_instance|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|Selector23~0_combout\,
	datab => \proc_instance|TstepQ_Curr.T1~q\,
	datac => \proc_instance|Mux4~0_combout\,
	datad => \proc_instance|TstepQ_Curr.T3~q\,
	combout => \proc_instance|Selector17~0_combout\);

-- Location: LCCOMB_X113_Y13_N12
\proc_instance|Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector17~1_combout\ = (\proc_instance|TstepQ_Curr.T0_f2~q\) # ((\proc_instance|Selector17~0_combout\) # ((\proc_instance|TstepQ_Curr.T2~q\ & \proc_instance|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T0_f2~q\,
	datab => \proc_instance|TstepQ_Curr.T2~q\,
	datac => \proc_instance|Selector17~0_combout\,
	datad => \proc_instance|WideNor0~combout\,
	combout => \proc_instance|Selector17~1_combout\);

-- Location: LCCOMB_X112_Y13_N12
\proc_instance|Selector20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector20~1_combout\ = (\proc_instance|Mux6~0_combout\ & ((\proc_instance|IR|Q\(12) & ((\proc_instance|TstepQ_Curr.T2~q\))) # (!\proc_instance|IR|Q\(12) & (\proc_instance|TstepQ_Curr.T3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T3~q\,
	datab => \proc_instance|TstepQ_Curr.T2~q\,
	datac => \proc_instance|IR|Q\(12),
	datad => \proc_instance|Mux6~0_combout\,
	combout => \proc_instance|Selector20~1_combout\);

-- Location: LCCOMB_X112_Y13_N16
\proc_instance|invalid_instruction\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|invalid_instruction~combout\ = (\proc_instance|Selector17~1_combout\ & ((\proc_instance|Selector20~1_combout\))) # (!\proc_instance|Selector17~1_combout\ & (\proc_instance|invalid_instruction~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|invalid_instruction~combout\,
	datac => \proc_instance|Selector17~1_combout\,
	datad => \proc_instance|Selector20~1_combout\,
	combout => \proc_instance|invalid_instruction~combout\);

-- Location: LCCOMB_X114_Y13_N8
\proc_instance|TstepD_Next.T0_f2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|TstepD_Next.T0_f2~0_combout\ = (\proc_instance|invalid_instruction~combout\ & \proc_instance|TstepQ_Curr.T0_f1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|invalid_instruction~combout\,
	datad => \proc_instance|TstepQ_Curr.T0_f1~q\,
	combout => \proc_instance|TstepD_Next.T0_f2~0_combout\);

-- Location: FF_X114_Y13_N9
\proc_instance|TstepQ_Curr.T0_f2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|TstepD_Next.T0_f2~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|TstepQ_Curr.T0_f2~q\);

-- Location: LCCOMB_X112_Y13_N14
\proc_instance|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector13~0_combout\ = (\proc_instance|TstepQ_Curr.T0_f2~q\) # ((\proc_instance|TstepQ_Curr.T0_f1~q\ & !\proc_instance|invalid_instruction~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T0_f2~q\,
	datab => \proc_instance|TstepQ_Curr.T0_f1~q\,
	datad => \proc_instance|invalid_instruction~combout\,
	combout => \proc_instance|Selector13~0_combout\);

-- Location: FF_X112_Y13_N21
\proc_instance|TstepQ_Curr.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|Selector13~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|TstepQ_Curr.T1~q\);

-- Location: LCCOMB_X114_Y12_N24
\proc_instance|TstepD_Next.T2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|TstepD_Next.T2~0_combout\ = (!\proc_instance|Selector23~0_combout\) # (!\proc_instance|TstepQ_Curr.T2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T2~q\,
	datad => \proc_instance|Selector23~0_combout\,
	combout => \proc_instance|TstepD_Next.T2~0_combout\);

-- Location: LCCOMB_X113_Y12_N0
\proc_instance|TstepD_Next.T2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|TstepD_Next.T2~1_combout\ = (\proc_instance|TstepQ_Curr.T1~q\ & (\proc_instance|TstepQ_Curr.T3~q\ $ (((!\proc_instance|Selector23~2_combout\ & \proc_instance|TstepD_Next.T2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T1~q\,
	datab => \proc_instance|TstepQ_Curr.T3~q\,
	datac => \proc_instance|Selector23~2_combout\,
	datad => \proc_instance|TstepD_Next.T2~0_combout\,
	combout => \proc_instance|TstepD_Next.T2~1_combout\);

-- Location: FF_X113_Y12_N1
\proc_instance|TstepQ_Curr.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|TstepD_Next.T2~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|TstepQ_Curr.T2~q\);

-- Location: LCCOMB_X112_Y13_N2
\proc_instance|Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|Selector20~0_combout\ = (\proc_instance|TstepQ_Curr.T2~q\ & (\proc_instance|IR|Q\(12) & \proc_instance|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T2~q\,
	datab => \proc_instance|IR|Q\(12),
	datad => \proc_instance|Mux6~0_combout\,
	combout => \proc_instance|Selector20~0_combout\);

-- Location: LCCOMB_X111_Y13_N22
\proc_instance|W_D[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|W_D\(0) = (GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & ((\proc_instance|Selector20~0_combout\))) # (!GLOBAL(\proc_instance|Selector68~1clkctrl_outclk\) & (\proc_instance|W_D\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|W_D\(0),
	datac => \proc_instance|Selector20~0_combout\,
	datad => \proc_instance|Selector68~1clkctrl_outclk\,
	combout => \proc_instance|W_D\(0));

-- Location: LCCOMB_X116_Y10_N30
\proc_instance|mem_wren|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_wren|Q[0]~feeder_combout\ = \proc_instance|W_D\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|W_D\(0),
	combout => \proc_instance|mem_wren|Q[0]~feeder_combout\);

-- Location: FF_X116_Y10_N31
\proc_instance|mem_wren|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_wren|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_wren|Q\(0));

-- Location: LCCOMB_X107_Y12_N6
\proc_instance|mem_addrsd|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[12]~feeder_combout\ = \proc_instance|mux|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector3~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[12]~feeder_combout\);

-- Location: FF_X107_Y12_N7
\proc_instance|mem_addrsd|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[12]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(12));

-- Location: LCCOMB_X107_Y12_N14
\proc_instance|mem_addrsd|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[14]~feeder_combout\ = \proc_instance|mux|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc_instance|mux|Selector1~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[14]~feeder_combout\);

-- Location: FF_X107_Y12_N15
\proc_instance|mem_addrsd|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[14]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(14));

-- Location: FF_X107_Y12_N25
\proc_instance|mem_addrsd|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \proc_instance|mux|Selector0~6_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(15));

-- Location: LCCOMB_X107_Y12_N12
\proc_instance|mem_addrsd|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|mem_addrsd|Q[13]~feeder_combout\ = \proc_instance|mux|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc_instance|mux|Selector2~6_combout\,
	combout => \proc_instance|mem_addrsd|Q[13]~feeder_combout\);

-- Location: FF_X107_Y12_N13
\proc_instance|mem_addrsd|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \proc_instance|mem_addrsd|Q[13]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \proc_instance|Addr_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|mem_addrsd|Q\(13));

-- Location: LCCOMB_X107_Y12_N24
\MemAddrEn~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MemAddrEn~0_combout\ = (!\proc_instance|mem_addrsd|Q\(12) & (!\proc_instance|mem_addrsd|Q\(14) & (!\proc_instance|mem_addrsd|Q\(15) & !\proc_instance|mem_addrsd|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mem_addrsd|Q\(12),
	datab => \proc_instance|mem_addrsd|Q\(14),
	datac => \proc_instance|mem_addrsd|Q\(15),
	datad => \proc_instance|mem_addrsd|Q\(13),
	combout => \MemAddrEn~0_combout\);

-- Location: LCCOMB_X111_Y13_N6
MemAddrEn : cycloneiv_lcell_comb
-- Equation(s):
-- \MemAddrEn~combout\ = (\proc_instance|mem_wren|Q\(0) & \MemAddrEn~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|mem_wren|Q\(0),
	datad => \MemAddrEn~0_combout\,
	combout => \MemAddrEn~combout\);

-- Location: FF_X112_Y13_N19
\proc_instance|IR|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	asdata => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	ena => \proc_instance|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proc_instance|IR|Q\(12));

-- Location: LCCOMB_X114_Y13_N20
\proc_instance|WideOr0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|WideOr0~0_combout\ = (\proc_instance|TstepQ_Curr.T3~q\) # ((\proc_instance|TstepQ_Curr.T2~q\) # (!\proc_instance|TstepQ_Curr.T0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|TstepQ_Curr.T3~q\,
	datab => \proc_instance|TstepQ_Curr.T0~q\,
	datac => \proc_instance|TstepQ_Curr.T2~q\,
	combout => \proc_instance|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y13_N18
\proc_instance|debug_signals[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \proc_instance|debug_signals\(6) = (\proc_instance|TstepQ_Curr.T0_f2~q\) # (\proc_instance|TstepQ_Curr.T2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc_instance|TstepQ_Curr.T0_f2~q\,
	datad => \proc_instance|TstepQ_Curr.T2~q\,
	combout => \proc_instance|debug_signals\(6));

-- Location: LCCOMB_X107_Y10_N12
\disp0|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[0]~0_combout\ = (\proc_instance|mux|Selector12~6_combout\ & (\proc_instance|mux|Selector15~6_combout\ & (\proc_instance|mux|Selector14~6_combout\ $ (\proc_instance|mux|Selector13~6_combout\)))) # (!\proc_instance|mux|Selector12~6_combout\ & 
-- (!\proc_instance|mux|Selector14~6_combout\ & (\proc_instance|mux|Selector15~6_combout\ $ (\proc_instance|mux|Selector13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~6_combout\,
	datab => \proc_instance|mux|Selector14~6_combout\,
	datac => \proc_instance|mux|Selector15~6_combout\,
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \disp0|dec_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y10_N26
\disp0|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[1]~1_combout\ = (\proc_instance|mux|Selector12~6_combout\ & ((\proc_instance|mux|Selector15~6_combout\ & (\proc_instance|mux|Selector14~6_combout\)) # (!\proc_instance|mux|Selector15~6_combout\ & 
-- ((\proc_instance|mux|Selector13~6_combout\))))) # (!\proc_instance|mux|Selector12~6_combout\ & (\proc_instance|mux|Selector13~6_combout\ & (\proc_instance|mux|Selector15~6_combout\ $ (\proc_instance|mux|Selector14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~6_combout\,
	datab => \proc_instance|mux|Selector15~6_combout\,
	datac => \proc_instance|mux|Selector14~6_combout\,
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \disp0|dec_out[1]~1_combout\);

-- Location: LCCOMB_X107_Y10_N18
\disp0|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[2]~2_combout\ = (\proc_instance|mux|Selector12~6_combout\ & (\proc_instance|mux|Selector13~6_combout\ & ((\proc_instance|mux|Selector14~6_combout\) # (!\proc_instance|mux|Selector15~6_combout\)))) # 
-- (!\proc_instance|mux|Selector12~6_combout\ & (\proc_instance|mux|Selector14~6_combout\ & (!\proc_instance|mux|Selector15~6_combout\ & !\proc_instance|mux|Selector13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~6_combout\,
	datab => \proc_instance|mux|Selector14~6_combout\,
	datac => \proc_instance|mux|Selector15~6_combout\,
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \disp0|dec_out[2]~2_combout\);

-- Location: LCCOMB_X107_Y10_N14
\disp0|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[3]~3_combout\ = (\proc_instance|mux|Selector15~6_combout\ & (\proc_instance|mux|Selector14~6_combout\ $ (((!\proc_instance|mux|Selector13~6_combout\))))) # (!\proc_instance|mux|Selector15~6_combout\ & 
-- ((\proc_instance|mux|Selector14~6_combout\ & (\proc_instance|mux|Selector12~6_combout\ & !\proc_instance|mux|Selector13~6_combout\)) # (!\proc_instance|mux|Selector14~6_combout\ & (!\proc_instance|mux|Selector12~6_combout\ & 
-- \proc_instance|mux|Selector13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector15~6_combout\,
	datab => \proc_instance|mux|Selector14~6_combout\,
	datac => \proc_instance|mux|Selector12~6_combout\,
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \disp0|dec_out[3]~3_combout\);

-- Location: LCCOMB_X107_Y10_N28
\disp0|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[4]~4_combout\ = (\proc_instance|mux|Selector14~6_combout\ & (!\proc_instance|mux|Selector12~6_combout\ & (\proc_instance|mux|Selector15~6_combout\))) # (!\proc_instance|mux|Selector14~6_combout\ & ((\proc_instance|mux|Selector13~6_combout\ 
-- & (!\proc_instance|mux|Selector12~6_combout\)) # (!\proc_instance|mux|Selector13~6_combout\ & ((\proc_instance|mux|Selector15~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~6_combout\,
	datab => \proc_instance|mux|Selector14~6_combout\,
	datac => \proc_instance|mux|Selector15~6_combout\,
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \disp0|dec_out[4]~4_combout\);

-- Location: LCCOMB_X108_Y13_N18
\disp0|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[5]~5_combout\ = (\proc_instance|mux|Selector14~6_combout\ & (!\proc_instance|mux|Selector12~6_combout\ & ((\proc_instance|mux|Selector15~6_combout\) # (!\proc_instance|mux|Selector13~6_combout\)))) # 
-- (!\proc_instance|mux|Selector14~6_combout\ & (\proc_instance|mux|Selector15~6_combout\ & (\proc_instance|mux|Selector13~6_combout\ $ (!\proc_instance|mux|Selector12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector14~6_combout\,
	datab => \proc_instance|mux|Selector13~6_combout\,
	datac => \proc_instance|mux|Selector12~6_combout\,
	datad => \proc_instance|mux|Selector15~6_combout\,
	combout => \disp0|dec_out[5]~5_combout\);

-- Location: LCCOMB_X107_Y10_N30
\disp0|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp0|dec_out[6]~6_combout\ = (\proc_instance|mux|Selector15~6_combout\ & (!\proc_instance|mux|Selector12~6_combout\ & (\proc_instance|mux|Selector14~6_combout\ $ (!\proc_instance|mux|Selector13~6_combout\)))) # (!\proc_instance|mux|Selector15~6_combout\ 
-- & (!\proc_instance|mux|Selector14~6_combout\ & (\proc_instance|mux|Selector12~6_combout\ $ (!\proc_instance|mux|Selector13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector12~6_combout\,
	datab => \proc_instance|mux|Selector15~6_combout\,
	datac => \proc_instance|mux|Selector14~6_combout\,
	datad => \proc_instance|mux|Selector13~6_combout\,
	combout => \disp0|dec_out[6]~6_combout\);

-- Location: LCCOMB_X109_Y14_N6
\disp1|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[0]~0_combout\ = (\proc_instance|mux|Selector8~6_combout\ & (\proc_instance|mux|Selector11~6_combout\ & (\proc_instance|mux|Selector10~6_combout\ $ (\proc_instance|mux|Selector9~6_combout\)))) # (!\proc_instance|mux|Selector8~6_combout\ & 
-- (!\proc_instance|mux|Selector10~6_combout\ & (\proc_instance|mux|Selector11~6_combout\ $ (\proc_instance|mux|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector11~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector10~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[0]~0_combout\);

-- Location: LCCOMB_X109_Y14_N4
\disp1|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[1]~1_combout\ = (\proc_instance|mux|Selector8~6_combout\ & ((\proc_instance|mux|Selector11~6_combout\ & (\proc_instance|mux|Selector10~6_combout\)) # (!\proc_instance|mux|Selector11~6_combout\ & 
-- ((\proc_instance|mux|Selector9~6_combout\))))) # (!\proc_instance|mux|Selector8~6_combout\ & (\proc_instance|mux|Selector9~6_combout\ & (\proc_instance|mux|Selector11~6_combout\ $ (\proc_instance|mux|Selector10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector11~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector10~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[1]~1_combout\);

-- Location: LCCOMB_X108_Y14_N22
\disp1|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[2]~2_combout\ = (\proc_instance|mux|Selector8~6_combout\ & (\proc_instance|mux|Selector9~6_combout\ & ((\proc_instance|mux|Selector10~6_combout\) # (!\proc_instance|mux|Selector11~6_combout\)))) # (!\proc_instance|mux|Selector8~6_combout\ & 
-- (\proc_instance|mux|Selector10~6_combout\ & (!\proc_instance|mux|Selector11~6_combout\ & !\proc_instance|mux|Selector9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector10~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector11~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[2]~2_combout\);

-- Location: LCCOMB_X108_Y14_N12
\disp1|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[3]~3_combout\ = (\proc_instance|mux|Selector11~6_combout\ & (\proc_instance|mux|Selector10~6_combout\ $ (((!\proc_instance|mux|Selector9~6_combout\))))) # (!\proc_instance|mux|Selector11~6_combout\ & 
-- ((\proc_instance|mux|Selector10~6_combout\ & (\proc_instance|mux|Selector8~6_combout\ & !\proc_instance|mux|Selector9~6_combout\)) # (!\proc_instance|mux|Selector10~6_combout\ & (!\proc_instance|mux|Selector8~6_combout\ & 
-- \proc_instance|mux|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector10~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector11~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[3]~3_combout\);

-- Location: LCCOMB_X108_Y14_N26
\disp1|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[4]~4_combout\ = (\proc_instance|mux|Selector10~6_combout\ & (!\proc_instance|mux|Selector8~6_combout\ & (\proc_instance|mux|Selector11~6_combout\))) # (!\proc_instance|mux|Selector10~6_combout\ & ((\proc_instance|mux|Selector9~6_combout\ & 
-- (!\proc_instance|mux|Selector8~6_combout\)) # (!\proc_instance|mux|Selector9~6_combout\ & ((\proc_instance|mux|Selector11~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector10~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector11~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[4]~4_combout\);

-- Location: LCCOMB_X108_Y14_N0
\disp1|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[5]~5_combout\ = (\proc_instance|mux|Selector10~6_combout\ & (!\proc_instance|mux|Selector8~6_combout\ & ((\proc_instance|mux|Selector11~6_combout\) # (!\proc_instance|mux|Selector9~6_combout\)))) # (!\proc_instance|mux|Selector10~6_combout\ 
-- & (\proc_instance|mux|Selector11~6_combout\ & (\proc_instance|mux|Selector8~6_combout\ $ (!\proc_instance|mux|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector10~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector11~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[5]~5_combout\);

-- Location: LCCOMB_X109_Y14_N10
\disp1|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp1|dec_out[6]~6_combout\ = (\proc_instance|mux|Selector11~6_combout\ & (!\proc_instance|mux|Selector8~6_combout\ & (\proc_instance|mux|Selector10~6_combout\ $ (!\proc_instance|mux|Selector9~6_combout\)))) # (!\proc_instance|mux|Selector11~6_combout\ & 
-- (!\proc_instance|mux|Selector10~6_combout\ & (\proc_instance|mux|Selector8~6_combout\ $ (!\proc_instance|mux|Selector9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector11~6_combout\,
	datab => \proc_instance|mux|Selector8~6_combout\,
	datac => \proc_instance|mux|Selector10~6_combout\,
	datad => \proc_instance|mux|Selector9~6_combout\,
	combout => \disp1|dec_out[6]~6_combout\);

-- Location: LCCOMB_X106_Y14_N30
\disp2|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[0]~0_combout\ = (\proc_instance|mux|Selector4~6_combout\ & (\proc_instance|mux|Selector7~6_combout\ & (\proc_instance|mux|Selector6~6_combout\ $ (\proc_instance|mux|Selector5~6_combout\)))) # (!\proc_instance|mux|Selector4~6_combout\ & 
-- (!\proc_instance|mux|Selector6~6_combout\ & (\proc_instance|mux|Selector7~6_combout\ $ (\proc_instance|mux|Selector5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector4~6_combout\,
	datab => \proc_instance|mux|Selector7~6_combout\,
	datac => \proc_instance|mux|Selector6~6_combout\,
	datad => \proc_instance|mux|Selector5~6_combout\,
	combout => \disp2|dec_out[0]~0_combout\);

-- Location: LCCOMB_X106_Y14_N4
\disp2|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[1]~1_combout\ = (\proc_instance|mux|Selector6~6_combout\ & ((\proc_instance|mux|Selector7~6_combout\ & ((\proc_instance|mux|Selector4~6_combout\))) # (!\proc_instance|mux|Selector7~6_combout\ & (\proc_instance|mux|Selector5~6_combout\)))) # 
-- (!\proc_instance|mux|Selector6~6_combout\ & (\proc_instance|mux|Selector5~6_combout\ & (\proc_instance|mux|Selector4~6_combout\ $ (\proc_instance|mux|Selector7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector6~6_combout\,
	datab => \proc_instance|mux|Selector5~6_combout\,
	datac => \proc_instance|mux|Selector4~6_combout\,
	datad => \proc_instance|mux|Selector7~6_combout\,
	combout => \disp2|dec_out[1]~1_combout\);

-- Location: LCCOMB_X107_Y11_N10
\disp2|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[2]~2_combout\ = (\proc_instance|mux|Selector5~6_combout\ & (\proc_instance|mux|Selector4~6_combout\ & ((\proc_instance|mux|Selector6~6_combout\) # (!\proc_instance|mux|Selector7~6_combout\)))) # (!\proc_instance|mux|Selector5~6_combout\ & 
-- (\proc_instance|mux|Selector6~6_combout\ & (!\proc_instance|mux|Selector7~6_combout\ & !\proc_instance|mux|Selector4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector5~6_combout\,
	datab => \proc_instance|mux|Selector6~6_combout\,
	datac => \proc_instance|mux|Selector7~6_combout\,
	datad => \proc_instance|mux|Selector4~6_combout\,
	combout => \disp2|dec_out[2]~2_combout\);

-- Location: LCCOMB_X109_Y14_N18
\disp2|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[3]~3_combout\ = (\proc_instance|mux|Selector7~6_combout\ & (\proc_instance|mux|Selector5~6_combout\ $ (((!\proc_instance|mux|Selector6~6_combout\))))) # (!\proc_instance|mux|Selector7~6_combout\ & ((\proc_instance|mux|Selector5~6_combout\ & 
-- (!\proc_instance|mux|Selector4~6_combout\ & !\proc_instance|mux|Selector6~6_combout\)) # (!\proc_instance|mux|Selector5~6_combout\ & (\proc_instance|mux|Selector4~6_combout\ & \proc_instance|mux|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector5~6_combout\,
	datab => \proc_instance|mux|Selector7~6_combout\,
	datac => \proc_instance|mux|Selector4~6_combout\,
	datad => \proc_instance|mux|Selector6~6_combout\,
	combout => \disp2|dec_out[3]~3_combout\);

-- Location: LCCOMB_X106_Y14_N16
\disp2|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[4]~4_combout\ = (\proc_instance|mux|Selector6~6_combout\ & (\proc_instance|mux|Selector7~6_combout\ & (!\proc_instance|mux|Selector4~6_combout\))) # (!\proc_instance|mux|Selector6~6_combout\ & ((\proc_instance|mux|Selector5~6_combout\ & 
-- ((!\proc_instance|mux|Selector4~6_combout\))) # (!\proc_instance|mux|Selector5~6_combout\ & (\proc_instance|mux|Selector7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector6~6_combout\,
	datab => \proc_instance|mux|Selector7~6_combout\,
	datac => \proc_instance|mux|Selector4~6_combout\,
	datad => \proc_instance|mux|Selector5~6_combout\,
	combout => \disp2|dec_out[4]~4_combout\);

-- Location: LCCOMB_X107_Y14_N26
\disp2|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[5]~5_combout\ = (\proc_instance|mux|Selector5~6_combout\ & (\proc_instance|mux|Selector7~6_combout\ & (\proc_instance|mux|Selector4~6_combout\ $ (\proc_instance|mux|Selector6~6_combout\)))) # (!\proc_instance|mux|Selector5~6_combout\ & 
-- (!\proc_instance|mux|Selector4~6_combout\ & ((\proc_instance|mux|Selector7~6_combout\) # (\proc_instance|mux|Selector6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector4~6_combout\,
	datab => \proc_instance|mux|Selector5~6_combout\,
	datac => \proc_instance|mux|Selector7~6_combout\,
	datad => \proc_instance|mux|Selector6~6_combout\,
	combout => \disp2|dec_out[5]~5_combout\);

-- Location: LCCOMB_X106_Y14_N26
\disp2|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp2|dec_out[6]~6_combout\ = (\proc_instance|mux|Selector7~6_combout\ & (!\proc_instance|mux|Selector4~6_combout\ & (\proc_instance|mux|Selector6~6_combout\ $ (!\proc_instance|mux|Selector5~6_combout\)))) # (!\proc_instance|mux|Selector7~6_combout\ & 
-- (!\proc_instance|mux|Selector6~6_combout\ & (\proc_instance|mux|Selector4~6_combout\ $ (!\proc_instance|mux|Selector5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector4~6_combout\,
	datab => \proc_instance|mux|Selector7~6_combout\,
	datac => \proc_instance|mux|Selector6~6_combout\,
	datad => \proc_instance|mux|Selector5~6_combout\,
	combout => \disp2|dec_out[6]~6_combout\);

-- Location: LCCOMB_X107_Y14_N0
\disp3|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[0]~0_combout\ = (\proc_instance|mux|Selector0~6_combout\ & (\proc_instance|mux|Selector3~6_combout\ & (\proc_instance|mux|Selector2~6_combout\ $ (\proc_instance|mux|Selector1~6_combout\)))) # (!\proc_instance|mux|Selector0~6_combout\ & 
-- (!\proc_instance|mux|Selector2~6_combout\ & (\proc_instance|mux|Selector1~6_combout\ $ (\proc_instance|mux|Selector3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector0~6_combout\,
	datab => \proc_instance|mux|Selector2~6_combout\,
	datac => \proc_instance|mux|Selector1~6_combout\,
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \disp3|dec_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y14_N2
\disp3|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[1]~1_combout\ = (\proc_instance|mux|Selector0~6_combout\ & ((\proc_instance|mux|Selector3~6_combout\ & (\proc_instance|mux|Selector2~6_combout\)) # (!\proc_instance|mux|Selector3~6_combout\ & ((\proc_instance|mux|Selector1~6_combout\))))) # 
-- (!\proc_instance|mux|Selector0~6_combout\ & (\proc_instance|mux|Selector1~6_combout\ & (\proc_instance|mux|Selector2~6_combout\ $ (\proc_instance|mux|Selector3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector0~6_combout\,
	datab => \proc_instance|mux|Selector2~6_combout\,
	datac => \proc_instance|mux|Selector1~6_combout\,
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \disp3|dec_out[1]~1_combout\);

-- Location: LCCOMB_X109_Y14_N20
\disp3|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[2]~2_combout\ = (\proc_instance|mux|Selector0~6_combout\ & (\proc_instance|mux|Selector1~6_combout\ & ((\proc_instance|mux|Selector2~6_combout\) # (!\proc_instance|mux|Selector3~6_combout\)))) # (!\proc_instance|mux|Selector0~6_combout\ & 
-- (\proc_instance|mux|Selector2~6_combout\ & (!\proc_instance|mux|Selector3~6_combout\ & !\proc_instance|mux|Selector1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector2~6_combout\,
	datab => \proc_instance|mux|Selector0~6_combout\,
	datac => \proc_instance|mux|Selector3~6_combout\,
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \disp3|dec_out[2]~2_combout\);

-- Location: LCCOMB_X107_Y14_N24
\disp3|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[3]~3_combout\ = (\proc_instance|mux|Selector3~6_combout\ & ((\proc_instance|mux|Selector2~6_combout\ $ (!\proc_instance|mux|Selector1~6_combout\)))) # (!\proc_instance|mux|Selector3~6_combout\ & ((\proc_instance|mux|Selector0~6_combout\ & 
-- (\proc_instance|mux|Selector2~6_combout\ & !\proc_instance|mux|Selector1~6_combout\)) # (!\proc_instance|mux|Selector0~6_combout\ & (!\proc_instance|mux|Selector2~6_combout\ & \proc_instance|mux|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector0~6_combout\,
	datab => \proc_instance|mux|Selector2~6_combout\,
	datac => \proc_instance|mux|Selector1~6_combout\,
	datad => \proc_instance|mux|Selector3~6_combout\,
	combout => \disp3|dec_out[3]~3_combout\);

-- Location: LCCOMB_X106_Y14_N22
\disp3|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[4]~4_combout\ = (\proc_instance|mux|Selector2~6_combout\ & (((\proc_instance|mux|Selector3~6_combout\ & !\proc_instance|mux|Selector0~6_combout\)))) # (!\proc_instance|mux|Selector2~6_combout\ & ((\proc_instance|mux|Selector1~6_combout\ & 
-- ((!\proc_instance|mux|Selector0~6_combout\))) # (!\proc_instance|mux|Selector1~6_combout\ & (\proc_instance|mux|Selector3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector2~6_combout\,
	datab => \proc_instance|mux|Selector1~6_combout\,
	datac => \proc_instance|mux|Selector3~6_combout\,
	datad => \proc_instance|mux|Selector0~6_combout\,
	combout => \disp3|dec_out[4]~4_combout\);

-- Location: LCCOMB_X109_Y14_N26
\disp3|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[5]~5_combout\ = (\proc_instance|mux|Selector2~6_combout\ & (!\proc_instance|mux|Selector0~6_combout\ & ((\proc_instance|mux|Selector3~6_combout\) # (!\proc_instance|mux|Selector1~6_combout\)))) # (!\proc_instance|mux|Selector2~6_combout\ & 
-- (\proc_instance|mux|Selector3~6_combout\ & (\proc_instance|mux|Selector0~6_combout\ $ (!\proc_instance|mux|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector2~6_combout\,
	datab => \proc_instance|mux|Selector0~6_combout\,
	datac => \proc_instance|mux|Selector3~6_combout\,
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \disp3|dec_out[5]~5_combout\);

-- Location: LCCOMB_X109_Y14_N0
\disp3|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp3|dec_out[6]~6_combout\ = (\proc_instance|mux|Selector3~6_combout\ & (!\proc_instance|mux|Selector0~6_combout\ & (\proc_instance|mux|Selector2~6_combout\ $ (!\proc_instance|mux|Selector1~6_combout\)))) # (!\proc_instance|mux|Selector3~6_combout\ & 
-- (!\proc_instance|mux|Selector2~6_combout\ & (\proc_instance|mux|Selector0~6_combout\ $ (!\proc_instance|mux|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc_instance|mux|Selector2~6_combout\,
	datab => \proc_instance|mux|Selector0~6_combout\,
	datac => \proc_instance|mux|Selector3~6_combout\,
	datad => \proc_instance|mux|Selector1~6_combout\,
	combout => \disp3|dec_out[6]~6_combout\);

-- Location: LCCOMB_X44_Y87_N4
\disp4|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[0]~0_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(2) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (\mem_ram|altsyncram_component|auto_generated|q_a\(0) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(3))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(2) & (\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (\mem_ram|altsyncram_component|auto_generated|q_a\(1) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[0]~0_combout\);

-- Location: LCCOMB_X44_Y87_N22
\disp4|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[1]~1_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(1) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(0) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(3)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (\mem_ram|altsyncram_component|auto_generated|q_a\(2))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (\mem_ram|altsyncram_component|auto_generated|q_a\(2) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(0) $ (\mem_ram|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[1]~1_combout\);

-- Location: LCCOMB_X44_Y87_N16
\disp4|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[2]~2_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(2) & (\mem_ram|altsyncram_component|auto_generated|q_a\(3) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(1)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(0))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(2) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (\mem_ram|altsyncram_component|auto_generated|q_a\(1) & 
-- !\mem_ram|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[2]~2_combout\);

-- Location: LCCOMB_X44_Y87_N26
\disp4|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[3]~3_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (\mem_ram|altsyncram_component|auto_generated|q_a\(1) $ ((!\mem_ram|altsyncram_component|auto_generated|q_a\(2))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(0) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(2) & \mem_ram|altsyncram_component|auto_generated|q_a\(3))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (\mem_ram|altsyncram_component|auto_generated|q_a\(2) & !\mem_ram|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[3]~3_combout\);

-- Location: LCCOMB_X44_Y87_N24
\disp4|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[4]~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (\mem_ram|altsyncram_component|auto_generated|q_a\(0) & ((!\mem_ram|altsyncram_component|auto_generated|q_a\(3))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(1) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(2) & ((!\mem_ram|altsyncram_component|auto_generated|q_a\(3)))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(2) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[4]~4_combout\);

-- Location: LCCOMB_X44_Y87_N10
\disp4|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[5]~5_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (\mem_ram|altsyncram_component|auto_generated|q_a\(3) $ (((\mem_ram|altsyncram_component|auto_generated|q_a\(1)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(2)))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(2) & 
-- !\mem_ram|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[5]~5_combout\);

-- Location: LCCOMB_X44_Y87_N20
\disp4|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp4|dec_out[6]~6_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(3) & (\mem_ram|altsyncram_component|auto_generated|q_a\(1) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(2))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(0) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(1) & (\mem_ram|altsyncram_component|auto_generated|q_a\(2) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(0),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(1),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(2),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(3),
	combout => \disp4|dec_out[6]~6_combout\);

-- Location: LCCOMB_X44_Y90_N28
\disp5|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[0]~0_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(5) & (\mem_ram|altsyncram_component|auto_generated|q_a\(4) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(7))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (\mem_ram|altsyncram_component|auto_generated|q_a\(5) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[0]~0_combout\);

-- Location: LCCOMB_X44_Y90_N6
\disp5|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[1]~1_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(5) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(4) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(7)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (\mem_ram|altsyncram_component|auto_generated|q_a\(6))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(5) & (\mem_ram|altsyncram_component|auto_generated|q_a\(6) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(4) $ (\mem_ram|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[1]~1_combout\);

-- Location: LCCOMB_X44_Y90_N12
\disp5|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[2]~2_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (\mem_ram|altsyncram_component|auto_generated|q_a\(7) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(5)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(4))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (\mem_ram|altsyncram_component|auto_generated|q_a\(5) & 
-- !\mem_ram|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[2]~2_combout\);

-- Location: LCCOMB_X44_Y90_N22
\disp5|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[3]~3_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (\mem_ram|altsyncram_component|auto_generated|q_a\(6) $ ((!\mem_ram|altsyncram_component|auto_generated|q_a\(5))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(4) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(5) & !\mem_ram|altsyncram_component|auto_generated|q_a\(7))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (\mem_ram|altsyncram_component|auto_generated|q_a\(5) & \mem_ram|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[3]~3_combout\);

-- Location: LCCOMB_X44_Y90_N4
\disp5|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[4]~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(5) & (((\mem_ram|altsyncram_component|auto_generated|q_a\(4) & !\mem_ram|altsyncram_component|auto_generated|q_a\(7))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(5) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(6) & ((!\mem_ram|altsyncram_component|auto_generated|q_a\(7)))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(6) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[4]~4_combout\);

-- Location: LCCOMB_X44_Y90_N26
\disp5|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[5]~5_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (\mem_ram|altsyncram_component|auto_generated|q_a\(5) $ 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(7))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(6) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(7) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(4)) # 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[5]~5_combout\);

-- Location: LCCOMB_X44_Y90_N20
\disp5|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp5|dec_out[6]~6_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(7) & (\mem_ram|altsyncram_component|auto_generated|q_a\(6) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(5))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(4) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(5) & (\mem_ram|altsyncram_component|auto_generated|q_a\(6) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(6),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(4),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(5),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(7),
	combout => \disp5|dec_out[6]~6_combout\);

-- Location: LCCOMB_X34_Y75_N12
\disp6|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[0]~0_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(9) & (\mem_ram|altsyncram_component|auto_generated|q_a\(8) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(11))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (\mem_ram|altsyncram_component|auto_generated|q_a\(9) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[0]~0_combout\);

-- Location: LCCOMB_X34_Y75_N22
\disp6|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[1]~1_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(9) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(8) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(11)))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (\mem_ram|altsyncram_component|auto_generated|q_a\(10))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(9) & (\mem_ram|altsyncram_component|auto_generated|q_a\(10) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(8) $ (\mem_ram|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[1]~1_combout\);

-- Location: LCCOMB_X34_Y75_N24
\disp6|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[2]~2_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (\mem_ram|altsyncram_component|auto_generated|q_a\(11) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(9)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(8))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (\mem_ram|altsyncram_component|auto_generated|q_a\(9) & 
-- !\mem_ram|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[2]~2_combout\);

-- Location: LCCOMB_X34_Y75_N10
\disp6|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[3]~3_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (\mem_ram|altsyncram_component|auto_generated|q_a\(10) $ ((!\mem_ram|altsyncram_component|auto_generated|q_a\(9))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(8) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(9) & !\mem_ram|altsyncram_component|auto_generated|q_a\(11))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (\mem_ram|altsyncram_component|auto_generated|q_a\(9) & \mem_ram|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[3]~3_combout\);

-- Location: LCCOMB_X34_Y75_N20
\disp6|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[4]~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(9) & (\mem_ram|altsyncram_component|auto_generated|q_a\(8) & ((!\mem_ram|altsyncram_component|auto_generated|q_a\(11))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(9) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(10) & ((!\mem_ram|altsyncram_component|auto_generated|q_a\(11)))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(10) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[4]~4_combout\);

-- Location: LCCOMB_X34_Y75_N26
\disp6|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[5]~5_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (\mem_ram|altsyncram_component|auto_generated|q_a\(11) $ (((\mem_ram|altsyncram_component|auto_generated|q_a\(9)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(10)))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(10) & (\mem_ram|altsyncram_component|auto_generated|q_a\(9) & 
-- !\mem_ram|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[5]~5_combout\);

-- Location: LCCOMB_X34_Y75_N4
\disp6|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp6|dec_out[6]~6_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(11) & (\mem_ram|altsyncram_component|auto_generated|q_a\(10) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(9))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(8) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(9) & (\mem_ram|altsyncram_component|auto_generated|q_a\(10) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(8),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(10),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(9),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(11),
	combout => \disp6|dec_out[6]~6_combout\);

-- Location: LCCOMB_X107_Y15_N26
\disp7|dec_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[0]~0_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(15) & (\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (\mem_ram|altsyncram_component|auto_generated|q_a\(13) $ 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(14))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(15) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (\mem_ram|altsyncram_component|auto_generated|q_a\(14) $ 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	combout => \disp7|dec_out[0]~0_combout\);

-- Location: LCCOMB_X107_Y15_N24
\disp7|dec_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[1]~1_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(13) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (\mem_ram|altsyncram_component|auto_generated|q_a\(15))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(12) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(14)))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (\mem_ram|altsyncram_component|auto_generated|q_a\(14) & 
-- (\mem_ram|altsyncram_component|auto_generated|q_a\(15) $ (\mem_ram|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	combout => \disp7|dec_out[1]~1_combout\);

-- Location: LCCOMB_X108_Y15_N4
\disp7|dec_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[2]~2_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(14) & (\mem_ram|altsyncram_component|auto_generated|q_a\(15) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(13)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(12))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(14) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (\mem_ram|altsyncram_component|auto_generated|q_a\(13) & 
-- !\mem_ram|altsyncram_component|auto_generated|q_a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	combout => \disp7|dec_out[2]~2_combout\);

-- Location: LCCOMB_X107_Y15_N10
\disp7|dec_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[3]~3_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (\mem_ram|altsyncram_component|auto_generated|q_a\(13) $ (((!\mem_ram|altsyncram_component|auto_generated|q_a\(14)))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(12) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (\mem_ram|altsyncram_component|auto_generated|q_a\(15) & !\mem_ram|altsyncram_component|auto_generated|q_a\(14))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(15) & \mem_ram|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	combout => \disp7|dec_out[3]~3_combout\);

-- Location: LCCOMB_X107_Y15_N0
\disp7|dec_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[4]~4_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(15) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(12))))) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(13) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(14) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(15))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(14) & 
-- ((\mem_ram|altsyncram_component|auto_generated|q_a\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	combout => \disp7|dec_out[4]~4_combout\);

-- Location: LCCOMB_X107_Y15_N6
\disp7|dec_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[5]~5_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(15) & ((\mem_ram|altsyncram_component|auto_generated|q_a\(12)) # 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(14))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (\mem_ram|altsyncram_component|auto_generated|q_a\(15) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	combout => \disp7|dec_out[5]~5_combout\);

-- Location: LCCOMB_X107_Y15_N12
\disp7|dec_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \disp7|dec_out[6]~6_combout\ = (\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(15) & (\mem_ram|altsyncram_component|auto_generated|q_a\(13) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(14))))) # (!\mem_ram|altsyncram_component|auto_generated|q_a\(12) & (!\mem_ram|altsyncram_component|auto_generated|q_a\(13) & (\mem_ram|altsyncram_component|auto_generated|q_a\(15) $ 
-- (!\mem_ram|altsyncram_component|auto_generated|q_a\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem_ram|altsyncram_component|auto_generated|q_a\(13),
	datab => \mem_ram|altsyncram_component|auto_generated|q_a\(15),
	datac => \mem_ram|altsyncram_component|auto_generated|q_a\(14),
	datad => \mem_ram|altsyncram_component|auto_generated|q_a\(12),
	combout => \disp7|dec_out[6]~6_combout\);

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


