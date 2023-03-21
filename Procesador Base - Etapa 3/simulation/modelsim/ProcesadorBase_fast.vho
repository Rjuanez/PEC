-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/21/2023 23:58:27"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sisa IS
    PORT (
	CLOCK_50 : IN std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SW : IN std_logic_vector(9 DOWNTO 9);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END sisa;

-- Design Ports Information
-- SRAM_DQ[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sisa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \counter_clock[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \proc0|d0|reg0|registro~133_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~160_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~162_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~70_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~105_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~212_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~91_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~213_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~214_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~59_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~43_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~222_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~124_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~223_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~140_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~224_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~44_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~28_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~225_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~226_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~227_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~125_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~93_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~228_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~229_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~61_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~45_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~29_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~230_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~77_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~231_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~232_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~126_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~94_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~233_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~234_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~235_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~78_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~236_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~237_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~111_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~238_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~239_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~63_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~47_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~31_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~240_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~79_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~241_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~242_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~128_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~96_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~243_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~244_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~32_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~245_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~80_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~246_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~247_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~113_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~129_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~97_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~248_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~145_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~249_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~250_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~81_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~251_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~252_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~114_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~130_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~253_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~254_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~66_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~51_regout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux0~0_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~17_combout\ : std_logic;
SIGNAL \counter_clock[2]~0_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~282_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~284_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~286_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~287_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~288_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~294_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~295_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~296_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~300_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~301_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~308_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~310_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~311_combout\ : std_logic;
SIGNAL \counter_clock[1]~1_combout\ : std_logic;
SIGNAL \counter_clock[0]~2_combout\ : std_logic;
SIGNAL \counter_clock[2]~clkctrl_outclk\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~133feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~105feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~59feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~91feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~43feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~124feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~125feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~77feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~78feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~126feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~32feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~51feeder_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~0\ : std_logic;
SIGNAL \SRAM_DQ[1]~1\ : std_logic;
SIGNAL \SRAM_DQ[2]~2\ : std_logic;
SIGNAL \SRAM_DQ[3]~3\ : std_logic;
SIGNAL \SRAM_DQ[4]~4\ : std_logic;
SIGNAL \SRAM_DQ[5]~5\ : std_logic;
SIGNAL \SRAM_DQ[6]~6\ : std_logic;
SIGNAL \SRAM_DQ[7]~7\ : std_logic;
SIGNAL \SRAM_DQ[8]~8\ : std_logic;
SIGNAL \SRAM_DQ[9]~9\ : std_logic;
SIGNAL \SRAM_DQ[10]~10\ : std_logic;
SIGNAL \SRAM_DQ[11]~11\ : std_logic;
SIGNAL \SRAM_DQ[12]~12\ : std_logic;
SIGNAL \SRAM_DQ[13]~13\ : std_logic;
SIGNAL \SRAM_DQ[14]~14\ : std_logic;
SIGNAL \SRAM_DQ[15]~15\ : std_logic;
SIGNAL \proc0|cu0|ge|estat~0_combout\ : std_logic;
SIGNAL \proc0|cu0|ge|estat~regout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~9_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~16_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual[13]~1_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~11_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~12_combout\ : std_logic;
SIGNAL \memory0|sram_controller|dataReaded[15]~8_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~13_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux3~0_combout\ : std_logic;
SIGNAL \proc0|d0|TOy~0_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~44_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[8]~5_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~15_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~100_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[0]~17_combout\ : std_logic;
SIGNAL \proc0|cu0|ge|word_byte~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|dataReaded[10]~6_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~10_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~7_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~8_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux4~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|dataReaded[0]~7_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~14_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~2_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~3_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux9~0_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux6~0_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~5_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~269_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[9]~4_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~0_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~270_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~52_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~161_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux5~0_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~263_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~264_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~100_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~265_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~268_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~132_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~267_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~84_regout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~6_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux7~0_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~158_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~159_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~79_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux2~0_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[0]~6_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[0]~34_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~274_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~68_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~271_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~273_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~20_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~272_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~36_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~277_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~278_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~266_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~116_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~275_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~276_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~279_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux1~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[7]~34_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~53feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~53_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~69_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~37_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~155_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~156_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~117_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~85_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~153_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~154_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~157_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~45\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~46_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~81_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~82_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[1]~2_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[1]~3_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~101_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~148_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~149_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~21_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~150_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~151_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~152_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[2]~7_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~22_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~170_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~171_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~134_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~102_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~118feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~118_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~86_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~168_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~169_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~172_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~47\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~48_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~83_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~84_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[2]~8_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~54_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~38_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~165_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~166_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~163_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~164_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~167_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[3]~9_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~55_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~23_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~180_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~181_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~135feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~135_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~119_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~87_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~178_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~103_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~179_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~182_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~49\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~50_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~85_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~86_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[3]~10_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~71_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~39feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~39_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~175_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~176_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~173_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~174_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~177_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~136feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~136_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~104_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~120_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~88_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~188_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~189_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~72_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~24_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~190_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~191_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~192_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~51\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~52_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~87_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~88_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[4]~11_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[4]~12_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~56_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~40_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~185_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~186_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~183_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~184_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~187_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[5]~13_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~57_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~25_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~41_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~200_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~201_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~137_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~121_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~89_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~198_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~199_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~202_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~53\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~54_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~89_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~101_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[5]~14_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~73_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~195_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~196_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~193_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~194_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~197_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux19~0_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~138_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~90_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~122_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~203_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~204_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~58feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~58_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~26_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~205_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~206_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~56_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[6]~15_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~55\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~57_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~90_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[6]~16_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~74_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~42_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~209_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~210_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~106feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~106_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~207_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~208_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~211_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[7]~17_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~58\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~60_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~91_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[7]~18_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~75_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~27feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~27_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~219_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~220_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~123_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~217_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~139_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~107feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~107_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~218_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~221_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~17_combout\ : std_logic;
SIGNAL \proc0|cu0|clogic0|Mux9~1_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~61\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~63_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~92_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[8]~19_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[8]~20_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~76_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~60_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~283_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~92_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~280_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~108feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~108_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~281_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[8]~35_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[8]~43_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~80_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[15]~44_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~64\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~65_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~93_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~102_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[9]~21_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~141_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~109feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~109_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~285_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[9]~36_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[9]~45_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~62_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~66\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~67_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~94_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[10]~22_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[10]~23_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~62feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~62_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~30_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~46feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~46_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~290_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~291_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~142_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~110feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~110_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~289_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[10]~37_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[10]~46_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~4_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~68\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~69_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~95_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[11]~24_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[11]~25_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~95feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~95_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~127_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~292_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~143feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~143_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~293_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[11]~38_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[11]~47_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~70\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~71_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~96_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[12]~26_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[12]~27_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~144feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~144_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~112feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~112_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~297_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~48feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~48_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~298_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~64feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~64_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~299_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[12]~39_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[12]~48_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~72\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~73_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~97_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[13]~28_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[13]~29_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~49_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~33_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~302_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~65_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~303_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[13]~40_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[13]~49_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~34feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~34_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~255_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~82_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~256_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~257_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~74\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~75_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~98_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[14]~30_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[14]~31_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~50_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~306_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~307_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~98_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~304_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~146_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~305_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[14]~41_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[14]~50_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[15]~32_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~83feeder_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~83_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~67_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~35_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~260_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~261_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~115_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~131_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~99_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~258_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~259_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~262_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~76\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~77_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~99_combout\ : std_logic;
SIGNAL \proc0|d0|TOd[15]~33_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~147_regout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~309_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[15]~42_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_DQ[15]~51_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[1]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~21_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~19_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~20_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~19_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~18_combout\ : std_logic;
SIGNAL \proc0|cu0|ir_actual~20_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~18_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~21_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~22_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[1]~2_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[1]~16\ : std_logic;
SIGNAL \proc0|cu0|new_pc[2]~23_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[2]~3_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[2]~24\ : std_logic;
SIGNAL \proc0|cu0|new_pc[3]~25_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[3]~4_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[3]~26\ : std_logic;
SIGNAL \proc0|cu0|new_pc[4]~27_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[4]~5_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[4]~28\ : std_logic;
SIGNAL \proc0|cu0|new_pc[5]~29_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[5]~18_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[5]~6_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[5]~30\ : std_logic;
SIGNAL \proc0|cu0|new_pc[6]~31_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[6]~7_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[6]~32\ : std_logic;
SIGNAL \proc0|cu0|new_pc[7]~33_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~215_combout\ : std_logic;
SIGNAL \proc0|d0|reg0|registro~216_combout\ : std_logic;
SIGNAL \proc0|d0|alu0|Add0~59_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[7]~8_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[7]~34\ : std_logic;
SIGNAL \proc0|cu0|new_pc[8]~35_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[8]~9_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[8]~36\ : std_logic;
SIGNAL \proc0|cu0|new_pc[9]~37_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[9]~10_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[9]~38\ : std_logic;
SIGNAL \proc0|cu0|new_pc[10]~39_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[10]~11_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[10]~40\ : std_logic;
SIGNAL \proc0|cu0|new_pc[11]~41_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[11]~12_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[11]~42\ : std_logic;
SIGNAL \proc0|cu0|new_pc[12]~43_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[12]~13_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[12]~44\ : std_logic;
SIGNAL \proc0|cu0|new_pc[13]~45_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[13]~14_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[13]~46\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~47_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[14]~15_combout\ : std_logic;
SIGNAL \proc0|cu0|new_pc[14]~48\ : std_logic;
SIGNAL \proc0|cu0|new_pc[15]~49_combout\ : std_logic;
SIGNAL \proc0|d0|addr_m[15]~16_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_UB_N~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_LB_N~combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \memory0|sram_controller|Selector2~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|estat.WAITING~regout\ : std_logic;
SIGNAL \memory0|sram_controller|estat~5_combout\ : std_logic;
SIGNAL \memory0|sram_controller|estat.WRITING~regout\ : std_logic;
SIGNAL \memory0|sram_controller|Selector1~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|estat.NOTHING~regout\ : std_logic;
SIGNAL \memory0|sram_controller|Selector0~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|SRAM_WE_N~regout\ : std_logic;
SIGNAL \Segments|h0|Mux6~0_combout\ : std_logic;
SIGNAL \Segments|h0|Mux5~0_combout\ : std_logic;
SIGNAL \Segments|h0|Mux4~0_combout\ : std_logic;
SIGNAL \Segments|h0|Mux3~0_combout\ : std_logic;
SIGNAL \Segments|h0|Mux2~0_combout\ : std_logic;
SIGNAL \Segments|h0|Mux1~0_combout\ : std_logic;
SIGNAL \Segments|h0|Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux6~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux5~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux4~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux3~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux2~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux1~0_combout\ : std_logic;
SIGNAL \Segments|h1|Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux6~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux5~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux4~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux3~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux2~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux1~0_combout\ : std_logic;
SIGNAL \Segments|h2|Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux6~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux5~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux4~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux3~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux2~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux1~0_combout\ : std_logic;
SIGNAL \Segments|h3|Mux0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \proc0|cu0|new_pc\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \proc0|cu0|ir_actual\ : std_logic_vector(15 DOWNTO 0);
SIGNAL counter_clock : std_logic_vector(2 DOWNTO 0);
SIGNAL \Segments|h3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Segments|h0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Segments|h0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Segments|h0|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Segments|h0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \memory0|sram_controller|ALT_INV_SRAM_WE_N~regout\ : std_logic;
SIGNAL \memory0|sram_controller|ALT_INV_SRAM_LB_N~combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_WE_N <= ww_SRAM_WE_N;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter_clock[2]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & counter_clock(2));

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\Segments|h3|ALT_INV_Mux0~0_combout\ <= NOT \Segments|h3|Mux0~0_combout\;
\Segments|h2|ALT_INV_Mux0~0_combout\ <= NOT \Segments|h2|Mux0~0_combout\;
\Segments|h1|ALT_INV_Mux0~0_combout\ <= NOT \Segments|h1|Mux0~0_combout\;
\Segments|h0|ALT_INV_Mux0~0_combout\ <= NOT \Segments|h0|Mux0~0_combout\;
\Segments|h0|ALT_INV_Mux1~0_combout\ <= NOT \Segments|h0|Mux1~0_combout\;
\Segments|h0|ALT_INV_Mux2~0_combout\ <= NOT \Segments|h0|Mux2~0_combout\;
\Segments|h0|ALT_INV_Mux3~0_combout\ <= NOT \Segments|h0|Mux3~0_combout\;
\Segments|h0|ALT_INV_Mux6~0_combout\ <= NOT \Segments|h0|Mux6~0_combout\;
\memory0|sram_controller|ALT_INV_SRAM_WE_N~regout\ <= NOT \memory0|sram_controller|SRAM_WE_N~regout\;
\memory0|sram_controller|ALT_INV_SRAM_LB_N~combout\ <= NOT \memory0|sram_controller|SRAM_LB_N~combout\;

-- Location: LCFF_X12_Y3_N25
\proc0|d0|reg0|registro~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~133feeder_combout\,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~133_regout\);

-- Location: LCCOMB_X12_Y1_N20
\proc0|d0|reg0|registro~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~160_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~36_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~20_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~36_regout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~20_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~160_combout\);

-- Location: LCCOMB_X12_Y1_N0
\proc0|d0|reg0|registro~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~162_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~159_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|d0|reg0|registro~161_combout\,
	datac => \proc0|cu0|clogic0|Mux5~0_combout\,
	datad => \proc0|d0|reg0|registro~159_combout\,
	combout => \proc0|d0|reg0|registro~162_combout\);

-- Location: LCFF_X12_Y5_N7
\proc0|d0|reg0|registro~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~70_regout\);

-- Location: LCFF_X13_Y2_N23
\proc0|d0|reg0|registro~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~105feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~105_regout\);

-- Location: LCCOMB_X10_Y5_N30
\proc0|d0|reg0|registro~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~212_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~204_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~206_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~206_combout\,
	datad => \proc0|d0|reg0|registro~204_combout\,
	combout => \proc0|d0|reg0|registro~212_combout\);

-- Location: LCFF_X13_Y5_N3
\proc0|d0|reg0|registro~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~91feeder_combout\,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~91_regout\);

-- Location: LCCOMB_X13_Y5_N28
\proc0|d0|reg0|registro~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~213_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~123_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~91_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~123_regout\,
	datab => \proc0|d0|reg0|registro~91_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~213_combout\);

-- Location: LCCOMB_X10_Y5_N6
\proc0|d0|reg0|registro~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~214_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~213_combout\ & (\proc0|d0|reg0|registro~139_regout\)) # (!\proc0|d0|reg0|registro~213_combout\ & ((\proc0|d0|reg0|registro~107_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~139_regout\,
	datab => \proc0|d0|reg0|registro~107_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|d0|reg0|registro~213_combout\,
	combout => \proc0|d0|reg0|registro~214_combout\);

-- Location: LCFF_X10_Y5_N21
\proc0|d0|reg0|registro~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~59feeder_combout\,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~59_regout\);

-- Location: LCFF_X14_Y5_N21
\proc0|d0|reg0|registro~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~43feeder_combout\,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~43_regout\);

-- Location: LCCOMB_X10_Y5_N22
\proc0|d0|reg0|registro~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~222_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~214_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~216_combout\,
	datad => \proc0|d0|reg0|registro~214_combout\,
	combout => \proc0|d0|reg0|registro~222_combout\);

-- Location: LCFF_X13_Y6_N17
\proc0|d0|reg0|registro~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~124feeder_combout\,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~124_regout\);

-- Location: LCCOMB_X13_Y5_N18
\proc0|d0|reg0|registro~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~223_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~124_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~92_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~124_regout\,
	datab => \proc0|d0|reg0|registro~92_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~223_combout\);

-- Location: LCFF_X11_Y6_N29
\proc0|d0|reg0|registro~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[8]~20_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~140_regout\);

-- Location: LCCOMB_X12_Y4_N14
\proc0|d0|reg0|registro~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~224_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~223_combout\ & ((\proc0|d0|reg0|registro~140_regout\))) # (!\proc0|d0|reg0|registro~223_combout\ & (\proc0|d0|reg0|registro~108_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~223_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~108_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~140_regout\,
	datad => \proc0|d0|reg0|registro~223_combout\,
	combout => \proc0|d0|reg0|registro~224_combout\);

-- Location: LCFF_X11_Y4_N29
\proc0|d0|reg0|registro~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[8]~20_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~44_regout\);

-- Location: LCFF_X11_Y4_N11
\proc0|d0|reg0|registro~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[8]~20_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~28_regout\);

-- Location: LCCOMB_X11_Y4_N8
\proc0|d0|reg0|registro~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~225_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~44_regout\))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~28_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~28_regout\,
	datab => \proc0|d0|reg0|registro~44_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~225_combout\);

-- Location: LCCOMB_X12_Y6_N12
\proc0|d0|reg0|registro~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~226_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~225_combout\ & (\proc0|d0|reg0|registro~76_regout\)) # (!\proc0|d0|reg0|registro~225_combout\ & ((\proc0|d0|reg0|registro~60_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~225_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~76_regout\,
	datac => \proc0|d0|reg0|registro~60_regout\,
	datad => \proc0|d0|reg0|registro~225_combout\,
	combout => \proc0|d0|reg0|registro~226_combout\);

-- Location: LCCOMB_X12_Y4_N0
\proc0|d0|reg0|registro~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~227_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~224_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~224_combout\,
	datad => \proc0|d0|reg0|registro~226_combout\,
	combout => \proc0|d0|reg0|registro~227_combout\);

-- Location: LCFF_X11_Y5_N27
\proc0|d0|reg0|registro~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~125feeder_combout\,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~125_regout\);

-- Location: LCFF_X11_Y3_N13
\proc0|d0|reg0|registro~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[9]~21_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~93_regout\);

-- Location: LCCOMB_X11_Y3_N26
\proc0|d0|reg0|registro~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~228_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~125_regout\) # (\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~93_regout\ & 
-- ((!\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~93_regout\,
	datab => \proc0|d0|reg0|registro~125_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~228_combout\);

-- Location: LCCOMB_X11_Y3_N30
\proc0|d0|reg0|registro~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~229_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~228_combout\ & ((\proc0|d0|reg0|registro~141_regout\))) # (!\proc0|d0|reg0|registro~228_combout\ & (\proc0|d0|reg0|registro~109_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~109_regout\,
	datac => \proc0|d0|reg0|registro~141_regout\,
	datad => \proc0|d0|reg0|registro~228_combout\,
	combout => \proc0|d0|reg0|registro~229_combout\);

-- Location: LCFF_X12_Y3_N29
\proc0|d0|reg0|registro~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[9]~21_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~61_regout\);

-- Location: LCFF_X11_Y4_N23
\proc0|d0|reg0|registro~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[9]~21_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~45_regout\);

-- Location: LCFF_X11_Y4_N21
\proc0|d0|reg0|registro~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[9]~21_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~29_regout\);

-- Location: LCCOMB_X11_Y4_N18
\proc0|d0|reg0|registro~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~230_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~45_regout\))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~29_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~29_regout\,
	datab => \proc0|d0|reg0|registro~45_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~230_combout\);

-- Location: LCFF_X11_Y5_N9
\proc0|d0|reg0|registro~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~77feeder_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~77_regout\);

-- Location: LCCOMB_X12_Y3_N30
\proc0|d0|reg0|registro~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~231_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~230_combout\ & ((\proc0|d0|reg0|registro~77_regout\))) # (!\proc0|d0|reg0|registro~230_combout\ & (\proc0|d0|reg0|registro~61_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~61_regout\,
	datac => \proc0|d0|reg0|registro~77_regout\,
	datad => \proc0|d0|reg0|registro~230_combout\,
	combout => \proc0|d0|reg0|registro~231_combout\);

-- Location: LCCOMB_X12_Y3_N12
\proc0|d0|reg0|registro~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~232_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~229_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~231_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~229_combout\,
	datad => \proc0|d0|reg0|registro~231_combout\,
	combout => \proc0|d0|reg0|registro~232_combout\);

-- Location: LCFF_X13_Y4_N21
\proc0|d0|reg0|registro~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~126feeder_combout\,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~126_regout\);

-- Location: LCFF_X13_Y5_N17
\proc0|d0|reg0|registro~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[10]~23_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~94_regout\);

-- Location: LCCOMB_X13_Y4_N26
\proc0|d0|reg0|registro~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~233_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~126_regout\))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~94_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~94_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~126_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~233_combout\);

-- Location: LCCOMB_X12_Y4_N28
\proc0|d0|reg0|registro~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~234_combout\ = (\proc0|d0|reg0|registro~233_combout\ & (((\proc0|d0|reg0|registro~142_regout\) # (!\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|d0|reg0|registro~233_combout\ & (\proc0|d0|reg0|registro~110_regout\ & 
-- ((\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~110_regout\,
	datab => \proc0|d0|reg0|registro~142_regout\,
	datac => \proc0|d0|reg0|registro~233_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~234_combout\);

-- Location: LCCOMB_X12_Y1_N4
\proc0|d0|reg0|registro~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~235_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~46_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~30_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~46_regout\,
	datab => \proc0|d0|reg0|registro~30_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~235_combout\);

-- Location: LCFF_X11_Y5_N17
\proc0|d0|reg0|registro~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~78feeder_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~78_regout\);

-- Location: LCCOMB_X12_Y4_N16
\proc0|d0|reg0|registro~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~236_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~235_combout\ & ((\proc0|d0|reg0|registro~78_regout\))) # (!\proc0|d0|reg0|registro~235_combout\ & (\proc0|d0|reg0|registro~62_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~62_regout\,
	datac => \proc0|d0|reg0|registro~78_regout\,
	datad => \proc0|d0|reg0|registro~235_combout\,
	combout => \proc0|d0|reg0|registro~236_combout\);

-- Location: LCCOMB_X12_Y4_N26
\proc0|d0|reg0|registro~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~237_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~234_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~236_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~236_combout\,
	datad => \proc0|d0|reg0|registro~234_combout\,
	combout => \proc0|d0|reg0|registro~237_combout\);

-- Location: LCFF_X12_Y4_N13
\proc0|d0|reg0|registro~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[11]~25_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~111_regout\);

-- Location: LCCOMB_X12_Y4_N18
\proc0|d0|reg0|registro~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~238_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~127_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~95_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~127_regout\,
	datac => \proc0|d0|reg0|registro~95_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~238_combout\);

-- Location: LCCOMB_X12_Y4_N12
\proc0|d0|reg0|registro~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~239_combout\ = (\proc0|d0|reg0|registro~238_combout\ & ((\proc0|d0|reg0|registro~143_regout\) # ((!\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|d0|reg0|registro~238_combout\ & (((\proc0|d0|reg0|registro~111_regout\ & 
-- \proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~143_regout\,
	datab => \proc0|d0|reg0|registro~238_combout\,
	datac => \proc0|d0|reg0|registro~111_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~239_combout\);

-- Location: LCFF_X12_Y4_N9
\proc0|d0|reg0|registro~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[11]~25_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~63_regout\);

-- Location: LCFF_X11_Y4_N13
\proc0|d0|reg0|registro~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[11]~25_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~47_regout\);

-- Location: LCFF_X11_Y4_N7
\proc0|d0|reg0|registro~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[11]~25_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~31_regout\);

-- Location: LCCOMB_X11_Y4_N24
\proc0|d0|reg0|registro~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~240_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~47_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~31_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~47_regout\,
	datab => \proc0|d0|reg0|registro~31_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~240_combout\);

-- Location: LCFF_X12_Y5_N17
\proc0|d0|reg0|registro~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[11]~25_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~79_regout\);

-- Location: LCCOMB_X12_Y4_N2
\proc0|d0|reg0|registro~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~241_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~240_combout\ & ((\proc0|d0|reg0|registro~79_regout\))) # (!\proc0|d0|reg0|registro~240_combout\ & (\proc0|d0|reg0|registro~63_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~63_regout\,
	datac => \proc0|d0|reg0|registro~79_regout\,
	datad => \proc0|d0|reg0|registro~240_combout\,
	combout => \proc0|d0|reg0|registro~241_combout\);

-- Location: LCCOMB_X11_Y4_N26
\proc0|d0|reg0|registro~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~242_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~239_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~239_combout\,
	datad => \proc0|d0|reg0|registro~241_combout\,
	combout => \proc0|d0|reg0|registro~242_combout\);

-- Location: LCFF_X14_Y2_N7
\proc0|d0|reg0|registro~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[12]~27_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~128_regout\);

-- Location: LCFF_X13_Y5_N13
\proc0|d0|reg0|registro~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[12]~27_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~96_regout\);

-- Location: LCCOMB_X13_Y5_N26
\proc0|d0|reg0|registro~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~243_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~128_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~96_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~128_regout\,
	datac => \proc0|d0|reg0|registro~96_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~243_combout\);

-- Location: LCCOMB_X10_Y5_N2
\proc0|d0|reg0|registro~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~244_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~243_combout\ & ((\proc0|d0|reg0|registro~144_regout\))) # (!\proc0|d0|reg0|registro~243_combout\ & (\proc0|d0|reg0|registro~112_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~112_regout\,
	datab => \proc0|d0|reg0|registro~144_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|d0|reg0|registro~243_combout\,
	combout => \proc0|d0|reg0|registro~244_combout\);

-- Location: LCFF_X15_Y5_N15
\proc0|d0|reg0|registro~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~32feeder_combout\,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~32_regout\);

-- Location: LCCOMB_X15_Y5_N0
\proc0|d0|reg0|registro~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~245_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~48_regout\) # ((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~32_regout\ & 
-- !\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~48_regout\,
	datab => \proc0|d0|reg0|registro~32_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~245_combout\);

-- Location: LCFF_X14_Y2_N1
\proc0|d0|reg0|registro~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[12]~27_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~80_regout\);

-- Location: LCCOMB_X15_Y5_N22
\proc0|d0|reg0|registro~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~246_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~245_combout\ & ((\proc0|d0|reg0|registro~80_regout\))) # (!\proc0|d0|reg0|registro~245_combout\ & (\proc0|d0|reg0|registro~64_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~64_regout\,
	datac => \proc0|d0|reg0|registro~80_regout\,
	datad => \proc0|d0|reg0|registro~245_combout\,
	combout => \proc0|d0|reg0|registro~246_combout\);

-- Location: LCCOMB_X10_Y5_N12
\proc0|d0|reg0|registro~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~247_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~244_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~246_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~244_combout\,
	datad => \proc0|d0|reg0|registro~246_combout\,
	combout => \proc0|d0|reg0|registro~247_combout\);

-- Location: LCFF_X11_Y1_N3
\proc0|d0|reg0|registro~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~113_regout\);

-- Location: LCFF_X11_Y2_N31
\proc0|d0|reg0|registro~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~129_regout\);

-- Location: LCFF_X10_Y3_N23
\proc0|d0|reg0|registro~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~97_regout\);

-- Location: LCCOMB_X10_Y2_N14
\proc0|d0|reg0|registro~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~248_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~129_regout\) # (\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~97_regout\ & 
-- ((!\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~97_regout\,
	datab => \proc0|d0|reg0|registro~129_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~248_combout\);

-- Location: LCFF_X10_Y2_N13
\proc0|d0|reg0|registro~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~145_regout\);

-- Location: LCCOMB_X10_Y2_N18
\proc0|d0|reg0|registro~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~249_combout\ = (\proc0|d0|reg0|registro~248_combout\ & ((\proc0|d0|reg0|registro~145_regout\) # ((!\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|d0|reg0|registro~248_combout\ & (((\proc0|d0|reg0|registro~113_regout\ & 
-- \proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~145_regout\,
	datab => \proc0|d0|reg0|registro~113_regout\,
	datac => \proc0|d0|reg0|registro~248_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~249_combout\);

-- Location: LCCOMB_X10_Y2_N6
\proc0|d0|reg0|registro~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~250_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~49_regout\))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~33_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~33_regout\,
	datab => \proc0|d0|reg0|registro~49_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~250_combout\);

-- Location: LCFF_X10_Y3_N17
\proc0|d0|reg0|registro~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~81_regout\);

-- Location: LCCOMB_X10_Y2_N4
\proc0|d0|reg0|registro~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~251_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~250_combout\ & (\proc0|d0|reg0|registro~81_regout\)) # (!\proc0|d0|reg0|registro~250_combout\ & ((\proc0|d0|reg0|registro~65_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~81_regout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~65_regout\,
	datad => \proc0|d0|reg0|registro~250_combout\,
	combout => \proc0|d0|reg0|registro~251_combout\);

-- Location: LCCOMB_X10_Y2_N8
\proc0|d0|reg0|registro~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~252_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~249_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~251_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~251_combout\,
	datad => \proc0|d0|reg0|registro~249_combout\,
	combout => \proc0|d0|reg0|registro~252_combout\);

-- Location: LCFF_X12_Y2_N23
\proc0|d0|reg0|registro~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[14]~31_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~114_regout\);

-- Location: LCFF_X11_Y2_N29
\proc0|d0|reg0|registro~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[14]~31_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~130_regout\);

-- Location: LCCOMB_X11_Y3_N14
\proc0|d0|reg0|registro~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~253_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~130_regout\) # ((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~98_regout\ & 
-- !\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~130_regout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~98_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~253_combout\);

-- Location: LCCOMB_X11_Y3_N2
\proc0|d0|reg0|registro~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~254_combout\ = (\proc0|d0|reg0|registro~253_combout\ & (((\proc0|d0|reg0|registro~146_regout\) # (!\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|d0|reg0|registro~253_combout\ & (\proc0|d0|reg0|registro~114_regout\ & 
-- ((\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~114_regout\,
	datab => \proc0|d0|reg0|registro~146_regout\,
	datac => \proc0|d0|reg0|registro~253_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~254_combout\);

-- Location: LCFF_X12_Y2_N5
\proc0|d0|reg0|registro~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[14]~31_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~66_regout\);

-- Location: LCFF_X14_Y4_N5
\proc0|d0|reg0|registro~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~51feeder_combout\,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~51_regout\);

-- Location: LCFF_X49_Y14_N7
\counter_clock[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter_clock[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_clock(2));

-- Location: LCCOMB_X9_Y1_N10
\proc0|cu0|clogic0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux0~0_combout\ = (\proc0|cu0|ir_actual\(12) & ((\proc0|cu0|ir_actual\(14) & ((!\proc0|cu0|ir_actual\(13)))) # (!\proc0|cu0|ir_actual\(14) & (!\proc0|cu0|ir_actual\(15) & \proc0|cu0|ir_actual\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(14),
	datab => \proc0|cu0|ir_actual\(15),
	datac => \proc0|cu0|ir_actual\(13),
	datad => \proc0|cu0|ir_actual\(12),
	combout => \proc0|cu0|clogic0|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y1_N10
\proc0|cu0|new_pc[14]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~17_combout\ = (\proc0|cu0|ir_actual\(12) & (\proc0|cu0|ir_actual\(14) & (\proc0|cu0|ir_actual\(10) & \proc0|cu0|ir_actual\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(12),
	datab => \proc0|cu0|ir_actual\(14),
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|ir_actual\(11),
	combout => \proc0|cu0|new_pc[14]~17_combout\);

-- Location: LCFF_X49_Y14_N19
\counter_clock[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter_clock[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_clock(0));

-- Location: LCFF_X49_Y14_N1
\counter_clock[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \counter_clock[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter_clock(1));

-- Location: LCCOMB_X49_Y14_N6
\counter_clock[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_clock[2]~0_combout\ = counter_clock(2) $ (((counter_clock(0) & counter_clock(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_clock(0),
	datac => counter_clock(2),
	datad => counter_clock(1),
	combout => \counter_clock[2]~0_combout\);

-- Location: LCCOMB_X11_Y4_N10
\proc0|d0|reg0|registro~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~282_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~44_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~28_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~44_regout\,
	datac => \proc0|d0|reg0|registro~28_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~282_combout\);

-- Location: LCCOMB_X11_Y3_N12
\proc0|d0|reg0|registro~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~284_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~125_regout\)) # (!\proc0|cu0|ir_actual\(10) & 
-- ((\proc0|d0|reg0|registro~93_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~125_regout\,
	datac => \proc0|d0|reg0|registro~93_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~284_combout\);

-- Location: LCCOMB_X11_Y4_N20
\proc0|d0|reg0|registro~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~286_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~45_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~29_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~45_regout\,
	datac => \proc0|d0|reg0|registro~29_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~286_combout\);

-- Location: LCCOMB_X12_Y3_N28
\proc0|d0|reg0|registro~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~287_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~286_combout\ & (\proc0|d0|reg0|registro~77_regout\)) # (!\proc0|d0|reg0|registro~286_combout\ & ((\proc0|d0|reg0|registro~61_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~77_regout\,
	datac => \proc0|d0|reg0|registro~61_regout\,
	datad => \proc0|d0|reg0|registro~286_combout\,
	combout => \proc0|d0|reg0|registro~287_combout\);

-- Location: LCCOMB_X13_Y4_N16
\proc0|d0|reg0|registro~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~288_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~126_regout\) # (\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~94_regout\ & ((!\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~94_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~126_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~288_combout\);

-- Location: LCCOMB_X11_Y4_N6
\proc0|d0|reg0|registro~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~294_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~47_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~31_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~47_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~31_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~294_combout\);

-- Location: LCCOMB_X12_Y4_N8
\proc0|d0|reg0|registro~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~295_combout\ = (\proc0|d0|reg0|registro~294_combout\ & ((\proc0|d0|reg0|registro~79_regout\) # ((!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~294_combout\ & (((\proc0|d0|reg0|registro~63_regout\ & 
-- \proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~294_combout\,
	datab => \proc0|d0|reg0|registro~79_regout\,
	datac => \proc0|d0|reg0|registro~63_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~295_combout\);

-- Location: LCCOMB_X13_Y5_N12
\proc0|d0|reg0|registro~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~296_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9)) # ((\proc0|d0|reg0|registro~128_regout\)))) # (!\proc0|cu0|ir_actual\(10) & (!\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~96_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|d0|reg0|registro~96_regout\,
	datad => \proc0|d0|reg0|registro~128_regout\,
	combout => \proc0|d0|reg0|registro~296_combout\);

-- Location: LCCOMB_X10_Y2_N26
\proc0|d0|reg0|registro~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~300_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~129_regout\) # (\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~97_regout\ & ((!\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~97_regout\,
	datab => \proc0|d0|reg0|registro~129_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~300_combout\);

-- Location: LCCOMB_X10_Y2_N12
\proc0|d0|reg0|registro~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~301_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~300_combout\ & (\proc0|d0|reg0|registro~145_regout\)) # (!\proc0|d0|reg0|registro~300_combout\ & ((\proc0|d0|reg0|registro~113_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~300_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~300_combout\,
	datac => \proc0|d0|reg0|registro~145_regout\,
	datad => \proc0|d0|reg0|registro~113_regout\,
	combout => \proc0|d0|reg0|registro~301_combout\);

-- Location: LCCOMB_X11_Y4_N2
\proc0|d0|reg0|registro~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~308_combout\ = (\proc0|cu0|ir_actual\(9) & (\proc0|cu0|ir_actual\(10))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~131_regout\)) # (!\proc0|cu0|ir_actual\(10) & 
-- ((\proc0|d0|reg0|registro~99_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~131_regout\,
	datad => \proc0|d0|reg0|registro~99_regout\,
	combout => \proc0|d0|reg0|registro~308_combout\);

-- Location: LCCOMB_X13_Y4_N14
\proc0|d0|reg0|registro~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~310_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~51_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~35_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~51_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~35_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~310_combout\);

-- Location: LCCOMB_X13_Y4_N28
\proc0|d0|reg0|registro~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~311_combout\ = (\proc0|d0|reg0|registro~310_combout\ & (((\proc0|d0|reg0|registro~83_regout\) # (!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~310_combout\ & (\proc0|d0|reg0|registro~67_regout\ & 
-- (\proc0|cu0|ir_actual\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~67_regout\,
	datab => \proc0|d0|reg0|registro~310_combout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|d0|reg0|registro~83_regout\,
	combout => \proc0|d0|reg0|registro~311_combout\);

-- Location: LCCOMB_X49_Y14_N0
\counter_clock[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_clock[1]~1_combout\ = counter_clock(1) $ (counter_clock(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_clock(1),
	datad => counter_clock(0),
	combout => \counter_clock[1]~1_combout\);

-- Location: LCCOMB_X49_Y14_N18
\counter_clock[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_clock[0]~2_combout\ = !counter_clock(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter_clock(0),
	combout => \counter_clock[0]~2_combout\);

-- Location: CLKCTRL_G5
\counter_clock[2]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \counter_clock[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \counter_clock[2]~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y3_N24
\proc0|d0|reg0|registro~133feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~133feeder_combout\ = \proc0|d0|TOd[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[1]~3_combout\,
	combout => \proc0|d0|reg0|registro~133feeder_combout\);

-- Location: LCCOMB_X13_Y2_N22
\proc0|d0|reg0|registro~105feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~105feeder_combout\ = \proc0|d0|TOd[5]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[5]~14_combout\,
	combout => \proc0|d0|reg0|registro~105feeder_combout\);

-- Location: LCCOMB_X10_Y5_N20
\proc0|d0|reg0|registro~59feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~59feeder_combout\ = \proc0|d0|TOd[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[7]~18_combout\,
	combout => \proc0|d0|reg0|registro~59feeder_combout\);

-- Location: LCCOMB_X13_Y5_N2
\proc0|d0|reg0|registro~91feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~91feeder_combout\ = \proc0|d0|TOd[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[7]~18_combout\,
	combout => \proc0|d0|reg0|registro~91feeder_combout\);

-- Location: LCCOMB_X14_Y5_N20
\proc0|d0|reg0|registro~43feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~43feeder_combout\ = \proc0|d0|TOd[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[7]~18_combout\,
	combout => \proc0|d0|reg0|registro~43feeder_combout\);

-- Location: LCCOMB_X13_Y6_N16
\proc0|d0|reg0|registro~124feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~124feeder_combout\ = \proc0|d0|TOd[8]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[8]~20_combout\,
	combout => \proc0|d0|reg0|registro~124feeder_combout\);

-- Location: LCCOMB_X11_Y5_N26
\proc0|d0|reg0|registro~125feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~125feeder_combout\ = \proc0|d0|TOd[9]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[9]~21_combout\,
	combout => \proc0|d0|reg0|registro~125feeder_combout\);

-- Location: LCCOMB_X11_Y5_N8
\proc0|d0|reg0|registro~77feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~77feeder_combout\ = \proc0|d0|TOd[9]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[9]~21_combout\,
	combout => \proc0|d0|reg0|registro~77feeder_combout\);

-- Location: LCCOMB_X11_Y5_N16
\proc0|d0|reg0|registro~78feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~78feeder_combout\ = \proc0|d0|TOd[10]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[10]~23_combout\,
	combout => \proc0|d0|reg0|registro~78feeder_combout\);

-- Location: LCCOMB_X13_Y4_N20
\proc0|d0|reg0|registro~126feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~126feeder_combout\ = \proc0|d0|TOd[10]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[10]~23_combout\,
	combout => \proc0|d0|reg0|registro~126feeder_combout\);

-- Location: LCCOMB_X15_Y5_N14
\proc0|d0|reg0|registro~32feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~32feeder_combout\ = \proc0|d0|TOd[12]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[12]~27_combout\,
	combout => \proc0|d0|reg0|registro~32feeder_combout\);

-- Location: LCCOMB_X14_Y4_N4
\proc0|d0|reg0|registro~51feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~51feeder_combout\ = \proc0|d0|TOd[15]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[15]~33_combout\,
	combout => \proc0|d0|reg0|registro~51feeder_combout\);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~279_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(0),
	combout => \SRAM_DQ[0]~0\);

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~152_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(1),
	combout => \SRAM_DQ[1]~1\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~167_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(2),
	combout => \SRAM_DQ[2]~2\);

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~177_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(3),
	combout => \SRAM_DQ[3]~3\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~187_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(4),
	combout => \SRAM_DQ[4]~4\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~197_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(5),
	combout => \SRAM_DQ[5]~5\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~211_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(6),
	combout => \SRAM_DQ[6]~6\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|reg0|registro~221_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(7),
	combout => \SRAM_DQ[7]~7\);

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[8]~43_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(8),
	combout => \SRAM_DQ[8]~8\);

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[9]~45_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(9),
	combout => \SRAM_DQ[9]~9\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[10]~46_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(10),
	combout => \SRAM_DQ[10]~10\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[11]~47_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(11),
	combout => \SRAM_DQ[11]~11\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[12]~48_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(12),
	combout => \SRAM_DQ[12]~12\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[13]~49_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(13),
	combout => \SRAM_DQ[13]~13\);

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[14]~50_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(14),
	combout => \SRAM_DQ[14]~14\);

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_DQ[15]~51_combout\,
	oe => \memory0|sram_controller|SRAM_DQ[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15),
	combout => \SRAM_DQ[15]~15\);

-- Location: LCCOMB_X10_Y1_N16
\proc0|cu0|ge|estat~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ge|estat~0_combout\ = !\proc0|cu0|ge|estat~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|cu0|ge|estat~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X10_Y1_N17
\proc0|cu0|ge|estat\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ge|estat~0_combout\,
	aclr => \SW~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ge|estat~regout\);

-- Location: LCCOMB_X11_Y1_N0
\proc0|cu0|ir_actual~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~9_combout\ = (\SRAM_DQ[14]~14\ & ((!\proc0|cu0|ge|estat~regout\) # (!\proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[14]~14\,
	datac => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|cu0|ir_actual~9_combout\);

-- Location: LCCOMB_X11_Y1_N26
\proc0|cu0|ir_actual~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~16_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[8]~8\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[0]~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[0]~0\,
	datac => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datad => \SRAM_DQ[8]~8\,
	combout => \proc0|cu0|ir_actual~16_combout\);

-- Location: LCCOMB_X14_Y1_N12
\proc0|cu0|ir_actual[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual[13]~1_combout\ = (\SW~combout\(9)) # (!\proc0|cu0|ge|estat~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datad => \SW~combout\(9),
	combout => \proc0|cu0|ir_actual[13]~1_combout\);

-- Location: LCFF_X11_Y1_N27
\proc0|cu0|ir_actual[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~16_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(0));

-- Location: LCCOMB_X10_Y1_N4
\proc0|cu0|ir_actual~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~11_combout\ = (\SRAM_DQ[13]~13\ & ((!\proc0|cu0|clogic0|Mux4~0_combout\) # (!\proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \SRAM_DQ[13]~13\,
	combout => \proc0|cu0|ir_actual~11_combout\);

-- Location: LCCOMB_X11_Y1_N16
\proc0|cu0|ir_actual~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~12_combout\ = (!\SW~combout\(9) & ((\proc0|cu0|ir_actual~11_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual~11_combout\,
	datac => \SW~combout\(9),
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~12_combout\);

-- Location: LCFF_X11_Y1_N17
\proc0|cu0|ir_actual[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~12_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(13));

-- Location: LCCOMB_X11_Y1_N22
\memory0|sram_controller|dataReaded[15]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|dataReaded[15]~8_combout\ = (((\proc0|d0|alu0|Add0~79_combout\) # (\proc0|d0|alu0|Add0~100_combout\)) # (!\proc0|cu0|ge|estat~regout\)) # (!\proc0|cu0|clogic0|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux4~0_combout\,
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \proc0|d0|alu0|Add0~79_combout\,
	datad => \proc0|d0|alu0|Add0~100_combout\,
	combout => \memory0|sram_controller|dataReaded[15]~8_combout\);

-- Location: LCCOMB_X11_Y1_N14
\proc0|cu0|ir_actual~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~13_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[15]~8_combout\ & (\SRAM_DQ[15]~15\)) # (!\memory0|sram_controller|dataReaded[15]~8_combout\ & ((\SRAM_DQ[7]~7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[15]~15\,
	datac => \SRAM_DQ[7]~7\,
	datad => \memory0|sram_controller|dataReaded[15]~8_combout\,
	combout => \proc0|cu0|ir_actual~13_combout\);

-- Location: LCFF_X11_Y1_N15
\proc0|cu0|ir_actual[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~13_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(15));

-- Location: LCCOMB_X11_Y1_N4
\proc0|cu0|clogic0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux3~0_combout\ = (!\proc0|cu0|ir_actual\(15) & ((\proc0|cu0|ir_actual\(12) & (!\proc0|cu0|ir_actual\(14) & \proc0|cu0|ir_actual\(13))) # (!\proc0|cu0|ir_actual\(12) & (\proc0|cu0|ir_actual\(14) & !\proc0|cu0|ir_actual\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(12),
	datab => \proc0|cu0|ir_actual\(14),
	datac => \proc0|cu0|ir_actual\(13),
	datad => \proc0|cu0|ir_actual\(15),
	combout => \proc0|cu0|clogic0|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y1_N30
\proc0|d0|TOy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOy~0_combout\ = (\proc0|cu0|ir_actual\(0) & !\proc0|cu0|clogic0|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(0),
	datad => \proc0|cu0|clogic0|Mux3~0_combout\,
	combout => \proc0|d0|TOy~0_combout\);

-- Location: LCCOMB_X11_Y2_N0
\proc0|d0|alu0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~44_combout\ = (\proc0|d0|reg0|registro~162_combout\ & (\proc0|d0|TOy~0_combout\ $ (VCC))) # (!\proc0|d0|reg0|registro~162_combout\ & (\proc0|d0|TOy~0_combout\ & VCC))
-- \proc0|d0|alu0|Add0~45\ = CARRY((\proc0|d0|reg0|registro~162_combout\ & \proc0|d0|TOy~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~162_combout\,
	datab => \proc0|d0|TOy~0_combout\,
	datad => VCC,
	combout => \proc0|d0|alu0|Add0~44_combout\,
	cout => \proc0|d0|alu0|Add0~45\);

-- Location: LCCOMB_X13_Y1_N18
\proc0|d0|TOd[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[8]~5_combout\ = (\SRAM_DQ[8]~8\ & ((!\proc0|cu0|ge|estat~regout\) # (!\proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[8]~8\,
	datac => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|TOd[8]~5_combout\);

-- Location: LCCOMB_X13_Y1_N20
\proc0|cu0|ir_actual~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~15_combout\ = (!\SW~combout\(9) & ((\proc0|d0|TOd[8]~5_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \proc0|d0|TOd[8]~5_combout\,
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~15_combout\);

-- Location: LCFF_X13_Y1_N21
\proc0|cu0|ir_actual[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~15_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(8));

-- Location: LCCOMB_X12_Y2_N8
\proc0|d0|alu0|Add0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~100_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|TOy~0_combout\ & ((!\proc0|cu0|ir_actual\(8))))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|d0|TOy~0_combout\,
	datac => \proc0|d0|alu0|Add0~44_combout\,
	datad => \proc0|cu0|ir_actual\(8),
	combout => \proc0|d0|alu0|Add0~100_combout\);

-- Location: LCCOMB_X12_Y2_N4
\proc0|d0|addr_m[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[0]~17_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~79_combout\) # (\proc0|d0|alu0|Add0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|d0|alu0|Add0~79_combout\,
	datad => \proc0|d0|alu0|Add0~100_combout\,
	combout => \proc0|d0|addr_m[0]~17_combout\);

-- Location: LCCOMB_X12_Y3_N6
\proc0|cu0|ge|word_byte~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ge|word_byte~0_combout\ = (\proc0|cu0|clogic0|Mux4~0_combout\ & \proc0|cu0|ge|estat~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|cu0|ge|word_byte~0_combout\);

-- Location: LCCOMB_X12_Y2_N20
\memory0|sram_controller|dataReaded[10]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|dataReaded[10]~6_combout\ = (\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|d0|addr_m[0]~17_combout\ & (\SRAM_DQ[15]~15\)) # (!\proc0|d0|addr_m[0]~17_combout\ & ((\SRAM_DQ[7]~7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[7]~7\,
	datac => \proc0|d0|addr_m[0]~17_combout\,
	datad => \proc0|cu0|ge|word_byte~0_combout\,
	combout => \memory0|sram_controller|dataReaded[10]~6_combout\);

-- Location: LCCOMB_X11_Y1_N30
\proc0|cu0|ir_actual~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~10_combout\ = (!\SW~combout\(9) & ((\proc0|cu0|ir_actual~9_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual~9_combout\,
	datac => \SW~combout\(9),
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~10_combout\);

-- Location: LCFF_X11_Y1_N31
\proc0|cu0|ir_actual[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~10_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(14));

-- Location: LCCOMB_X14_Y1_N20
\proc0|cu0|ir_actual~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~7_combout\ = (\SRAM_DQ[12]~12\ & ((!\proc0|cu0|clogic0|Mux4~0_combout\) # (!\proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \SRAM_DQ[12]~12\,
	combout => \proc0|cu0|ir_actual~7_combout\);

-- Location: LCCOMB_X11_Y1_N12
\proc0|cu0|ir_actual~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~8_combout\ = (!\SW~combout\(9) & ((\proc0|cu0|ir_actual~7_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datac => \proc0|cu0|ir_actual~7_combout\,
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~8_combout\);

-- Location: LCFF_X11_Y1_N13
\proc0|cu0|ir_actual[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~8_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(12));

-- Location: LCCOMB_X10_Y1_N2
\proc0|cu0|clogic0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux4~0_combout\ = (\proc0|cu0|ir_actual\(14) & (\proc0|cu0|ir_actual\(15) & (\proc0|cu0|ir_actual\(13) $ (\proc0|cu0|ir_actual\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(13),
	datab => \proc0|cu0|ir_actual\(14),
	datac => \proc0|cu0|ir_actual\(15),
	datad => \proc0|cu0|ir_actual\(12),
	combout => \proc0|cu0|clogic0|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y2_N14
\memory0|sram_controller|dataReaded[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|dataReaded[0]~7_combout\ = (\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|clogic0|Mux4~0_combout\ & ((\proc0|d0|alu0|Add0~100_combout\) # (\proc0|d0|alu0|Add0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \proc0|d0|alu0|Add0~100_combout\,
	datad => \proc0|d0|alu0|Add0~79_combout\,
	combout => \memory0|sram_controller|dataReaded[0]~7_combout\);

-- Location: LCCOMB_X11_Y1_N24
\proc0|cu0|ir_actual~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~14_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[15]~15\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[7]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[7]~7\,
	datac => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datad => \SRAM_DQ[15]~15\,
	combout => \proc0|cu0|ir_actual~14_combout\);

-- Location: LCFF_X11_Y1_N25
\proc0|cu0|ir_actual[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~14_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(7));

-- Location: LCCOMB_X13_Y1_N24
\proc0|cu0|ir_actual~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~2_combout\ = (\SRAM_DQ[10]~10\ & ((!\proc0|cu0|ge|estat~regout\) # (!\proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \SRAM_DQ[10]~10\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|cu0|ir_actual~2_combout\);

-- Location: LCCOMB_X13_Y1_N10
\proc0|cu0|ir_actual~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~3_combout\ = (!\SW~combout\(9) & ((\proc0|cu0|ir_actual~2_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \proc0|cu0|ir_actual~2_combout\,
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~3_combout\);

-- Location: LCFF_X13_Y1_N11
\proc0|cu0|ir_actual[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~3_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(10));

-- Location: LCCOMB_X12_Y1_N28
\proc0|cu0|clogic0|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux9~0_combout\ = (!\proc0|cu0|ir_actual\(15) & (!\proc0|cu0|ir_actual\(13) & (\proc0|cu0|ir_actual\(14) & \proc0|cu0|ir_actual\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(15),
	datab => \proc0|cu0|ir_actual\(13),
	datac => \proc0|cu0|ir_actual\(14),
	datad => \proc0|cu0|ir_actual\(12),
	combout => \proc0|cu0|clogic0|Mux9~0_combout\);

-- Location: LCCOMB_X12_Y1_N8
\proc0|cu0|clogic0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux6~0_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & ((\proc0|cu0|ir_actual\(10)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(7),
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|clogic0|Mux9~0_combout\,
	combout => \proc0|cu0|clogic0|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y1_N8
\proc0|cu0|ir_actual~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~5_combout\ = (!\SW~combout\(9) & ((\proc0|cu0|ir_actual~4_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual~4_combout\,
	datab => \SW~combout\(9),
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~5_combout\);

-- Location: LCFF_X13_Y1_N9
\proc0|cu0|ir_actual[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~5_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(11));

-- Location: LCCOMB_X10_Y3_N4
\proc0|d0|reg0|registro~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~269_combout\ = (!\proc0|cu0|ir_actual\(11) & \proc0|cu0|ir_actual\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~269_combout\);

-- Location: LCCOMB_X13_Y1_N26
\proc0|d0|TOd[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[9]~4_combout\ = (\SRAM_DQ[9]~9\ & ((!\proc0|cu0|ge|estat~regout\) # (!\proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[9]~9\,
	datac => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|TOd[9]~4_combout\);

-- Location: LCCOMB_X13_Y1_N12
\proc0|cu0|ir_actual~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~0_combout\ = (!\SW~combout\(9) & ((\proc0|d0|TOd[9]~4_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|d0|TOd[9]~4_combout\,
	datac => \SW~combout\(9),
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|cu0|ir_actual~0_combout\);

-- Location: LCFF_X13_Y1_N13
\proc0|cu0|ir_actual[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~0_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(9));

-- Location: LCCOMB_X10_Y3_N10
\proc0|d0|reg0|registro~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~270_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (\proc0|d0|reg0|registro~269_combout\ & (!\proc0|cu0|ir_actual\(9) & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|d0|reg0|registro~269_combout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|reg0|registro~270_combout\);

-- Location: LCFF_X12_Y2_N25
\proc0|d0|reg0|registro~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~52_regout\);

-- Location: LCCOMB_X12_Y1_N26
\proc0|d0|reg0|registro~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~161_combout\ = (\proc0|d0|reg0|registro~160_combout\ & (((\proc0|d0|reg0|registro~68_regout\)) # (!\proc0|cu0|clogic0|Mux6~0_combout\))) # (!\proc0|d0|reg0|registro~160_combout\ & (\proc0|cu0|clogic0|Mux6~0_combout\ & 
-- ((\proc0|d0|reg0|registro~52_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~160_combout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~68_regout\,
	datad => \proc0|d0|reg0|registro~52_regout\,
	combout => \proc0|d0|reg0|registro~161_combout\);

-- Location: LCCOMB_X12_Y1_N16
\proc0|cu0|clogic0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux5~0_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & ((\proc0|cu0|ir_actual\(11)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(8),
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|cu0|clogic0|Mux9~0_combout\,
	combout => \proc0|cu0|clogic0|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y3_N26
\proc0|d0|reg0|registro~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~263_combout\ = (\proc0|cu0|ir_actual\(11) & !\proc0|cu0|ir_actual\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~263_combout\);

-- Location: LCCOMB_X10_Y3_N12
\proc0|d0|reg0|registro~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~264_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (\proc0|d0|reg0|registro~263_combout\ & (\proc0|cu0|ir_actual\(9) & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|d0|reg0|registro~263_combout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|reg0|registro~264_combout\);

-- Location: LCFF_X12_Y2_N31
\proc0|d0|reg0|registro~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[0]~34_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~100_regout\);

-- Location: LCCOMB_X10_Y3_N24
\proc0|d0|reg0|registro~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~265_combout\ = (\proc0|cu0|ir_actual\(10) & \proc0|cu0|ir_actual\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|ir_actual\(11),
	combout => \proc0|d0|reg0|registro~265_combout\);

-- Location: LCCOMB_X10_Y3_N6
\proc0|d0|reg0|registro~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~268_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~265_combout\ & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|d0|reg0|registro~265_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|reg0|registro~268_combout\);

-- Location: LCFF_X11_Y3_N25
\proc0|d0|reg0|registro~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~132_regout\);

-- Location: LCCOMB_X10_Y3_N0
\proc0|d0|reg0|registro~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~267_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (\proc0|d0|reg0|registro~263_combout\ & (!\proc0|cu0|ir_actual\(9) & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|d0|reg0|registro~263_combout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|reg0|registro~267_combout\);

-- Location: LCFF_X11_Y3_N9
\proc0|d0|reg0|registro~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~84_regout\);

-- Location: LCCOMB_X13_Y1_N14
\proc0|cu0|ir_actual~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~6_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[14]~14\)) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[6]~6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[14]~14\,
	datab => \SW~combout\(9),
	datac => \SRAM_DQ[6]~6\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|cu0|ir_actual~6_combout\);

-- Location: LCFF_X13_Y1_N15
\proc0|cu0|ir_actual[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~6_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(6));

-- Location: LCCOMB_X12_Y1_N18
\proc0|cu0|clogic0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux7~0_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(9))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & ((\proc0|cu0|ir_actual\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|cu0|ir_actual\(6),
	datad => \proc0|cu0|clogic0|Mux9~0_combout\,
	combout => \proc0|cu0|clogic0|Mux7~0_combout\);

-- Location: LCCOMB_X11_Y3_N10
\proc0|d0|reg0|registro~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~158_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~116_regout\) # ((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~84_regout\ & 
-- !\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~116_regout\,
	datab => \proc0|d0|reg0|registro~84_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~158_combout\);

-- Location: LCCOMB_X11_Y3_N18
\proc0|d0|reg0|registro~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~159_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~158_combout\ & ((\proc0|d0|reg0|registro~132_regout\))) # (!\proc0|d0|reg0|registro~158_combout\ & (\proc0|d0|reg0|registro~100_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~100_regout\,
	datac => \proc0|d0|reg0|registro~132_regout\,
	datad => \proc0|d0|reg0|registro~158_combout\,
	combout => \proc0|d0|reg0|registro~159_combout\);

-- Location: LCCOMB_X11_Y3_N16
\proc0|d0|alu0|Add0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~79_combout\ = (\proc0|cu0|clogic0|Mux19~0_combout\ & ((\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~159_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux19~0_combout\,
	datab => \proc0|d0|reg0|registro~161_combout\,
	datac => \proc0|cu0|clogic0|Mux5~0_combout\,
	datad => \proc0|d0|reg0|registro~159_combout\,
	combout => \proc0|d0|alu0|Add0~79_combout\);

-- Location: LCCOMB_X11_Y1_N6
\proc0|cu0|clogic0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux2~0_combout\ = (\proc0|cu0|ir_actual\(12) & ((\proc0|cu0|ir_actual\(15) & (\proc0|cu0|ir_actual\(14) & !\proc0|cu0|ir_actual\(13))) # (!\proc0|cu0|ir_actual\(15) & (!\proc0|cu0|ir_actual\(14) & \proc0|cu0|ir_actual\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(15),
	datab => \proc0|cu0|ir_actual\(12),
	datac => \proc0|cu0|ir_actual\(14),
	datad => \proc0|cu0|ir_actual\(13),
	combout => \proc0|cu0|clogic0|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y2_N18
\proc0|d0|TOd[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[0]~6_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[8]~8\)) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[0]~0\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[8]~8\,
	datab => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \SRAM_DQ[0]~0\,
	combout => \proc0|d0|TOd[0]~6_combout\);

-- Location: LCCOMB_X12_Y2_N30
\proc0|d0|TOd[0]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[0]~34_combout\ = (\proc0|d0|TOd[0]~6_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~100_combout\) # (\proc0|d0|alu0|Add0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~100_combout\,
	datab => \proc0|d0|alu0|Add0~79_combout\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \proc0|d0|TOd[0]~6_combout\,
	combout => \proc0|d0|TOd[0]~34_combout\);

-- Location: LCCOMB_X10_Y3_N28
\proc0|d0|reg0|registro~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~274_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (\proc0|d0|reg0|registro~269_combout\ & (\proc0|cu0|ir_actual\(9) & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|d0|reg0|registro~269_combout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|reg0|registro~274_combout\);

-- Location: LCFF_X12_Y1_N27
\proc0|d0|reg0|registro~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~68_regout\);

-- Location: LCCOMB_X10_Y4_N18
\proc0|d0|reg0|registro~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~271_combout\ = (!\proc0|cu0|ir_actual\(11) & !\proc0|cu0|ir_actual\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~271_combout\);

-- Location: LCCOMB_X10_Y4_N30
\proc0|d0|reg0|registro~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~273_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (!\proc0|cu0|ir_actual\(9) & (\proc0|cu0|ge|estat~regout\ & \proc0|d0|reg0|registro~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|reg0|registro~271_combout\,
	combout => \proc0|d0|reg0|registro~273_combout\);

-- Location: LCFF_X12_Y1_N21
\proc0|d0|reg0|registro~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~20_regout\);

-- Location: LCCOMB_X10_Y4_N20
\proc0|d0|reg0|registro~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~272_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (\proc0|cu0|ir_actual\(9) & (\proc0|cu0|ge|estat~regout\ & \proc0|d0|reg0|registro~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|reg0|registro~271_combout\,
	combout => \proc0|d0|reg0|registro~272_combout\);

-- Location: LCFF_X11_Y2_N7
\proc0|d0|reg0|registro~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~36_regout\);

-- Location: LCCOMB_X11_Y4_N14
\proc0|d0|reg0|registro~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~277_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~36_regout\))) # (!\proc0|cu0|ir_actual\(9) & 
-- (\proc0|d0|reg0|registro~20_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~20_regout\,
	datac => \proc0|d0|reg0|registro~36_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~277_combout\);

-- Location: LCCOMB_X11_Y4_N0
\proc0|d0|reg0|registro~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~278_combout\ = (\proc0|d0|reg0|registro~277_combout\ & (((\proc0|d0|reg0|registro~68_regout\) # (!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~277_combout\ & (\proc0|d0|reg0|registro~52_regout\ & 
-- ((\proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~52_regout\,
	datab => \proc0|d0|reg0|registro~68_regout\,
	datac => \proc0|d0|reg0|registro~277_combout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~278_combout\);

-- Location: LCCOMB_X10_Y3_N14
\proc0|d0|reg0|registro~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~266_combout\ = (\proc0|cu0|clogic0|Mux0~0_combout\ & (!\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~265_combout\ & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux0~0_combout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|d0|reg0|registro~265_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|reg0|registro~266_combout\);

-- Location: LCFF_X11_Y2_N9
\proc0|d0|reg0|registro~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[0]~34_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~116_regout\);

-- Location: LCCOMB_X11_Y3_N8
\proc0|d0|reg0|registro~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~275_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~116_regout\)) # (!\proc0|cu0|ir_actual\(10) & 
-- ((\proc0|d0|reg0|registro~84_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~116_regout\,
	datac => \proc0|d0|reg0|registro~84_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~275_combout\);

-- Location: LCCOMB_X11_Y3_N24
\proc0|d0|reg0|registro~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~276_combout\ = (\proc0|d0|reg0|registro~275_combout\ & (((\proc0|d0|reg0|registro~132_regout\) # (!\proc0|cu0|ir_actual\(9))))) # (!\proc0|d0|reg0|registro~275_combout\ & (\proc0|d0|reg0|registro~100_regout\ & 
-- ((\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~100_regout\,
	datab => \proc0|d0|reg0|registro~275_combout\,
	datac => \proc0|d0|reg0|registro~132_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~276_combout\);

-- Location: LCCOMB_X10_Y3_N2
\proc0|d0|reg0|registro~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~279_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~276_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~278_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~278_combout\,
	datab => \proc0|cu0|ir_actual\(11),
	datad => \proc0|d0|reg0|registro~276_combout\,
	combout => \proc0|d0|reg0|registro~279_combout\);

-- Location: LCCOMB_X11_Y1_N20
\proc0|cu0|clogic0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux1~0_combout\ = (!\proc0|cu0|ir_actual\(12) & (\proc0|cu0|ir_actual\(14) & (\proc0|cu0|ir_actual\(15) $ (!\proc0|cu0|ir_actual\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(12),
	datab => \proc0|cu0|ir_actual\(15),
	datac => \proc0|cu0|ir_actual\(13),
	datad => \proc0|cu0|ir_actual\(14),
	combout => \proc0|cu0|clogic0|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y1_N10
\memory0|sram_controller|SRAM_DQ[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[7]~34_combout\ = (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\proc0|cu0|clogic0|Mux1~0_combout\ & \proc0|cu0|ge|estat~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datac => \proc0|cu0|clogic0|Mux1~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \memory0|sram_controller|SRAM_DQ[7]~34_combout\);

-- Location: LCCOMB_X12_Y3_N8
\proc0|d0|reg0|registro~53feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~53feeder_combout\ = \proc0|d0|TOd[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[1]~3_combout\,
	combout => \proc0|d0|reg0|registro~53feeder_combout\);

-- Location: LCFF_X12_Y3_N9
\proc0|d0|reg0|registro~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~53feeder_combout\,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~53_regout\);

-- Location: LCFF_X12_Y1_N15
\proc0|d0|reg0|registro~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[1]~3_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~69_regout\);

-- Location: LCFF_X11_Y4_N17
\proc0|d0|reg0|registro~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[1]~3_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~37_regout\);

-- Location: LCCOMB_X12_Y1_N6
\proc0|d0|reg0|registro~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~155_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~37_regout\))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~21_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~21_regout\,
	datab => \proc0|d0|reg0|registro~37_regout\,
	datac => \proc0|cu0|clogic0|Mux6~0_combout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~155_combout\);

-- Location: LCCOMB_X12_Y1_N14
\proc0|d0|reg0|registro~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~156_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~155_combout\ & ((\proc0|d0|reg0|registro~69_regout\))) # (!\proc0|d0|reg0|registro~155_combout\ & (\proc0|d0|reg0|registro~53_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~53_regout\,
	datac => \proc0|d0|reg0|registro~69_regout\,
	datad => \proc0|d0|reg0|registro~155_combout\,
	combout => \proc0|d0|reg0|registro~156_combout\);

-- Location: LCFF_X13_Y3_N21
\proc0|d0|reg0|registro~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[1]~3_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~117_regout\);

-- Location: LCFF_X13_Y3_N31
\proc0|d0|reg0|registro~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[1]~3_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~85_regout\);

-- Location: LCCOMB_X13_Y3_N30
\proc0|d0|reg0|registro~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~153_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~117_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~85_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~117_regout\,
	datac => \proc0|d0|reg0|registro~85_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~153_combout\);

-- Location: LCCOMB_X12_Y3_N26
\proc0|d0|reg0|registro~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~154_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~153_combout\ & (\proc0|d0|reg0|registro~133_regout\)) # (!\proc0|d0|reg0|registro~153_combout\ & ((\proc0|d0|reg0|registro~101_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~133_regout\,
	datab => \proc0|d0|reg0|registro~101_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|d0|reg0|registro~153_combout\,
	combout => \proc0|d0|reg0|registro~154_combout\);

-- Location: LCCOMB_X12_Y1_N2
\proc0|d0|reg0|registro~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~157_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~154_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|d0|reg0|registro~156_combout\,
	datac => \proc0|cu0|clogic0|Mux5~0_combout\,
	datad => \proc0|d0|reg0|registro~154_combout\,
	combout => \proc0|d0|reg0|registro~157_combout\);

-- Location: LCCOMB_X11_Y2_N2
\proc0|d0|alu0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~46_combout\ = (\proc0|d0|reg0|registro~157_combout\ & ((\proc0|d0|reg0|registro~152_combout\ & (\proc0|d0|alu0|Add0~45\ & VCC)) # (!\proc0|d0|reg0|registro~152_combout\ & (!\proc0|d0|alu0|Add0~45\)))) # 
-- (!\proc0|d0|reg0|registro~157_combout\ & ((\proc0|d0|reg0|registro~152_combout\ & (!\proc0|d0|alu0|Add0~45\)) # (!\proc0|d0|reg0|registro~152_combout\ & ((\proc0|d0|alu0|Add0~45\) # (GND)))))
-- \proc0|d0|alu0|Add0~47\ = CARRY((\proc0|d0|reg0|registro~157_combout\ & (!\proc0|d0|reg0|registro~152_combout\ & !\proc0|d0|alu0|Add0~45\)) # (!\proc0|d0|reg0|registro~157_combout\ & ((!\proc0|d0|alu0|Add0~45\) # (!\proc0|d0|reg0|registro~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~157_combout\,
	datab => \proc0|d0|reg0|registro~152_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~45\,
	combout => \proc0|d0|alu0|Add0~46_combout\,
	cout => \proc0|d0|alu0|Add0~47\);

-- Location: LCCOMB_X10_Y2_N28
\proc0|d0|alu0|Add0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~81_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~152_combout\ & (!\proc0|cu0|ir_actual\(8)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|d0|reg0|registro~152_combout\,
	datac => \proc0|cu0|ir_actual\(8),
	datad => \proc0|d0|alu0|Add0~46_combout\,
	combout => \proc0|d0|alu0|Add0~81_combout\);

-- Location: LCCOMB_X10_Y2_N10
\proc0|d0|alu0|Add0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~82_combout\ = (\proc0|d0|alu0|Add0~81_combout\) # ((\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & \proc0|d0|reg0|registro~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|cu0|ir_actual\(8),
	datac => \proc0|d0|reg0|registro~157_combout\,
	datad => \proc0|d0|alu0|Add0~81_combout\,
	combout => \proc0|d0|alu0|Add0~82_combout\);

-- Location: LCCOMB_X12_Y2_N2
\proc0|d0|TOd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[1]~2_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[9]~9\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[1]~1\,
	datab => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \SRAM_DQ[9]~9\,
	combout => \proc0|d0|TOd[1]~2_combout\);

-- Location: LCCOMB_X12_Y2_N24
\proc0|d0|TOd[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[1]~3_combout\ = (\proc0|d0|TOd[1]~2_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & \proc0|d0|alu0|Add0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|d0|alu0|Add0~82_combout\,
	datad => \proc0|d0|TOd[1]~2_combout\,
	combout => \proc0|d0|TOd[1]~3_combout\);

-- Location: LCFF_X12_Y2_N13
\proc0|d0|reg0|registro~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[1]~3_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~101_regout\);

-- Location: LCCOMB_X13_Y3_N20
\proc0|d0|reg0|registro~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~148_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~117_regout\) # (\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~85_regout\ & ((!\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~85_regout\,
	datac => \proc0|d0|reg0|registro~117_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~148_combout\);

-- Location: LCCOMB_X12_Y3_N14
\proc0|d0|reg0|registro~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~149_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~148_combout\ & (\proc0|d0|reg0|registro~133_regout\)) # (!\proc0|d0|reg0|registro~148_combout\ & ((\proc0|d0|reg0|registro~101_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~133_regout\,
	datab => \proc0|d0|reg0|registro~101_regout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|d0|reg0|registro~148_combout\,
	combout => \proc0|d0|reg0|registro~149_combout\);

-- Location: LCFF_X12_Y1_N25
\proc0|d0|reg0|registro~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[1]~3_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~21_regout\);

-- Location: LCCOMB_X11_Y4_N16
\proc0|d0|reg0|registro~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~150_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~37_regout\))) # (!\proc0|cu0|ir_actual\(9) & 
-- (\proc0|d0|reg0|registro~21_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~21_regout\,
	datac => \proc0|d0|reg0|registro~37_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~150_combout\);

-- Location: LCCOMB_X12_Y3_N2
\proc0|d0|reg0|registro~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~151_combout\ = (\proc0|d0|reg0|registro~150_combout\ & ((\proc0|d0|reg0|registro~69_regout\) # ((!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~150_combout\ & (((\proc0|d0|reg0|registro~53_regout\ & 
-- \proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~69_regout\,
	datab => \proc0|d0|reg0|registro~53_regout\,
	datac => \proc0|d0|reg0|registro~150_combout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~151_combout\);

-- Location: LCCOMB_X12_Y3_N20
\proc0|d0|reg0|registro~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~152_combout\ = (\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~149_combout\)) # (!\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~149_combout\,
	datad => \proc0|d0|reg0|registro~151_combout\,
	combout => \proc0|d0|reg0|registro~152_combout\);

-- Location: LCCOMB_X12_Y2_N10
\proc0|d0|TOd[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[2]~7_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[10]~10\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[2]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[2]~2\,
	datab => \SRAM_DQ[10]~10\,
	datac => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datad => \proc0|cu0|clogic0|Mux2~0_combout\,
	combout => \proc0|d0|TOd[2]~7_combout\);

-- Location: LCFF_X12_Y1_N13
\proc0|d0|reg0|registro~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~22_regout\);

-- Location: LCCOMB_X12_Y1_N12
\proc0|d0|reg0|registro~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~170_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~38_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~22_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~38_regout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~22_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~170_combout\);

-- Location: LCCOMB_X12_Y5_N20
\proc0|d0|reg0|registro~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~171_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~170_combout\ & (\proc0|d0|reg0|registro~70_regout\)) # (!\proc0|d0|reg0|registro~170_combout\ & ((\proc0|d0|reg0|registro~54_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~70_regout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~54_regout\,
	datad => \proc0|d0|reg0|registro~170_combout\,
	combout => \proc0|d0|reg0|registro~171_combout\);

-- Location: LCFF_X13_Y5_N21
\proc0|d0|reg0|registro~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~134_regout\);

-- Location: LCFF_X13_Y2_N25
\proc0|d0|reg0|registro~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~102_regout\);

-- Location: LCCOMB_X13_Y3_N16
\proc0|d0|reg0|registro~118feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~118feeder_combout\ = \proc0|d0|TOd[2]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[2]~8_combout\,
	combout => \proc0|d0|reg0|registro~118feeder_combout\);

-- Location: LCFF_X13_Y3_N17
\proc0|d0|reg0|registro~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~118feeder_combout\,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~118_regout\);

-- Location: LCFF_X13_Y3_N3
\proc0|d0|reg0|registro~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~86_regout\);

-- Location: LCCOMB_X13_Y3_N2
\proc0|d0|reg0|registro~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~168_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~118_regout\) # ((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~86_regout\ & 
-- !\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~118_regout\,
	datac => \proc0|d0|reg0|registro~86_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~168_combout\);

-- Location: LCCOMB_X13_Y2_N24
\proc0|d0|reg0|registro~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~169_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~168_combout\ & (\proc0|d0|reg0|registro~134_regout\)) # (!\proc0|d0|reg0|registro~168_combout\ & ((\proc0|d0|reg0|registro~102_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~134_regout\,
	datac => \proc0|d0|reg0|registro~102_regout\,
	datad => \proc0|d0|reg0|registro~168_combout\,
	combout => \proc0|d0|reg0|registro~169_combout\);

-- Location: LCCOMB_X12_Y5_N8
\proc0|d0|reg0|registro~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~172_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~169_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~171_combout\,
	datad => \proc0|d0|reg0|registro~169_combout\,
	combout => \proc0|d0|reg0|registro~172_combout\);

-- Location: LCCOMB_X11_Y2_N4
\proc0|d0|alu0|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~48_combout\ = ((\proc0|d0|reg0|registro~167_combout\ $ (\proc0|d0|reg0|registro~172_combout\ $ (!\proc0|d0|alu0|Add0~47\)))) # (GND)
-- \proc0|d0|alu0|Add0~49\ = CARRY((\proc0|d0|reg0|registro~167_combout\ & ((\proc0|d0|reg0|registro~172_combout\) # (!\proc0|d0|alu0|Add0~47\))) # (!\proc0|d0|reg0|registro~167_combout\ & (\proc0|d0|reg0|registro~172_combout\ & !\proc0|d0|alu0|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~167_combout\,
	datab => \proc0|d0|reg0|registro~172_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~47\,
	combout => \proc0|d0|alu0|Add0~48_combout\,
	cout => \proc0|d0|alu0|Add0~49\);

-- Location: LCCOMB_X12_Y5_N28
\proc0|d0|alu0|Add0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~83_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~167_combout\ & (!\proc0|cu0|ir_actual\(8)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|d0|reg0|registro~167_combout\,
	datac => \proc0|cu0|ir_actual\(8),
	datad => \proc0|d0|alu0|Add0~48_combout\,
	combout => \proc0|d0|alu0|Add0~83_combout\);

-- Location: LCCOMB_X12_Y5_N2
\proc0|d0|alu0|Add0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~84_combout\ = (\proc0|d0|alu0|Add0~83_combout\) # ((\proc0|d0|reg0|registro~172_combout\ & (\proc0|cu0|clogic0|Mux9~0_combout\ & \proc0|cu0|ir_actual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~172_combout\,
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|cu0|ir_actual\(8),
	datad => \proc0|d0|alu0|Add0~83_combout\,
	combout => \proc0|d0|alu0|Add0~84_combout\);

-- Location: LCCOMB_X12_Y5_N4
\proc0|d0|TOd[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[2]~8_combout\ = (\proc0|d0|TOd[2]~7_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & \proc0|d0|alu0|Add0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|TOd[2]~7_combout\,
	datad => \proc0|d0|alu0|Add0~84_combout\,
	combout => \proc0|d0|TOd[2]~8_combout\);

-- Location: LCFF_X12_Y5_N21
\proc0|d0|reg0|registro~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~54_regout\);

-- Location: LCFF_X11_Y4_N31
\proc0|d0|reg0|registro~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[2]~8_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~38_regout\);

-- Location: LCCOMB_X11_Y4_N30
\proc0|d0|reg0|registro~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~165_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10)) # ((\proc0|d0|reg0|registro~38_regout\)))) # (!\proc0|cu0|ir_actual\(9) & (!\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~22_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~38_regout\,
	datad => \proc0|d0|reg0|registro~22_regout\,
	combout => \proc0|d0|reg0|registro~165_combout\);

-- Location: LCCOMB_X12_Y5_N24
\proc0|d0|reg0|registro~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~166_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~165_combout\ & (\proc0|d0|reg0|registro~70_regout\)) # (!\proc0|d0|reg0|registro~165_combout\ & ((\proc0|d0|reg0|registro~54_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~70_regout\,
	datab => \proc0|d0|reg0|registro~54_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|d0|reg0|registro~165_combout\,
	combout => \proc0|d0|reg0|registro~166_combout\);

-- Location: LCCOMB_X13_Y3_N24
\proc0|d0|reg0|registro~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~163_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~118_regout\))) # (!\proc0|cu0|ir_actual\(10) & 
-- (\proc0|d0|reg0|registro~86_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~86_regout\,
	datac => \proc0|d0|reg0|registro~118_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~163_combout\);

-- Location: LCCOMB_X13_Y5_N20
\proc0|d0|reg0|registro~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~164_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~163_combout\ & ((\proc0|d0|reg0|registro~134_regout\))) # (!\proc0|d0|reg0|registro~163_combout\ & (\proc0|d0|reg0|registro~102_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~102_regout\,
	datac => \proc0|d0|reg0|registro~134_regout\,
	datad => \proc0|d0|reg0|registro~163_combout\,
	combout => \proc0|d0|reg0|registro~164_combout\);

-- Location: LCCOMB_X12_Y5_N26
\proc0|d0|reg0|registro~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~167_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~164_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~166_combout\,
	datad => \proc0|d0|reg0|registro~164_combout\,
	combout => \proc0|d0|reg0|registro~167_combout\);

-- Location: LCCOMB_X14_Y2_N16
\proc0|d0|TOd[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[3]~9_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[11]~11\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[3]~3\,
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \SRAM_DQ[11]~11\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|d0|TOd[3]~9_combout\);

-- Location: LCFF_X13_Y2_N17
\proc0|d0|reg0|registro~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[3]~10_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~55_regout\);

-- Location: LCFF_X13_Y1_N3
\proc0|d0|reg0|registro~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[3]~10_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~23_regout\);

-- Location: LCCOMB_X13_Y1_N2
\proc0|d0|reg0|registro~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~180_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~39_regout\) # ((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~23_regout\ & 
-- !\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~39_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~23_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~180_combout\);

-- Location: LCCOMB_X13_Y2_N16
\proc0|d0|reg0|registro~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~181_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~180_combout\ & (\proc0|d0|reg0|registro~71_regout\)) # (!\proc0|d0|reg0|registro~180_combout\ & ((\proc0|d0|reg0|registro~55_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~71_regout\,
	datac => \proc0|d0|reg0|registro~55_regout\,
	datad => \proc0|d0|reg0|registro~180_combout\,
	combout => \proc0|d0|reg0|registro~181_combout\);

-- Location: LCCOMB_X14_Y3_N24
\proc0|d0|reg0|registro~135feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~135feeder_combout\ = \proc0|d0|TOd[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[3]~10_combout\,
	combout => \proc0|d0|reg0|registro~135feeder_combout\);

-- Location: LCFF_X14_Y3_N25
\proc0|d0|reg0|registro~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~135feeder_combout\,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~135_regout\);

-- Location: LCFF_X13_Y3_N15
\proc0|d0|reg0|registro~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[3]~10_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~119_regout\);

-- Location: LCFF_X13_Y3_N5
\proc0|d0|reg0|registro~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[3]~10_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~87_regout\);

-- Location: LCCOMB_X13_Y3_N4
\proc0|d0|reg0|registro~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~178_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~119_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~87_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~119_regout\,
	datac => \proc0|d0|reg0|registro~87_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~178_combout\);

-- Location: LCFF_X13_Y2_N27
\proc0|d0|reg0|registro~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[3]~10_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~103_regout\);

-- Location: LCCOMB_X13_Y2_N2
\proc0|d0|reg0|registro~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~179_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~178_combout\ & (\proc0|d0|reg0|registro~135_regout\)) # (!\proc0|d0|reg0|registro~178_combout\ & ((\proc0|d0|reg0|registro~103_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~135_regout\,
	datac => \proc0|d0|reg0|registro~178_combout\,
	datad => \proc0|d0|reg0|registro~103_regout\,
	combout => \proc0|d0|reg0|registro~179_combout\);

-- Location: LCCOMB_X13_Y2_N8
\proc0|d0|reg0|registro~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~182_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~179_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~181_combout\,
	datad => \proc0|d0|reg0|registro~179_combout\,
	combout => \proc0|d0|reg0|registro~182_combout\);

-- Location: LCCOMB_X11_Y2_N6
\proc0|d0|alu0|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~50_combout\ = (\proc0|d0|reg0|registro~177_combout\ & ((\proc0|d0|reg0|registro~182_combout\ & (\proc0|d0|alu0|Add0~49\ & VCC)) # (!\proc0|d0|reg0|registro~182_combout\ & (!\proc0|d0|alu0|Add0~49\)))) # 
-- (!\proc0|d0|reg0|registro~177_combout\ & ((\proc0|d0|reg0|registro~182_combout\ & (!\proc0|d0|alu0|Add0~49\)) # (!\proc0|d0|reg0|registro~182_combout\ & ((\proc0|d0|alu0|Add0~49\) # (GND)))))
-- \proc0|d0|alu0|Add0~51\ = CARRY((\proc0|d0|reg0|registro~177_combout\ & (!\proc0|d0|reg0|registro~182_combout\ & !\proc0|d0|alu0|Add0~49\)) # (!\proc0|d0|reg0|registro~177_combout\ & ((!\proc0|d0|alu0|Add0~49\) # (!\proc0|d0|reg0|registro~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~177_combout\,
	datab => \proc0|d0|reg0|registro~182_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~49\,
	combout => \proc0|d0|alu0|Add0~50_combout\,
	cout => \proc0|d0|alu0|Add0~51\);

-- Location: LCCOMB_X13_Y2_N28
\proc0|d0|alu0|Add0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~85_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (!\proc0|cu0|ir_actual\(8) & (\proc0|d0|reg0|registro~177_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~177_combout\,
	datad => \proc0|d0|alu0|Add0~50_combout\,
	combout => \proc0|d0|alu0|Add0~85_combout\);

-- Location: LCCOMB_X13_Y2_N10
\proc0|d0|alu0|Add0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~86_combout\ = (\proc0|d0|alu0|Add0~85_combout\) # ((\proc0|cu0|ir_actual\(8) & (\proc0|cu0|clogic0|Mux9~0_combout\ & \proc0|d0|reg0|registro~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~182_combout\,
	datad => \proc0|d0|alu0|Add0~85_combout\,
	combout => \proc0|d0|alu0|Add0~86_combout\);

-- Location: LCCOMB_X14_Y2_N12
\proc0|d0|TOd[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[3]~10_combout\ = (\proc0|d0|TOd[3]~9_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & \proc0|d0|alu0|Add0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|TOd[3]~9_combout\,
	datad => \proc0|d0|alu0|Add0~86_combout\,
	combout => \proc0|d0|TOd[3]~10_combout\);

-- Location: LCFF_X14_Y2_N13
\proc0|d0|reg0|registro~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[3]~10_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~71_regout\);

-- Location: LCCOMB_X14_Y1_N4
\proc0|d0|reg0|registro~39feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~39feeder_combout\ = \proc0|d0|TOd[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[3]~10_combout\,
	combout => \proc0|d0|reg0|registro~39feeder_combout\);

-- Location: LCFF_X14_Y1_N5
\proc0|d0|reg0|registro~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~39feeder_combout\,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~39_regout\);

-- Location: LCCOMB_X14_Y1_N10
\proc0|d0|reg0|registro~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~175_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~39_regout\) # ((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & (((!\proc0|cu0|ir_actual\(10) & \proc0|d0|reg0|registro~23_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~39_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|d0|reg0|registro~23_regout\,
	combout => \proc0|d0|reg0|registro~175_combout\);

-- Location: LCCOMB_X10_Y3_N8
\proc0|d0|reg0|registro~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~176_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~175_combout\ & ((\proc0|d0|reg0|registro~71_regout\))) # (!\proc0|d0|reg0|registro~175_combout\ & (\proc0|d0|reg0|registro~55_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~55_regout\,
	datab => \proc0|d0|reg0|registro~71_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|d0|reg0|registro~175_combout\,
	combout => \proc0|d0|reg0|registro~176_combout\);

-- Location: LCCOMB_X13_Y3_N14
\proc0|d0|reg0|registro~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~173_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~119_regout\))) # (!\proc0|cu0|ir_actual\(10) & 
-- (\proc0|d0|reg0|registro~87_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~87_regout\,
	datac => \proc0|d0|reg0|registro~119_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~173_combout\);

-- Location: LCCOMB_X13_Y3_N18
\proc0|d0|reg0|registro~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~174_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~173_combout\ & (\proc0|d0|reg0|registro~135_regout\)) # (!\proc0|d0|reg0|registro~173_combout\ & ((\proc0|d0|reg0|registro~103_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~135_regout\,
	datac => \proc0|d0|reg0|registro~103_regout\,
	datad => \proc0|d0|reg0|registro~173_combout\,
	combout => \proc0|d0|reg0|registro~174_combout\);

-- Location: LCCOMB_X10_Y3_N18
\proc0|d0|reg0|registro~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~177_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~174_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~176_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~176_combout\,
	datad => \proc0|d0|reg0|registro~174_combout\,
	combout => \proc0|d0|reg0|registro~177_combout\);

-- Location: LCCOMB_X14_Y3_N26
\proc0|d0|reg0|registro~136feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~136feeder_combout\ = \proc0|d0|TOd[4]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[4]~12_combout\,
	combout => \proc0|d0|reg0|registro~136feeder_combout\);

-- Location: LCFF_X14_Y3_N27
\proc0|d0|reg0|registro~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~136feeder_combout\,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~136_regout\);

-- Location: LCFF_X13_Y2_N21
\proc0|d0|reg0|registro~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[4]~12_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~104_regout\);

-- Location: LCFF_X13_Y3_N29
\proc0|d0|reg0|registro~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[4]~12_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~120_regout\);

-- Location: LCFF_X13_Y3_N7
\proc0|d0|reg0|registro~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[4]~12_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~88_regout\);

-- Location: LCCOMB_X13_Y3_N6
\proc0|d0|reg0|registro~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~188_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~120_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~88_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~120_regout\,
	datac => \proc0|d0|reg0|registro~88_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~188_combout\);

-- Location: LCCOMB_X13_Y2_N20
\proc0|d0|reg0|registro~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~189_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~188_combout\ & (\proc0|d0|reg0|registro~136_regout\)) # (!\proc0|d0|reg0|registro~188_combout\ & ((\proc0|d0|reg0|registro~104_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~136_regout\,
	datac => \proc0|d0|reg0|registro~104_regout\,
	datad => \proc0|d0|reg0|registro~188_combout\,
	combout => \proc0|d0|reg0|registro~189_combout\);

-- Location: LCFF_X14_Y2_N23
\proc0|d0|reg0|registro~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[4]~12_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~72_regout\);

-- Location: LCFF_X13_Y1_N1
\proc0|d0|reg0|registro~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[4]~12_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~24_regout\);

-- Location: LCCOMB_X13_Y1_N0
\proc0|d0|reg0|registro~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~190_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~40_regout\) # ((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~24_regout\ & 
-- !\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~40_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~24_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~190_combout\);

-- Location: LCCOMB_X13_Y2_N6
\proc0|d0|reg0|registro~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~191_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~190_combout\ & ((\proc0|d0|reg0|registro~72_regout\))) # (!\proc0|d0|reg0|registro~190_combout\ & (\proc0|d0|reg0|registro~56_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~56_regout\,
	datac => \proc0|d0|reg0|registro~72_regout\,
	datad => \proc0|d0|reg0|registro~190_combout\,
	combout => \proc0|d0|reg0|registro~191_combout\);

-- Location: LCCOMB_X13_Y2_N12
\proc0|d0|reg0|registro~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~192_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~189_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~191_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~189_combout\,
	datad => \proc0|d0|reg0|registro~191_combout\,
	combout => \proc0|d0|reg0|registro~192_combout\);

-- Location: LCCOMB_X11_Y2_N8
\proc0|d0|alu0|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~52_combout\ = ((\proc0|d0|reg0|registro~192_combout\ $ (\proc0|d0|reg0|registro~187_combout\ $ (!\proc0|d0|alu0|Add0~51\)))) # (GND)
-- \proc0|d0|alu0|Add0~53\ = CARRY((\proc0|d0|reg0|registro~192_combout\ & ((\proc0|d0|reg0|registro~187_combout\) # (!\proc0|d0|alu0|Add0~51\))) # (!\proc0|d0|reg0|registro~192_combout\ & (\proc0|d0|reg0|registro~187_combout\ & !\proc0|d0|alu0|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~192_combout\,
	datab => \proc0|d0|reg0|registro~187_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~51\,
	combout => \proc0|d0|alu0|Add0~52_combout\,
	cout => \proc0|d0|alu0|Add0~53\);

-- Location: LCCOMB_X13_Y2_N0
\proc0|d0|alu0|Add0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~87_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (!\proc0|cu0|ir_actual\(8) & (\proc0|d0|reg0|registro~187_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~187_combout\,
	datad => \proc0|d0|alu0|Add0~52_combout\,
	combout => \proc0|d0|alu0|Add0~87_combout\);

-- Location: LCCOMB_X13_Y2_N30
\proc0|d0|alu0|Add0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~88_combout\ = (\proc0|d0|alu0|Add0~87_combout\) # ((\proc0|cu0|ir_actual\(8) & (\proc0|cu0|clogic0|Mux9~0_combout\ & \proc0|d0|reg0|registro~192_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~192_combout\,
	datad => \proc0|d0|alu0|Add0~87_combout\,
	combout => \proc0|d0|alu0|Add0~88_combout\);

-- Location: LCCOMB_X14_Y2_N18
\proc0|d0|TOd[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[4]~11_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[12]~12\)) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[4]~4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[12]~12\,
	datab => \SRAM_DQ[4]~4\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|d0|TOd[4]~11_combout\);

-- Location: LCCOMB_X14_Y2_N22
\proc0|d0|TOd[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[4]~12_combout\ = (\proc0|d0|TOd[4]~11_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & \proc0|d0|alu0|Add0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|alu0|Add0~88_combout\,
	datad => \proc0|d0|TOd[4]~11_combout\,
	combout => \proc0|d0|TOd[4]~12_combout\);

-- Location: LCFF_X13_Y2_N19
\proc0|d0|reg0|registro~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[4]~12_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~56_regout\);

-- Location: LCFF_X14_Y1_N13
\proc0|d0|reg0|registro~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[4]~12_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~40_regout\);

-- Location: LCCOMB_X14_Y1_N14
\proc0|d0|reg0|registro~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~185_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10)) # ((\proc0|d0|reg0|registro~40_regout\)))) # (!\proc0|cu0|ir_actual\(9) & (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~24_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~24_regout\,
	datad => \proc0|d0|reg0|registro~40_regout\,
	combout => \proc0|d0|reg0|registro~185_combout\);

-- Location: LCCOMB_X13_Y1_N22
\proc0|d0|reg0|registro~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~186_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~185_combout\ & ((\proc0|d0|reg0|registro~72_regout\))) # (!\proc0|d0|reg0|registro~185_combout\ & (\proc0|d0|reg0|registro~56_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~56_regout\,
	datac => \proc0|d0|reg0|registro~185_combout\,
	datad => \proc0|d0|reg0|registro~72_regout\,
	combout => \proc0|d0|reg0|registro~186_combout\);

-- Location: LCCOMB_X13_Y3_N28
\proc0|d0|reg0|registro~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~183_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~120_regout\))) # (!\proc0|cu0|ir_actual\(10) & 
-- (\proc0|d0|reg0|registro~88_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~88_regout\,
	datac => \proc0|d0|reg0|registro~120_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~183_combout\);

-- Location: LCCOMB_X14_Y3_N28
\proc0|d0|reg0|registro~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~184_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~183_combout\ & (\proc0|d0|reg0|registro~136_regout\)) # (!\proc0|d0|reg0|registro~183_combout\ & ((\proc0|d0|reg0|registro~104_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~136_regout\,
	datab => \proc0|d0|reg0|registro~104_regout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|d0|reg0|registro~183_combout\,
	combout => \proc0|d0|reg0|registro~184_combout\);

-- Location: LCCOMB_X12_Y3_N4
\proc0|d0|reg0|registro~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~187_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~184_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~186_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~186_combout\,
	datad => \proc0|d0|reg0|registro~184_combout\,
	combout => \proc0|d0|reg0|registro~187_combout\);

-- Location: LCCOMB_X14_Y2_N20
\proc0|d0|TOd[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[5]~13_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[13]~13\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[5]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[5]~5\,
	datab => \SRAM_DQ[13]~13\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|d0|TOd[5]~13_combout\);

-- Location: LCFF_X10_Y2_N17
\proc0|d0|reg0|registro~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[5]~14_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~57_regout\);

-- Location: LCFF_X13_Y1_N17
\proc0|d0|reg0|registro~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[5]~14_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~25_regout\);

-- Location: LCFF_X14_Y1_N21
\proc0|d0|reg0|registro~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[5]~14_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~41_regout\);

-- Location: LCCOMB_X13_Y1_N16
\proc0|d0|reg0|registro~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~200_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|cu0|clogic0|Mux7~0_combout\)) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~41_regout\))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~25_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~25_regout\,
	datad => \proc0|d0|reg0|registro~41_regout\,
	combout => \proc0|d0|reg0|registro~200_combout\);

-- Location: LCCOMB_X10_Y2_N24
\proc0|d0|reg0|registro~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~201_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~200_combout\ & (\proc0|d0|reg0|registro~73_regout\)) # (!\proc0|d0|reg0|registro~200_combout\ & ((\proc0|d0|reg0|registro~57_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~73_regout\,
	datab => \proc0|cu0|clogic0|Mux6~0_combout\,
	datac => \proc0|d0|reg0|registro~57_regout\,
	datad => \proc0|d0|reg0|registro~200_combout\,
	combout => \proc0|d0|reg0|registro~201_combout\);

-- Location: LCFF_X10_Y2_N23
\proc0|d0|reg0|registro~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[5]~14_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~137_regout\);

-- Location: LCFF_X13_Y3_N13
\proc0|d0|reg0|registro~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[5]~14_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~121_regout\);

-- Location: LCFF_X13_Y3_N27
\proc0|d0|reg0|registro~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[5]~14_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~89_regout\);

-- Location: LCCOMB_X13_Y3_N26
\proc0|d0|reg0|registro~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~198_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~121_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~89_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~121_regout\,
	datac => \proc0|d0|reg0|registro~89_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~198_combout\);

-- Location: LCCOMB_X10_Y2_N22
\proc0|d0|reg0|registro~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~199_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~198_combout\ & ((\proc0|d0|reg0|registro~137_regout\))) # (!\proc0|d0|reg0|registro~198_combout\ & (\proc0|d0|reg0|registro~105_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~105_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~137_regout\,
	datad => \proc0|d0|reg0|registro~198_combout\,
	combout => \proc0|d0|reg0|registro~199_combout\);

-- Location: LCCOMB_X10_Y2_N2
\proc0|d0|reg0|registro~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~202_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~199_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~201_combout\,
	datad => \proc0|d0|reg0|registro~199_combout\,
	combout => \proc0|d0|reg0|registro~202_combout\);

-- Location: LCCOMB_X11_Y2_N10
\proc0|d0|alu0|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~54_combout\ = (\proc0|d0|reg0|registro~202_combout\ & ((\proc0|d0|reg0|registro~197_combout\ & (\proc0|d0|alu0|Add0~53\ & VCC)) # (!\proc0|d0|reg0|registro~197_combout\ & (!\proc0|d0|alu0|Add0~53\)))) # 
-- (!\proc0|d0|reg0|registro~202_combout\ & ((\proc0|d0|reg0|registro~197_combout\ & (!\proc0|d0|alu0|Add0~53\)) # (!\proc0|d0|reg0|registro~197_combout\ & ((\proc0|d0|alu0|Add0~53\) # (GND)))))
-- \proc0|d0|alu0|Add0~55\ = CARRY((\proc0|d0|reg0|registro~202_combout\ & (!\proc0|d0|reg0|registro~197_combout\ & !\proc0|d0|alu0|Add0~53\)) # (!\proc0|d0|reg0|registro~202_combout\ & ((!\proc0|d0|alu0|Add0~53\) # (!\proc0|d0|reg0|registro~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~202_combout\,
	datab => \proc0|d0|reg0|registro~197_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~53\,
	combout => \proc0|d0|alu0|Add0~54_combout\,
	cout => \proc0|d0|alu0|Add0~55\);

-- Location: LCCOMB_X10_Y2_N0
\proc0|d0|alu0|Add0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~89_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~197_combout\ & (!\proc0|cu0|ir_actual\(8)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~197_combout\,
	datab => \proc0|cu0|ir_actual\(8),
	datac => \proc0|d0|alu0|Add0~54_combout\,
	datad => \proc0|cu0|clogic0|Mux9~0_combout\,
	combout => \proc0|d0|alu0|Add0~89_combout\);

-- Location: LCCOMB_X10_Y2_N30
\proc0|d0|alu0|Add0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~101_combout\ = (\proc0|d0|alu0|Add0~89_combout\) # ((\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~202_combout\ & \proc0|cu0|ir_actual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|d0|reg0|registro~202_combout\,
	datac => \proc0|cu0|ir_actual\(8),
	datad => \proc0|d0|alu0|Add0~89_combout\,
	combout => \proc0|d0|alu0|Add0~101_combout\);

-- Location: LCCOMB_X14_Y2_N28
\proc0|d0|TOd[5]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[5]~14_combout\ = (\proc0|d0|TOd[5]~13_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & \proc0|d0|alu0|Add0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|TOd[5]~13_combout\,
	datad => \proc0|d0|alu0|Add0~101_combout\,
	combout => \proc0|d0|TOd[5]~14_combout\);

-- Location: LCFF_X14_Y2_N29
\proc0|d0|reg0|registro~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[5]~14_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~73_regout\);

-- Location: LCCOMB_X14_Y1_N22
\proc0|d0|reg0|registro~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~195_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~41_regout\))) # (!\proc0|cu0|ir_actual\(9) & 
-- (\proc0|d0|reg0|registro~25_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~25_regout\,
	datac => \proc0|d0|reg0|registro~41_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~195_combout\);

-- Location: LCCOMB_X10_Y1_N0
\proc0|d0|reg0|registro~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~196_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~195_combout\ & ((\proc0|d0|reg0|registro~73_regout\))) # (!\proc0|d0|reg0|registro~195_combout\ & (\proc0|d0|reg0|registro~57_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~57_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~73_regout\,
	datad => \proc0|d0|reg0|registro~195_combout\,
	combout => \proc0|d0|reg0|registro~196_combout\);

-- Location: LCCOMB_X13_Y3_N12
\proc0|d0|reg0|registro~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~193_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~121_regout\) # (\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~89_regout\ & ((!\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~89_regout\,
	datac => \proc0|d0|reg0|registro~121_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~193_combout\);

-- Location: LCCOMB_X10_Y1_N6
\proc0|d0|reg0|registro~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~194_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~193_combout\ & ((\proc0|d0|reg0|registro~137_regout\))) # (!\proc0|d0|reg0|registro~193_combout\ & (\proc0|d0|reg0|registro~105_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~105_regout\,
	datab => \proc0|d0|reg0|registro~137_regout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|d0|reg0|registro~193_combout\,
	combout => \proc0|d0|reg0|registro~194_combout\);

-- Location: LCCOMB_X10_Y1_N30
\proc0|d0|reg0|registro~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~197_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~194_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~196_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~196_combout\,
	datad => \proc0|d0|reg0|registro~194_combout\,
	combout => \proc0|d0|reg0|registro~197_combout\);

-- Location: LCCOMB_X11_Y5_N20
\proc0|cu0|clogic0|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux19~0_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & \proc0|cu0|ir_actual\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datad => \proc0|cu0|ir_actual\(8),
	combout => \proc0|cu0|clogic0|Mux19~0_combout\);

-- Location: LCFF_X12_Y3_N7
\proc0|d0|reg0|registro~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[6]~16_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~138_regout\);

-- Location: LCFF_X13_Y3_N23
\proc0|d0|reg0|registro~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[6]~16_combout\,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~90_regout\);

-- Location: LCFF_X13_Y3_N9
\proc0|d0|reg0|registro~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[6]~16_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~122_regout\);

-- Location: LCCOMB_X13_Y3_N8
\proc0|d0|reg0|registro~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~203_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~122_regout\) # (\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~90_regout\ & 
-- ((!\proc0|cu0|clogic0|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~90_regout\,
	datac => \proc0|d0|reg0|registro~122_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~203_combout\);

-- Location: LCCOMB_X10_Y5_N26
\proc0|d0|reg0|registro~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~204_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~203_combout\ & ((\proc0|d0|reg0|registro~138_regout\))) # (!\proc0|d0|reg0|registro~203_combout\ & (\proc0|d0|reg0|registro~106_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~106_regout\,
	datab => \proc0|d0|reg0|registro~138_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|d0|reg0|registro~203_combout\,
	combout => \proc0|d0|reg0|registro~204_combout\);

-- Location: LCCOMB_X9_Y1_N16
\proc0|d0|reg0|registro~58feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~58feeder_combout\ = \proc0|d0|TOd[6]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[6]~16_combout\,
	combout => \proc0|d0|reg0|registro~58feeder_combout\);

-- Location: LCFF_X9_Y1_N17
\proc0|d0|reg0|registro~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~58feeder_combout\,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~58_regout\);

-- Location: LCFF_X13_Y1_N7
\proc0|d0|reg0|registro~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[6]~16_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~26_regout\);

-- Location: LCCOMB_X13_Y1_N6
\proc0|d0|reg0|registro~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~205_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~42_regout\) # ((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~26_regout\ & 
-- !\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~42_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~26_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~205_combout\);

-- Location: LCCOMB_X10_Y1_N8
\proc0|d0|reg0|registro~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~206_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~205_combout\ & ((\proc0|d0|reg0|registro~74_regout\))) # (!\proc0|d0|reg0|registro~205_combout\ & (\proc0|d0|reg0|registro~58_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~58_regout\,
	datac => \proc0|d0|reg0|registro~74_regout\,
	datad => \proc0|d0|reg0|registro~205_combout\,
	combout => \proc0|d0|reg0|registro~206_combout\);

-- Location: LCCOMB_X10_Y5_N16
\proc0|d0|alu0|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~56_combout\ = (\proc0|cu0|clogic0|Mux19~0_combout\ & ((\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~204_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux5~0_combout\,
	datab => \proc0|cu0|clogic0|Mux19~0_combout\,
	datac => \proc0|d0|reg0|registro~204_combout\,
	datad => \proc0|d0|reg0|registro~206_combout\,
	combout => \proc0|d0|alu0|Add0~56_combout\);

-- Location: LCCOMB_X12_Y2_N0
\proc0|d0|TOd[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[6]~15_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[14]~14\)) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[6]~6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[14]~14\,
	datab => \SRAM_DQ[6]~6\,
	datac => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datad => \proc0|cu0|clogic0|Mux2~0_combout\,
	combout => \proc0|d0|TOd[6]~15_combout\);

-- Location: LCCOMB_X11_Y2_N12
\proc0|d0|alu0|Add0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~57_combout\ = ((\proc0|d0|reg0|registro~212_combout\ $ (\proc0|d0|reg0|registro~211_combout\ $ (!\proc0|d0|alu0|Add0~55\)))) # (GND)
-- \proc0|d0|alu0|Add0~58\ = CARRY((\proc0|d0|reg0|registro~212_combout\ & ((\proc0|d0|reg0|registro~211_combout\) # (!\proc0|d0|alu0|Add0~55\))) # (!\proc0|d0|reg0|registro~212_combout\ & (\proc0|d0|reg0|registro~211_combout\ & !\proc0|d0|alu0|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~212_combout\,
	datab => \proc0|d0|reg0|registro~211_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~55\,
	combout => \proc0|d0|alu0|Add0~57_combout\,
	cout => \proc0|d0|alu0|Add0~58\);

-- Location: LCCOMB_X12_Y3_N16
\proc0|d0|alu0|Add0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~90_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (!\proc0|cu0|ir_actual\(8) & ((\proc0|d0|reg0|registro~211_combout\)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|alu0|Add0~57_combout\,
	datad => \proc0|d0|reg0|registro~211_combout\,
	combout => \proc0|d0|alu0|Add0~90_combout\);

-- Location: LCCOMB_X13_Y3_N22
\proc0|d0|TOd[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[6]~16_combout\ = (\proc0|d0|TOd[6]~15_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~56_combout\) # (\proc0|d0|alu0|Add0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|d0|alu0|Add0~56_combout\,
	datac => \proc0|d0|TOd[6]~15_combout\,
	datad => \proc0|d0|alu0|Add0~90_combout\,
	combout => \proc0|d0|TOd[6]~16_combout\);

-- Location: LCFF_X10_Y3_N25
\proc0|d0|reg0|registro~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[6]~16_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~74_regout\);

-- Location: LCFF_X14_Y1_N25
\proc0|d0|reg0|registro~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[6]~16_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~42_regout\);

-- Location: LCCOMB_X14_Y1_N26
\proc0|d0|reg0|registro~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~209_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~42_regout\))) # (!\proc0|cu0|ir_actual\(9) & 
-- (\proc0|d0|reg0|registro~26_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~26_regout\,
	datac => \proc0|d0|reg0|registro~42_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~209_combout\);

-- Location: LCCOMB_X9_Y1_N30
\proc0|d0|reg0|registro~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~210_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~209_combout\ & (\proc0|d0|reg0|registro~74_regout\)) # (!\proc0|d0|reg0|registro~209_combout\ & ((\proc0|d0|reg0|registro~58_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~74_regout\,
	datac => \proc0|d0|reg0|registro~58_regout\,
	datad => \proc0|d0|reg0|registro~209_combout\,
	combout => \proc0|d0|reg0|registro~210_combout\);

-- Location: LCCOMB_X10_Y5_N28
\proc0|d0|reg0|registro~106feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~106feeder_combout\ = \proc0|d0|TOd[6]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[6]~16_combout\,
	combout => \proc0|d0|reg0|registro~106feeder_combout\);

-- Location: LCFF_X10_Y5_N29
\proc0|d0|reg0|registro~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~106feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~106_regout\);

-- Location: LCCOMB_X13_Y3_N0
\proc0|d0|reg0|registro~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~207_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~122_regout\))) # (!\proc0|cu0|ir_actual\(10) & 
-- (\proc0|d0|reg0|registro~90_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~90_regout\,
	datac => \proc0|d0|reg0|registro~122_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~207_combout\);

-- Location: LCCOMB_X10_Y5_N18
\proc0|d0|reg0|registro~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~208_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~207_combout\ & ((\proc0|d0|reg0|registro~138_regout\))) # (!\proc0|d0|reg0|registro~207_combout\ & (\proc0|d0|reg0|registro~106_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~207_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~106_regout\,
	datac => \proc0|d0|reg0|registro~138_regout\,
	datad => \proc0|d0|reg0|registro~207_combout\,
	combout => \proc0|d0|reg0|registro~208_combout\);

-- Location: LCCOMB_X10_Y5_N24
\proc0|d0|reg0|registro~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~211_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~208_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~210_combout\,
	datad => \proc0|d0|reg0|registro~208_combout\,
	combout => \proc0|d0|reg0|registro~211_combout\);

-- Location: LCCOMB_X12_Y2_N6
\proc0|d0|TOd[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[7]~17_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[15]~15\)) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[7]~7\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[7]~7\,
	datac => \memory0|sram_controller|dataReaded[0]~7_combout\,
	datad => \proc0|cu0|clogic0|Mux2~0_combout\,
	combout => \proc0|d0|TOd[7]~17_combout\);

-- Location: LCCOMB_X11_Y2_N14
\proc0|d0|alu0|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~60_combout\ = (\proc0|d0|reg0|registro~222_combout\ & ((\proc0|d0|reg0|registro~221_combout\ & (\proc0|d0|alu0|Add0~58\ & VCC)) # (!\proc0|d0|reg0|registro~221_combout\ & (!\proc0|d0|alu0|Add0~58\)))) # 
-- (!\proc0|d0|reg0|registro~222_combout\ & ((\proc0|d0|reg0|registro~221_combout\ & (!\proc0|d0|alu0|Add0~58\)) # (!\proc0|d0|reg0|registro~221_combout\ & ((\proc0|d0|alu0|Add0~58\) # (GND)))))
-- \proc0|d0|alu0|Add0~61\ = CARRY((\proc0|d0|reg0|registro~222_combout\ & (!\proc0|d0|reg0|registro~221_combout\ & !\proc0|d0|alu0|Add0~58\)) # (!\proc0|d0|reg0|registro~222_combout\ & ((!\proc0|d0|alu0|Add0~58\) # (!\proc0|d0|reg0|registro~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~222_combout\,
	datab => \proc0|d0|reg0|registro~221_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~58\,
	combout => \proc0|d0|alu0|Add0~60_combout\,
	cout => \proc0|d0|alu0|Add0~61\);

-- Location: LCCOMB_X11_Y5_N12
\proc0|d0|alu0|Add0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~91_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~221_combout\ & (!\proc0|cu0|ir_actual\(8)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~221_combout\,
	datab => \proc0|cu0|ir_actual\(8),
	datac => \proc0|cu0|clogic0|Mux9~0_combout\,
	datad => \proc0|d0|alu0|Add0~60_combout\,
	combout => \proc0|d0|alu0|Add0~91_combout\);

-- Location: LCCOMB_X11_Y5_N4
\proc0|d0|TOd[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[7]~18_combout\ = (\proc0|d0|TOd[7]~17_combout\) # ((!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~59_combout\) # (\proc0|d0|alu0|Add0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~59_combout\,
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|TOd[7]~17_combout\,
	datad => \proc0|d0|alu0|Add0~91_combout\,
	combout => \proc0|d0|TOd[7]~18_combout\);

-- Location: LCFF_X11_Y5_N29
\proc0|d0|reg0|registro~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[7]~18_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~75_regout\);

-- Location: LCCOMB_X14_Y5_N2
\proc0|d0|reg0|registro~27feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~27feeder_combout\ = \proc0|d0|TOd[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[7]~18_combout\,
	combout => \proc0|d0|reg0|registro~27feeder_combout\);

-- Location: LCFF_X14_Y5_N3
\proc0|d0|reg0|registro~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~27feeder_combout\,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~27_regout\);

-- Location: LCCOMB_X14_Y5_N30
\proc0|d0|reg0|registro~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~219_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~43_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~27_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~43_regout\,
	datab => \proc0|d0|reg0|registro~27_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~219_combout\);

-- Location: LCCOMB_X13_Y5_N8
\proc0|d0|reg0|registro~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~220_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~219_combout\ & ((\proc0|d0|reg0|registro~75_regout\))) # (!\proc0|d0|reg0|registro~219_combout\ & (\proc0|d0|reg0|registro~59_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~59_regout\,
	datab => \proc0|d0|reg0|registro~75_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|d0|reg0|registro~219_combout\,
	combout => \proc0|d0|reg0|registro~220_combout\);

-- Location: LCFF_X11_Y5_N23
\proc0|d0|reg0|registro~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[7]~18_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~123_regout\);

-- Location: LCCOMB_X11_Y5_N14
\proc0|d0|reg0|registro~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~217_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~123_regout\) # (\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~91_regout\ & ((!\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~91_regout\,
	datab => \proc0|d0|reg0|registro~123_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~217_combout\);

-- Location: LCFF_X13_Y5_N11
\proc0|d0|reg0|registro~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[7]~18_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~139_regout\);

-- Location: LCCOMB_X10_Y5_N8
\proc0|d0|reg0|registro~107feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~107feeder_combout\ = \proc0|d0|TOd[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[7]~18_combout\,
	combout => \proc0|d0|reg0|registro~107feeder_combout\);

-- Location: LCFF_X10_Y5_N9
\proc0|d0|reg0|registro~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~107feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~107_regout\);

-- Location: LCCOMB_X13_Y5_N10
\proc0|d0|reg0|registro~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~218_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~217_combout\ & (\proc0|d0|reg0|registro~139_regout\)) # (!\proc0|d0|reg0|registro~217_combout\ & ((\proc0|d0|reg0|registro~107_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~217_combout\,
	datac => \proc0|d0|reg0|registro~139_regout\,
	datad => \proc0|d0|reg0|registro~107_regout\,
	combout => \proc0|d0|reg0|registro~218_combout\);

-- Location: LCCOMB_X13_Y5_N22
\proc0|d0|reg0|registro~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~221_combout\ = (\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~218_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~220_combout\,
	datad => \proc0|d0|reg0|registro~218_combout\,
	combout => \proc0|d0|reg0|registro~221_combout\);

-- Location: LCCOMB_X13_Y1_N4
\proc0|cu0|ir_actual~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~17_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[13]~13\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[5]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[5]~5\,
	datab => \SRAM_DQ[13]~13\,
	datac => \SW~combout\(9),
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|cu0|ir_actual~17_combout\);

-- Location: LCFF_X13_Y1_N5
\proc0|cu0|ir_actual[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~17_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(5));

-- Location: LCCOMB_X12_Y1_N24
\proc0|cu0|clogic0|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|clogic0|Mux9~1_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(7))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & ((\proc0|cu0|ir_actual\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(7),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datad => \proc0|cu0|ir_actual\(5),
	combout => \proc0|cu0|clogic0|Mux9~1_combout\);

-- Location: LCCOMB_X11_Y2_N16
\proc0|d0|alu0|Add0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~63_combout\ = ((\proc0|d0|reg0|registro~227_combout\ $ (\proc0|cu0|clogic0|Mux9~1_combout\ $ (!\proc0|d0|alu0|Add0~61\)))) # (GND)
-- \proc0|d0|alu0|Add0~64\ = CARRY((\proc0|d0|reg0|registro~227_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\) # (!\proc0|d0|alu0|Add0~61\))) # (!\proc0|d0|reg0|registro~227_combout\ & (\proc0|cu0|clogic0|Mux9~1_combout\ & !\proc0|d0|alu0|Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~227_combout\,
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~61\,
	combout => \proc0|d0|alu0|Add0~63_combout\,
	cout => \proc0|d0|alu0|Add0~64\);

-- Location: LCCOMB_X12_Y6_N28
\proc0|d0|alu0|Add0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~92_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & (\proc0|d0|TOy~0_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|cu0|ir_actual\(8),
	datac => \proc0|d0|TOy~0_combout\,
	datad => \proc0|d0|alu0|Add0~63_combout\,
	combout => \proc0|d0|alu0|Add0~92_combout\);

-- Location: LCCOMB_X12_Y6_N14
\proc0|d0|TOd[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[8]~19_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & (((\proc0|d0|TOd[8]~5_combout\)))) # (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # ((\proc0|d0|alu0|Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~62_combout\,
	datab => \proc0|d0|TOd[8]~5_combout\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \proc0|d0|alu0|Add0~92_combout\,
	combout => \proc0|d0|TOd[8]~19_combout\);

-- Location: LCCOMB_X12_Y6_N16
\proc0|d0|TOd[8]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[8]~20_combout\ = (\proc0|d0|TOd[8]~19_combout\) # ((\proc0|cu0|clogic0|Mux2~0_combout\ & \memory0|sram_controller|dataReaded[10]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|TOd[8]~19_combout\,
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|d0|TOd[8]~20_combout\);

-- Location: LCFF_X12_Y6_N19
\proc0|d0|reg0|registro~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[8]~20_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~76_regout\);

-- Location: LCFF_X12_Y6_N25
\proc0|d0|reg0|registro~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[8]~20_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~60_regout\);

-- Location: LCCOMB_X12_Y6_N30
\proc0|d0|reg0|registro~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~283_combout\ = (\proc0|d0|reg0|registro~282_combout\ & ((\proc0|d0|reg0|registro~76_regout\) # ((!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~282_combout\ & (((\proc0|d0|reg0|registro~60_regout\ & 
-- \proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~282_combout\,
	datab => \proc0|d0|reg0|registro~76_regout\,
	datac => \proc0|d0|reg0|registro~60_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~283_combout\);

-- Location: LCFF_X13_Y5_N5
\proc0|d0|reg0|registro~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[8]~20_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~92_regout\);

-- Location: LCCOMB_X13_Y5_N4
\proc0|d0|reg0|registro~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~280_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~124_regout\) # ((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~92_regout\ & !\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~124_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~92_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~280_combout\);

-- Location: LCCOMB_X12_Y4_N4
\proc0|d0|reg0|registro~108feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~108feeder_combout\ = \proc0|d0|TOd[8]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[8]~20_combout\,
	combout => \proc0|d0|reg0|registro~108feeder_combout\);

-- Location: LCFF_X12_Y4_N5
\proc0|d0|reg0|registro~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~108feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~108_regout\);

-- Location: LCCOMB_X11_Y6_N16
\proc0|d0|reg0|registro~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~281_combout\ = (\proc0|d0|reg0|registro~280_combout\ & ((\proc0|d0|reg0|registro~140_regout\) # ((!\proc0|cu0|ir_actual\(9))))) # (!\proc0|d0|reg0|registro~280_combout\ & (((\proc0|d0|reg0|registro~108_regout\ & 
-- \proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~140_regout\,
	datab => \proc0|d0|reg0|registro~280_combout\,
	datac => \proc0|d0|reg0|registro~108_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~281_combout\);

-- Location: LCCOMB_X12_Y6_N8
\memory0|sram_controller|SRAM_DQ[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[8]~35_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~281_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|word_byte~0_combout\,
	datab => \proc0|d0|reg0|registro~283_combout\,
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|d0|reg0|registro~281_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[8]~35_combout\);

-- Location: LCCOMB_X10_Y3_N20
\memory0|sram_controller|SRAM_DQ[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[8]~43_combout\ = (\memory0|sram_controller|SRAM_DQ[8]~35_combout\) # ((\proc0|cu0|ge|estat~regout\ & (\proc0|d0|reg0|registro~279_combout\ & \proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|d0|reg0|registro~279_combout\,
	datac => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \memory0|sram_controller|SRAM_DQ[8]~35_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[8]~43_combout\);

-- Location: LCCOMB_X12_Y2_N28
\proc0|d0|alu0|Add0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~80_combout\ = (\proc0|d0|alu0|Add0~79_combout\) # (\proc0|d0|alu0|Add0~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|d0|alu0|Add0~79_combout\,
	datac => \proc0|d0|alu0|Add0~100_combout\,
	combout => \proc0|d0|alu0|Add0~80_combout\);

-- Location: LCCOMB_X10_Y1_N22
\memory0|sram_controller|SRAM_DQ[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[15]~44_combout\ = (\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|clogic0|Mux1~0_combout\ & ((\proc0|d0|alu0|Add0~80_combout\) # (!\proc0|cu0|clogic0|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~80_combout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|cu0|clogic0|Mux1~0_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[15]~44_combout\);

-- Location: LCCOMB_X11_Y2_N18
\proc0|d0|alu0|Add0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~65_combout\ = (\proc0|d0|reg0|registro~232_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\ & (\proc0|d0|alu0|Add0~64\ & VCC)) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & (!\proc0|d0|alu0|Add0~64\)))) # 
-- (!\proc0|d0|reg0|registro~232_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\ & (!\proc0|d0|alu0|Add0~64\)) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & ((\proc0|d0|alu0|Add0~64\) # (GND)))))
-- \proc0|d0|alu0|Add0~66\ = CARRY((\proc0|d0|reg0|registro~232_combout\ & (!\proc0|cu0|clogic0|Mux9~1_combout\ & !\proc0|d0|alu0|Add0~64\)) # (!\proc0|d0|reg0|registro~232_combout\ & ((!\proc0|d0|alu0|Add0~64\) # (!\proc0|cu0|clogic0|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~232_combout\,
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~64\,
	combout => \proc0|d0|alu0|Add0~65_combout\,
	cout => \proc0|d0|alu0|Add0~66\);

-- Location: LCCOMB_X11_Y5_N30
\proc0|d0|alu0|Add0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~93_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~152_combout\ & ((\proc0|cu0|ir_actual\(8))))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~152_combout\,
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|alu0|Add0~65_combout\,
	datad => \proc0|cu0|ir_actual\(8),
	combout => \proc0|d0|alu0|Add0~93_combout\);

-- Location: LCCOMB_X11_Y5_N24
\proc0|d0|alu0|Add0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~102_combout\ = (\proc0|d0|alu0|Add0~93_combout\) # ((\proc0|cu0|clogic0|Mux9~0_combout\ & (!\proc0|cu0|ir_actual\(8) & \proc0|cu0|clogic0|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|cu0|ir_actual\(8),
	datac => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => \proc0|d0|alu0|Add0~93_combout\,
	combout => \proc0|d0|alu0|Add0~102_combout\);

-- Location: LCCOMB_X11_Y5_N6
\proc0|d0|TOd[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[9]~21_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|TOd[9]~4_combout\) # ((\memory0|sram_controller|dataReaded[10]~6_combout\)))) # (!\proc0|cu0|clogic0|Mux2~0_combout\ & (((\proc0|d0|alu0|Add0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|d0|TOd[9]~4_combout\,
	datac => \proc0|d0|alu0|Add0~102_combout\,
	datad => \memory0|sram_controller|dataReaded[10]~6_combout\,
	combout => \proc0|d0|TOd[9]~21_combout\);

-- Location: LCFF_X11_Y3_N5
\proc0|d0|reg0|registro~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[9]~21_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~141_regout\);

-- Location: LCCOMB_X10_Y5_N4
\proc0|d0|reg0|registro~109feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~109feeder_combout\ = \proc0|d0|TOd[9]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[9]~21_combout\,
	combout => \proc0|d0|reg0|registro~109feeder_combout\);

-- Location: LCFF_X10_Y5_N5
\proc0|d0|reg0|registro~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~109feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~109_regout\);

-- Location: LCCOMB_X11_Y3_N4
\proc0|d0|reg0|registro~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~285_combout\ = (\proc0|d0|reg0|registro~284_combout\ & (((\proc0|d0|reg0|registro~141_regout\)) # (!\proc0|cu0|ir_actual\(9)))) # (!\proc0|d0|reg0|registro~284_combout\ & (\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~109_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~284_combout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|d0|reg0|registro~141_regout\,
	datad => \proc0|d0|reg0|registro~109_regout\,
	combout => \proc0|d0|reg0|registro~285_combout\);

-- Location: LCCOMB_X12_Y3_N22
\memory0|sram_controller|SRAM_DQ[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[9]~36_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~285_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~287_combout\,
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~285_combout\,
	datad => \proc0|cu0|ge|word_byte~0_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[9]~36_combout\);

-- Location: LCCOMB_X12_Y3_N18
\memory0|sram_controller|SRAM_DQ[9]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[9]~45_combout\ = (\memory0|sram_controller|SRAM_DQ[9]~36_combout\) # ((\proc0|cu0|ge|estat~regout\ & (\proc0|d0|reg0|registro~152_combout\ & \proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|d0|reg0|registro~152_combout\,
	datac => \memory0|sram_controller|SRAM_DQ[9]~36_combout\,
	datad => \proc0|cu0|clogic0|Mux4~0_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[9]~45_combout\);

-- Location: LCCOMB_X11_Y1_N2
\proc0|d0|alu0|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~62_combout\ = (!\proc0|cu0|ir_actual\(8) & (\proc0|cu0|clogic0|Mux9~0_combout\ & \proc0|cu0|ir_actual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datad => \proc0|cu0|ir_actual\(7),
	combout => \proc0|d0|alu0|Add0~62_combout\);

-- Location: LCCOMB_X11_Y2_N20
\proc0|d0|alu0|Add0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~67_combout\ = ((\proc0|d0|reg0|registro~237_combout\ $ (\proc0|cu0|clogic0|Mux9~1_combout\ $ (!\proc0|d0|alu0|Add0~66\)))) # (GND)
-- \proc0|d0|alu0|Add0~68\ = CARRY((\proc0|d0|reg0|registro~237_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\) # (!\proc0|d0|alu0|Add0~66\))) # (!\proc0|d0|reg0|registro~237_combout\ & (\proc0|cu0|clogic0|Mux9~1_combout\ & !\proc0|d0|alu0|Add0~66\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~237_combout\,
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~66\,
	combout => \proc0|d0|alu0|Add0~67_combout\,
	cout => \proc0|d0|alu0|Add0~68\);

-- Location: LCCOMB_X12_Y5_N0
\proc0|d0|alu0|Add0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~94_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|d0|reg0|registro~167_combout\ & ((\proc0|cu0|ir_actual\(8))))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~0_combout\,
	datab => \proc0|d0|reg0|registro~167_combout\,
	datac => \proc0|d0|alu0|Add0~67_combout\,
	datad => \proc0|cu0|ir_actual\(8),
	combout => \proc0|d0|alu0|Add0~94_combout\);

-- Location: LCCOMB_X12_Y5_N14
\proc0|d0|TOd[10]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[10]~22_combout\ = (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # (\proc0|d0|alu0|Add0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|alu0|Add0~62_combout\,
	datad => \proc0|d0|alu0|Add0~94_combout\,
	combout => \proc0|d0|TOd[10]~22_combout\);

-- Location: LCCOMB_X13_Y5_N14
\proc0|d0|TOd[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[10]~23_combout\ = (\proc0|d0|TOd[10]~22_combout\) # ((\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|cu0|ir_actual~2_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|cu0|ir_actual~2_combout\,
	datac => \memory0|sram_controller|dataReaded[10]~6_combout\,
	datad => \proc0|d0|TOd[10]~22_combout\,
	combout => \proc0|d0|TOd[10]~23_combout\);

-- Location: LCCOMB_X12_Y4_N22
\proc0|d0|reg0|registro~62feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~62feeder_combout\ = \proc0|d0|TOd[10]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[10]~23_combout\,
	combout => \proc0|d0|reg0|registro~62feeder_combout\);

-- Location: LCFF_X12_Y4_N23
\proc0|d0|reg0|registro~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~62feeder_combout\,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~62_regout\);

-- Location: LCFF_X12_Y1_N23
\proc0|d0|reg0|registro~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[10]~23_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~30_regout\);

-- Location: LCCOMB_X14_Y5_N4
\proc0|d0|reg0|registro~46feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~46feeder_combout\ = \proc0|d0|TOd[10]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[10]~23_combout\,
	combout => \proc0|d0|reg0|registro~46feeder_combout\);

-- Location: LCFF_X14_Y5_N5
\proc0|d0|reg0|registro~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~46feeder_combout\,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~46_regout\);

-- Location: LCCOMB_X12_Y1_N22
\proc0|d0|reg0|registro~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~290_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10)) # ((\proc0|d0|reg0|registro~46_regout\)))) # (!\proc0|cu0|ir_actual\(9) & (!\proc0|cu0|ir_actual\(10) & (\proc0|d0|reg0|registro~30_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~30_regout\,
	datad => \proc0|d0|reg0|registro~46_regout\,
	combout => \proc0|d0|reg0|registro~290_combout\);

-- Location: LCCOMB_X12_Y4_N24
\proc0|d0|reg0|registro~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~291_combout\ = (\proc0|d0|reg0|registro~290_combout\ & ((\proc0|d0|reg0|registro~78_regout\) # ((!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~290_combout\ & (((\proc0|d0|reg0|registro~62_regout\ & 
-- \proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~78_regout\,
	datab => \proc0|d0|reg0|registro~62_regout\,
	datac => \proc0|d0|reg0|registro~290_combout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~291_combout\);

-- Location: LCFF_X13_Y5_N15
\proc0|d0|reg0|registro~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[10]~23_combout\,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~142_regout\);

-- Location: LCCOMB_X12_Y4_N6
\proc0|d0|reg0|registro~110feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~110feeder_combout\ = \proc0|d0|TOd[10]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[10]~23_combout\,
	combout => \proc0|d0|reg0|registro~110feeder_combout\);

-- Location: LCFF_X12_Y4_N7
\proc0|d0|reg0|registro~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~110feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~110_regout\);

-- Location: LCCOMB_X13_Y4_N22
\proc0|d0|reg0|registro~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~289_combout\ = (\proc0|d0|reg0|registro~288_combout\ & (((\proc0|d0|reg0|registro~142_regout\)) # (!\proc0|cu0|ir_actual\(9)))) # (!\proc0|d0|reg0|registro~288_combout\ & (\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~110_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~288_combout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|d0|reg0|registro~142_regout\,
	datad => \proc0|d0|reg0|registro~110_regout\,
	combout => \proc0|d0|reg0|registro~289_combout\);

-- Location: LCCOMB_X13_Y4_N12
\memory0|sram_controller|SRAM_DQ[10]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[10]~37_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~289_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|word_byte~0_combout\,
	datab => \proc0|d0|reg0|registro~291_combout\,
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|d0|reg0|registro~289_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[10]~37_combout\);

-- Location: LCCOMB_X10_Y1_N12
\memory0|sram_controller|SRAM_DQ[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[10]~46_combout\ = (\memory0|sram_controller|SRAM_DQ[10]~37_combout\) # ((\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|clogic0|Mux4~0_combout\ & \proc0|d0|reg0|registro~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \proc0|d0|reg0|registro~167_combout\,
	datad => \memory0|sram_controller|SRAM_DQ[10]~37_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[10]~46_combout\);

-- Location: LCCOMB_X14_Y1_N24
\proc0|cu0|ir_actual~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~4_combout\ = (\SRAM_DQ[11]~11\ & ((!\proc0|cu0|ge|estat~regout\) # (!\proc0|cu0|clogic0|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[11]~11\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|cu0|ir_actual~4_combout\);

-- Location: LCCOMB_X11_Y2_N22
\proc0|d0|alu0|Add0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~69_combout\ = (\proc0|d0|reg0|registro~242_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\ & (\proc0|d0|alu0|Add0~68\ & VCC)) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & (!\proc0|d0|alu0|Add0~68\)))) # 
-- (!\proc0|d0|reg0|registro~242_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\ & (!\proc0|d0|alu0|Add0~68\)) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & ((\proc0|d0|alu0|Add0~68\) # (GND)))))
-- \proc0|d0|alu0|Add0~70\ = CARRY((\proc0|d0|reg0|registro~242_combout\ & (!\proc0|cu0|clogic0|Mux9~1_combout\ & !\proc0|d0|alu0|Add0~68\)) # (!\proc0|d0|reg0|registro~242_combout\ & ((!\proc0|d0|alu0|Add0~68\) # (!\proc0|cu0|clogic0|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~242_combout\,
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~68\,
	combout => \proc0|d0|alu0|Add0~69_combout\,
	cout => \proc0|d0|alu0|Add0~70\);

-- Location: LCCOMB_X12_Y5_N30
\proc0|d0|alu0|Add0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~95_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & ((\proc0|d0|reg0|registro~177_combout\)))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|alu0|Add0~69_combout\,
	datad => \proc0|d0|reg0|registro~177_combout\,
	combout => \proc0|d0|alu0|Add0~95_combout\);

-- Location: LCCOMB_X12_Y5_N12
\proc0|d0|TOd[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[11]~24_combout\ = (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # (\proc0|d0|alu0|Add0~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|alu0|Add0~62_combout\,
	datad => \proc0|d0|alu0|Add0~95_combout\,
	combout => \proc0|d0|TOd[11]~24_combout\);

-- Location: LCCOMB_X12_Y5_N16
\proc0|d0|TOd[11]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[11]~25_combout\ = (\proc0|d0|TOd[11]~24_combout\) # ((\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[10]~6_combout\) # (\proc0|cu0|ir_actual~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \memory0|sram_controller|dataReaded[10]~6_combout\,
	datac => \proc0|cu0|ir_actual~4_combout\,
	datad => \proc0|d0|TOd[11]~24_combout\,
	combout => \proc0|d0|TOd[11]~25_combout\);

-- Location: LCCOMB_X13_Y5_N24
\proc0|d0|reg0|registro~95feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~95feeder_combout\ = \proc0|d0|TOd[11]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[11]~25_combout\,
	combout => \proc0|d0|reg0|registro~95feeder_combout\);

-- Location: LCFF_X13_Y5_N25
\proc0|d0|reg0|registro~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~95feeder_combout\,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~95_regout\);

-- Location: LCFF_X11_Y5_N11
\proc0|d0|reg0|registro~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[11]~25_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~127_regout\);

-- Location: LCCOMB_X12_Y5_N18
\proc0|d0|reg0|registro~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~292_combout\ = (\proc0|cu0|ir_actual\(9) & (((\proc0|cu0|ir_actual\(10))))) # (!\proc0|cu0|ir_actual\(9) & ((\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~127_regout\))) # (!\proc0|cu0|ir_actual\(10) & 
-- (\proc0|d0|reg0|registro~95_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|d0|reg0|registro~95_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|d0|reg0|registro~127_regout\,
	combout => \proc0|d0|reg0|registro~292_combout\);

-- Location: LCCOMB_X13_Y5_N6
\proc0|d0|reg0|registro~143feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~143feeder_combout\ = \proc0|d0|TOd[11]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[11]~25_combout\,
	combout => \proc0|d0|reg0|registro~143feeder_combout\);

-- Location: LCFF_X13_Y5_N7
\proc0|d0|reg0|registro~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~143feeder_combout\,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~143_regout\);

-- Location: LCCOMB_X13_Y4_N30
\proc0|d0|reg0|registro~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~293_combout\ = (\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~292_combout\ & ((\proc0|d0|reg0|registro~143_regout\))) # (!\proc0|d0|reg0|registro~292_combout\ & (\proc0|d0|reg0|registro~111_regout\)))) # 
-- (!\proc0|cu0|ir_actual\(9) & (((\proc0|d0|reg0|registro~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~111_regout\,
	datab => \proc0|cu0|ir_actual\(9),
	datac => \proc0|d0|reg0|registro~292_combout\,
	datad => \proc0|d0|reg0|registro~143_regout\,
	combout => \proc0|d0|reg0|registro~293_combout\);

-- Location: LCCOMB_X10_Y4_N16
\memory0|sram_controller|SRAM_DQ[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[11]~38_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~293_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~295_combout\,
	datab => \proc0|cu0|ge|word_byte~0_combout\,
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|d0|reg0|registro~293_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[11]~38_combout\);

-- Location: LCCOMB_X10_Y3_N30
\memory0|sram_controller|SRAM_DQ[11]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[11]~47_combout\ = (\memory0|sram_controller|SRAM_DQ[11]~38_combout\) # ((\proc0|d0|reg0|registro~177_combout\ & (\proc0|cu0|clogic0|Mux4~0_combout\ & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory0|sram_controller|SRAM_DQ[11]~38_combout\,
	datab => \proc0|d0|reg0|registro~177_combout\,
	datac => \proc0|cu0|clogic0|Mux4~0_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \memory0|sram_controller|SRAM_DQ[11]~47_combout\);

-- Location: LCCOMB_X11_Y2_N24
\proc0|d0|alu0|Add0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~71_combout\ = ((\proc0|d0|reg0|registro~247_combout\ $ (\proc0|cu0|clogic0|Mux9~1_combout\ $ (!\proc0|d0|alu0|Add0~70\)))) # (GND)
-- \proc0|d0|alu0|Add0~72\ = CARRY((\proc0|d0|reg0|registro~247_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\) # (!\proc0|d0|alu0|Add0~70\))) # (!\proc0|d0|reg0|registro~247_combout\ & (\proc0|cu0|clogic0|Mux9~1_combout\ & !\proc0|d0|alu0|Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~247_combout\,
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~70\,
	combout => \proc0|d0|alu0|Add0~71_combout\,
	cout => \proc0|d0|alu0|Add0~72\);

-- Location: LCCOMB_X13_Y2_N14
\proc0|d0|alu0|Add0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~96_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & (\proc0|d0|reg0|registro~187_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~187_combout\,
	datad => \proc0|d0|alu0|Add0~71_combout\,
	combout => \proc0|d0|alu0|Add0~96_combout\);

-- Location: LCCOMB_X14_Y2_N6
\proc0|d0|TOd[12]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[12]~26_combout\ = (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # (\proc0|d0|alu0|Add0~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|d0|alu0|Add0~62_combout\,
	datad => \proc0|d0|alu0|Add0~96_combout\,
	combout => \proc0|d0|TOd[12]~26_combout\);

-- Location: LCCOMB_X14_Y2_N0
\proc0|d0|TOd[12]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[12]~27_combout\ = (\proc0|d0|TOd[12]~26_combout\) # ((\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|cu0|ir_actual~7_combout\) # (\memory0|sram_controller|dataReaded[10]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|cu0|ir_actual~7_combout\,
	datac => \memory0|sram_controller|dataReaded[10]~6_combout\,
	datad => \proc0|d0|TOd[12]~26_combout\,
	combout => \proc0|d0|TOd[12]~27_combout\);

-- Location: LCCOMB_X13_Y5_N0
\proc0|d0|reg0|registro~144feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~144feeder_combout\ = \proc0|d0|TOd[12]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[12]~27_combout\,
	combout => \proc0|d0|reg0|registro~144feeder_combout\);

-- Location: LCFF_X13_Y5_N1
\proc0|d0|reg0|registro~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~144feeder_combout\,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~144_regout\);

-- Location: LCCOMB_X14_Y3_N22
\proc0|d0|reg0|registro~112feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~112feeder_combout\ = \proc0|d0|TOd[12]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[12]~27_combout\,
	combout => \proc0|d0|reg0|registro~112feeder_combout\);

-- Location: LCFF_X14_Y3_N23
\proc0|d0|reg0|registro~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~112feeder_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~112_regout\);

-- Location: LCCOMB_X13_Y5_N30
\proc0|d0|reg0|registro~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~297_combout\ = (\proc0|d0|reg0|registro~296_combout\ & ((\proc0|d0|reg0|registro~144_regout\) # ((!\proc0|cu0|ir_actual\(9))))) # (!\proc0|d0|reg0|registro~296_combout\ & (((\proc0|cu0|ir_actual\(9) & 
-- \proc0|d0|reg0|registro~112_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~296_combout\,
	datab => \proc0|d0|reg0|registro~144_regout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|d0|reg0|registro~112_regout\,
	combout => \proc0|d0|reg0|registro~297_combout\);

-- Location: LCCOMB_X14_Y5_N14
\proc0|d0|reg0|registro~48feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~48feeder_combout\ = \proc0|d0|TOd[12]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[12]~27_combout\,
	combout => \proc0|d0|reg0|registro~48feeder_combout\);

-- Location: LCFF_X14_Y5_N15
\proc0|d0|reg0|registro~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~48feeder_combout\,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~48_regout\);

-- Location: LCCOMB_X14_Y5_N24
\proc0|d0|reg0|registro~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~298_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & ((\proc0|d0|reg0|registro~48_regout\))) # (!\proc0|cu0|ir_actual\(9) & 
-- (\proc0|d0|reg0|registro~32_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~32_regout\,
	datab => \proc0|d0|reg0|registro~48_regout\,
	datac => \proc0|cu0|ir_actual\(10),
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~298_combout\);

-- Location: LCCOMB_X15_Y5_N28
\proc0|d0|reg0|registro~64feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~64feeder_combout\ = \proc0|d0|TOd[12]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[12]~27_combout\,
	combout => \proc0|d0|reg0|registro~64feeder_combout\);

-- Location: LCFF_X15_Y5_N29
\proc0|d0|reg0|registro~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~64feeder_combout\,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~64_regout\);

-- Location: LCCOMB_X14_Y5_N10
\proc0|d0|reg0|registro~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~299_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~298_combout\ & (\proc0|d0|reg0|registro~80_regout\)) # (!\proc0|d0|reg0|registro~298_combout\ & ((\proc0|d0|reg0|registro~64_regout\))))) # 
-- (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~80_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~298_combout\,
	datad => \proc0|d0|reg0|registro~64_regout\,
	combout => \proc0|d0|reg0|registro~299_combout\);

-- Location: LCCOMB_X14_Y5_N12
\memory0|sram_controller|SRAM_DQ[12]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[12]~39_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~297_combout\)) # (!\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~299_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|word_byte~0_combout\,
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~297_combout\,
	datad => \proc0|d0|reg0|registro~299_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[12]~39_combout\);

-- Location: LCCOMB_X14_Y2_N10
\memory0|sram_controller|SRAM_DQ[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[12]~48_combout\ = (\memory0|sram_controller|SRAM_DQ[12]~39_combout\) # ((\proc0|cu0|clogic0|Mux4~0_combout\ & (\proc0|cu0|ge|estat~regout\ & \proc0|d0|reg0|registro~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory0|sram_controller|SRAM_DQ[12]~39_combout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|reg0|registro~187_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[12]~48_combout\);

-- Location: LCCOMB_X11_Y2_N26
\proc0|d0|alu0|Add0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~73_combout\ = (\proc0|d0|reg0|registro~252_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\ & (\proc0|d0|alu0|Add0~72\ & VCC)) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & (!\proc0|d0|alu0|Add0~72\)))) # 
-- (!\proc0|d0|reg0|registro~252_combout\ & ((\proc0|cu0|clogic0|Mux9~1_combout\ & (!\proc0|d0|alu0|Add0~72\)) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & ((\proc0|d0|alu0|Add0~72\) # (GND)))))
-- \proc0|d0|alu0|Add0~74\ = CARRY((\proc0|d0|reg0|registro~252_combout\ & (!\proc0|cu0|clogic0|Mux9~1_combout\ & !\proc0|d0|alu0|Add0~72\)) # (!\proc0|d0|reg0|registro~252_combout\ & ((!\proc0|d0|alu0|Add0~72\) # (!\proc0|cu0|clogic0|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~252_combout\,
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~72\,
	combout => \proc0|d0|alu0|Add0~73_combout\,
	cout => \proc0|d0|alu0|Add0~74\);

-- Location: LCCOMB_X11_Y1_N28
\proc0|d0|alu0|Add0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~97_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & (\proc0|d0|reg0|registro~197_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~197_combout\,
	datad => \proc0|d0|alu0|Add0~73_combout\,
	combout => \proc0|d0|alu0|Add0~97_combout\);

-- Location: LCCOMB_X11_Y1_N18
\proc0|d0|TOd[13]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[13]~28_combout\ = (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # (\proc0|d0|alu0|Add0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datac => \proc0|d0|alu0|Add0~62_combout\,
	datad => \proc0|d0|alu0|Add0~97_combout\,
	combout => \proc0|d0|TOd[13]~28_combout\);

-- Location: LCCOMB_X11_Y1_N8
\proc0|d0|TOd[13]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[13]~29_combout\ = (\proc0|d0|TOd[13]~28_combout\) # ((\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[10]~6_combout\) # (\proc0|cu0|ir_actual~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \memory0|sram_controller|dataReaded[10]~6_combout\,
	datac => \proc0|cu0|ir_actual~11_combout\,
	datad => \proc0|d0|TOd[13]~28_combout\,
	combout => \proc0|d0|TOd[13]~29_combout\);

-- Location: LCFF_X11_Y2_N27
\proc0|d0|reg0|registro~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~49_regout\);

-- Location: LCFF_X12_Y1_N31
\proc0|d0|reg0|registro~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~33_regout\);

-- Location: LCCOMB_X10_Y4_N2
\proc0|d0|reg0|registro~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~302_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~49_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~33_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~49_regout\,
	datac => \proc0|d0|reg0|registro~33_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~302_combout\);

-- Location: LCFF_X10_Y2_N5
\proc0|d0|reg0|registro~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[13]~29_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~65_regout\);

-- Location: LCCOMB_X10_Y4_N0
\proc0|d0|reg0|registro~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~303_combout\ = (\proc0|d0|reg0|registro~302_combout\ & ((\proc0|d0|reg0|registro~81_regout\) # ((!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~302_combout\ & (((\proc0|d0|reg0|registro~65_regout\ & 
-- \proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~81_regout\,
	datab => \proc0|d0|reg0|registro~302_combout\,
	datac => \proc0|d0|reg0|registro~65_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~303_combout\);

-- Location: LCCOMB_X10_Y4_N26
\memory0|sram_controller|SRAM_DQ[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[13]~40_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~301_combout\)) # (!\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~303_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~301_combout\,
	datab => \proc0|d0|reg0|registro~303_combout\,
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|cu0|ge|word_byte~0_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[13]~40_combout\);

-- Location: LCCOMB_X10_Y1_N26
\memory0|sram_controller|SRAM_DQ[13]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[13]~49_combout\ = (\memory0|sram_controller|SRAM_DQ[13]~40_combout\) # ((\proc0|cu0|clogic0|Mux4~0_combout\ & (\proc0|cu0|ge|estat~regout\ & \proc0|d0|reg0|registro~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory0|sram_controller|SRAM_DQ[13]~40_combout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|reg0|registro~197_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[13]~49_combout\);

-- Location: LCCOMB_X11_Y4_N4
\proc0|d0|reg0|registro~34feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~34feeder_combout\ = \proc0|d0|TOd[14]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[14]~31_combout\,
	combout => \proc0|d0|reg0|registro~34feeder_combout\);

-- Location: LCFF_X11_Y4_N5
\proc0|d0|reg0|registro~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~34feeder_combout\,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~34_regout\);

-- Location: LCCOMB_X11_Y6_N22
\proc0|d0|reg0|registro~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~255_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|cu0|clogic0|Mux7~0_combout\)))) # (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|cu0|clogic0|Mux7~0_combout\ & (\proc0|d0|reg0|registro~50_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~34_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~50_regout\,
	datac => \proc0|d0|reg0|registro~34_regout\,
	datad => \proc0|cu0|clogic0|Mux7~0_combout\,
	combout => \proc0|d0|reg0|registro~255_combout\);

-- Location: LCFF_X12_Y6_N5
\proc0|d0|reg0|registro~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[14]~31_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~82_regout\);

-- Location: LCCOMB_X12_Y6_N6
\proc0|d0|reg0|registro~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~256_combout\ = (\proc0|d0|reg0|registro~255_combout\ & (((\proc0|d0|reg0|registro~82_regout\) # (!\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|d0|reg0|registro~255_combout\ & (\proc0|d0|reg0|registro~66_regout\ & 
-- ((\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~66_regout\,
	datab => \proc0|d0|reg0|registro~255_combout\,
	datac => \proc0|d0|reg0|registro~82_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~256_combout\);

-- Location: LCCOMB_X12_Y6_N20
\proc0|d0|reg0|registro~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~257_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~254_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~256_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~254_combout\,
	datac => \proc0|cu0|clogic0|Mux5~0_combout\,
	datad => \proc0|d0|reg0|registro~256_combout\,
	combout => \proc0|d0|reg0|registro~257_combout\);

-- Location: LCCOMB_X11_Y2_N28
\proc0|d0|alu0|Add0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~75_combout\ = ((\proc0|cu0|clogic0|Mux9~1_combout\ $ (\proc0|d0|reg0|registro~257_combout\ $ (!\proc0|d0|alu0|Add0~74\)))) # (GND)
-- \proc0|d0|alu0|Add0~76\ = CARRY((\proc0|cu0|clogic0|Mux9~1_combout\ & ((\proc0|d0|reg0|registro~257_combout\) # (!\proc0|d0|alu0|Add0~74\))) # (!\proc0|cu0|clogic0|Mux9~1_combout\ & (\proc0|d0|reg0|registro~257_combout\ & !\proc0|d0|alu0|Add0~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux9~1_combout\,
	datab => \proc0|d0|reg0|registro~257_combout\,
	datad => VCC,
	cin => \proc0|d0|alu0|Add0~74\,
	combout => \proc0|d0|alu0|Add0~75_combout\,
	cout => \proc0|d0|alu0|Add0~76\);

-- Location: LCCOMB_X12_Y2_N26
\proc0|d0|alu0|Add0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~98_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & (\proc0|d0|reg0|registro~211_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~211_combout\,
	datad => \proc0|d0|alu0|Add0~75_combout\,
	combout => \proc0|d0|alu0|Add0~98_combout\);

-- Location: LCCOMB_X12_Y2_N12
\proc0|d0|TOd[14]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[14]~30_combout\ = (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # (\proc0|d0|alu0|Add0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|d0|alu0|Add0~62_combout\,
	datad => \proc0|d0|alu0|Add0~98_combout\,
	combout => \proc0|d0|TOd[14]~30_combout\);

-- Location: LCCOMB_X12_Y2_N22
\proc0|d0|TOd[14]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[14]~31_combout\ = (\proc0|d0|TOd[14]~30_combout\) # ((\proc0|cu0|clogic0|Mux2~0_combout\ & ((\memory0|sram_controller|dataReaded[10]~6_combout\) # (\proc0|cu0|ir_actual~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory0|sram_controller|dataReaded[10]~6_combout\,
	datab => \proc0|cu0|ir_actual~9_combout\,
	datac => \proc0|cu0|clogic0|Mux2~0_combout\,
	datad => \proc0|d0|TOd[14]~30_combout\,
	combout => \proc0|d0|TOd[14]~31_combout\);

-- Location: LCFF_X11_Y2_N21
\proc0|d0|reg0|registro~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[14]~31_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~50_regout\);

-- Location: LCCOMB_X11_Y6_N26
\proc0|d0|reg0|registro~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~306_combout\ = (\proc0|cu0|ir_actual\(10) & (((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & ((\proc0|cu0|ir_actual\(9) & (\proc0|d0|reg0|registro~50_regout\)) # (!\proc0|cu0|ir_actual\(9) & 
-- ((\proc0|d0|reg0|registro~34_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(10),
	datab => \proc0|d0|reg0|registro~50_regout\,
	datac => \proc0|d0|reg0|registro~34_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~306_combout\);

-- Location: LCCOMB_X12_Y6_N4
\proc0|d0|reg0|registro~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~307_combout\ = (\proc0|d0|reg0|registro~306_combout\ & (((\proc0|d0|reg0|registro~82_regout\) # (!\proc0|cu0|ir_actual\(10))))) # (!\proc0|d0|reg0|registro~306_combout\ & (\proc0|d0|reg0|registro~66_regout\ & 
-- ((\proc0|cu0|ir_actual\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~66_regout\,
	datab => \proc0|d0|reg0|registro~306_combout\,
	datac => \proc0|d0|reg0|registro~82_regout\,
	datad => \proc0|cu0|ir_actual\(10),
	combout => \proc0|d0|reg0|registro~307_combout\);

-- Location: LCFF_X11_Y3_N21
\proc0|d0|reg0|registro~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[14]~31_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~98_regout\);

-- Location: LCCOMB_X11_Y3_N20
\proc0|d0|reg0|registro~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~304_combout\ = (\proc0|cu0|ir_actual\(10) & ((\proc0|d0|reg0|registro~130_regout\) # ((\proc0|cu0|ir_actual\(9))))) # (!\proc0|cu0|ir_actual\(10) & (((\proc0|d0|reg0|registro~98_regout\ & !\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~130_regout\,
	datab => \proc0|cu0|ir_actual\(10),
	datac => \proc0|d0|reg0|registro~98_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~304_combout\);

-- Location: LCFF_X11_Y3_N29
\proc0|d0|reg0|registro~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[14]~31_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~146_regout\);

-- Location: LCCOMB_X11_Y3_N28
\proc0|d0|reg0|registro~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~305_combout\ = (\proc0|d0|reg0|registro~304_combout\ & (((\proc0|d0|reg0|registro~146_regout\) # (!\proc0|cu0|ir_actual\(9))))) # (!\proc0|d0|reg0|registro~304_combout\ & (\proc0|d0|reg0|registro~114_regout\ & 
-- ((\proc0|cu0|ir_actual\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~114_regout\,
	datab => \proc0|d0|reg0|registro~304_combout\,
	datac => \proc0|d0|reg0|registro~146_regout\,
	datad => \proc0|cu0|ir_actual\(9),
	combout => \proc0|d0|reg0|registro~305_combout\);

-- Location: LCCOMB_X12_Y6_N26
\memory0|sram_controller|SRAM_DQ[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[14]~41_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~305_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|word_byte~0_combout\,
	datab => \proc0|cu0|ir_actual\(11),
	datac => \proc0|d0|reg0|registro~307_combout\,
	datad => \proc0|d0|reg0|registro~305_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[14]~41_combout\);

-- Location: LCCOMB_X9_Y3_N8
\memory0|sram_controller|SRAM_DQ[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[14]~50_combout\ = (\memory0|sram_controller|SRAM_DQ[14]~41_combout\) # ((\proc0|cu0|clogic0|Mux4~0_combout\ & (\proc0|cu0|ge|estat~regout\ & \proc0|d0|reg0|registro~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux4~0_combout\,
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \proc0|d0|reg0|registro~211_combout\,
	datad => \memory0|sram_controller|SRAM_DQ[14]~41_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[14]~50_combout\);

-- Location: LCCOMB_X12_Y2_N16
\proc0|d0|TOd[15]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[15]~32_combout\ = (\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|d0|alu0|Add0~80_combout\ & ((\SRAM_DQ[15]~15\))) # (!\proc0|d0|alu0|Add0~80_combout\ & (\SRAM_DQ[7]~7\)))) # (!\proc0|cu0|ge|word_byte~0_combout\ & (((\SRAM_DQ[15]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|word_byte~0_combout\,
	datab => \SRAM_DQ[7]~7\,
	datac => \SRAM_DQ[15]~15\,
	datad => \proc0|d0|alu0|Add0~80_combout\,
	combout => \proc0|d0|TOd[15]~32_combout\);

-- Location: LCCOMB_X14_Y4_N30
\proc0|d0|reg0|registro~83feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~83feeder_combout\ = \proc0|d0|TOd[15]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proc0|d0|TOd[15]~33_combout\,
	combout => \proc0|d0|reg0|registro~83feeder_combout\);

-- Location: LCFF_X14_Y4_N31
\proc0|d0|reg0|registro~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|reg0|registro~83feeder_combout\,
	ena => \proc0|d0|reg0|registro~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~83_regout\);

-- Location: LCFF_X12_Y4_N31
\proc0|d0|reg0|registro~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[15]~33_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~270_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~67_regout\);

-- Location: LCFF_X13_Y4_N15
\proc0|d0|reg0|registro~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[15]~33_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~35_regout\);

-- Location: LCCOMB_X13_Y4_N0
\proc0|d0|reg0|registro~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~260_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~51_regout\) # ((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~35_regout\ & 
-- !\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~51_regout\,
	datab => \proc0|cu0|clogic0|Mux7~0_combout\,
	datac => \proc0|d0|reg0|registro~35_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~260_combout\);

-- Location: LCCOMB_X13_Y4_N18
\proc0|d0|reg0|registro~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~261_combout\ = (\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~260_combout\ & (\proc0|d0|reg0|registro~83_regout\)) # (!\proc0|d0|reg0|registro~260_combout\ & ((\proc0|d0|reg0|registro~67_regout\))))) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & (((\proc0|d0|reg0|registro~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux6~0_combout\,
	datab => \proc0|d0|reg0|registro~83_regout\,
	datac => \proc0|d0|reg0|registro~67_regout\,
	datad => \proc0|d0|reg0|registro~260_combout\,
	combout => \proc0|d0|reg0|registro~261_combout\);

-- Location: LCFF_X12_Y4_N21
\proc0|d0|reg0|registro~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|d0|TOd[15]~33_combout\,
	ena => \proc0|d0|reg0|registro~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~115_regout\);

-- Location: LCFF_X13_Y4_N25
\proc0|d0|reg0|registro~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[15]~33_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~131_regout\);

-- Location: LCFF_X11_Y3_N1
\proc0|d0|reg0|registro~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[15]~33_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~99_regout\);

-- Location: LCCOMB_X11_Y3_N0
\proc0|d0|reg0|registro~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~258_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|cu0|clogic0|Mux6~0_combout\ & (\proc0|d0|reg0|registro~131_regout\)) # 
-- (!\proc0|cu0|clogic0|Mux6~0_combout\ & ((\proc0|d0|reg0|registro~99_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~131_regout\,
	datac => \proc0|d0|reg0|registro~99_regout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~258_combout\);

-- Location: LCCOMB_X11_Y3_N22
\proc0|d0|reg0|registro~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~259_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~258_combout\ & ((\proc0|d0|reg0|registro~147_regout\))) # (!\proc0|d0|reg0|registro~258_combout\ & (\proc0|d0|reg0|registro~115_regout\)))) # 
-- (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux7~0_combout\,
	datab => \proc0|d0|reg0|registro~115_regout\,
	datac => \proc0|d0|reg0|registro~147_regout\,
	datad => \proc0|d0|reg0|registro~258_combout\,
	combout => \proc0|d0|reg0|registro~259_combout\);

-- Location: LCCOMB_X10_Y4_N12
\proc0|d0|reg0|registro~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~262_combout\ = (\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~259_combout\))) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~261_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~261_combout\,
	datad => \proc0|d0|reg0|registro~259_combout\,
	combout => \proc0|d0|reg0|registro~262_combout\);

-- Location: LCCOMB_X11_Y2_N30
\proc0|d0|alu0|Add0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~77_combout\ = \proc0|cu0|clogic0|Mux9~1_combout\ $ (\proc0|d0|alu0|Add0~76\ $ (\proc0|d0|reg0|registro~262_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|clogic0|Mux9~1_combout\,
	datad => \proc0|d0|reg0|registro~262_combout\,
	cin => \proc0|d0|alu0|Add0~76\,
	combout => \proc0|d0|alu0|Add0~77_combout\);

-- Location: LCCOMB_X12_Y4_N10
\proc0|d0|alu0|Add0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~99_combout\ = (\proc0|cu0|clogic0|Mux9~0_combout\ & (\proc0|cu0|ir_actual\(8) & (\proc0|d0|reg0|registro~221_combout\))) # (!\proc0|cu0|clogic0|Mux9~0_combout\ & (((\proc0|d0|alu0|Add0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|d0|reg0|registro~221_combout\,
	datad => \proc0|d0|alu0|Add0~77_combout\,
	combout => \proc0|d0|alu0|Add0~99_combout\);

-- Location: LCCOMB_X12_Y4_N20
\proc0|d0|TOd[15]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|TOd[15]~33_combout\ = (\proc0|cu0|clogic0|Mux2~0_combout\ & (((\proc0|d0|TOd[15]~32_combout\)))) # (!\proc0|cu0|clogic0|Mux2~0_combout\ & ((\proc0|d0|alu0|Add0~62_combout\) # ((\proc0|d0|alu0|Add0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux2~0_combout\,
	datab => \proc0|d0|alu0|Add0~62_combout\,
	datac => \proc0|d0|TOd[15]~32_combout\,
	datad => \proc0|d0|alu0|Add0~99_combout\,
	combout => \proc0|d0|TOd[15]~33_combout\);

-- Location: LCFF_X11_Y3_N23
\proc0|d0|reg0|registro~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	sdata => \proc0|d0|TOd[15]~33_combout\,
	sload => VCC,
	ena => \proc0|d0|reg0|registro~268_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|d0|reg0|registro~147_regout\);

-- Location: LCCOMB_X11_Y3_N6
\proc0|d0|reg0|registro~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~309_combout\ = (\proc0|d0|reg0|registro~308_combout\ & ((\proc0|d0|reg0|registro~147_regout\) # ((!\proc0|cu0|ir_actual\(9))))) # (!\proc0|d0|reg0|registro~308_combout\ & (((\proc0|cu0|ir_actual\(9) & 
-- \proc0|d0|reg0|registro~115_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~308_combout\,
	datab => \proc0|d0|reg0|registro~147_regout\,
	datac => \proc0|cu0|ir_actual\(9),
	datad => \proc0|d0|reg0|registro~115_regout\,
	combout => \proc0|d0|reg0|registro~309_combout\);

-- Location: LCCOMB_X10_Y4_N8
\memory0|sram_controller|SRAM_DQ[15]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[15]~42_combout\ = (!\proc0|cu0|ge|word_byte~0_combout\ & ((\proc0|cu0|ir_actual\(11) & ((\proc0|d0|reg0|registro~309_combout\))) # (!\proc0|cu0|ir_actual\(11) & (\proc0|d0|reg0|registro~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~311_combout\,
	datab => \proc0|d0|reg0|registro~309_combout\,
	datac => \proc0|cu0|ir_actual\(11),
	datad => \proc0|cu0|ge|word_byte~0_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[15]~42_combout\);

-- Location: LCCOMB_X9_Y3_N18
\memory0|sram_controller|SRAM_DQ[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_DQ[15]~51_combout\ = (\memory0|sram_controller|SRAM_DQ[15]~42_combout\) # ((\proc0|cu0|clogic0|Mux4~0_combout\ & (\proc0|cu0|ge|estat~regout\ & \proc0|d0|reg0|registro~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux4~0_combout\,
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \proc0|d0|reg0|registro~221_combout\,
	datad => \memory0|sram_controller|SRAM_DQ[15]~42_combout\,
	combout => \memory0|sram_controller|SRAM_DQ[15]~51_combout\);

-- Location: LCCOMB_X15_Y2_N0
\proc0|cu0|new_pc[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[1]~15_combout\ = \proc0|cu0|new_pc\(1) $ (VCC)
-- \proc0|cu0|new_pc[1]~16\ = CARRY(\proc0|cu0|new_pc\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(1),
	datad => VCC,
	combout => \proc0|cu0|new_pc[1]~15_combout\,
	cout => \proc0|cu0|new_pc[1]~16\);

-- Location: LCCOMB_X16_Y2_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X14_Y1_N28
\proc0|cu0|ir_actual~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~21_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[12]~12\)) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[4]~4\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datab => \SRAM_DQ[12]~12\,
	datac => \SRAM_DQ[4]~4\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|cu0|ir_actual~21_combout\);

-- Location: LCFF_X14_Y1_N29
\proc0|cu0|ir_actual[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~21_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(4));

-- Location: LCCOMB_X14_Y1_N18
\proc0|cu0|new_pc[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~19_combout\ = (\proc0|cu0|ir_actual\(6) & (\proc0|cu0|ir_actual\(7) & (\proc0|cu0|ir_actual\(5) & \proc0|cu0|ir_actual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(6),
	datab => \proc0|cu0|ir_actual\(7),
	datac => \proc0|cu0|ir_actual\(5),
	datad => \proc0|cu0|ir_actual\(4),
	combout => \proc0|cu0|new_pc[14]~19_combout\);

-- Location: LCCOMB_X12_Y1_N10
\proc0|cu0|new_pc[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~20_combout\ = (\proc0|cu0|ir_actual\(9) & (\proc0|cu0|ir_actual\(15) & (\proc0|cu0|ir_actual\(13) & \proc0|cu0|ir_actual\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(9),
	datab => \proc0|cu0|ir_actual\(15),
	datac => \proc0|cu0|ir_actual\(13),
	datad => \proc0|cu0|ir_actual\(8),
	combout => \proc0|cu0|new_pc[14]~20_combout\);

-- Location: LCCOMB_X13_Y1_N30
\proc0|cu0|ir_actual~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~19_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[10]~10\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[2]~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[2]~2\,
	datab => \SW~combout\(9),
	datac => \SRAM_DQ[10]~10\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|cu0|ir_actual~19_combout\);

-- Location: LCFF_X13_Y1_N31
\proc0|cu0|ir_actual[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~19_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(2));

-- Location: LCCOMB_X13_Y1_N28
\proc0|cu0|ir_actual~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~18_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[9]~9\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[1]~1\,
	datab => \SRAM_DQ[9]~9\,
	datac => \SW~combout\(9),
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|cu0|ir_actual~18_combout\);

-- Location: LCFF_X13_Y1_N29
\proc0|cu0|ir_actual[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~18_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(1));

-- Location: LCCOMB_X14_Y1_N0
\proc0|cu0|ir_actual~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|ir_actual~20_combout\ = (!\SW~combout\(9) & ((\memory0|sram_controller|dataReaded[0]~7_combout\ & ((\SRAM_DQ[11]~11\))) # (!\memory0|sram_controller|dataReaded[0]~7_combout\ & (\SRAM_DQ[3]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[3]~3\,
	datab => \SW~combout\(9),
	datac => \SRAM_DQ[11]~11\,
	datad => \memory0|sram_controller|dataReaded[0]~7_combout\,
	combout => \proc0|cu0|ir_actual~20_combout\);

-- Location: LCFF_X14_Y1_N1
\proc0|cu0|ir_actual[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|ir_actual~20_combout\,
	ena => \proc0|cu0|ir_actual[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|ir_actual\(3));

-- Location: LCCOMB_X14_Y1_N2
\proc0|cu0|new_pc[14]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~18_combout\ = (\proc0|cu0|ir_actual\(0) & (\proc0|cu0|ir_actual\(2) & (\proc0|cu0|ir_actual\(1) & \proc0|cu0|ir_actual\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(0),
	datab => \proc0|cu0|ir_actual\(2),
	datac => \proc0|cu0|ir_actual\(1),
	datad => \proc0|cu0|ir_actual\(3),
	combout => \proc0|cu0|new_pc[14]~18_combout\);

-- Location: LCCOMB_X14_Y1_N16
\proc0|cu0|new_pc[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~21_combout\ = (\proc0|cu0|new_pc[14]~17_combout\ & (\proc0|cu0|new_pc[14]~19_combout\ & (\proc0|cu0|new_pc[14]~20_combout\ & \proc0|cu0|new_pc[14]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc[14]~17_combout\,
	datab => \proc0|cu0|new_pc[14]~19_combout\,
	datac => \proc0|cu0|new_pc[14]~20_combout\,
	datad => \proc0|cu0|new_pc[14]~18_combout\,
	combout => \proc0|cu0|new_pc[14]~21_combout\);

-- Location: LCCOMB_X15_Y1_N0
\proc0|cu0|new_pc[14]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~22_combout\ = (\SW~combout\(9)) # ((\proc0|cu0|ge|estat~regout\ & !\proc0|cu0|new_pc[14]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(9),
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|cu0|new_pc[14]~21_combout\,
	combout => \proc0|cu0|new_pc[14]~22_combout\);

-- Location: LCFF_X15_Y2_N1
\proc0|cu0|new_pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[1]~15_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(1));

-- Location: LCCOMB_X10_Y2_N16
\proc0|d0|addr_m[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[1]~2_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~82_combout\))) # (!\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|new_pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|new_pc\(1),
	datad => \proc0|d0|alu0|Add0~82_combout\,
	combout => \proc0|d0|addr_m[1]~2_combout\);

-- Location: LCCOMB_X15_Y2_N2
\proc0|cu0|new_pc[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[2]~23_combout\ = (\proc0|cu0|new_pc\(2) & (!\proc0|cu0|new_pc[1]~16\)) # (!\proc0|cu0|new_pc\(2) & ((\proc0|cu0|new_pc[1]~16\) # (GND)))
-- \proc0|cu0|new_pc[2]~24\ = CARRY((!\proc0|cu0|new_pc[1]~16\) # (!\proc0|cu0|new_pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(2),
	datad => VCC,
	cin => \proc0|cu0|new_pc[1]~16\,
	combout => \proc0|cu0|new_pc[2]~23_combout\,
	cout => \proc0|cu0|new_pc[2]~24\);

-- Location: LCFF_X15_Y2_N3
\proc0|cu0|new_pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[2]~23_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(2));

-- Location: LCCOMB_X11_Y5_N22
\proc0|d0|addr_m[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[2]~3_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~84_combout\))) # (!\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|new_pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|new_pc\(2),
	datad => \proc0|d0|alu0|Add0~84_combout\,
	combout => \proc0|d0|addr_m[2]~3_combout\);

-- Location: LCCOMB_X15_Y2_N4
\proc0|cu0|new_pc[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[3]~25_combout\ = (\proc0|cu0|new_pc\(3) & (\proc0|cu0|new_pc[2]~24\ $ (GND))) # (!\proc0|cu0|new_pc\(3) & (!\proc0|cu0|new_pc[2]~24\ & VCC))
-- \proc0|cu0|new_pc[3]~26\ = CARRY((\proc0|cu0|new_pc\(3) & !\proc0|cu0|new_pc[2]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(3),
	datad => VCC,
	cin => \proc0|cu0|new_pc[2]~24\,
	combout => \proc0|cu0|new_pc[3]~25_combout\,
	cout => \proc0|cu0|new_pc[3]~26\);

-- Location: LCFF_X15_Y2_N5
\proc0|cu0|new_pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[3]~25_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(3));

-- Location: LCCOMB_X13_Y2_N18
\proc0|d0|addr_m[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[3]~4_combout\ = (\proc0|cu0|ge|estat~regout\ & (\proc0|d0|alu0|Add0~86_combout\)) # (!\proc0|cu0|ge|estat~regout\ & ((\proc0|cu0|new_pc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~86_combout\,
	datab => \proc0|cu0|new_pc\(3),
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|addr_m[3]~4_combout\);

-- Location: LCCOMB_X15_Y2_N6
\proc0|cu0|new_pc[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[4]~27_combout\ = (\proc0|cu0|new_pc\(4) & (!\proc0|cu0|new_pc[3]~26\)) # (!\proc0|cu0|new_pc\(4) & ((\proc0|cu0|new_pc[3]~26\) # (GND)))
-- \proc0|cu0|new_pc[4]~28\ = CARRY((!\proc0|cu0|new_pc[3]~26\) # (!\proc0|cu0|new_pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(4),
	datad => VCC,
	cin => \proc0|cu0|new_pc[3]~26\,
	combout => \proc0|cu0|new_pc[4]~27_combout\,
	cout => \proc0|cu0|new_pc[4]~28\);

-- Location: LCFF_X15_Y2_N7
\proc0|cu0|new_pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[4]~27_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(4));

-- Location: LCCOMB_X15_Y2_N30
\proc0|d0|addr_m[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[4]~5_combout\ = (\proc0|cu0|ge|estat~regout\ & (\proc0|d0|alu0|Add0~88_combout\)) # (!\proc0|cu0|ge|estat~regout\ & ((\proc0|cu0|new_pc\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \proc0|d0|alu0|Add0~88_combout\,
	datad => \proc0|cu0|new_pc\(4),
	combout => \proc0|d0|addr_m[4]~5_combout\);

-- Location: LCCOMB_X15_Y2_N8
\proc0|cu0|new_pc[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[5]~29_combout\ = (\proc0|cu0|new_pc\(5) & (\proc0|cu0|new_pc[4]~28\ $ (GND))) # (!\proc0|cu0|new_pc\(5) & (!\proc0|cu0|new_pc[4]~28\ & VCC))
-- \proc0|cu0|new_pc[5]~30\ = CARRY((\proc0|cu0|new_pc\(5) & !\proc0|cu0|new_pc[4]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(5),
	datad => VCC,
	cin => \proc0|cu0|new_pc[4]~28\,
	combout => \proc0|cu0|new_pc[5]~29_combout\,
	cout => \proc0|cu0|new_pc[5]~30\);

-- Location: LCFF_X15_Y2_N9
\proc0|cu0|new_pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[5]~29_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(5));

-- Location: LCCOMB_X13_Y2_N4
\proc0|d0|addr_m[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[5]~18_combout\ = (\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|ir_actual\(8) & (\proc0|cu0|clogic0|Mux9~0_combout\))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ir_actual\(8),
	datab => \proc0|cu0|clogic0|Mux9~0_combout\,
	datac => \proc0|cu0|new_pc\(5),
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \proc0|d0|addr_m[5]~18_combout\);

-- Location: LCCOMB_X10_Y2_N20
\proc0|d0|addr_m[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[5]~6_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~89_combout\) # ((\proc0|d0|addr_m[5]~18_combout\ & \proc0|d0|reg0|registro~202_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|d0|addr_m[5]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|d0|alu0|Add0~89_combout\,
	datac => \proc0|d0|addr_m[5]~18_combout\,
	datad => \proc0|d0|reg0|registro~202_combout\,
	combout => \proc0|d0|addr_m[5]~6_combout\);

-- Location: LCCOMB_X15_Y2_N10
\proc0|cu0|new_pc[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[6]~31_combout\ = (\proc0|cu0|new_pc\(6) & (!\proc0|cu0|new_pc[5]~30\)) # (!\proc0|cu0|new_pc\(6) & ((\proc0|cu0|new_pc[5]~30\) # (GND)))
-- \proc0|cu0|new_pc[6]~32\ = CARRY((!\proc0|cu0|new_pc[5]~30\) # (!\proc0|cu0|new_pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(6),
	datad => VCC,
	cin => \proc0|cu0|new_pc[5]~30\,
	combout => \proc0|cu0|new_pc[6]~31_combout\,
	cout => \proc0|cu0|new_pc[6]~32\);

-- Location: LCFF_X15_Y2_N11
\proc0|cu0|new_pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[6]~31_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(6));

-- Location: LCCOMB_X13_Y3_N10
\proc0|d0|addr_m[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[6]~7_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~56_combout\) # ((\proc0|d0|alu0|Add0~90_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|d0|alu0|Add0~56_combout\,
	datac => \proc0|cu0|new_pc\(6),
	datad => \proc0|d0|alu0|Add0~90_combout\,
	combout => \proc0|d0|addr_m[6]~7_combout\);

-- Location: LCCOMB_X15_Y2_N12
\proc0|cu0|new_pc[7]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[7]~33_combout\ = (\proc0|cu0|new_pc\(7) & (\proc0|cu0|new_pc[6]~32\ $ (GND))) # (!\proc0|cu0|new_pc\(7) & (!\proc0|cu0|new_pc[6]~32\ & VCC))
-- \proc0|cu0|new_pc[7]~34\ = CARRY((\proc0|cu0|new_pc\(7) & !\proc0|cu0|new_pc[6]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(7),
	datad => VCC,
	cin => \proc0|cu0|new_pc[6]~32\,
	combout => \proc0|cu0|new_pc[7]~33_combout\,
	cout => \proc0|cu0|new_pc[7]~34\);

-- Location: LCFF_X15_Y2_N13
\proc0|cu0|new_pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[7]~33_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(7));

-- Location: LCCOMB_X14_Y5_N28
\proc0|d0|reg0|registro~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~215_combout\ = (\proc0|cu0|clogic0|Mux7~0_combout\ & ((\proc0|d0|reg0|registro~43_regout\) # ((\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|cu0|clogic0|Mux7~0_combout\ & (((\proc0|d0|reg0|registro~27_regout\ & 
-- !\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~43_regout\,
	datab => \proc0|d0|reg0|registro~27_regout\,
	datac => \proc0|cu0|clogic0|Mux7~0_combout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~215_combout\);

-- Location: LCCOMB_X10_Y5_N14
\proc0|d0|reg0|registro~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|reg0|registro~216_combout\ = (\proc0|d0|reg0|registro~215_combout\ & (((\proc0|d0|reg0|registro~75_regout\) # (!\proc0|cu0|clogic0|Mux6~0_combout\)))) # (!\proc0|d0|reg0|registro~215_combout\ & (\proc0|d0|reg0|registro~59_regout\ & 
-- ((\proc0|cu0|clogic0|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~59_regout\,
	datab => \proc0|d0|reg0|registro~75_regout\,
	datac => \proc0|d0|reg0|registro~215_combout\,
	datad => \proc0|cu0|clogic0|Mux6~0_combout\,
	combout => \proc0|d0|reg0|registro~216_combout\);

-- Location: LCCOMB_X10_Y5_N0
\proc0|d0|alu0|Add0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|alu0|Add0~59_combout\ = (\proc0|cu0|clogic0|Mux19~0_combout\ & ((\proc0|cu0|clogic0|Mux5~0_combout\ & (\proc0|d0|reg0|registro~214_combout\)) # (!\proc0|cu0|clogic0|Mux5~0_combout\ & ((\proc0|d0|reg0|registro~216_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|reg0|registro~214_combout\,
	datab => \proc0|cu0|clogic0|Mux5~0_combout\,
	datac => \proc0|d0|reg0|registro~216_combout\,
	datad => \proc0|cu0|clogic0|Mux19~0_combout\,
	combout => \proc0|d0|alu0|Add0~59_combout\);

-- Location: LCCOMB_X11_Y5_N0
\proc0|d0|addr_m[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[7]~8_combout\ = (\proc0|cu0|ge|estat~regout\ & (((\proc0|d0|alu0|Add0~59_combout\) # (\proc0|d0|alu0|Add0~91_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|new_pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \proc0|cu0|new_pc\(7),
	datac => \proc0|d0|alu0|Add0~59_combout\,
	datad => \proc0|d0|alu0|Add0~91_combout\,
	combout => \proc0|d0|addr_m[7]~8_combout\);

-- Location: LCCOMB_X15_Y2_N14
\proc0|cu0|new_pc[8]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[8]~35_combout\ = (\proc0|cu0|new_pc\(8) & (!\proc0|cu0|new_pc[7]~34\)) # (!\proc0|cu0|new_pc\(8) & ((\proc0|cu0|new_pc[7]~34\) # (GND)))
-- \proc0|cu0|new_pc[8]~36\ = CARRY((!\proc0|cu0|new_pc[7]~34\) # (!\proc0|cu0|new_pc\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(8),
	datad => VCC,
	cin => \proc0|cu0|new_pc[7]~34\,
	combout => \proc0|cu0|new_pc[8]~35_combout\,
	cout => \proc0|cu0|new_pc[8]~36\);

-- Location: LCFF_X15_Y2_N15
\proc0|cu0|new_pc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[8]~35_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(8));

-- Location: LCCOMB_X12_Y6_N22
\proc0|d0|addr_m[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[8]~9_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~62_combout\) # ((\proc0|d0|alu0|Add0~92_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~62_combout\,
	datab => \proc0|cu0|new_pc\(8),
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|alu0|Add0~92_combout\,
	combout => \proc0|d0|addr_m[8]~9_combout\);

-- Location: LCCOMB_X15_Y2_N16
\proc0|cu0|new_pc[9]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[9]~37_combout\ = (\proc0|cu0|new_pc\(9) & (\proc0|cu0|new_pc[8]~36\ $ (GND))) # (!\proc0|cu0|new_pc\(9) & (!\proc0|cu0|new_pc[8]~36\ & VCC))
-- \proc0|cu0|new_pc[9]~38\ = CARRY((\proc0|cu0|new_pc\(9) & !\proc0|cu0|new_pc[8]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(9),
	datad => VCC,
	cin => \proc0|cu0|new_pc[8]~36\,
	combout => \proc0|cu0|new_pc[9]~37_combout\,
	cout => \proc0|cu0|new_pc[9]~38\);

-- Location: LCFF_X15_Y2_N17
\proc0|cu0|new_pc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[9]~37_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(9));

-- Location: LCCOMB_X11_Y5_N18
\proc0|d0|addr_m[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[9]~10_combout\ = (\proc0|cu0|ge|estat~regout\ & (((\proc0|d0|alu0|Add0~62_combout\) # (\proc0|d0|alu0|Add0~93_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (\proc0|cu0|new_pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(9),
	datab => \proc0|d0|alu0|Add0~62_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|alu0|Add0~93_combout\,
	combout => \proc0|d0|addr_m[9]~10_combout\);

-- Location: LCCOMB_X15_Y2_N18
\proc0|cu0|new_pc[10]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[10]~39_combout\ = (\proc0|cu0|new_pc\(10) & (!\proc0|cu0|new_pc[9]~38\)) # (!\proc0|cu0|new_pc\(10) & ((\proc0|cu0|new_pc[9]~38\) # (GND)))
-- \proc0|cu0|new_pc[10]~40\ = CARRY((!\proc0|cu0|new_pc[9]~38\) # (!\proc0|cu0|new_pc\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(10),
	datad => VCC,
	cin => \proc0|cu0|new_pc[9]~38\,
	combout => \proc0|cu0|new_pc[10]~39_combout\,
	cout => \proc0|cu0|new_pc[10]~40\);

-- Location: LCFF_X15_Y2_N19
\proc0|cu0|new_pc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[10]~39_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(10));

-- Location: LCCOMB_X12_Y5_N10
\proc0|d0|addr_m[10]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[10]~11_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~62_combout\) # ((\proc0|d0|alu0|Add0~94_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~62_combout\,
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \proc0|cu0|new_pc\(10),
	datad => \proc0|d0|alu0|Add0~94_combout\,
	combout => \proc0|d0|addr_m[10]~11_combout\);

-- Location: LCCOMB_X15_Y2_N20
\proc0|cu0|new_pc[11]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[11]~41_combout\ = (\proc0|cu0|new_pc\(11) & (\proc0|cu0|new_pc[10]~40\ $ (GND))) # (!\proc0|cu0|new_pc\(11) & (!\proc0|cu0|new_pc[10]~40\ & VCC))
-- \proc0|cu0|new_pc[11]~42\ = CARRY((\proc0|cu0|new_pc\(11) & !\proc0|cu0|new_pc[10]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(11),
	datad => VCC,
	cin => \proc0|cu0|new_pc[10]~40\,
	combout => \proc0|cu0|new_pc[11]~41_combout\,
	cout => \proc0|cu0|new_pc[11]~42\);

-- Location: LCFF_X15_Y2_N21
\proc0|cu0|new_pc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[11]~41_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(11));

-- Location: LCCOMB_X12_Y5_N22
\proc0|d0|addr_m[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[11]~12_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~62_combout\) # ((\proc0|d0|alu0|Add0~95_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~62_combout\,
	datab => \proc0|cu0|new_pc\(11),
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|alu0|Add0~95_combout\,
	combout => \proc0|d0|addr_m[11]~12_combout\);

-- Location: LCCOMB_X15_Y2_N22
\proc0|cu0|new_pc[12]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[12]~43_combout\ = (\proc0|cu0|new_pc\(12) & (!\proc0|cu0|new_pc[11]~42\)) # (!\proc0|cu0|new_pc\(12) & ((\proc0|cu0|new_pc[11]~42\) # (GND)))
-- \proc0|cu0|new_pc[12]~44\ = CARRY((!\proc0|cu0|new_pc[11]~42\) # (!\proc0|cu0|new_pc\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(12),
	datad => VCC,
	cin => \proc0|cu0|new_pc[11]~42\,
	combout => \proc0|cu0|new_pc[12]~43_combout\,
	cout => \proc0|cu0|new_pc[12]~44\);

-- Location: LCFF_X15_Y2_N23
\proc0|cu0|new_pc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[12]~43_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(12));

-- Location: LCCOMB_X14_Y2_N26
\proc0|d0|addr_m[12]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[12]~13_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~96_combout\) # ((\proc0|d0|alu0|Add0~62_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~96_combout\,
	datab => \proc0|cu0|new_pc\(12),
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|d0|alu0|Add0~62_combout\,
	combout => \proc0|d0|addr_m[12]~13_combout\);

-- Location: LCCOMB_X15_Y2_N24
\proc0|cu0|new_pc[13]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[13]~45_combout\ = (\proc0|cu0|new_pc\(13) & (\proc0|cu0|new_pc[12]~44\ $ (GND))) # (!\proc0|cu0|new_pc\(13) & (!\proc0|cu0|new_pc[12]~44\ & VCC))
-- \proc0|cu0|new_pc[13]~46\ = CARRY((\proc0|cu0|new_pc\(13) & !\proc0|cu0|new_pc[12]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|new_pc\(13),
	datad => VCC,
	cin => \proc0|cu0|new_pc[12]~44\,
	combout => \proc0|cu0|new_pc[13]~45_combout\,
	cout => \proc0|cu0|new_pc[13]~46\);

-- Location: LCFF_X15_Y2_N25
\proc0|cu0|new_pc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[13]~45_combout\,
	sdata => \~GND~combout\,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(13));

-- Location: LCCOMB_X14_Y2_N8
\proc0|d0|addr_m[13]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[13]~14_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~97_combout\) # ((\proc0|d0|alu0|Add0~62_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~97_combout\,
	datab => \proc0|d0|alu0|Add0~62_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|cu0|new_pc\(13),
	combout => \proc0|d0|addr_m[13]~14_combout\);

-- Location: LCCOMB_X15_Y2_N26
\proc0|cu0|new_pc[14]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[14]~47_combout\ = (\proc0|cu0|new_pc\(14) & (!\proc0|cu0|new_pc[13]~46\)) # (!\proc0|cu0|new_pc\(14) & ((\proc0|cu0|new_pc[13]~46\) # (GND)))
-- \proc0|cu0|new_pc[14]~48\ = CARRY((!\proc0|cu0|new_pc[13]~46\) # (!\proc0|cu0|new_pc\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \proc0|cu0|new_pc\(14),
	datad => VCC,
	cin => \proc0|cu0|new_pc[13]~46\,
	combout => \proc0|cu0|new_pc[14]~47_combout\,
	cout => \proc0|cu0|new_pc[14]~48\);

-- Location: LCFF_X15_Y2_N27
\proc0|cu0|new_pc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[14]~47_combout\,
	sdata => VCC,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(14));

-- Location: LCCOMB_X14_Y2_N30
\proc0|d0|addr_m[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[14]~15_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~98_combout\) # ((\proc0|d0|alu0|Add0~62_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~98_combout\,
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \proc0|cu0|new_pc\(14),
	datad => \proc0|d0|alu0|Add0~62_combout\,
	combout => \proc0|d0|addr_m[14]~15_combout\);

-- Location: LCCOMB_X15_Y2_N28
\proc0|cu0|new_pc[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|cu0|new_pc[15]~49_combout\ = \proc0|cu0|new_pc[14]~48\ $ (!\proc0|cu0|new_pc\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \proc0|cu0|new_pc\(15),
	cin => \proc0|cu0|new_pc[14]~48\,
	combout => \proc0|cu0|new_pc[15]~49_combout\);

-- Location: LCFF_X15_Y2_N29
\proc0|cu0|new_pc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \counter_clock[2]~clkctrl_outclk\,
	datain => \proc0|cu0|new_pc[15]~49_combout\,
	sdata => VCC,
	sload => \SW~combout\(9),
	ena => \proc0|cu0|new_pc[14]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \proc0|cu0|new_pc\(15));

-- Location: LCCOMB_X14_Y2_N4
\proc0|d0|addr_m[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \proc0|d0|addr_m[15]~16_combout\ = (\proc0|cu0|ge|estat~regout\ & ((\proc0|d0|alu0|Add0~99_combout\) # ((\proc0|d0|alu0|Add0~62_combout\)))) # (!\proc0|cu0|ge|estat~regout\ & (((\proc0|cu0|new_pc\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|alu0|Add0~99_combout\,
	datab => \proc0|d0|alu0|Add0~62_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|cu0|new_pc\(15),
	combout => \proc0|d0|addr_m[15]~16_combout\);

-- Location: LCCOMB_X9_Y1_N12
\memory0|sram_controller|SRAM_UB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_UB_N~0_combout\ = (\proc0|cu0|clogic0|Mux1~0_combout\ & (\proc0|cu0|clogic0|Mux4~0_combout\ & (!\proc0|d0|addr_m[0]~17_combout\ & \proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|clogic0|Mux1~0_combout\,
	datab => \proc0|cu0|clogic0|Mux4~0_combout\,
	datac => \proc0|d0|addr_m[0]~17_combout\,
	datad => \proc0|cu0|ge|estat~regout\,
	combout => \memory0|sram_controller|SRAM_UB_N~0_combout\);

-- Location: LCCOMB_X10_Y1_N20
\memory0|sram_controller|SRAM_LB_N\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|SRAM_LB_N~combout\ = (((!\proc0|cu0|clogic0|Mux4~0_combout\) # (!\proc0|cu0|ge|estat~regout\)) # (!\proc0|cu0|clogic0|Mux1~0_combout\)) # (!\proc0|d0|addr_m[0]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|cu0|clogic0|Mux1~0_combout\,
	datac => \proc0|cu0|ge|estat~regout\,
	datad => \proc0|cu0|clogic0|Mux4~0_combout\,
	combout => \memory0|sram_controller|SRAM_LB_N~combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y1_N28
\memory0|sram_controller|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|Selector2~0_combout\ = ((\proc0|cu0|ge|estat~regout\ & (\memory0|sram_controller|estat.WAITING~regout\ & \proc0|cu0|clogic0|Mux1~0_combout\))) # (!\memory0|sram_controller|estat.WRITING~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory0|sram_controller|estat.WRITING~regout\,
	datab => \proc0|cu0|ge|estat~regout\,
	datac => \memory0|sram_controller|estat.WAITING~regout\,
	datad => \proc0|cu0|clogic0|Mux1~0_combout\,
	combout => \memory0|sram_controller|Selector2~0_combout\);

-- Location: LCFF_X10_Y1_N29
\memory0|sram_controller|estat.WAITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \memory0|sram_controller|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory0|sram_controller|estat.WAITING~regout\);

-- Location: LCCOMB_X10_Y1_N24
\memory0|sram_controller|estat~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|estat~5_combout\ = ((!\proc0|cu0|clogic0|Mux1~0_combout\) # (!\memory0|sram_controller|estat.NOTHING~regout\)) # (!\proc0|cu0|ge|estat~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datac => \memory0|sram_controller|estat.NOTHING~regout\,
	datad => \proc0|cu0|clogic0|Mux1~0_combout\,
	combout => \memory0|sram_controller|estat~5_combout\);

-- Location: LCFF_X10_Y1_N25
\memory0|sram_controller|estat.WRITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \memory0|sram_controller|estat~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory0|sram_controller|estat.WRITING~regout\);

-- Location: LCCOMB_X10_Y1_N14
\memory0|sram_controller|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|Selector1~0_combout\ = (\memory0|sram_controller|estat.WRITING~regout\ & ((!\proc0|cu0|clogic0|Mux1~0_combout\) # (!\proc0|cu0|ge|estat~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datac => \memory0|sram_controller|estat.WRITING~regout\,
	datad => \proc0|cu0|clogic0|Mux1~0_combout\,
	combout => \memory0|sram_controller|Selector1~0_combout\);

-- Location: LCFF_X10_Y1_N15
\memory0|sram_controller|estat.NOTHING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \memory0|sram_controller|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory0|sram_controller|estat.NOTHING~regout\);

-- Location: LCCOMB_X10_Y1_N18
\memory0|sram_controller|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \memory0|sram_controller|Selector0~0_combout\ = (!\memory0|sram_controller|estat.WAITING~regout\ & (((\proc0|cu0|ge|estat~regout\ & \proc0|cu0|clogic0|Mux1~0_combout\)) # (!\memory0|sram_controller|estat.NOTHING~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|cu0|ge|estat~regout\,
	datab => \memory0|sram_controller|estat.WAITING~regout\,
	datac => \memory0|sram_controller|estat.NOTHING~regout\,
	datad => \proc0|cu0|clogic0|Mux1~0_combout\,
	combout => \memory0|sram_controller|Selector0~0_combout\);

-- Location: LCFF_X10_Y1_N19
\memory0|sram_controller|SRAM_WE_N\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \memory0|sram_controller|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \memory0|sram_controller|SRAM_WE_N~regout\);

-- Location: LCCOMB_X1_Y19_N16
\Segments|h0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux6~0_combout\ = (\proc0|d0|addr_m[2]~3_combout\ & ((\proc0|d0|addr_m[1]~2_combout\) # (\proc0|d0|addr_m[0]~17_combout\ $ (\proc0|d0|addr_m[3]~4_combout\)))) # (!\proc0|d0|addr_m[2]~3_combout\ & ((\proc0|d0|addr_m[1]~2_combout\ $ 
-- (\proc0|d0|addr_m[3]~4_combout\)) # (!\proc0|d0|addr_m[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\Segments|h0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux5~0_combout\ = (\proc0|d0|addr_m[1]~2_combout\ & ((\proc0|d0|addr_m[0]~17_combout\ & ((\proc0|d0|addr_m[3]~4_combout\))) # (!\proc0|d0|addr_m[0]~17_combout\ & (\proc0|d0|addr_m[2]~3_combout\)))) # (!\proc0|d0|addr_m[1]~2_combout\ & 
-- (\proc0|d0|addr_m[2]~3_combout\ & (\proc0|d0|addr_m[0]~17_combout\ $ (\proc0|d0|addr_m[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N28
\Segments|h0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux4~0_combout\ = (\proc0|d0|addr_m[2]~3_combout\ & (\proc0|d0|addr_m[3]~4_combout\ & ((\proc0|d0|addr_m[1]~2_combout\) # (!\proc0|d0|addr_m[0]~17_combout\)))) # (!\proc0|d0|addr_m[2]~3_combout\ & (!\proc0|d0|addr_m[0]~17_combout\ & 
-- (\proc0|d0|addr_m[1]~2_combout\ & !\proc0|d0|addr_m[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N26
\Segments|h0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux3~0_combout\ = (\proc0|d0|addr_m[0]~17_combout\ & (\proc0|d0|addr_m[1]~2_combout\ $ ((\proc0|d0|addr_m[2]~3_combout\)))) # (!\proc0|d0|addr_m[0]~17_combout\ & ((\proc0|d0|addr_m[1]~2_combout\ & ((\proc0|d0|addr_m[2]~3_combout\) # 
-- (!\proc0|d0|addr_m[3]~4_combout\))) # (!\proc0|d0|addr_m[1]~2_combout\ & ((\proc0|d0|addr_m[3]~4_combout\) # (!\proc0|d0|addr_m[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\Segments|h0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux2~0_combout\ = (\proc0|d0|addr_m[1]~2_combout\ & (((\proc0|d0|addr_m[3]~4_combout\)) # (!\proc0|d0|addr_m[0]~17_combout\))) # (!\proc0|d0|addr_m[1]~2_combout\ & ((\proc0|d0|addr_m[2]~3_combout\ & ((\proc0|d0|addr_m[3]~4_combout\))) # 
-- (!\proc0|d0|addr_m[2]~3_combout\ & (!\proc0|d0|addr_m[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\Segments|h0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux1~0_combout\ = (\proc0|d0|addr_m[0]~17_combout\ & (\proc0|d0|addr_m[3]~4_combout\ $ (((!\proc0|d0|addr_m[1]~2_combout\ & \proc0|d0|addr_m[2]~3_combout\))))) # (!\proc0|d0|addr_m[0]~17_combout\ & (((\proc0|d0|addr_m[2]~3_combout\) # 
-- (\proc0|d0|addr_m[3]~4_combout\)) # (!\proc0|d0|addr_m[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y19_N24
\Segments|h0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h0|Mux0~0_combout\ = (\proc0|d0|addr_m[0]~17_combout\ & ((\proc0|d0|addr_m[3]~4_combout\) # (\proc0|d0|addr_m[1]~2_combout\ $ (\proc0|d0|addr_m[2]~3_combout\)))) # (!\proc0|d0|addr_m[0]~17_combout\ & ((\proc0|d0|addr_m[1]~2_combout\) # 
-- (\proc0|d0|addr_m[2]~3_combout\ $ (\proc0|d0|addr_m[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[0]~17_combout\,
	datab => \proc0|d0|addr_m[1]~2_combout\,
	datac => \proc0|d0|addr_m[2]~3_combout\,
	datad => \proc0|d0|addr_m[3]~4_combout\,
	combout => \Segments|h0|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\Segments|h1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux6~0_combout\ = (\proc0|d0|addr_m[6]~7_combout\ & (!\proc0|d0|addr_m[5]~6_combout\ & (\proc0|d0|addr_m[7]~8_combout\ $ (!\proc0|d0|addr_m[4]~5_combout\)))) # (!\proc0|d0|addr_m[6]~7_combout\ & (\proc0|d0|addr_m[4]~5_combout\ & 
-- (\proc0|d0|addr_m[7]~8_combout\ $ (!\proc0|d0|addr_m[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\Segments|h1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux5~0_combout\ = (\proc0|d0|addr_m[7]~8_combout\ & ((\proc0|d0|addr_m[4]~5_combout\ & ((\proc0|d0|addr_m[5]~6_combout\))) # (!\proc0|d0|addr_m[4]~5_combout\ & (\proc0|d0|addr_m[6]~7_combout\)))) # (!\proc0|d0|addr_m[7]~8_combout\ & 
-- (\proc0|d0|addr_m[6]~7_combout\ & (\proc0|d0|addr_m[5]~6_combout\ $ (\proc0|d0|addr_m[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\Segments|h1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux4~0_combout\ = (\proc0|d0|addr_m[6]~7_combout\ & (\proc0|d0|addr_m[7]~8_combout\ & ((\proc0|d0|addr_m[5]~6_combout\) # (!\proc0|d0|addr_m[4]~5_combout\)))) # (!\proc0|d0|addr_m[6]~7_combout\ & (!\proc0|d0|addr_m[7]~8_combout\ & 
-- (\proc0|d0|addr_m[5]~6_combout\ & !\proc0|d0|addr_m[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\Segments|h1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux3~0_combout\ = (\proc0|d0|addr_m[4]~5_combout\ & (\proc0|d0|addr_m[6]~7_combout\ $ (((!\proc0|d0|addr_m[5]~6_combout\))))) # (!\proc0|d0|addr_m[4]~5_combout\ & ((\proc0|d0|addr_m[6]~7_combout\ & (!\proc0|d0|addr_m[7]~8_combout\ & 
-- !\proc0|d0|addr_m[5]~6_combout\)) # (!\proc0|d0|addr_m[6]~7_combout\ & (\proc0|d0|addr_m[7]~8_combout\ & \proc0|d0|addr_m[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y18_N4
\Segments|h1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux2~0_combout\ = (\proc0|d0|addr_m[5]~6_combout\ & (((!\proc0|d0|addr_m[7]~8_combout\ & \proc0|d0|addr_m[4]~5_combout\)))) # (!\proc0|d0|addr_m[5]~6_combout\ & ((\proc0|d0|addr_m[6]~7_combout\ & (!\proc0|d0|addr_m[7]~8_combout\)) # 
-- (!\proc0|d0|addr_m[6]~7_combout\ & ((\proc0|d0|addr_m[4]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\Segments|h1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux1~0_combout\ = (\proc0|d0|addr_m[6]~7_combout\ & (\proc0|d0|addr_m[4]~5_combout\ & (\proc0|d0|addr_m[7]~8_combout\ $ (\proc0|d0|addr_m[5]~6_combout\)))) # (!\proc0|d0|addr_m[6]~7_combout\ & (!\proc0|d0|addr_m[7]~8_combout\ & 
-- ((\proc0|d0|addr_m[5]~6_combout\) # (\proc0|d0|addr_m[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y18_N20
\Segments|h1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h1|Mux0~0_combout\ = (\proc0|d0|addr_m[4]~5_combout\ & ((\proc0|d0|addr_m[7]~8_combout\) # (\proc0|d0|addr_m[6]~7_combout\ $ (\proc0|d0|addr_m[5]~6_combout\)))) # (!\proc0|d0|addr_m[4]~5_combout\ & ((\proc0|d0|addr_m[5]~6_combout\) # 
-- (\proc0|d0|addr_m[6]~7_combout\ $ (\proc0|d0|addr_m[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[6]~7_combout\,
	datab => \proc0|d0|addr_m[7]~8_combout\,
	datac => \proc0|d0|addr_m[5]~6_combout\,
	datad => \proc0|d0|addr_m[4]~5_combout\,
	combout => \Segments|h1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y23_N16
\Segments|h2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux6~0_combout\ = (\proc0|d0|addr_m[10]~11_combout\ & (!\proc0|d0|addr_m[9]~10_combout\ & (\proc0|d0|addr_m[8]~9_combout\ $ (!\proc0|d0|addr_m[11]~12_combout\)))) # (!\proc0|d0|addr_m[10]~11_combout\ & (\proc0|d0|addr_m[8]~9_combout\ & 
-- (\proc0|d0|addr_m[9]~10_combout\ $ (!\proc0|d0|addr_m[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\Segments|h2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux5~0_combout\ = (\proc0|d0|addr_m[9]~10_combout\ & ((\proc0|d0|addr_m[8]~9_combout\ & ((\proc0|d0|addr_m[11]~12_combout\))) # (!\proc0|d0|addr_m[8]~9_combout\ & (\proc0|d0|addr_m[10]~11_combout\)))) # (!\proc0|d0|addr_m[9]~10_combout\ & 
-- (\proc0|d0|addr_m[10]~11_combout\ & (\proc0|d0|addr_m[8]~9_combout\ $ (\proc0|d0|addr_m[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Segments|h2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux4~0_combout\ = (\proc0|d0|addr_m[10]~11_combout\ & (\proc0|d0|addr_m[11]~12_combout\ & ((\proc0|d0|addr_m[9]~10_combout\) # (!\proc0|d0|addr_m[8]~9_combout\)))) # (!\proc0|d0|addr_m[10]~11_combout\ & (!\proc0|d0|addr_m[8]~9_combout\ & 
-- (\proc0|d0|addr_m[9]~10_combout\ & !\proc0|d0|addr_m[11]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\Segments|h2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux3~0_combout\ = (\proc0|d0|addr_m[8]~9_combout\ & (\proc0|d0|addr_m[10]~11_combout\ $ ((!\proc0|d0|addr_m[9]~10_combout\)))) # (!\proc0|d0|addr_m[8]~9_combout\ & ((\proc0|d0|addr_m[10]~11_combout\ & (!\proc0|d0|addr_m[9]~10_combout\ & 
-- !\proc0|d0|addr_m[11]~12_combout\)) # (!\proc0|d0|addr_m[10]~11_combout\ & (\proc0|d0|addr_m[9]~10_combout\ & \proc0|d0|addr_m[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\Segments|h2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux2~0_combout\ = (\proc0|d0|addr_m[9]~10_combout\ & (\proc0|d0|addr_m[8]~9_combout\ & ((!\proc0|d0|addr_m[11]~12_combout\)))) # (!\proc0|d0|addr_m[9]~10_combout\ & ((\proc0|d0|addr_m[10]~11_combout\ & ((!\proc0|d0|addr_m[11]~12_combout\))) # 
-- (!\proc0|d0|addr_m[10]~11_combout\ & (\proc0|d0|addr_m[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\Segments|h2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux1~0_combout\ = (\proc0|d0|addr_m[8]~9_combout\ & (\proc0|d0|addr_m[11]~12_combout\ $ (((\proc0|d0|addr_m[9]~10_combout\) # (!\proc0|d0|addr_m[10]~11_combout\))))) # (!\proc0|d0|addr_m[8]~9_combout\ & (!\proc0|d0|addr_m[10]~11_combout\ & 
-- (\proc0|d0|addr_m[9]~10_combout\ & !\proc0|d0|addr_m[11]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\Segments|h2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h2|Mux0~0_combout\ = (\proc0|d0|addr_m[8]~9_combout\ & ((\proc0|d0|addr_m[11]~12_combout\) # (\proc0|d0|addr_m[10]~11_combout\ $ (\proc0|d0|addr_m[9]~10_combout\)))) # (!\proc0|d0|addr_m[8]~9_combout\ & ((\proc0|d0|addr_m[9]~10_combout\) # 
-- (\proc0|d0|addr_m[10]~11_combout\ $ (\proc0|d0|addr_m[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[8]~9_combout\,
	datab => \proc0|d0|addr_m[10]~11_combout\,
	datac => \proc0|d0|addr_m[9]~10_combout\,
	datad => \proc0|d0|addr_m[11]~12_combout\,
	combout => \Segments|h2|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y1_N4
\Segments|h3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux6~0_combout\ = (\proc0|d0|addr_m[14]~15_combout\ & (!\proc0|d0|addr_m[13]~14_combout\ & (\proc0|d0|addr_m[12]~13_combout\ $ (!\proc0|d0|addr_m[15]~16_combout\)))) # (!\proc0|d0|addr_m[14]~15_combout\ & (\proc0|d0|addr_m[12]~13_combout\ & 
-- (\proc0|d0|addr_m[15]~16_combout\ $ (!\proc0|d0|addr_m[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[12]~13_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[15]~16_combout\,
	datad => \proc0|d0|addr_m[13]~14_combout\,
	combout => \Segments|h3|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y2_N2
\Segments|h3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux5~0_combout\ = (\proc0|d0|addr_m[15]~16_combout\ & ((\proc0|d0|addr_m[12]~13_combout\ & ((\proc0|d0|addr_m[13]~14_combout\))) # (!\proc0|d0|addr_m[12]~13_combout\ & (\proc0|d0|addr_m[14]~15_combout\)))) # (!\proc0|d0|addr_m[15]~16_combout\ 
-- & (\proc0|d0|addr_m[14]~15_combout\ & (\proc0|d0|addr_m[13]~14_combout\ $ (\proc0|d0|addr_m[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[15]~16_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[13]~14_combout\,
	datad => \proc0|d0|addr_m[12]~13_combout\,
	combout => \Segments|h3|Mux5~0_combout\);

-- Location: LCCOMB_X15_Y1_N14
\Segments|h3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux4~0_combout\ = (\proc0|d0|addr_m[14]~15_combout\ & (\proc0|d0|addr_m[15]~16_combout\ & ((\proc0|d0|addr_m[13]~14_combout\) # (!\proc0|d0|addr_m[12]~13_combout\)))) # (!\proc0|d0|addr_m[14]~15_combout\ & (!\proc0|d0|addr_m[12]~13_combout\ & 
-- (!\proc0|d0|addr_m[15]~16_combout\ & \proc0|d0|addr_m[13]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[12]~13_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[15]~16_combout\,
	datad => \proc0|d0|addr_m[13]~14_combout\,
	combout => \Segments|h3|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y2_N24
\Segments|h3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux3~0_combout\ = (\proc0|d0|addr_m[12]~13_combout\ & ((\proc0|d0|addr_m[14]~15_combout\ $ (!\proc0|d0|addr_m[13]~14_combout\)))) # (!\proc0|d0|addr_m[12]~13_combout\ & ((\proc0|d0|addr_m[15]~16_combout\ & (!\proc0|d0|addr_m[14]~15_combout\ & 
-- \proc0|d0|addr_m[13]~14_combout\)) # (!\proc0|d0|addr_m[15]~16_combout\ & (\proc0|d0|addr_m[14]~15_combout\ & !\proc0|d0|addr_m[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[15]~16_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[13]~14_combout\,
	datad => \proc0|d0|addr_m[12]~13_combout\,
	combout => \Segments|h3|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y1_N12
\Segments|h3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux2~0_combout\ = (\proc0|d0|addr_m[13]~14_combout\ & (\proc0|d0|addr_m[12]~13_combout\ & ((!\proc0|d0|addr_m[15]~16_combout\)))) # (!\proc0|d0|addr_m[13]~14_combout\ & ((\proc0|d0|addr_m[14]~15_combout\ & 
-- ((!\proc0|d0|addr_m[15]~16_combout\))) # (!\proc0|d0|addr_m[14]~15_combout\ & (\proc0|d0|addr_m[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[12]~13_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[15]~16_combout\,
	datad => \proc0|d0|addr_m[13]~14_combout\,
	combout => \Segments|h3|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y2_N14
\Segments|h3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux1~0_combout\ = (\proc0|d0|addr_m[14]~15_combout\ & (\proc0|d0|addr_m[12]~13_combout\ & (\proc0|d0|addr_m[15]~16_combout\ $ (\proc0|d0|addr_m[13]~14_combout\)))) # (!\proc0|d0|addr_m[14]~15_combout\ & (!\proc0|d0|addr_m[15]~16_combout\ & 
-- ((\proc0|d0|addr_m[13]~14_combout\) # (\proc0|d0|addr_m[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[15]~16_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[13]~14_combout\,
	datad => \proc0|d0|addr_m[12]~13_combout\,
	combout => \Segments|h3|Mux1~0_combout\);

-- Location: LCCOMB_X15_Y1_N2
\Segments|h3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Segments|h3|Mux0~0_combout\ = (\proc0|d0|addr_m[12]~13_combout\ & ((\proc0|d0|addr_m[15]~16_combout\) # (\proc0|d0|addr_m[14]~15_combout\ $ (\proc0|d0|addr_m[13]~14_combout\)))) # (!\proc0|d0|addr_m[12]~13_combout\ & ((\proc0|d0|addr_m[13]~14_combout\) # 
-- (\proc0|d0|addr_m[14]~15_combout\ $ (\proc0|d0|addr_m[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \proc0|d0|addr_m[12]~13_combout\,
	datab => \proc0|d0|addr_m[14]~15_combout\,
	datac => \proc0|d0|addr_m[15]~16_combout\,
	datad => \proc0|d0|addr_m[13]~14_combout\,
	combout => \Segments|h3|Mux0~0_combout\);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[13]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \proc0|d0|addr_m[15]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|SRAM_UB_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|ALT_INV_SRAM_LB_N~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_CE_N);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \memory0|sram_controller|ALT_INV_SRAM_WE_N~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h0|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h1|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Segments|h3|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));
END structure;


