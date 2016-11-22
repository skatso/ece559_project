-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"

-- DATE "11/22/2016 00:55:37"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fifo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	ctrl_in : IN std_logic_vector(31 DOWNTO 0);
	ctrl_write : IN std_logic;
	lo_in : IN std_logic_vector(7 DOWNTO 0);
	hi_in : IN std_logic_vector(7 DOWNTO 0);
	lo_write : IN std_logic;
	hi_write : IN std_logic;
	read_next : IN std_logic;
	lo_full : OUT std_logic;
	hi_full : OUT std_logic;
	ctrl_out : OUT std_logic_vector(31 DOWNTO 0);
	out_byte : OUT std_logic_vector(7 DOWNTO 0)
	);
END fifo;

-- Design Ports Information
-- lo_full	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_full	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[1]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[4]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[5]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[6]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[9]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[10]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[11]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[12]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[13]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[14]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[15]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[16]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[17]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[18]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[19]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[20]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[21]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[22]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[23]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[24]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[25]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[26]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[27]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[28]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[29]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[30]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[31]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[1]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[5]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[6]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_byte[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_next	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_write	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_write	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_write	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[4]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[5]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[8]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[9]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[10]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[11]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[14]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[16]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[17]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[18]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[19]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[20]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[21]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[22]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[23]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[24]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[25]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[26]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[27]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[28]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[29]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[30]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_in[31]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[5]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi_in[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo_in[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fifo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ctrl_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ctrl_write : std_logic;
SIGNAL ww_lo_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hi_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lo_write : std_logic;
SIGNAL ww_hi_write : std_logic;
SIGNAL ww_read_next : std_logic;
SIGNAL ww_lo_full : std_logic;
SIGNAL ww_hi_full : std_logic;
SIGNAL ww_ctrl_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_out_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \read_next~input_o\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \hi_write~input_o\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ : std_logic;
SIGNAL \hi_read~combout\ : std_logic;
SIGNAL \lo_write~input_o\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ : std_logic;
SIGNAL \ctrl_in[0]~input_o\ : std_logic;
SIGNAL \ctrl_write~input_o\ : std_logic;
SIGNAL \ctrls|process_0~0_combout\ : std_logic;
SIGNAL \ctrl_in[1]~input_o\ : std_logic;
SIGNAL \ctrl_in[2]~input_o\ : std_logic;
SIGNAL \ctrl_in[3]~input_o\ : std_logic;
SIGNAL \ctrl_in[4]~input_o\ : std_logic;
SIGNAL \ctrl_in[5]~input_o\ : std_logic;
SIGNAL \ctrl_in[6]~input_o\ : std_logic;
SIGNAL \ctrl_in[7]~input_o\ : std_logic;
SIGNAL \ctrl_in[8]~input_o\ : std_logic;
SIGNAL \ctrl_in[9]~input_o\ : std_logic;
SIGNAL \ctrl_in[10]~input_o\ : std_logic;
SIGNAL \ctrl_in[11]~input_o\ : std_logic;
SIGNAL \ctrl_in[12]~input_o\ : std_logic;
SIGNAL \ctrl_in[13]~input_o\ : std_logic;
SIGNAL \ctrl_in[14]~input_o\ : std_logic;
SIGNAL \ctrl_in[15]~input_o\ : std_logic;
SIGNAL \ctrl_in[16]~input_o\ : std_logic;
SIGNAL \ctrl_in[17]~input_o\ : std_logic;
SIGNAL \ctrl_in[18]~input_o\ : std_logic;
SIGNAL \ctrl_in[19]~input_o\ : std_logic;
SIGNAL \ctrl_in[20]~input_o\ : std_logic;
SIGNAL \ctrl_in[21]~input_o\ : std_logic;
SIGNAL \ctrl_in[22]~input_o\ : std_logic;
SIGNAL \ctrl_in[23]~input_o\ : std_logic;
SIGNAL \ctrl_in[24]~input_o\ : std_logic;
SIGNAL \ctrl_in[25]~input_o\ : std_logic;
SIGNAL \ctrl_in[26]~input_o\ : std_logic;
SIGNAL \ctrl_in[27]~input_o\ : std_logic;
SIGNAL \ctrl_in[28]~input_o\ : std_logic;
SIGNAL \ctrl_in[29]~input_o\ : std_logic;
SIGNAL \ctrl_in[30]~input_o\ : std_logic;
SIGNAL \ctrl_in[31]~input_o\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \lo_in[0]~input_o\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \lo_in[1]~input_o\ : std_logic;
SIGNAL \lo_in[2]~input_o\ : std_logic;
SIGNAL \lo_in[3]~input_o\ : std_logic;
SIGNAL \lo_in[4]~input_o\ : std_logic;
SIGNAL \hi_in[0]~input_o\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\ : std_logic;
SIGNAL \hi_in[1]~input_o\ : std_logic;
SIGNAL \hi_in[2]~input_o\ : std_logic;
SIGNAL \hi_in[3]~input_o\ : std_logic;
SIGNAL \hi_in[4]~input_o\ : std_logic;
SIGNAL \out_byte~0_combout\ : std_logic;
SIGNAL \out_byte~1_combout\ : std_logic;
SIGNAL \out_byte~2_combout\ : std_logic;
SIGNAL \out_byte~3_combout\ : std_logic;
SIGNAL \out_byte~4_combout\ : std_logic;
SIGNAL \hi_in[5]~input_o\ : std_logic;
SIGNAL \hi_in[6]~input_o\ : std_logic;
SIGNAL \hi_in[7]~input_o\ : std_logic;
SIGNAL \lo_in[5]~input_o\ : std_logic;
SIGNAL \lo_in[6]~input_o\ : std_logic;
SIGNAL \lo_in[7]~input_o\ : std_logic;
SIGNAL \out_byte~5_combout\ : std_logic;
SIGNAL \out_byte~6_combout\ : std_logic;
SIGNAL \out_byte~7_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ctrls|outputs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_ctrl_in[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_write~input_o\ : std_logic;
SIGNAL \ALT_INV_ctrl_in[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_hi_write~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_lo_write~input_o\ : std_logic;
SIGNAL \ALT_INV_read_next~input_o\ : std_logic;
SIGNAL \ctrls|ALT_INV_outputs\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~1_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~0_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~1_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~0_combout\ : std_logic;
SIGNAL \ctrls|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~1_combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~0_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~2_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~1_combout\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~0_combout\ : std_logic;
SIGNAL \ALT_INV_hi_read~combout\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\ : std_logic;
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\ : std_logic;
SIGNAL \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_ctrl_in <= ctrl_in;
ww_ctrl_write <= ctrl_write;
ww_lo_in <= lo_in;
ww_hi_in <= hi_in;
ww_lo_write <= lo_write;
ww_hi_write <= hi_write;
ww_read_next <= read_next;
lo_full <= ww_lo_full;
hi_full <= ww_hi_full;
ctrl_out <= ww_ctrl_out;
out_byte <= ww_out_byte;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (\hi_in[4]~input_o\ & \hi_in[3]~input_o\ & \hi_in[2]~input_o\ & \hi_in[1]~input_o\ & \hi_in[0]~input_o\);

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & 
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & 
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7)
& \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2)
& \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (\lo_in[4]~input_o\ & \lo_in[3]~input_o\ & \lo_in[2]~input_o\ & \lo_in[1]~input_o\ & \lo_in[0]~input_o\);

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & 
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9)
& \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6)
& \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3)
& \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0)
);

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTADATAIN_bus\ <= (gnd & gnd & \hi_in[7]~input_o\ & \hi_in[6]~input_o\ & \hi_in[5]~input_o\);

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTAADDR_bus\ <= (\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & 
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBADDR_bus\ <= (\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & 
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7)
& \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2)
& \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\(0);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\(1);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7) <= \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\(2);

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTADATAIN_bus\ <= (gnd & gnd & \lo_in[7]~input_o\ & \lo_in[6]~input_o\ & \lo_in[5]~input_o\);

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTAADDR_bus\ <= (\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & 
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBADDR_bus\ <= (\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9)
& \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6)
& \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3)
& \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0)
);

\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\(0);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7) <= \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\(2);
\ALT_INV_ctrl_in[31]~input_o\ <= NOT \ctrl_in[31]~input_o\;
\ALT_INV_ctrl_in[30]~input_o\ <= NOT \ctrl_in[30]~input_o\;
\ALT_INV_ctrl_in[29]~input_o\ <= NOT \ctrl_in[29]~input_o\;
\ALT_INV_ctrl_in[28]~input_o\ <= NOT \ctrl_in[28]~input_o\;
\ALT_INV_ctrl_in[27]~input_o\ <= NOT \ctrl_in[27]~input_o\;
\ALT_INV_ctrl_in[26]~input_o\ <= NOT \ctrl_in[26]~input_o\;
\ALT_INV_ctrl_in[25]~input_o\ <= NOT \ctrl_in[25]~input_o\;
\ALT_INV_ctrl_in[24]~input_o\ <= NOT \ctrl_in[24]~input_o\;
\ALT_INV_ctrl_in[23]~input_o\ <= NOT \ctrl_in[23]~input_o\;
\ALT_INV_ctrl_in[22]~input_o\ <= NOT \ctrl_in[22]~input_o\;
\ALT_INV_ctrl_in[21]~input_o\ <= NOT \ctrl_in[21]~input_o\;
\ALT_INV_ctrl_in[20]~input_o\ <= NOT \ctrl_in[20]~input_o\;
\ALT_INV_ctrl_in[19]~input_o\ <= NOT \ctrl_in[19]~input_o\;
\ALT_INV_ctrl_in[18]~input_o\ <= NOT \ctrl_in[18]~input_o\;
\ALT_INV_ctrl_in[17]~input_o\ <= NOT \ctrl_in[17]~input_o\;
\ALT_INV_ctrl_in[16]~input_o\ <= NOT \ctrl_in[16]~input_o\;
\ALT_INV_ctrl_in[15]~input_o\ <= NOT \ctrl_in[15]~input_o\;
\ALT_INV_ctrl_in[14]~input_o\ <= NOT \ctrl_in[14]~input_o\;
\ALT_INV_ctrl_in[13]~input_o\ <= NOT \ctrl_in[13]~input_o\;
\ALT_INV_ctrl_in[12]~input_o\ <= NOT \ctrl_in[12]~input_o\;
\ALT_INV_ctrl_in[11]~input_o\ <= NOT \ctrl_in[11]~input_o\;
\ALT_INV_ctrl_in[10]~input_o\ <= NOT \ctrl_in[10]~input_o\;
\ALT_INV_ctrl_in[9]~input_o\ <= NOT \ctrl_in[9]~input_o\;
\ALT_INV_ctrl_in[8]~input_o\ <= NOT \ctrl_in[8]~input_o\;
\ALT_INV_ctrl_in[7]~input_o\ <= NOT \ctrl_in[7]~input_o\;
\ALT_INV_ctrl_in[6]~input_o\ <= NOT \ctrl_in[6]~input_o\;
\ALT_INV_ctrl_in[5]~input_o\ <= NOT \ctrl_in[5]~input_o\;
\ALT_INV_ctrl_in[4]~input_o\ <= NOT \ctrl_in[4]~input_o\;
\ALT_INV_ctrl_in[3]~input_o\ <= NOT \ctrl_in[3]~input_o\;
\ALT_INV_ctrl_in[2]~input_o\ <= NOT \ctrl_in[2]~input_o\;
\ALT_INV_ctrl_in[1]~input_o\ <= NOT \ctrl_in[1]~input_o\;
\ALT_INV_ctrl_write~input_o\ <= NOT \ctrl_write~input_o\;
\ALT_INV_ctrl_in[0]~input_o\ <= NOT \ctrl_in[0]~input_o\;
\ALT_INV_hi_write~input_o\ <= NOT \hi_write~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_lo_write~input_o\ <= NOT \lo_write~input_o\;
\ALT_INV_read_next~input_o\ <= NOT \read_next~input_o\;
\ctrls|ALT_INV_outputs\(31) <= NOT \ctrls|outputs\(31);
\ctrls|ALT_INV_outputs\(30) <= NOT \ctrls|outputs\(30);
\ctrls|ALT_INV_outputs\(29) <= NOT \ctrls|outputs\(29);
\ctrls|ALT_INV_outputs\(28) <= NOT \ctrls|outputs\(28);
\ctrls|ALT_INV_outputs\(27) <= NOT \ctrls|outputs\(27);
\ctrls|ALT_INV_outputs\(26) <= NOT \ctrls|outputs\(26);
\ctrls|ALT_INV_outputs\(25) <= NOT \ctrls|outputs\(25);
\ctrls|ALT_INV_outputs\(24) <= NOT \ctrls|outputs\(24);
\ctrls|ALT_INV_outputs\(23) <= NOT \ctrls|outputs\(23);
\ctrls|ALT_INV_outputs\(22) <= NOT \ctrls|outputs\(22);
\ctrls|ALT_INV_outputs\(21) <= NOT \ctrls|outputs\(21);
\ctrls|ALT_INV_outputs\(20) <= NOT \ctrls|outputs\(20);
\ctrls|ALT_INV_outputs\(19) <= NOT \ctrls|outputs\(19);
\ctrls|ALT_INV_outputs\(18) <= NOT \ctrls|outputs\(18);
\ctrls|ALT_INV_outputs\(17) <= NOT \ctrls|outputs\(17);
\ctrls|ALT_INV_outputs\(16) <= NOT \ctrls|outputs\(16);
\ctrls|ALT_INV_outputs\(15) <= NOT \ctrls|outputs\(15);
\ctrls|ALT_INV_outputs\(14) <= NOT \ctrls|outputs\(14);
\ctrls|ALT_INV_outputs\(13) <= NOT \ctrls|outputs\(13);
\ctrls|ALT_INV_outputs\(12) <= NOT \ctrls|outputs\(12);
\ctrls|ALT_INV_outputs\(11) <= NOT \ctrls|outputs\(11);
\ctrls|ALT_INV_outputs\(10) <= NOT \ctrls|outputs\(10);
\ctrls|ALT_INV_outputs\(9) <= NOT \ctrls|outputs\(9);
\ctrls|ALT_INV_outputs\(8) <= NOT \ctrls|outputs\(8);
\ctrls|ALT_INV_outputs\(7) <= NOT \ctrls|outputs\(7);
\ctrls|ALT_INV_outputs\(6) <= NOT \ctrls|outputs\(6);
\ctrls|ALT_INV_outputs\(5) <= NOT \ctrls|outputs\(5);
\ctrls|ALT_INV_outputs\(4) <= NOT \ctrls|outputs\(4);
\ctrls|ALT_INV_outputs\(3) <= NOT \ctrls|outputs\(3);
\ctrls|ALT_INV_outputs\(2) <= NOT \ctrls|outputs\(2);
\ctrls|ALT_INV_outputs\(1) <= NOT \ctrls|outputs\(1);
\ctrls|ALT_INV_outputs\(0) <= NOT \ctrls|outputs\(0);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~1_combout\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\;
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~0_combout\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\;
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(10) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(9) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(8) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(7) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(6) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(5) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(4) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(3) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(2) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(1) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(0) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(10) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(9) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(8) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(7) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(6) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(5) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(4) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(3) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(2) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(1) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(0) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0);
\low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(10) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(9) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(8) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(7) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(6) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(5) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(4) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(3) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(2) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(1) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1);
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(0) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(10) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(9) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(8) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(7) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(6) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(5) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(4) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(3) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(2) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(1) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1);
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(0) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0);
\high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~1_combout\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~0_combout\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\;
\ctrls|ALT_INV_process_0~0_combout\ <= NOT \ctrls|process_0~0_combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~1_combout\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~0_combout\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0);
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~2_combout\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\;
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~1_combout\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\;
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\;
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~0_combout\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\;
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2);
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3);
\ALT_INV_hi_read~combout\ <= NOT \hi_read~combout\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\;
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\ <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\;
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\ <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\;
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(6) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(7) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(5) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(6) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(7) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(5) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(1) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(2) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(3) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(4) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4);
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(0) <= NOT \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(1) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(2) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(3) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(4) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4);
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(0) <= NOT \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0);

-- Location: IOOBUF_X50_Y0_N93
\lo_full~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	devoe => ww_devoe,
	o => ww_lo_full);

-- Location: IOOBUF_X54_Y0_N2
\hi_full~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	devoe => ww_devoe,
	o => ww_hi_full);

-- Location: IOOBUF_X62_Y81_N19
\ctrl_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(0),
	devoe => ww_devoe,
	o => ww_ctrl_out(0));

-- Location: IOOBUF_X70_Y0_N19
\ctrl_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(1),
	devoe => ww_devoe,
	o => ww_ctrl_out(1));

-- Location: IOOBUF_X32_Y0_N36
\ctrl_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(2),
	devoe => ww_devoe,
	o => ww_ctrl_out(2));

-- Location: IOOBUF_X68_Y0_N19
\ctrl_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(3),
	devoe => ww_devoe,
	o => ww_ctrl_out(3));

-- Location: IOOBUF_X89_Y9_N22
\ctrl_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(4),
	devoe => ww_devoe,
	o => ww_ctrl_out(4));

-- Location: IOOBUF_X62_Y0_N53
\ctrl_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(5),
	devoe => ww_devoe,
	o => ww_ctrl_out(5));

-- Location: IOOBUF_X60_Y0_N36
\ctrl_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(6),
	devoe => ww_devoe,
	o => ww_ctrl_out(6));

-- Location: IOOBUF_X28_Y0_N19
\ctrl_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(7),
	devoe => ww_devoe,
	o => ww_ctrl_out(7));

-- Location: IOOBUF_X60_Y0_N19
\ctrl_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(8),
	devoe => ww_devoe,
	o => ww_ctrl_out(8));

-- Location: IOOBUF_X70_Y0_N2
\ctrl_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(9),
	devoe => ww_devoe,
	o => ww_ctrl_out(9));

-- Location: IOOBUF_X62_Y0_N2
\ctrl_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(10),
	devoe => ww_devoe,
	o => ww_ctrl_out(10));

-- Location: IOOBUF_X89_Y9_N56
\ctrl_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(11),
	devoe => ww_devoe,
	o => ww_ctrl_out(11));

-- Location: IOOBUF_X62_Y0_N36
\ctrl_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(12),
	devoe => ww_devoe,
	o => ww_ctrl_out(12));

-- Location: IOOBUF_X89_Y6_N22
\ctrl_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(13),
	devoe => ww_devoe,
	o => ww_ctrl_out(13));

-- Location: IOOBUF_X72_Y0_N19
\ctrl_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(14),
	devoe => ww_devoe,
	o => ww_ctrl_out(14));

-- Location: IOOBUF_X60_Y0_N2
\ctrl_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(15),
	devoe => ww_devoe,
	o => ww_ctrl_out(15));

-- Location: IOOBUF_X62_Y0_N19
\ctrl_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(16),
	devoe => ww_devoe,
	o => ww_ctrl_out(16));

-- Location: IOOBUF_X58_Y81_N93
\ctrl_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(17),
	devoe => ww_devoe,
	o => ww_ctrl_out(17));

-- Location: IOOBUF_X36_Y0_N19
\ctrl_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(18),
	devoe => ww_devoe,
	o => ww_ctrl_out(18));

-- Location: IOOBUF_X64_Y0_N2
\ctrl_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(19),
	devoe => ww_devoe,
	o => ww_ctrl_out(19));

-- Location: IOOBUF_X60_Y81_N36
\ctrl_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(20),
	devoe => ww_devoe,
	o => ww_ctrl_out(20));

-- Location: IOOBUF_X89_Y6_N5
\ctrl_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(21),
	devoe => ww_devoe,
	o => ww_ctrl_out(21));

-- Location: IOOBUF_X32_Y0_N2
\ctrl_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(22),
	devoe => ww_devoe,
	o => ww_ctrl_out(22));

-- Location: IOOBUF_X68_Y0_N36
\ctrl_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(23),
	devoe => ww_devoe,
	o => ww_ctrl_out(23));

-- Location: IOOBUF_X64_Y0_N53
\ctrl_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(24),
	devoe => ww_devoe,
	o => ww_ctrl_out(24));

-- Location: IOOBUF_X28_Y0_N53
\ctrl_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(25),
	devoe => ww_devoe,
	o => ww_ctrl_out(25));

-- Location: IOOBUF_X68_Y0_N53
\ctrl_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(26),
	devoe => ww_devoe,
	o => ww_ctrl_out(26));

-- Location: IOOBUF_X60_Y81_N2
\ctrl_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(27),
	devoe => ww_devoe,
	o => ww_ctrl_out(27));

-- Location: IOOBUF_X89_Y36_N22
\ctrl_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(28),
	devoe => ww_devoe,
	o => ww_ctrl_out(28));

-- Location: IOOBUF_X32_Y0_N19
\ctrl_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(29),
	devoe => ww_devoe,
	o => ww_ctrl_out(29));

-- Location: IOOBUF_X70_Y0_N53
\ctrl_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(30),
	devoe => ww_devoe,
	o => ww_ctrl_out(30));

-- Location: IOOBUF_X89_Y8_N39
\ctrl_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ctrls|outputs\(31),
	devoe => ww_devoe,
	o => ww_ctrl_out(31));

-- Location: IOOBUF_X40_Y0_N2
\out_byte[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~0_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(0));

-- Location: IOOBUF_X34_Y0_N76
\out_byte[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~1_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(1));

-- Location: IOOBUF_X34_Y0_N59
\out_byte[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~2_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(2));

-- Location: IOOBUF_X34_Y0_N93
\out_byte[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~3_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(3));

-- Location: IOOBUF_X38_Y0_N36
\out_byte[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~4_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(4));

-- Location: IOOBUF_X50_Y0_N59
\out_byte[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~5_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(5));

-- Location: IOOBUF_X50_Y0_N42
\out_byte[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~6_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(6));

-- Location: IOOBUF_X38_Y0_N19
\out_byte[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \out_byte~7_combout\,
	devoe => ww_devoe,
	o => ww_out_byte(7));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X56_Y0_N1
\read_next~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_next,
	o => \read_next~input_o\);

-- Location: MLABCELL_X59_Y3_N0
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X56_Y0_N35
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\hi_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_write,
	o => \hi_write~input_o\);

-- Location: MLABCELL_X59_Y3_N36
\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \hi_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_hi_write~input_o\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: MLABCELL_X59_Y3_N3
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: FF_X59_Y3_N5
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1));

-- Location: MLABCELL_X59_Y3_N6
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: FF_X59_Y3_N8
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2));

-- Location: MLABCELL_X59_Y3_N9
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\);

-- Location: FF_X59_Y3_N11
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3));

-- Location: MLABCELL_X59_Y3_N12
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\);

-- Location: FF_X59_Y3_N14
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4));

-- Location: MLABCELL_X59_Y3_N15
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\);

-- Location: FF_X59_Y3_N17
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5));

-- Location: MLABCELL_X59_Y3_N18
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\);

-- Location: FF_X59_Y3_N20
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6));

-- Location: MLABCELL_X59_Y3_N21
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\);

-- Location: FF_X59_Y3_N23
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7));

-- Location: MLABCELL_X59_Y3_N42
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) & ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) & ( (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2),
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5),
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3),
	datae => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4),
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: MLABCELL_X59_Y3_N24
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\);

-- Location: FF_X59_Y3_N26
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8));

-- Location: MLABCELL_X59_Y3_N27
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\ = SUM(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ = CARRY(( !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\);

-- Location: FF_X59_Y3_N29
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9));

-- Location: MLABCELL_X59_Y3_N30
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) ) + ( 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10),
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\);

-- Location: FF_X59_Y3_N32
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10));

-- Location: LABCELL_X57_Y3_N30
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) & ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & ( (!\read_next~input_o\ & (\hi_write~input_o\ & (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_next~input_o\,
	datab => \ALT_INV_hi_write~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9),
	datae => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8),
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: MLABCELL_X59_Y3_N48
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & ( 
-- (!\hi_read~combout\) # ((\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)))) ) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & ( (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ 
-- & \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0))) ) ) ) # ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & ( !\hi_read~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000001000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1),
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~1_combout\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0),
	datad => \ALT_INV_hi_read~combout\,
	datae => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~0_combout\,
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: FF_X59_Y3_N50
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\);

-- Location: MLABCELL_X59_Y3_N39
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( !\read_next~input_o\ $ (((!\hi_write~input_o\) # 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\))) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & \hi_write~input_o\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000101101001011010010110100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	datab => \ALT_INV_hi_write~input_o\,
	datac => \ALT_INV_read_next~input_o\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: FF_X59_Y3_N2
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0));

-- Location: MLABCELL_X59_Y3_N54
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & ( 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & ( (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & 
-- (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2),
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3),
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4),
	datae => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5),
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LABCELL_X57_Y3_N24
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = ( \read_next~input_o\ & ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) & 
-- (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) & !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8),
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9),
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10),
	datae => \ALT_INV_read_next~input_o\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LABCELL_X57_Y3_N48
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ & ( 
-- (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)) # (((!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\) # 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\)) # (\hi_write~input_o\)) ) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ & ( (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # (\hi_write~input_o\) ) ) ) # ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ & ( (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # (\hi_write~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111100111111001111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0),
	datab => \ALT_INV_hi_write~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~1_combout\,
	datae => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~0_combout\,
	combout => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: FF_X57_Y3_N50
\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\);

-- Location: LABCELL_X57_Y3_N21
hi_read : cyclonev_lcell_comb
-- Equation(s):
-- \hi_read~combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \read_next~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_read_next~input_o\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \hi_read~combout\);

-- Location: IOIBUF_X50_Y0_N75
\lo_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_write,
	o => \lo_write~input_o\);

-- Location: LABCELL_X56_Y3_N54
\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \lo_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_lo_write~input_o\,
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: LABCELL_X56_Y3_N0
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: LABCELL_X57_Y3_N57
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\read_next~input_o\ & 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) ) ) ) # ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- !\lo_write~input_o\ $ (((!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) # (\read_next~input_o\))) ) ) ) # ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ ) ) ) # ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( 
-- !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ $ (!\lo_write~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100110011001100100010110111010010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_next~input_o\,
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datad => \ALT_INV_lo_write~input_o\,
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: FF_X56_Y3_N2
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0));

-- Location: LABCELL_X56_Y3_N3
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: FF_X56_Y3_N5
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1));

-- Location: LABCELL_X56_Y3_N6
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: FF_X56_Y3_N8
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2));

-- Location: LABCELL_X56_Y3_N9
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\);

-- Location: FF_X56_Y3_N11
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3));

-- Location: LABCELL_X56_Y3_N12
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\);

-- Location: FF_X56_Y3_N14
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4));

-- Location: LABCELL_X56_Y3_N15
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\);

-- Location: FF_X56_Y3_N17
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5));

-- Location: LABCELL_X56_Y3_N18
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\);

-- Location: FF_X56_Y3_N20
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6));

-- Location: LABCELL_X56_Y3_N21
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) ) + ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) ) + ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\);

-- Location: FF_X56_Y3_N23
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7));

-- Location: LABCELL_X56_Y3_N24
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ = CARRY(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\);

-- Location: FF_X56_Y3_N26
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8));

-- Location: LABCELL_X56_Y3_N27
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) ) + ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) ) + ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\);

-- Location: FF_X56_Y3_N29
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9));

-- Location: LABCELL_X56_Y3_N30
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\ = SUM(( !\low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) ) + ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|ALT_INV_valid_wreq~combout\,
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\);

-- Location: FF_X56_Y3_N32
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10));

-- Location: LABCELL_X56_Y3_N36
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) & ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) & ( (!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & 
-- (!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) & ((!\read_next~input_o\) # (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8),
	datab => \ALT_INV_read_next~input_o\,
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7),
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9),
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10),
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LABCELL_X56_Y3_N48
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & ( (!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & 
-- (!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & (!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2),
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3),
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4),
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1),
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5),
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LABCELL_X57_Y3_N42
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) 
-- & ( (((!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # (!\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\)) # (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\)) # 
-- (\lo_write~input_o\) ) ) ) # ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) & ( 
-- (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # (\lo_write~input_o\) ) ) ) # ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) ) ) # ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) & ( (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # (\lo_write~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111111101110111011101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lo_write~input_o\,
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~0_combout\,
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~1_combout\,
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0),
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: FF_X57_Y3_N44
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\);

-- Location: LABCELL_X57_Y3_N12
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) & ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( 
-- (\lo_write~input_o\ & (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (\read_next~input_o\ & \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_lo_write~input_o\,
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datac => \ALT_INV_read_next~input_o\,
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(9),
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(10),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LABCELL_X57_Y3_N3
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) & ( 
-- (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(1),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(2),
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(0),
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LABCELL_X56_Y3_N57
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & ( 
-- (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & 
-- (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) & \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(6),
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(5),
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(4),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(7),
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(8),
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LABCELL_X56_Y3_N42
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & ( 
-- ((\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\))) # 
-- (\hi_read~combout\) ) ) ) # ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & ( 
-- (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & (\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\)) ) ) ) # ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & ( !\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) & ( \hi_read~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000110101010101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_hi_read~combout\,
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~1_combout\,
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~0_combout\,
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~2_combout\,
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_full~q\,
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|ALT_INV_counter_reg_bit\(3),
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\);

-- Location: FF_X56_Y3_N44
\low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\);

-- Location: IOIBUF_X66_Y0_N41
\ctrl_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(0),
	o => \ctrl_in[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\ctrl_write~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_write,
	o => \ctrl_write~input_o\);

-- Location: LABCELL_X60_Y7_N3
\ctrls|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|process_0~0_combout\ = ( \clk~input_o\ & ( \ctrl_write~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_write~input_o\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \ctrls|process_0~0_combout\);

-- Location: LABCELL_X60_Y7_N54
\ctrls|outputs[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(0) = ( \ctrls|outputs\(0) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[0]~input_o\))) ) ) # ( !\ctrls|outputs\(0) & ( (!\reset~input_o\ & (\ctrl_in[0]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[0]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(0),
	combout => \ctrls|outputs\(0));

-- Location: IOIBUF_X72_Y0_N35
\ctrl_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(1),
	o => \ctrl_in[1]~input_o\);

-- Location: LABCELL_X61_Y7_N27
\ctrls|outputs[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(1) = ( \ctrls|outputs\(1) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[1]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|outputs\(1) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[1]~input_o\ & !\reset~input_o\) ) ) ) # ( 
-- \ctrls|outputs\(1) & ( !\ctrls|process_0~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[1]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_outputs\(1),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(1));

-- Location: IOIBUF_X32_Y0_N52
\ctrl_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(2),
	o => \ctrl_in[2]~input_o\);

-- Location: LABCELL_X60_Y7_N30
\ctrls|outputs[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(2) = ( \ctrls|outputs\(2) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[2]~input_o\))) ) ) # ( !\ctrls|outputs\(2) & ( (!\reset~input_o\ & (\ctrl_in[2]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[2]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(2),
	combout => \ctrls|outputs\(2));

-- Location: IOIBUF_X64_Y81_N1
\ctrl_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(3),
	o => \ctrl_in[3]~input_o\);

-- Location: LABCELL_X61_Y7_N57
\ctrls|outputs[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(3) = ( \ctrls|outputs\(3) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[3]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|outputs\(3) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[3]~input_o\ & !\reset~input_o\) ) ) ) # ( 
-- \ctrls|outputs\(3) & ( !\ctrls|process_0~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[3]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_outputs\(3),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(3));

-- Location: IOIBUF_X60_Y0_N52
\ctrl_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(4),
	o => \ctrl_in[4]~input_o\);

-- Location: LABCELL_X60_Y7_N39
\ctrls|outputs[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(4) = ( \ctrls|outputs\(4) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[4]~input_o\))) ) ) # ( !\ctrls|outputs\(4) & ( (!\reset~input_o\ & (\ctrl_in[4]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[4]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(4),
	combout => \ctrls|outputs\(4));

-- Location: IOIBUF_X66_Y0_N58
\ctrl_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(5),
	o => \ctrl_in[5]~input_o\);

-- Location: LABCELL_X60_Y7_N42
\ctrls|outputs[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(5) = ( \ctrls|outputs\(5) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[5]~input_o\))) ) ) # ( !\ctrls|outputs\(5) & ( (!\reset~input_o\ & (\ctrls|process_0~0_combout\ & \ctrl_in[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ctrls|ALT_INV_process_0~0_combout\,
	datad => \ALT_INV_ctrl_in[5]~input_o\,
	dataf => \ctrls|ALT_INV_outputs\(5),
	combout => \ctrls|outputs\(5));

-- Location: IOIBUF_X60_Y81_N18
\ctrl_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(6),
	o => \ctrl_in[6]~input_o\);

-- Location: LABCELL_X60_Y7_N24
\ctrls|outputs[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(6) = ( \ctrls|outputs\(6) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[6]~input_o\))) ) ) # ( !\ctrls|outputs\(6) & ( (!\reset~input_o\ & (\ctrl_in[6]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[6]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(6),
	combout => \ctrls|outputs\(6));

-- Location: IOIBUF_X30_Y0_N35
\ctrl_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(7),
	o => \ctrl_in[7]~input_o\);

-- Location: MLABCELL_X59_Y7_N39
\ctrls|outputs[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(7) = ( \ctrls|process_0~0_combout\ & ( \ctrls|outputs\(7) & ( (\ctrl_in[7]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|process_0~0_combout\ & ( \ctrls|outputs\(7) & ( !\reset~input_o\ ) ) ) # ( \ctrls|process_0~0_combout\ & ( 
-- !\ctrls|outputs\(7) & ( (\ctrl_in[7]~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000011111111000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[7]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(7),
	combout => \ctrls|outputs\(7));

-- Location: IOIBUF_X89_Y9_N38
\ctrl_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(8),
	o => \ctrl_in[8]~input_o\);

-- Location: LABCELL_X60_Y7_N21
\ctrls|outputs[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(8) = ( \ctrls|outputs\(8) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[8]~input_o\))) ) ) # ( !\ctrls|outputs\(8) & ( (!\reset~input_o\ & (\ctrl_in[8]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[8]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(8),
	combout => \ctrls|outputs\(8));

-- Location: IOIBUF_X72_Y0_N52
\ctrl_in[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(9),
	o => \ctrl_in[9]~input_o\);

-- Location: LABCELL_X61_Y7_N36
\ctrls|outputs[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(9) = ( \ctrls|outputs\(9) & ( \ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrl_in[9]~input_o\) ) ) ) # ( !\ctrls|outputs\(9) & ( \ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrl_in[9]~input_o\) ) ) ) # ( 
-- \ctrls|outputs\(9) & ( !\ctrls|process_0~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[9]~input_o\,
	datae => \ctrls|ALT_INV_outputs\(9),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(9));

-- Location: IOIBUF_X58_Y81_N75
\ctrl_in[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(10),
	o => \ctrl_in[10]~input_o\);

-- Location: LABCELL_X60_Y7_N36
\ctrls|outputs[10]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(10) = ( \ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrl_in[10]~input_o\) ) ) # ( !\ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrls|outputs\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[10]~input_o\,
	datad => \ctrls|ALT_INV_outputs\(10),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(10));

-- Location: IOIBUF_X30_Y0_N18
\ctrl_in[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(11),
	o => \ctrl_in[11]~input_o\);

-- Location: LABCELL_X60_Y7_N15
\ctrls|outputs[11]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(11) = ( \ctrls|outputs\(11) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[11]~input_o\))) ) ) # ( !\ctrls|outputs\(11) & ( (!\reset~input_o\ & (\ctrl_in[11]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[11]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(11),
	combout => \ctrls|outputs\(11));

-- Location: IOIBUF_X89_Y6_N55
\ctrl_in[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(12),
	o => \ctrl_in[12]~input_o\);

-- Location: LABCELL_X60_Y7_N33
\ctrls|outputs[12]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(12) = ( \ctrls|outputs\(12) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[12]~input_o\))) ) ) # ( !\ctrls|outputs\(12) & ( (\ctrl_in[12]~input_o\ & (!\reset~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[12]~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(12),
	combout => \ctrls|outputs\(12));

-- Location: IOIBUF_X89_Y8_N4
\ctrl_in[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(13),
	o => \ctrl_in[13]~input_o\);

-- Location: LABCELL_X60_Y7_N51
\ctrls|outputs[13]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(13) = ( \ctrls|outputs\(13) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[13]~input_o\))) ) ) # ( !\ctrls|outputs\(13) & ( (!\reset~input_o\ & (\ctrl_in[13]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[13]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(13),
	combout => \ctrls|outputs\(13));

-- Location: IOIBUF_X68_Y0_N1
\ctrl_in[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(14),
	o => \ctrl_in[14]~input_o\);

-- Location: LABCELL_X61_Y7_N9
\ctrls|outputs[14]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(14) = ( \ctrls|outputs\(14) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[14]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|outputs\(14) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[14]~input_o\ & !\reset~input_o\) ) ) ) # ( 
-- \ctrls|outputs\(14) & ( !\ctrls|process_0~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[14]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_outputs\(14),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(14));

-- Location: IOIBUF_X66_Y0_N75
\ctrl_in[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(15),
	o => \ctrl_in[15]~input_o\);

-- Location: LABCELL_X60_Y7_N48
\ctrls|outputs[15]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(15) = ( \ctrls|outputs\(15) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[15]~input_o\))) ) ) # ( !\ctrls|outputs\(15) & ( (!\reset~input_o\ & (\ctrl_in[15]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[15]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(15),
	combout => \ctrls|outputs\(15));

-- Location: IOIBUF_X58_Y0_N58
\ctrl_in[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(16),
	o => \ctrl_in[16]~input_o\);

-- Location: LABCELL_X60_Y7_N45
\ctrls|outputs[16]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(16) = ( \ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrl_in[16]~input_o\) ) ) # ( !\ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrls|outputs\(16)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[16]~input_o\,
	datad => \ctrls|ALT_INV_outputs\(16),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(16));

-- Location: IOIBUF_X30_Y0_N52
\ctrl_in[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(17),
	o => \ctrl_in[17]~input_o\);

-- Location: MLABCELL_X59_Y7_N30
\ctrls|outputs[17]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(17) = ( \ctrls|process_0~0_combout\ & ( \ctrls|outputs\(17) & ( (\ctrl_in[17]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|process_0~0_combout\ & ( \ctrls|outputs\(17) & ( !\reset~input_o\ ) ) ) # ( \ctrls|process_0~0_combout\ & ( 
-- !\ctrls|outputs\(17) & ( (\ctrl_in[17]~input_o\ & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011110000111100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ctrl_in[17]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(17),
	combout => \ctrls|outputs\(17));

-- Location: IOIBUF_X36_Y0_N1
\ctrl_in[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(18),
	o => \ctrl_in[18]~input_o\);

-- Location: MLABCELL_X59_Y7_N51
\ctrls|outputs[18]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(18) = ( \ctrls|process_0~0_combout\ & ( \ctrls|outputs\(18) & ( (!\reset~input_o\ & \ctrl_in[18]~input_o\) ) ) ) # ( !\ctrls|process_0~0_combout\ & ( \ctrls|outputs\(18) & ( !\reset~input_o\ ) ) ) # ( \ctrls|process_0~0_combout\ & ( 
-- !\ctrls|outputs\(18) & ( (!\reset~input_o\ & \ctrl_in[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[18]~input_o\,
	datae => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(18),
	combout => \ctrls|outputs\(18));

-- Location: IOIBUF_X64_Y0_N18
\ctrl_in[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(19),
	o => \ctrl_in[19]~input_o\);

-- Location: LABCELL_X61_Y7_N51
\ctrls|outputs[19]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(19) = ( !\reset~input_o\ & ( \ctrls|outputs\(19) & ( (!\ctrls|process_0~0_combout\) # (\ctrl_in[19]~input_o\) ) ) ) # ( !\reset~input_o\ & ( !\ctrls|outputs\(19) & ( (\ctrl_in[19]~input_o\ & \ctrls|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[19]~input_o\,
	datac => \ctrls|ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ctrls|ALT_INV_outputs\(19),
	combout => \ctrls|outputs\(19));

-- Location: IOIBUF_X58_Y81_N41
\ctrl_in[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(20),
	o => \ctrl_in[20]~input_o\);

-- Location: LABCELL_X60_Y7_N6
\ctrls|outputs[20]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(20) = ( \ctrls|outputs\(20) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[20]~input_o\))) ) ) # ( !\ctrls|outputs\(20) & ( (!\reset~input_o\ & (\ctrl_in[20]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[20]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(20),
	combout => \ctrls|outputs\(20));

-- Location: IOIBUF_X64_Y0_N35
\ctrl_in[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(21),
	o => \ctrl_in[21]~input_o\);

-- Location: LABCELL_X61_Y7_N33
\ctrls|outputs[21]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(21) = ( \ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrl_in[21]~input_o\) ) ) # ( !\ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrls|outputs\(21)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[21]~input_o\,
	datad => \ctrls|ALT_INV_outputs\(21),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(21));

-- Location: IOIBUF_X89_Y8_N21
\ctrl_in[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(22),
	o => \ctrl_in[22]~input_o\);

-- Location: LABCELL_X60_Y7_N0
\ctrls|outputs[22]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(22) = ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[22]~input_o\ & !\reset~input_o\) ) ) # ( !\ctrls|process_0~0_combout\ & ( (!\reset~input_o\ & \ctrls|outputs\(22)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ctrl_in[22]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datad => \ctrls|ALT_INV_outputs\(22),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(22));

-- Location: IOIBUF_X66_Y0_N92
\ctrl_in[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(23),
	o => \ctrl_in[23]~input_o\);

-- Location: LABCELL_X61_Y7_N0
\ctrls|outputs[23]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(23) = ( \ctrls|outputs\(23) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[23]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|outputs\(23) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[23]~input_o\ & !\reset~input_o\) ) ) ) # ( 
-- \ctrls|outputs\(23) & ( !\ctrls|process_0~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ctrl_in[23]~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_outputs\(23),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(23));

-- Location: IOIBUF_X58_Y0_N75
\ctrl_in[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(24),
	o => \ctrl_in[24]~input_o\);

-- Location: LABCELL_X60_Y7_N9
\ctrls|outputs[24]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(24) = ( \ctrls|outputs\(24) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[24]~input_o\))) ) ) # ( !\ctrls|outputs\(24) & ( (!\reset~input_o\ & (\ctrl_in[24]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[24]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(24),
	combout => \ctrls|outputs\(24));

-- Location: IOIBUF_X58_Y81_N58
\ctrl_in[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(25),
	o => \ctrl_in[25]~input_o\);

-- Location: MLABCELL_X59_Y7_N42
\ctrls|outputs[25]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(25) = ( \ctrls|process_0~0_combout\ & ( \ctrls|outputs\(25) & ( (!\reset~input_o\ & \ctrl_in[25]~input_o\) ) ) ) # ( !\ctrls|process_0~0_combout\ & ( \ctrls|outputs\(25) & ( !\reset~input_o\ ) ) ) # ( \ctrls|process_0~0_combout\ & ( 
-- !\ctrls|outputs\(25) & ( (!\reset~input_o\ & \ctrl_in[25]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[25]~input_o\,
	datae => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(25),
	combout => \ctrls|outputs\(25));

-- Location: IOIBUF_X72_Y0_N1
\ctrl_in[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(26),
	o => \ctrl_in[26]~input_o\);

-- Location: LABCELL_X61_Y7_N21
\ctrls|outputs[26]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(26) = ( \ctrls|outputs\(26) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[26]~input_o\ & !\reset~input_o\) ) ) ) # ( !\ctrls|outputs\(26) & ( \ctrls|process_0~0_combout\ & ( (\ctrl_in[26]~input_o\ & !\reset~input_o\) ) ) ) # ( 
-- \ctrls|outputs\(26) & ( !\ctrls|process_0~0_combout\ & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[26]~input_o\,
	datad => \ALT_INV_reset~input_o\,
	datae => \ctrls|ALT_INV_outputs\(26),
	dataf => \ctrls|ALT_INV_process_0~0_combout\,
	combout => \ctrls|outputs\(26));

-- Location: IOIBUF_X58_Y0_N92
\ctrl_in[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(27),
	o => \ctrl_in[27]~input_o\);

-- Location: LABCELL_X60_Y7_N57
\ctrls|outputs[27]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(27) = ( \ctrls|outputs\(27) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[27]~input_o\))) ) ) # ( !\ctrls|outputs\(27) & ( (\ctrl_in[27]~input_o\ & (!\reset~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ctrl_in[27]~input_o\,
	datab => \ALT_INV_reset~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(27),
	combout => \ctrls|outputs\(27));

-- Location: IOIBUF_X66_Y81_N41
\ctrl_in[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(28),
	o => \ctrl_in[28]~input_o\);

-- Location: LABCELL_X60_Y7_N27
\ctrls|outputs[28]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(28) = ( \ctrls|outputs\(28) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[28]~input_o\))) ) ) # ( !\ctrls|outputs\(28) & ( (!\reset~input_o\ & (\ctrl_in[28]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[28]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(28),
	combout => \ctrls|outputs\(28));

-- Location: IOIBUF_X58_Y0_N41
\ctrl_in[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(29),
	o => \ctrl_in[29]~input_o\);

-- Location: LABCELL_X60_Y7_N18
\ctrls|outputs[29]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(29) = ( \ctrls|outputs\(29) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[29]~input_o\))) ) ) # ( !\ctrls|outputs\(29) & ( (!\reset~input_o\ & (\ctrl_in[29]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[29]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(29),
	combout => \ctrls|outputs\(29));

-- Location: IOIBUF_X70_Y0_N35
\ctrl_in[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(30),
	o => \ctrl_in[30]~input_o\);

-- Location: LABCELL_X61_Y7_N12
\ctrls|outputs[30]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(30) = ( !\reset~input_o\ & ( \ctrls|outputs\(30) & ( (!\ctrls|process_0~0_combout\) # (\ctrl_in[30]~input_o\) ) ) ) # ( !\reset~input_o\ & ( !\ctrls|outputs\(30) & ( (\ctrl_in[30]~input_o\ & \ctrls|process_0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000011111111001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ctrl_in[30]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	datae => \ALT_INV_reset~input_o\,
	dataf => \ctrls|ALT_INV_outputs\(30),
	combout => \ctrls|outputs\(30));

-- Location: IOIBUF_X89_Y9_N4
\ctrl_in[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_in(31),
	o => \ctrl_in[31]~input_o\);

-- Location: LABCELL_X60_Y7_N12
\ctrls|outputs[31]\ : cyclonev_lcell_comb
-- Equation(s):
-- \ctrls|outputs\(31) = ( \ctrls|outputs\(31) & ( (!\reset~input_o\ & ((!\ctrls|process_0~0_combout\) # (\ctrl_in[31]~input_o\))) ) ) # ( !\ctrls|outputs\(31) & ( (!\reset~input_o\ & (\ctrl_in[31]~input_o\ & \ctrls|process_0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \ALT_INV_ctrl_in[31]~input_o\,
	datad => \ctrls|ALT_INV_process_0~0_combout\,
	dataf => \ctrls|ALT_INV_outputs\(31),
	combout => \ctrls|outputs\(31));

-- Location: LABCELL_X57_Y3_N6
\low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\read_next~input_o\) # (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_next~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: IOIBUF_X52_Y0_N1
\lo_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(0),
	o => \lo_in[0]~input_o\);

-- Location: MLABCELL_X59_Y2_N0
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: FF_X59_Y2_N2
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: MLABCELL_X59_Y2_N3
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(1),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X59_Y2_N5
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: MLABCELL_X59_Y2_N6
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(2),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X59_Y2_N8
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: MLABCELL_X59_Y2_N9
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(3),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X59_Y2_N11
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: MLABCELL_X59_Y2_N12
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(4),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X59_Y2_N14
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: MLABCELL_X59_Y2_N15
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(5),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X59_Y2_N17
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: MLABCELL_X59_Y2_N18
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(6),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\);

-- Location: FF_X59_Y2_N20
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: MLABCELL_X59_Y2_N21
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(7),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\);

-- Location: FF_X59_Y2_N23
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7));

-- Location: MLABCELL_X59_Y2_N24
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(8),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\);

-- Location: FF_X59_Y2_N26
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8));

-- Location: MLABCELL_X59_Y2_N27
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(9),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\);

-- Location: FF_X59_Y2_N29
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9));

-- Location: MLABCELL_X59_Y2_N30
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(10),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\);

-- Location: FF_X59_Y2_N32
\low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10));

-- Location: LABCELL_X57_Y2_N0
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: FF_X57_Y2_N2
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

-- Location: LABCELL_X57_Y2_N3
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(1),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: FF_X57_Y2_N5
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1));

-- Location: LABCELL_X57_Y2_N6
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(2),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: FF_X57_Y2_N8
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2));

-- Location: LABCELL_X57_Y2_N9
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(3),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\);

-- Location: FF_X57_Y2_N11
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3));

-- Location: LABCELL_X57_Y2_N12
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(4),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\);

-- Location: FF_X57_Y2_N14
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4));

-- Location: LABCELL_X57_Y2_N15
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(5),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\);

-- Location: FF_X57_Y2_N17
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5));

-- Location: LABCELL_X57_Y2_N18
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(6),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\);

-- Location: FF_X57_Y2_N20
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6));

-- Location: LABCELL_X57_Y2_N21
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(7),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\);

-- Location: FF_X57_Y2_N23
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7));

-- Location: LABCELL_X57_Y2_N24
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(8),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\);

-- Location: FF_X57_Y2_N26
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8));

-- Location: LABCELL_X57_Y2_N27
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ ))
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ = CARRY(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(9),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\,
	cout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\);

-- Location: FF_X57_Y2_N29
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9));

-- Location: LABCELL_X57_Y2_N30
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\ = SUM(( \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) ) + ( GND ) + ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(10),
	cin => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\,
	sumout => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\);

-- Location: FF_X57_Y2_N32
\low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \low_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10));

-- Location: IOIBUF_X54_Y0_N35
\lo_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(1),
	o => \lo_in[1]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\lo_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(2),
	o => \lo_in[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\lo_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(3),
	o => \lo_in[3]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\lo_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(4),
	o => \lo_in[4]~input_o\);

-- Location: M10K_X58_Y2_N0
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "priority_fifos:low_pri|scfifo:scfifo_component|scfifo_4k91:auto_generated|a_dpfifo_bq91:dpfifo|altsyncram_21t1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 5,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X40_Y0_N35
\hi_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(0),
	o => \hi_in[0]~input_o\);

-- Location: LABCELL_X60_Y3_N0
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: FF_X60_Y3_N2
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LABCELL_X60_Y3_N3
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(1),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X60_Y3_N5
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LABCELL_X60_Y3_N6
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(2),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X60_Y3_N8
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LABCELL_X60_Y3_N9
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(3),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X60_Y3_N11
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LABCELL_X60_Y3_N12
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(4),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X60_Y3_N14
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LABCELL_X60_Y3_N15
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(5),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X60_Y3_N17
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LABCELL_X60_Y3_N18
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(6),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\);

-- Location: FF_X60_Y3_N20
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: LABCELL_X60_Y3_N21
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(7),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\);

-- Location: FF_X60_Y3_N23
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7));

-- Location: LABCELL_X60_Y3_N24
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(8),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\);

-- Location: FF_X60_Y3_N26
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8));

-- Location: LABCELL_X60_Y3_N27
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(9),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\);

-- Location: FF_X60_Y3_N29
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9));

-- Location: LABCELL_X60_Y3_N30
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|ALT_INV_counter_reg_bit\(10),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\);

-- Location: FF_X60_Y3_N32
\high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10));

-- Location: LABCELL_X57_Y4_N0
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: FF_X57_Y4_N2
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

-- Location: LABCELL_X57_Y4_N3
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(1),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: FF_X57_Y4_N5
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1));

-- Location: LABCELL_X57_Y4_N6
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(2),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: FF_X57_Y4_N8
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2));

-- Location: LABCELL_X57_Y4_N9
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(3),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\);

-- Location: FF_X57_Y4_N11
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3));

-- Location: LABCELL_X57_Y4_N12
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(4),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\);

-- Location: FF_X57_Y4_N14
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4));

-- Location: LABCELL_X57_Y4_N15
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(5),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\);

-- Location: FF_X57_Y4_N17
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5));

-- Location: LABCELL_X57_Y4_N18
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(6),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\);

-- Location: FF_X57_Y4_N20
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6));

-- Location: LABCELL_X57_Y4_N21
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(7),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\);

-- Location: FF_X57_Y4_N23
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7));

-- Location: LABCELL_X57_Y4_N24
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(8),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\);

-- Location: FF_X57_Y4_N26
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8));

-- Location: LABCELL_X57_Y4_N27
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ ))
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ = CARRY(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(9),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\,
	cout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\);

-- Location: FF_X57_Y4_N29
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9));

-- Location: LABCELL_X57_Y4_N30
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10\ : cyclonev_lcell_comb
-- Equation(s):
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\ = SUM(( \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) ) + ( GND ) + ( 
-- \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|ALT_INV_counter_reg_bit\(10),
	cin => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\,
	sumout => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\);

-- Location: FF_X57_Y4_N32
\high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~sumout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \hi_read~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \high_pri|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10));

-- Location: IOIBUF_X36_Y0_N35
\hi_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(1),
	o => \hi_in[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\hi_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(2),
	o => \hi_in[2]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\hi_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(3),
	o => \hi_in[3]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\hi_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(4),
	o => \hi_in[4]~input_o\);

-- Location: M10K_X58_Y3_N0
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "priority_fifos:high_pri|scfifo:scfifo_component|scfifo_4k91:auto_generated|a_dpfifo_bq91:dpfifo|altsyncram_21t1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 5,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \hi_read~combout\,
	portadatain => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LABCELL_X57_Y3_N18
\out_byte~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~0_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0) & ( ((\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & \read_next~input_o\)) # 
-- (\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0)) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0) & ( (\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0) & 
-- ((!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) # (!\read_next~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101000001111010111110000111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(0),
	datad => \ALT_INV_read_next~input_o\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(0),
	combout => \out_byte~0_combout\);

-- Location: LABCELL_X57_Y3_N0
\out_byte~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~1_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\read_next~input_o\ & ((\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1)))) # (\read_next~input_o\ & 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1))) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(1),
	datac => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(1),
	datad => \ALT_INV_read_next~input_o\,
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \out_byte~1_combout\);

-- Location: LABCELL_X57_Y3_N9
\out_byte~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~2_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\read_next~input_o\ & ((\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2)))) # (\read_next~input_o\ & 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2))) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_next~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(2),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(2),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \out_byte~2_combout\);

-- Location: LABCELL_X57_Y3_N36
\out_byte~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~3_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\read_next~input_o\ & ((\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3)))) # (\read_next~input_o\ & 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3))) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_next~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(3),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(3),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \out_byte~3_combout\);

-- Location: LABCELL_X57_Y3_N39
\out_byte~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~4_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( (!\read_next~input_o\ & ((\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4)))) # (\read_next~input_o\ & 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4))) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_next~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(4),
	datad => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(4),
	dataf => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	combout => \out_byte~4_combout\);

-- Location: IOIBUF_X38_Y0_N1
\hi_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(5),
	o => \hi_in[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\hi_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(6),
	o => \hi_in[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\hi_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hi_in(7),
	o => \hi_in[7]~input_o\);

-- Location: M10K_X58_Y4_N0
\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "priority_fifos:high_pri|scfifo:scfifo_component|scfifo_4k91:auto_generated|a_dpfifo_bq91:dpfifo|altsyncram_21t1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 5,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => \high_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \hi_read~combout\,
	portadatain => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X54_Y0_N18
\lo_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(5),
	o => \lo_in[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\lo_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(6),
	o => \lo_in[6]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\lo_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lo_in(7),
	o => \lo_in[7]~input_o\);

-- Location: M10K_X58_Y1_N0
\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "priority_fifos:low_pri|scfifo:scfifo_component|scfifo_4k91:auto_generated|a_dpfifo_bq91:dpfifo|altsyncram_21t1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 11,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 2047,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 11,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 5,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 2047,
	port_b_logical_ram_depth => 2048,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \clk~inputCLKENA0_outclk\,
	clk1 => \clk~inputCLKENA0_outclk\,
	ena0 => \low_pri|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \low_pri|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: LABCELL_X55_Y3_N0
\out_byte~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~5_combout\ = ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5) & ( \read_next~input_o\ & ( (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) # 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5)) ) ) ) # ( !\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5) & ( \read_next~input_o\ & ( (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & 
-- \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5)) ) ) ) # ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5) & ( !\read_next~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(5),
	datae => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(5),
	dataf => \ALT_INV_read_next~input_o\,
	combout => \out_byte~5_combout\);

-- Location: LABCELL_X55_Y3_N21
\out_byte~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~6_combout\ = ( \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) & ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) ) ) # ( !\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) & ( 
-- \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) & ( (!\read_next~input_o\) # (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) ) ) ) # ( \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) & ( 
-- !\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) & ( (\read_next~input_o\ & \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001111111100111111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_read_next~input_o\,
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	datae => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(6),
	dataf => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(6),
	combout => \out_byte~6_combout\);

-- Location: LABCELL_X55_Y3_N51
\out_byte~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \out_byte~7_combout\ = ( \read_next~input_o\ & ( (!\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & ((\low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7)))) # 
-- (\high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & (\high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7))) ) ) # ( !\read_next~input_o\ & ( \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \high_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(7),
	datab => \low_pri|scfifo_component|auto_generated|dpfifo|FIFOram|ALT_INV_q_b\(7),
	datac => \high_pri|scfifo_component|auto_generated|dpfifo|fifo_state|ALT_INV_b_non_empty~q\,
	dataf => \ALT_INV_read_next~input_o\,
	combout => \out_byte~7_combout\);

-- Location: LABCELL_X88_Y63_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


