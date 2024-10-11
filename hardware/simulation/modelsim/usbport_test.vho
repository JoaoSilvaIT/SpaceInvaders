-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "06/26/2024 16:16:42"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	space_invaders IS
    PORT (
	altera_reserved_tms : IN std_logic := '0';
	altera_reserved_tck : IN std_logic := '0';
	altera_reserved_tdi : IN std_logic := '0';
	altera_reserved_tdo : OUT std_logic;
	CLK : IN std_logic;
	clear : IN std_logic;
	rows : IN std_logic_vector(3 DOWNTO 0);
	coin : IN std_logic;
	maintenance : IN std_logic;
	columns : OUT std_logic_vector(2 DOWNTO 0);
	lcdEnable : OUT std_logic;
	lcdData : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0);
	HEX4 : OUT std_logic_vector(7 DOWNTO 0);
	HEX5 : OUT std_logic_vector(7 DOWNTO 0);
	accept_coin : OUT std_logic
	);
END space_invaders;

-- Design Ports Information
-- columns[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columns[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- columns[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdEnable	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[4]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[5]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[7]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcdData[8]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- accept_coin	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- coin	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- maintenance	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rows[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- altera_reserved_tms	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tck	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdi	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- altera_reserved_tdo	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF space_invaders IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_altera_reserved_tms : std_logic;
SIGNAL ww_altera_reserved_tck : std_logic;
SIGNAL ww_altera_reserved_tdi : std_logic;
SIGNAL ww_altera_reserved_tdo : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_rows : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_coin : std_logic;
SIGNAL ww_maintenance : std_logic;
SIGNAL ww_columns : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_lcdEnable : std_logic;
SIGNAL ww_lcdData : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_accept_coin : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\ : std_logic;
SIGNAL \auto_hub|~GND~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~27\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~28_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~29\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~30_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~31\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~32_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~33\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~34_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~35\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~36_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~37\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~38_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~39\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~40_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~41\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~42_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~43\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~44_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~45\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~46_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~47\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~48_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~49\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~50_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~51\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~52_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~53\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~54_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~7_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~6_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~5_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~55\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~56_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~57\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~58_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~59\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~60_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~61\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~62_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~8_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count[0]~5_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~1\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~3\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~4_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~5\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~6_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~7\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~8_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~9\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~10_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~11\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~12_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~13\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~14_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~15\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~16_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~17\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~18_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count~3_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~19\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~20_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~21\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~22_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~23\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~24_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count~4_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~25\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Add0~26_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~3_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|tmp~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|tmp~q\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U1|R~combout\ : std_logic;
SIGNAL \rows[3]~input_o\ : std_logic;
SIGNAL \rows[1]~input_o\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0_combout\ : std_logic;
SIGNAL \rows[0]~input_o\ : std_logic;
SIGNAL \rows[2]~input_o\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|R~combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U3|R~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \altera_reserved_tms~input_o\ : std_logic;
SIGNAL \altera_reserved_tck~input_o\ : std_logic;
SIGNAL \altera_reserved_tdi~input_o\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|Cout~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~37_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~38_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~40_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~41_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_reg|U1|Q~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDIUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\ : std_logic;
SIGNAL \altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\ : std_logic;
SIGNAL \~QIC_CREATED_GND~I_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~34_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~35_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~33_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~36_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_reg|U0|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\ : std_logic;
SIGNAL \maintenance~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\ : std_logic;
SIGNAL \coin~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U3|R~combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~48_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~49_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~50_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~51_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_reg|U3|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~43_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~44_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~45_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ram|ram~46_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_reg|U2|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAP\ : std_logic;
SIGNAL \altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|Cout~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|R~2_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~1_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ : std_logic;
SIGNAL \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~0_combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U2|R~combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U1|R~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_comparator|TC~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~0_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|reset~combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~4_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~5_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl_outclk\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U2|R~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U3|R~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~1_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_dispatcher|CurrentState~q\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_dispatcher|wrl~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[8]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[7]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~0_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U2|R~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_comparator|TC~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~0_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|reset~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~2_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~1_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl_outclk\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U1|R~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U3|R~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~3_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_dispatcher|CurrentState~q\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_dispatcher|wrd~combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\ : std_logic;
SIGNAL \U_score_display|clear_reg|q~0_combout\ : std_logic;
SIGNAL \U_score_display|clear_reg|q~1_combout\ : std_logic;
SIGNAL \U_score_display|clear_reg|q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|decoder|dout[6]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:out_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:out_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:out_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:in_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:out_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|decoder|dout[1]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:out_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U3|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:out_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:out_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:in_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:out_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|decoder|dout[2]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:out_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U3|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:out_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:out_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:in_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:out_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:in_reg|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|decoder|dout[3]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:in_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:out_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:in_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:out_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:in_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:out_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:in_reg|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:in_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:out_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|decoder|dout[4]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:out_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:out_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U3|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:out_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:in_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:out_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U2|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|decoder|dout[5]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:out_reg|U2|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U1|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:out_reg|U1|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U3|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:out_reg|U3|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U0|Q~feeder_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:in_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:out_reg|U0|Q~q\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ : std_logic;
SIGNAL \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\ : std_logic;
SIGNAL \altera_internal_jtag~TDO\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_score_display|decoder|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_score_serial_controller|U_score_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_counter|ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_clk_div|ALT_INV_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clear~input_o\ : std_logic;
SIGNAL \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ : std_logic;
SIGNAL \ALT_INV_altera_internal_jtag~TMSUTAP\ : std_logic;
SIGNAL \U_score_serial_controller|U_score_serial_receiver|ALT_INV_reset~combout\ : std_logic;
SIGNAL \U_lcd_serial_controller|U_lcd_serial_receiver|ALT_INV_reset~combout\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_control|ALT_INV_CurrentState.state_bit_0~q\ : std_logic;
SIGNAL \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|ALT_INV_A\ : std_logic_vector(2 DOWNTO 1);

BEGIN

ww_altera_reserved_tms <= altera_reserved_tms;
ww_altera_reserved_tck <= altera_reserved_tck;
ww_altera_reserved_tdi <= altera_reserved_tdi;
altera_reserved_tdo <= ww_altera_reserved_tdo;
ww_CLK <= CLK;
ww_clear <= clear;
ww_rows <= rows;
ww_coin <= coin;
ww_maintenance <= maintenance;
columns <= ww_columns;
lcdEnable <= ww_lcdEnable;
lcdData <= ww_lcdData;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
accept_coin <= ww_accept_coin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_key_board_reader|U_key_decode|U_clk_div|tmp~q\);

\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & 
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

\U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_score_serial_controller|U_score_dispatcher|wrd~combout\);

\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\);

\U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~combout\);

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \altera_internal_jtag~TCKUTAP\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~combout\);

\U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~combout\);
\U_score_serial_controller|U_score_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\ <= NOT \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl_outclk\;
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\ <= NOT \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl_outclk\;
\ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\ <= NOT \altera_internal_jtag~TCKUTAPclkctrl_outclk\;
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|ALT_INV_reset~clkctrl_outclk\ <= NOT \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl_outclk\;
\U_key_board_reader|U_key_decode|U_clk_div|ALT_INV_tmp~clkctrl_outclk\ <= NOT \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\;
\ALT_INV_clear~input_o\ <= NOT \clear~input_o\;
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\ <= NOT \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\;
\ALT_INV_altera_internal_jtag~TMSUTAP\ <= NOT \altera_internal_jtag~TMSUTAP\;
\U_score_serial_controller|U_score_serial_receiver|ALT_INV_reset~combout\ <= NOT \U_score_serial_controller|U_score_serial_receiver|reset~combout\;
\U_lcd_serial_controller|U_lcd_serial_receiver|ALT_INV_reset~combout\ <= NOT \U_lcd_serial_controller|U_lcd_serial_receiver|reset~combout\;
\U_key_board_reader|U_key_decode|U_key_control|ALT_INV_CurrentState.state_bit_0~q\ <= NOT \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\;
\U_key_board_reader|U_key_decode|U_key_scan|U_decoder|ALT_INV_A\(2) <= NOT \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(2);
\U_key_board_reader|U_key_decode|U_key_scan|U_decoder|ALT_INV_A\(1) <= NOT \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(1);

-- Location: FF_X43_Y34_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3));

-- Location: LCCOMB_X40_Y34_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TDIUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\);

-- Location: LCCOMB_X40_Y34_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~0_combout\,
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\);

-- Location: LCCOMB_X40_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\);

-- Location: LCCOMB_X40_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\);

-- Location: LCCOMB_X43_Y34_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~2_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|splitter_nodes_receive_0\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena~3_combout\);

-- Location: LCCOMB_X44_Y45_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X42_Y35_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\);

-- Location: LCCOMB_X43_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\);

-- Location: IOOBUF_X38_Y0_N9
\columns[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(0),
	devoe => ww_devoe,
	o => ww_columns(0));

-- Location: IOOBUF_X38_Y0_N16
\columns[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|ALT_INV_A\(1),
	devoe => ww_devoe,
	o => ww_columns(1));

-- Location: IOOBUF_X34_Y0_N23
\columns[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|ALT_INV_A\(2),
	devoe => ww_devoe,
	o => ww_columns(2));

-- Location: IOOBUF_X14_Y0_N9
\lcdEnable~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_dispatcher|wrl~combout\,
	devoe => ww_devoe,
	o => ww_lcdEnable);

-- Location: IOOBUF_X24_Y0_N2
\lcdData[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(0),
	devoe => ww_devoe,
	o => ww_lcdData(0));

-- Location: IOOBUF_X54_Y0_N30
\lcdData[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(1),
	devoe => ww_devoe,
	o => ww_lcdData(1));

-- Location: IOOBUF_X46_Y0_N2
\lcdData[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(2),
	devoe => ww_devoe,
	o => ww_lcdData(2));

-- Location: IOOBUF_X40_Y0_N16
\lcdData[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(3),
	devoe => ww_devoe,
	o => ww_lcdData(3));

-- Location: IOOBUF_X36_Y0_N2
\lcdData[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(4),
	devoe => ww_devoe,
	o => ww_lcdData(4));

-- Location: IOOBUF_X36_Y0_N9
\lcdData[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(5),
	devoe => ww_devoe,
	o => ww_lcdData(5));

-- Location: IOOBUF_X34_Y0_N2
\lcdData[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(6),
	devoe => ww_devoe,
	o => ww_lcdData(6));

-- Location: IOOBUF_X20_Y0_N2
\lcdData[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(7),
	devoe => ww_devoe,
	o => ww_lcdData(7));

-- Location: IOOBUF_X20_Y0_N9
\lcdData[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(8),
	devoe => ww_devoe,
	o => ww_lcdData(8));

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(7));

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(7));

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~9_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~11_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~13_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(7));

-- Location: IOOBUF_X46_Y54_N2
\accept_coin~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\,
	devoe => ww_devoe,
	o => ww_accept_coin);

-- Location: IOOBUF_X0_Y28_N23
\altera_reserved_tdo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \altera_internal_jtag~TDO\,
	devoe => ww_devoe,
	o => ww_altera_reserved_tdo);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y32_N26
\U_key_board_reader|U_key_decode|U_clk_div|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~26_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(13) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~25\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(13) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~25\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~27\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~25\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(13),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~25\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~26_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~27\);

-- Location: LCCOMB_X26_Y32_N28
\U_key_board_reader|U_key_decode|U_clk_div|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~28_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(14) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~27\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(14) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~27\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~29\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(14) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(14),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~27\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~28_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~29\);

-- Location: FF_X26_Y32_N29
\U_key_board_reader|U_key_decode|U_clk_div|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(14));

-- Location: LCCOMB_X26_Y32_N30
\U_key_board_reader|U_key_decode|U_clk_div|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~30_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(15) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~29\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(15) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~29\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~31\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~29\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(15),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~29\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~30_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~31\);

-- Location: FF_X26_Y32_N31
\U_key_board_reader|U_key_decode|U_clk_div|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(15));

-- Location: LCCOMB_X26_Y31_N0
\U_key_board_reader|U_key_decode|U_clk_div|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~32_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(16) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~31\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(16) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~31\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~33\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(16) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(16),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~31\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~32_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~33\);

-- Location: FF_X26_Y31_N1
\U_key_board_reader|U_key_decode|U_clk_div|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(16));

-- Location: LCCOMB_X26_Y31_N2
\U_key_board_reader|U_key_decode|U_clk_div|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~34_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(17) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~33\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(17) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~33\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~35\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~33\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(17),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~33\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~34_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~35\);

-- Location: FF_X26_Y31_N3
\U_key_board_reader|U_key_decode|U_clk_div|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(17));

-- Location: LCCOMB_X26_Y31_N4
\U_key_board_reader|U_key_decode|U_clk_div|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~36_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(18) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~35\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(18) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~35\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~37\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(18) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(18),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~35\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~36_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~37\);

-- Location: FF_X26_Y31_N5
\U_key_board_reader|U_key_decode|U_clk_div|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(18));

-- Location: LCCOMB_X26_Y31_N6
\U_key_board_reader|U_key_decode|U_clk_div|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~38_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(19) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~37\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(19) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~37\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~39\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~37\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(19),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~37\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~38_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~39\);

-- Location: FF_X26_Y31_N7
\U_key_board_reader|U_key_decode|U_clk_div|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(19));

-- Location: LCCOMB_X26_Y31_N8
\U_key_board_reader|U_key_decode|U_clk_div|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~40_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(20) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~39\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(20) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~39\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~41\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(20) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(20),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~39\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~40_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~41\);

-- Location: FF_X26_Y31_N9
\U_key_board_reader|U_key_decode|U_clk_div|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(20));

-- Location: LCCOMB_X26_Y31_N10
\U_key_board_reader|U_key_decode|U_clk_div|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~42_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(21) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~41\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(21) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~41\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~43\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~41\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(21),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~41\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~42_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~43\);

-- Location: FF_X26_Y31_N11
\U_key_board_reader|U_key_decode|U_clk_div|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(21));

-- Location: LCCOMB_X26_Y31_N12
\U_key_board_reader|U_key_decode|U_clk_div|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~44_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(22) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~43\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(22) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~43\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~45\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(22) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(22),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~43\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~44_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~45\);

-- Location: FF_X26_Y31_N13
\U_key_board_reader|U_key_decode|U_clk_div|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(22));

-- Location: LCCOMB_X26_Y31_N14
\U_key_board_reader|U_key_decode|U_clk_div|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~46_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(23) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~45\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(23) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~45\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~47\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~45\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(23),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~45\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~46_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~47\);

-- Location: FF_X26_Y31_N15
\U_key_board_reader|U_key_decode|U_clk_div|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(23));

-- Location: LCCOMB_X26_Y31_N16
\U_key_board_reader|U_key_decode|U_clk_div|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~48_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(24) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~47\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(24) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~47\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~49\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(24) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(24),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~47\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~48_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~49\);

-- Location: FF_X26_Y31_N17
\U_key_board_reader|U_key_decode|U_clk_div|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(24));

-- Location: LCCOMB_X26_Y31_N18
\U_key_board_reader|U_key_decode|U_clk_div|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~50_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(25) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~49\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(25) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~49\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~51\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~49\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(25),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~49\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~50_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~51\);

-- Location: FF_X26_Y31_N19
\U_key_board_reader|U_key_decode|U_clk_div|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(25));

-- Location: LCCOMB_X26_Y31_N20
\U_key_board_reader|U_key_decode|U_clk_div|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~52_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(26) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~51\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(26) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~51\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~53\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(26) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(26),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~51\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~52_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~53\);

-- Location: FF_X26_Y31_N21
\U_key_board_reader|U_key_decode|U_clk_div|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(26));

-- Location: LCCOMB_X26_Y31_N22
\U_key_board_reader|U_key_decode|U_clk_div|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~54_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(27) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~53\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(27) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~53\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~55\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~53\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(27),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~53\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~54_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~55\);

-- Location: FF_X26_Y31_N23
\U_key_board_reader|U_key_decode|U_clk_div|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(27));

-- Location: LCCOMB_X25_Y32_N10
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~7_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(25) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(24) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(26) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(25),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(24),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(26),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(27),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y32_N0
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~6_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(21) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(20) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(23) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(21),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(20),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(23),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(22),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y32_N22
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~5_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(18) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(16) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(17) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(18),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(16),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(17),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(19),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y31_N24
\U_key_board_reader|U_key_decode|U_clk_div|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~56_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(28) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~55\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(28) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~55\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~57\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(28) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(28),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~55\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~56_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~57\);

-- Location: FF_X26_Y31_N25
\U_key_board_reader|U_key_decode|U_clk_div|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(28));

-- Location: LCCOMB_X26_Y31_N26
\U_key_board_reader|U_key_decode|U_clk_div|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~58_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(29) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~57\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(29) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~57\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~59\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~57\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(29),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~57\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~58_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~59\);

-- Location: FF_X26_Y31_N27
\U_key_board_reader|U_key_decode|U_clk_div|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(29));

-- Location: LCCOMB_X26_Y31_N28
\U_key_board_reader|U_key_decode|U_clk_div|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~60_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(30) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~59\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(30) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~59\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~61\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(30) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(30),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~59\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~60_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~61\);

-- Location: FF_X26_Y31_N29
\U_key_board_reader|U_key_decode|U_clk_div|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(30));

-- Location: LCCOMB_X26_Y31_N30
\U_key_board_reader|U_key_decode|U_clk_div|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~62_combout\ = \U_key_board_reader|U_key_decode|U_clk_div|count\(31) $ (\U_key_board_reader|U_key_decode|U_clk_div|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(31),
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~61\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~62_combout\);

-- Location: FF_X26_Y31_N31
\U_key_board_reader|U_key_decode|U_clk_div|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(31));

-- Location: LCCOMB_X25_Y32_N20
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~8_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(30) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(29) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(28) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(30),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(29),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(28),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(31),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~8_combout\);

-- Location: LCCOMB_X25_Y32_N14
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Equal0~7_combout\ & (\U_key_board_reader|U_key_decode|U_clk_div|Equal0~6_combout\ & (\U_key_board_reader|U_key_decode|U_clk_div|Equal0~5_combout\ & 
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~7_combout\,
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~6_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~5_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~8_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\);

-- Location: LCCOMB_X26_Y32_N0
\U_key_board_reader|U_key_decode|U_clk_div|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~0_combout\ = \U_key_board_reader|U_key_decode|U_clk_div|count\(0) $ (GND)
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~1\ = CARRY(!\U_key_board_reader|U_key_decode|U_clk_div|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(0),
	datad => VCC,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~0_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~1\);

-- Location: LCCOMB_X25_Y31_N0
\U_key_board_reader|U_key_decode|U_clk_div|count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|count[0]~5_combout\ = !\U_key_board_reader|U_key_decode|U_clk_div|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Add0~0_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|count[0]~5_combout\);

-- Location: FF_X25_Y31_N1
\U_key_board_reader|U_key_decode|U_clk_div|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|count[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(0));

-- Location: LCCOMB_X26_Y32_N2
\U_key_board_reader|U_key_decode|U_clk_div|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~2_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(1) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~1\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(1) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~1\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~3\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~1\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(1),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~1\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~2_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~3\);

-- Location: FF_X26_Y32_N3
\U_key_board_reader|U_key_decode|U_clk_div|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(1));

-- Location: LCCOMB_X26_Y32_N4
\U_key_board_reader|U_key_decode|U_clk_div|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~4_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(2) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~3\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(2) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~3\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~5\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(2) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(2),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~3\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~4_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~5\);

-- Location: FF_X26_Y32_N5
\U_key_board_reader|U_key_decode|U_clk_div|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(2));

-- Location: LCCOMB_X26_Y32_N6
\U_key_board_reader|U_key_decode|U_clk_div|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~6_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(3) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~5\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(3) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~5\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~7\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~5\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(3),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~5\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~6_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~7\);

-- Location: LCCOMB_X25_Y32_N26
\U_key_board_reader|U_key_decode|U_clk_div|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|count~0_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Add0~6_combout\ & ((!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\) # 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Add0~6_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|count~0_combout\);

-- Location: FF_X25_Y32_N27
\U_key_board_reader|U_key_decode|U_clk_div|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(3));

-- Location: LCCOMB_X26_Y32_N8
\U_key_board_reader|U_key_decode|U_clk_div|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~8_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(4) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~7\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(4) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~7\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~9\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(4) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(4),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~7\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~8_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~9\);

-- Location: FF_X26_Y32_N9
\U_key_board_reader|U_key_decode|U_clk_div|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(4));

-- Location: LCCOMB_X26_Y32_N10
\U_key_board_reader|U_key_decode|U_clk_div|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~10_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(5) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~9\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(5) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~9\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~11\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~9\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(5),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~9\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~10_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~11\);

-- Location: FF_X26_Y32_N11
\U_key_board_reader|U_key_decode|U_clk_div|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(5));

-- Location: LCCOMB_X26_Y32_N12
\U_key_board_reader|U_key_decode|U_clk_div|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~12_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(6) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~11\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(6) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~11\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~13\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(6) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(6),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~11\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~12_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~13\);

-- Location: FF_X26_Y32_N13
\U_key_board_reader|U_key_decode|U_clk_div|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(6));

-- Location: LCCOMB_X26_Y32_N14
\U_key_board_reader|U_key_decode|U_clk_div|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~14_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(7) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~13\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(7) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~13\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~15\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~13\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(7),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~13\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~14_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~15\);

-- Location: LCCOMB_X25_Y32_N6
\U_key_board_reader|U_key_decode|U_clk_div|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|count~1_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Add0~14_combout\ & ((!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\) # 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Add0~14_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|count~1_combout\);

-- Location: FF_X25_Y32_N7
\U_key_board_reader|U_key_decode|U_clk_div|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(7));

-- Location: LCCOMB_X26_Y32_N16
\U_key_board_reader|U_key_decode|U_clk_div|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~16_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(8) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~15\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(8) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~15\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~17\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(8) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(8),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~15\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~16_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~17\);

-- Location: LCCOMB_X25_Y32_N18
\U_key_board_reader|U_key_decode|U_clk_div|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|count~2_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Add0~16_combout\ & ((!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\) # 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Add0~16_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|count~2_combout\);

-- Location: FF_X25_Y32_N19
\U_key_board_reader|U_key_decode|U_clk_div|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(8));

-- Location: LCCOMB_X26_Y32_N18
\U_key_board_reader|U_key_decode|U_clk_div|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~18_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(9) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~17\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(9) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~17\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~19\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~17\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(9),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~17\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~18_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~19\);

-- Location: LCCOMB_X25_Y32_N12
\U_key_board_reader|U_key_decode|U_clk_div|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|count~3_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Add0~18_combout\ & ((!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\) # 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Add0~18_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|count~3_combout\);

-- Location: FF_X25_Y32_N13
\U_key_board_reader|U_key_decode|U_clk_div|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(9));

-- Location: LCCOMB_X26_Y32_N20
\U_key_board_reader|U_key_decode|U_clk_div|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~20_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(10) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~19\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(10) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~19\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~21\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(10) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(10),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~19\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~20_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~21\);

-- Location: FF_X26_Y32_N21
\U_key_board_reader|U_key_decode|U_clk_div|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(10));

-- Location: LCCOMB_X26_Y32_N22
\U_key_board_reader|U_key_decode|U_clk_div|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~22_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(11) & (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~21\)) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(11) & 
-- ((\U_key_board_reader|U_key_decode|U_clk_div|Add0~21\) # (GND)))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~23\ = CARRY((!\U_key_board_reader|U_key_decode|U_clk_div|Add0~21\) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(11),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~21\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~22_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~23\);

-- Location: FF_X26_Y32_N23
\U_key_board_reader|U_key_decode|U_clk_div|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(11));

-- Location: LCCOMB_X26_Y32_N24
\U_key_board_reader|U_key_decode|U_clk_div|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~24_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(12) & (\U_key_board_reader|U_key_decode|U_clk_div|Add0~23\ $ (GND))) # (!\U_key_board_reader|U_key_decode|U_clk_div|count\(12) & 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Add0~23\ & VCC))
-- \U_key_board_reader|U_key_decode|U_clk_div|Add0~25\ = CARRY((\U_key_board_reader|U_key_decode|U_clk_div|count\(12) & !\U_key_board_reader|U_key_decode|U_clk_div|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(12),
	datad => VCC,
	cin => \U_key_board_reader|U_key_decode|U_clk_div|Add0~23\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~24_combout\,
	cout => \U_key_board_reader|U_key_decode|U_clk_div|Add0~25\);

-- Location: LCCOMB_X25_Y32_N16
\U_key_board_reader|U_key_decode|U_clk_div|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|count~4_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Add0~24_combout\ & ((!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\) # 
-- (!\U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Add0~24_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|count~4_combout\);

-- Location: FF_X25_Y32_N17
\U_key_board_reader|U_key_decode|U_clk_div|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(12));

-- Location: FF_X26_Y32_N27
\U_key_board_reader|U_key_decode|U_clk_div|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|count\(13));

-- Location: LCCOMB_X25_Y32_N2
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~3_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(13) & (\U_key_board_reader|U_key_decode|U_clk_div|count\(12) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(15) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(13),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(12),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(15),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(14),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y32_N28
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~0_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(1) & (\U_key_board_reader|U_key_decode|U_clk_div|count\(0) & (\U_key_board_reader|U_key_decode|U_clk_div|count\(3) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(1),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(0),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(3),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(2),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y32_N30
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~2_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|count\(9) & (\U_key_board_reader|U_key_decode|U_clk_div|count\(8) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(10) & 
-- !\U_key_board_reader|U_key_decode|U_clk_div|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(9),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(8),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(10),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(11),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y32_N24
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~1_combout\ = (!\U_key_board_reader|U_key_decode|U_clk_div|count\(6) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(5) & (!\U_key_board_reader|U_key_decode|U_clk_div|count\(4) & 
-- \U_key_board_reader|U_key_decode|U_clk_div|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|count\(6),
	datab => \U_key_board_reader|U_key_decode|U_clk_div|count\(5),
	datac => \U_key_board_reader|U_key_decode|U_clk_div|count\(4),
	datad => \U_key_board_reader|U_key_decode|U_clk_div|count\(7),
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y32_N4
\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\ = (\U_key_board_reader|U_key_decode|U_clk_div|Equal0~3_combout\ & (\U_key_board_reader|U_key_decode|U_clk_div|Equal0~0_combout\ & (\U_key_board_reader|U_key_decode|U_clk_div|Equal0~2_combout\ & 
-- \U_key_board_reader|U_key_decode|U_clk_div|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~3_combout\,
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~0_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~2_combout\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~1_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y32_N8
\U_key_board_reader|U_key_decode|U_clk_div|tmp~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_clk_div|tmp~0_combout\ = \U_key_board_reader|U_key_decode|U_clk_div|tmp~q\ $ (((\U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\ & \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~4_combout\,
	datac => \U_key_board_reader|U_key_decode|U_clk_div|tmp~q\,
	datad => \U_key_board_reader|U_key_decode|U_clk_div|Equal0~9_combout\,
	combout => \U_key_board_reader|U_key_decode|U_clk_div|tmp~0_combout\);

-- Location: FF_X25_Y32_N9
\U_key_board_reader|U_key_decode|U_clk_div|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_clk_div|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_clk_div|tmp~q\);

-- Location: CLKCTRL_G3
\U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X45_Y32_N12
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~0_combout\ = !\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~0_combout\);

-- Location: LCCOMB_X45_Y32_N6
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U1|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U1|R~combout\ = \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\ $ (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U1|R~combout\);

-- Location: IOIBUF_X40_Y0_N22
\rows[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(3),
	o => \rows[3]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\rows[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(1),
	o => \rows[1]~input_o\);

-- Location: LCCOMB_X45_Y32_N10
\U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0_combout\ = (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ & ((\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\ & (\rows[3]~input_o\)) # 
-- (!\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\ & ((\rows[1]~input_o\))))) # (!\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ & (((\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datab => \rows[3]~input_o\,
	datac => \rows[1]~input_o\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0_combout\);

-- Location: IOIBUF_X14_Y0_N1
\rows[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(0),
	o => \rows[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\rows[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rows(2),
	o => \rows[2]~input_o\);

-- Location: LCCOMB_X45_Y32_N4
\U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\ = (\U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0_combout\ & ((\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\) # ((\rows[2]~input_o\)))) # 
-- (!\U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0_combout\ & (!\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ & (\rows[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~0_combout\,
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rows[0]~input_o\,
	datad => \rows[2]~input_o\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\);

-- Location: LCCOMB_X45_Y32_N8
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\ = (!\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\ & \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X44_Y32_N0
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\);

-- Location: LCCOMB_X44_Y33_N16
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\);

-- Location: LCCOMB_X43_Y33_N18
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|R~combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\ $ (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\ & !\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|R~combout\);

-- Location: IOIBUF_X51_Y54_N1
\clear~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: FF_X43_Y33_N19
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|R~combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\);

-- Location: LCCOMB_X43_Y33_N14
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\) # ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\)))) 
-- # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\) # 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0_combout\);

-- Location: LCCOMB_X43_Y33_N8
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U3|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U3|R~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\ $ (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0_combout\ 
-- & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\)) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|Cout~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U3|R~0_combout\);

-- Location: FF_X43_Y33_N9
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U3|R~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\);

-- Location: LCCOMB_X44_Y32_N28
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0_combout\ = (\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\ & 
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\,
	datad => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0_combout\);

-- Location: LCCOMB_X44_Y32_N2
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~0_combout\ = (!\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\ & 
-- (!\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- !\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\,
	datab => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~0_combout\);

-- Location: IOIBUF_X0_Y29_N15
\altera_reserved_tms~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tms,
	o => \altera_reserved_tms~input_o\);

-- Location: IOIBUF_X0_Y29_N22
\altera_reserved_tck~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tck,
	o => \altera_reserved_tck~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\altera_reserved_tdi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_altera_reserved_tdi,
	o => \altera_reserved_tdi~input_o\);

-- Location: LCCOMB_X42_Y34_N16
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: CLKCTRL_G2
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_outclk\);

-- Location: LCCOMB_X44_Y32_N18
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & 
-- !\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\);

-- Location: LCCOMB_X43_Y33_N10
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\ $ 
-- (((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~0_combout\);

-- Location: FF_X43_Y33_N11
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\);

-- Location: LCCOMB_X43_Y33_N6
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\ $ 
-- (((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & 
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~0_combout\);

-- Location: FF_X43_Y33_N7
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\);

-- Location: LCCOMB_X43_Y33_N28
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\ $ (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\ 
-- & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~0_combout\);

-- Location: FF_X43_Y33_N29
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\);

-- Location: LCCOMB_X43_Y33_N22
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|Cout~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\) # 
-- ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\)))) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\ & 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\ & (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|Cout~0_combout\);

-- Location: LCCOMB_X43_Y33_N0
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\ $ 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|Cout~0_combout\ $ (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|Cout~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0_combout\);

-- Location: LCCOMB_X43_Y33_N26
\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ & (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U2|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U2|R~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\);

-- Location: LCCOMB_X43_Y33_N4
\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\ $ (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\) # (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\);

-- Location: LCCOMB_X43_Y33_N24
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\ $ (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\ $ 
-- (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U0|Q~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0_combout\);

-- Location: LCCOMB_X43_Y33_N2
\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ & 
-- (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_getAddress|U1|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_putAddress|U1|R~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\);

-- Location: LCCOMB_X45_Y29_N10
\rtl~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G18
\rtl~5clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X45_Y32_N28
\U_key_board_reader|U_ring_buffer|U_ram|ram~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\);

-- Location: LCCOMB_X45_Y31_N12
\rtl~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G9
\rtl~6clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X42_Y33_N18
\U_key_board_reader|U_ring_buffer|U_ram|ram~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\);

-- Location: LCCOMB_X42_Y33_N12
\U_key_board_reader|U_ring_buffer|U_ram|ram~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~37_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~25_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~17_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~37_combout\);

-- Location: LCCOMB_X45_Y33_N16
\rtl~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G0
\rtl~4clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X42_Y33_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4clkctrl_outclk\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\);

-- Location: LCCOMB_X45_Y29_N12
\rtl~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G14
\rtl~7clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X42_Y33_N28
\U_key_board_reader|U_ring_buffer|U_ram|ram~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\);

-- Location: LCCOMB_X42_Y33_N6
\U_key_board_reader|U_ring_buffer|U_ram|ram~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~38_combout\ = (\U_key_board_reader|U_ring_buffer|U_ram|ram~37_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~37_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~37_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~21_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~29_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~38_combout\);

-- Location: LCCOMB_X45_Y29_N26
\rtl~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G6
\rtl~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X45_Y32_N30
\U_key_board_reader|U_ring_buffer|U_ram|ram~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\,
	datad => \rtl~0clkctrl_outclk\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\);

-- Location: LCCOMB_X45_Y31_N30
\rtl~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G16
\rtl~3clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X45_Y30_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\);

-- Location: LCCOMB_X45_Y29_N22
\rtl~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & !\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G15
\rtl~1clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X45_Y30_N12
\U_key_board_reader|U_ring_buffer|U_ram|ram~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\);

-- Location: LCCOMB_X45_Y29_N8
\rtl~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & !\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G17
\rtl~2clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X45_Y30_N6
\U_key_board_reader|U_ring_buffer|U_ram|ram~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datab => \rtl~2clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\);

-- Location: LCCOMB_X45_Y30_N24
\U_key_board_reader|U_ring_buffer|U_ram|ram~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\) # 
-- ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & 
-- (((!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & \U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~5_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\);

-- Location: LCCOMB_X45_Y30_N2
\U_key_board_reader|U_ring_buffer|U_ram|ram~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~40_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\))) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~9_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~13_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~39_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~40_combout\);

-- Location: LCCOMB_X42_Y33_N8
\U_key_board_reader|U_ring_buffer|U_ram|ram~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~41_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~38_combout\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~38_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~40_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~41_combout\);

-- Location: FF_X42_Y33_N9
\U_key_board_reader|U_output_buffer|U_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ram|ram~41_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_output_buffer|U_reg|U1|Q~q\);

-- Location: JTAG_X43_Y40_N0
altera_internal_jtag : fiftyfivenm_jtag
PORT MAP (
	tms => \altera_reserved_tms~input_o\,
	tck => \altera_reserved_tck~input_o\,
	tdi => \altera_reserved_tdi~input_o\,
	tdouser => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\,
	tdo => \altera_internal_jtag~TDO\,
	tmsutap => \altera_internal_jtag~TMSUTAP\,
	tckutap => \altera_internal_jtag~TCKUTAP\,
	tdiutap => \altera_internal_jtag~TDIUTAP\);

-- Location: LCCOMB_X39_Y35_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\);

-- Location: LCCOMB_X42_Y37_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\);

-- Location: FF_X42_Y37_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3));

-- Location: LCCOMB_X42_Y37_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\);

-- Location: FF_X42_Y37_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~4_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4));

-- Location: LCCOMB_X40_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\);

-- Location: FF_X40_Y34_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5));

-- Location: LCCOMB_X40_Y34_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\);

-- Location: FF_X40_Y34_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~6_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6));

-- Location: LCCOMB_X40_Y34_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(6),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\);

-- Location: FF_X40_Y34_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7));

-- Location: LCCOMB_X40_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\);

-- Location: FF_X39_Y34_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8));

-- Location: LCCOMB_X40_Y32_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\);

-- Location: FF_X40_Y32_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10));

-- Location: LCCOMB_X37_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\);

-- Location: FF_X37_Y34_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~12_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13));

-- Location: LCCOMB_X37_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(13),
	datac => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\);

-- Location: FF_X37_Y34_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14));

-- Location: LCCOMB_X37_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\);

-- Location: FF_X37_Y34_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~10_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11));

-- Location: LCCOMB_X40_Y32_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(10),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\);

-- Location: FF_X40_Y32_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12));

-- Location: LCCOMB_X37_Y34_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(12),
	datac => \altera_internal_jtag~TMSUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(14),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\);

-- Location: LCCOMB_X37_Y34_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\);

-- Location: FF_X37_Y34_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15));

-- Location: LCCOMB_X37_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\);

-- Location: FF_X37_Y34_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~1_combout\,
	sclr => \altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1));

-- Location: LCCOMB_X37_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \altera_internal_jtag~TMSUTAP\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(15),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\);

-- Location: FF_X37_Y34_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2));

-- Location: LCCOMB_X40_Y34_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(2),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\);

-- Location: FF_X40_Y34_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|node_ena_proc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9));

-- Location: LCCOMB_X40_Y32_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\);

-- Location: FF_X40_Y32_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0));

-- Location: LCCOMB_X40_Y32_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\);

-- Location: FF_X40_Y32_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~2_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1));

-- Location: LCCOMB_X40_Y32_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\);

-- Location: FF_X40_Y32_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt~0_combout\,
	sclr => \ALT_INV_altera_internal_jtag~TMSUTAP\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2));

-- Location: LCCOMB_X40_Y32_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(9),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|tms_cnt\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\);

-- Location: FF_X40_Y32_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0));

-- Location: FF_X39_Y35_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[9]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9));

-- Location: FF_X39_Y35_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8));

-- Location: LCCOMB_X39_Y35_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\);

-- Location: FF_X39_Y35_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7));

-- Location: LCCOMB_X39_Y35_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\);

-- Location: FF_X39_Y35_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6));

-- Location: FF_X39_Y35_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	sload => VCC,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5));

-- Location: LCCOMB_X39_Y35_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\);

-- Location: FF_X39_Y35_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4));

-- Location: LCCOMB_X39_Y35_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\);

-- Location: FF_X39_Y35_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3));

-- Location: LCCOMB_X39_Y35_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\);

-- Location: FF_X39_Y35_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[2]~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2));

-- Location: LCCOMB_X39_Y35_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\);

-- Location: FF_X39_Y35_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1));

-- Location: LCCOMB_X39_Y35_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(2),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(5),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y35_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\);

-- Location: FF_X39_Y35_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg[0]~1_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0));

-- Location: LCCOMB_X39_Y35_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(6),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(9),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y32_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\);

-- Location: FF_X40_Y32_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal1~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\);

-- Location: LCCOMB_X41_Y33_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\);

-- Location: LCCOMB_X41_Y33_N8
\~QIC_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QIC_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QIC_CREATED_GND~I_combout\);

-- Location: LCCOMB_X44_Y29_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\);

-- Location: LCCOMB_X45_Y29_N16
\U_key_board_reader|U_ring_buffer|U_ram|ram~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datab => \rtl~1clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\);

-- Location: LCCOMB_X45_Y32_N2
\U_key_board_reader|U_ring_buffer|U_ram|ram~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0clkctrl_outclk\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\);

-- Location: LCCOMB_X44_Y31_N28
\U_key_board_reader|U_ring_buffer|U_ram|ram~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\);

-- Location: LCCOMB_X45_Y29_N30
\U_key_board_reader|U_ring_buffer|U_ram|ram~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~34_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\))) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~8_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~12_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~34_combout\);

-- Location: LCCOMB_X45_Y29_N24
\U_key_board_reader|U_ring_buffer|U_ram|ram~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~35_combout\ = (\U_key_board_reader|U_ring_buffer|U_ram|ram~34_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\) # 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~34_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\ & 
-- ((!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~4_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~34_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~35_combout\);

-- Location: LCCOMB_X44_Y31_N10
\U_key_board_reader|U_ring_buffer|U_ram|ram~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\);

-- Location: LCCOMB_X47_Y27_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\);

-- Location: LCCOMB_X45_Y29_N6
\U_key_board_reader|U_ring_buffer|U_ram|ram~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\);

-- Location: LCCOMB_X45_Y29_N28
\U_key_board_reader|U_ring_buffer|U_ram|ram~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\);

-- Location: LCCOMB_X45_Y29_N18
\U_key_board_reader|U_ring_buffer|U_ram|ram~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~16_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~24_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\);

-- Location: LCCOMB_X45_Y29_N20
\U_key_board_reader|U_ring_buffer|U_ram|ram~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~33_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\)) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\))))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~28_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~20_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~32_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~33_combout\);

-- Location: LCCOMB_X45_Y29_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~36_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~33_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~35_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~33_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~36_combout\);

-- Location: FF_X45_Y29_N1
\U_key_board_reader|U_output_buffer|U_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ram|ram~36_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_output_buffer|U_reg|U0|Q~q\);

-- Location: LCCOMB_X42_Y37_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datac => \U_key_board_reader|U_output_buffer|U_reg|U0|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\);

-- Location: LCCOMB_X42_Y37_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\);

-- Location: LCCOMB_X42_Y37_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\);

-- Location: FF_X42_Y37_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~0_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0));

-- Location: LCCOMB_X39_Y34_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\);

-- Location: LCCOMB_X40_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(7),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(5),
	datad => \altera_internal_jtag~TMSUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\);

-- Location: FF_X40_Y34_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\);

-- Location: LCCOMB_X39_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\);

-- Location: LCCOMB_X39_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\);

-- Location: LCCOMB_X39_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~2_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~1_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\);

-- Location: FF_X39_Y34_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[1]~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1));

-- Location: LCCOMB_X40_Y34_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\);

-- Location: LCCOMB_X40_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~4_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\);

-- Location: FF_X40_Y34_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[2]~5_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2));

-- Location: LCCOMB_X37_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\);

-- Location: FF_X37_Y34_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\);

-- Location: FF_X41_Y33_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~5_combout\,
	asdata => \~QIC_CREATED_GND~I_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8));

-- Location: LCCOMB_X39_Y34_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\);

-- Location: LCCOMB_X41_Y33_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~6_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\);

-- Location: FF_X41_Y33_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg[0]~7_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0));

-- Location: LCCOMB_X42_Y37_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_mode_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\);

-- Location: LCCOMB_X42_Y37_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~7_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\);

-- Location: IOIBUF_X51_Y54_N22
\maintenance~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_maintenance,
	o => \maintenance~input_o\);

-- Location: LCCOMB_X42_Y37_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \maintenance~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\);

-- Location: FF_X42_Y37_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~13_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7));

-- Location: IOIBUF_X51_Y54_N29
\coin~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_coin,
	o => \coin~input_o\);

-- Location: LCCOMB_X42_Y37_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \coin~input_o\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\);

-- Location: FF_X42_Y37_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~12_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6));

-- Location: LCCOMB_X42_Y37_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	datab => \~GND~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\);

-- Location: FF_X42_Y37_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~11_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5));

-- Location: LCCOMB_X42_Y37_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(5),
	datac => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\);

-- Location: FF_X42_Y37_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~10_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4));

-- Location: LCCOMB_X45_Y32_N18
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U3|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U3|R~combout\ = \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\ $ (((\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ & 
-- (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\ & \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U3|R~combout\);

-- Location: FF_X45_Y32_N19
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U3|R~combout\,
	clrn => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|ALT_INV_reset~clkctrl_outclk\,
	ena => \U_key_board_reader|U_key_decode|U_key_control|ALT_INV_CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\);

-- Location: LCCOMB_X43_Y31_N10
\U_key_board_reader|U_ring_buffer|U_ram|ram~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\);

-- Location: LCCOMB_X43_Y31_N24
\U_key_board_reader|U_ring_buffer|U_ram|ram~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\);

-- Location: LCCOMB_X46_Y30_N2
\U_key_board_reader|U_ring_buffer|U_ram|ram~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6clkctrl_outclk\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\);

-- Location: LCCOMB_X45_Y31_N18
\U_key_board_reader|U_ring_buffer|U_ram|ram~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\);

-- Location: LCCOMB_X45_Y31_N24
\U_key_board_reader|U_ring_buffer|U_ram|ram~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~19_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~27_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\);

-- Location: LCCOMB_X44_Y31_N8
\U_key_board_reader|U_ring_buffer|U_ram|ram~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~48_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\)) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\))))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~31_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~23_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~47_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~48_combout\);

-- Location: LCCOMB_X44_Y31_N6
\U_key_board_reader|U_ring_buffer|U_ram|ram~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\);

-- Location: LCCOMB_X45_Y31_N28
\U_key_board_reader|U_ring_buffer|U_ram|ram~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\);

-- Location: LCCOMB_X46_Y30_N12
\U_key_board_reader|U_ring_buffer|U_ram|ram~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\);

-- Location: LCCOMB_X46_Y30_N6
\U_key_board_reader|U_ring_buffer|U_ram|ram~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\);

-- Location: LCCOMB_X46_Y30_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~49_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\) # 
-- ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & 
-- (((!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & \U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~7_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~3_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~49_combout\);

-- Location: LCCOMB_X45_Y31_N10
\U_key_board_reader|U_ring_buffer|U_ram|ram~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~50_combout\ = (\U_key_board_reader|U_ring_buffer|U_ram|ram~49_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\) # 
-- ((!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~49_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\ & 
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~15_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~11_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~49_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~50_combout\);

-- Location: LCCOMB_X45_Y31_N22
\U_key_board_reader|U_ring_buffer|U_ram|ram~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~51_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~48_combout\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~48_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~50_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~51_combout\);

-- Location: FF_X45_Y31_N23
\U_key_board_reader|U_output_buffer|U_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ram|ram~51_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_output_buffer|U_reg|U3|Q~q\);

-- Location: LCCOMB_X42_Y37_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~1_combout\,
	datad => \U_key_board_reader|U_output_buffer|U_reg|U3|Q~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\);

-- Location: LCCOMB_X42_Y37_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~8_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\);

-- Location: FF_X42_Y37_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[3]~9_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3));

-- Location: LCCOMB_X42_Y33_N2
\U_key_board_reader|U_ring_buffer|U_ram|ram~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~7clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\);

-- Location: LCCOMB_X42_Y33_N30
\U_key_board_reader|U_ring_buffer|U_ram|ram~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\);

-- Location: LCCOMB_X46_Y33_N24
\U_key_board_reader|U_ring_buffer|U_ram|ram~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\);

-- Location: LCCOMB_X42_Y33_N16
\U_key_board_reader|U_ring_buffer|U_ram|ram~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\);

-- Location: LCCOMB_X42_Y33_N24
\U_key_board_reader|U_ring_buffer|U_ram|ram~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~26_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~18_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\);

-- Location: LCCOMB_X42_Y33_N26
\U_key_board_reader|U_ring_buffer|U_ram|ram~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~43_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\)) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\))))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~30_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~22_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~42_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~43_combout\);

-- Location: LCCOMB_X46_Y33_N2
\U_key_board_reader|U_ring_buffer|U_ram|ram~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~3clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\);

-- Location: LCCOMB_X45_Y31_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\);

-- Location: LCCOMB_X46_Y35_N2
\U_key_board_reader|U_ring_buffer|U_ram|ram~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~2clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\);

-- Location: LCCOMB_X46_Y35_N0
\U_key_board_reader|U_ring_buffer|U_ram|ram~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & 
-- ((\U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \rtl~1clkctrl_outclk\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\);

-- Location: LCCOMB_X42_Y33_N4
\U_key_board_reader|U_ring_buffer|U_ram|ram~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~44_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & (((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\)))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~2_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[0]~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ram|ram~6_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~44_combout\);

-- Location: LCCOMB_X42_Y33_N22
\U_key_board_reader|U_ring_buffer|U_ram|ram~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~45_combout\ = (\U_key_board_reader|U_ring_buffer|U_ram|ram~44_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\) # 
-- ((!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_ram|ram~44_combout\ & (((\U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\ & 
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~14_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ram|ram~10_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~44_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[1]~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~45_combout\);

-- Location: LCCOMB_X42_Y33_N10
\U_key_board_reader|U_ring_buffer|U_ram|ram~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ram|ram~46_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & (\U_key_board_reader|U_ring_buffer|U_ram|ram~43_combout\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\ & ((\U_key_board_reader|U_ring_buffer|U_ram|ram~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ram|ram~43_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ram|ram~45_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|address[2]~2_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ram|ram~46_combout\);

-- Location: FF_X42_Y33_N11
\U_key_board_reader|U_output_buffer|U_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0clkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ram|ram~46_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_output_buffer|U_reg|U2|Q~q\);

-- Location: LCCOMB_X42_Y37_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	datac => \U_key_board_reader|U_output_buffer|U_reg|U2|Q~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\);

-- Location: FF_X42_Y37_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~4_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2));

-- Location: LCCOMB_X42_Y37_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_output_buffer|U_reg|U1|Q~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\);

-- Location: FF_X42_Y37_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg~3_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1));

-- Location: LCCOMB_X39_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\);

-- Location: LCCOMB_X39_Y35_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\);

-- Location: LCCOMB_X40_Y32_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~1_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|jtag_ir_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~0_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\);

-- Location: FF_X40_Y32_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|Equal0~2_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_dr_scan_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\);

-- Location: LCCOMB_X39_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\);

-- Location: LCCOMB_X40_Y35_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\);

-- Location: FF_X39_Y35_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3));

-- Location: LCCOMB_X39_Y35_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\);

-- Location: FF_X39_Y35_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2));

-- Location: LCCOMB_X39_Y35_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\);

-- Location: FF_X39_Y35_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1));

-- Location: LCCOMB_X39_Y35_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\);

-- Location: FF_X39_Y35_N29
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0));

-- Location: LCCOMB_X41_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\);

-- Location: LCCOMB_X41_Y33_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg[0]~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\);

-- Location: FF_X41_Y34_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0));

-- Location: LCCOMB_X41_Y32_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\);

-- Location: LCCOMB_X41_Y32_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\);

-- Location: LCCOMB_X41_Y32_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~16\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\);

-- Location: LCCOMB_X41_Y33_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\);

-- Location: FF_X41_Y32_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~17_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4));

-- Location: LCCOMB_X41_Y30_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\);

-- Location: LCCOMB_X41_Y33_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~13_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\);

-- Location: FF_X41_Y32_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~7_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0));

-- Location: LCCOMB_X41_Y32_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[0]~8\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\);

-- Location: FF_X41_Y32_N21
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~9_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1));

-- Location: LCCOMB_X41_Y32_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[1]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~12\);

-- Location: FF_X41_Y32_N23
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[2]~11_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2));

-- Location: FF_X41_Y32_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[3]~15_combout\,
	asdata => VCC,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~19_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3));

-- Location: LCCOMB_X41_Y30_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\);

-- Location: LCCOMB_X41_Y30_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\);

-- Location: LCCOMB_X41_Y30_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~4_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\);

-- Location: LCCOMB_X41_Y30_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\);

-- Location: LCCOMB_X41_Y34_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\);

-- Location: LCCOMB_X41_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(0),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~6_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\);

-- Location: LCCOMB_X41_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\);

-- Location: FF_X41_Y34_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[1]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1));

-- Location: LCCOMB_X41_Y30_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\);

-- Location: LCCOMB_X41_Y30_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~14_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\);

-- Location: LCCOMB_X41_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~15_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\);

-- Location: LCCOMB_X41_Y30_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\);

-- Location: LCCOMB_X41_Y30_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~12_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\);

-- Location: LCCOMB_X41_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\);

-- Location: FF_X41_Y34_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[2]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2));

-- Location: LCCOMB_X41_Y34_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~13_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\);

-- Location: LCCOMB_X41_Y34_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|identity_contrib_shift_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\);

-- Location: FF_X41_Y34_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[3]~feeder_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3));

-- Location: LCCOMB_X41_Y30_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\);

-- Location: LCCOMB_X41_Y30_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(1),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\);

-- Location: LCCOMB_X41_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~9_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|mixer_addr_reg_internal\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~10_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\);

-- Location: LCCOMB_X41_Y34_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric_ident_writedata\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~8_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg~11_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\);

-- Location: LCCOMB_X41_Y33_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\);

-- Location: LCCOMB_X41_Y34_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\);

-- Location: FF_X41_Y34_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[3]~3_combout\,
	asdata => \altera_internal_jtag~TDIUTAP\,
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3));

-- Location: FF_X41_Y34_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[2]~2_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(3),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2));

-- Location: FF_X41_Y34_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[1]~1_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(2),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1));

-- Location: FF_X41_Y34_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg[0]~0_combout\,
	asdata => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(1),
	sload => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_proc~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0));

-- Location: LCCOMB_X39_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \~GND~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~7_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|design_hash_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\);

-- Location: LCCOMB_X39_Y34_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\);

-- Location: LCCOMB_X42_Y37_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\);

-- Location: LCCOMB_X39_Y34_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\);

-- Location: LCCOMB_X40_Y34_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\);

-- Location: FF_X40_Y34_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\);

-- Location: LCCOMB_X39_Y34_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~0_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\);

-- Location: LCCOMB_X39_Y34_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\);

-- Location: LCCOMB_X39_Y34_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~1_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~2_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_bypass_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\);

-- Location: LCCOMB_X39_Y34_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\);

-- Location: LCCOMB_X39_Y33_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datad => VCC,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\);

-- Location: LCCOMB_X41_Y33_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\);

-- Location: LCCOMB_X39_Y33_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\);

-- Location: LCCOMB_X39_Y33_N22
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\);

-- Location: FF_X39_Y33_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~9_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0));

-- Location: LCCOMB_X39_Y33_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[0]~10\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\);

-- Location: FF_X39_Y33_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~11_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1));

-- Location: LCCOMB_X39_Y33_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~12\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\);

-- Location: FF_X39_Y33_N5
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~14_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2));

-- Location: LCCOMB_X39_Y33_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datad => VCC,
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[2]~15\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	cout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\);

-- Location: FF_X39_Y33_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~16_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3));

-- Location: LCCOMB_X39_Y33_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	cin => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[3]~17\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\);

-- Location: FF_X39_Y33_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[4]~18_combout\,
	sclr => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~13_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4));

-- Location: LCCOMB_X39_Y33_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\);

-- Location: LCCOMB_X39_Y33_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\);

-- Location: LCCOMB_X39_Y33_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(4),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\);

-- Location: LCCOMB_X39_Y33_N28
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~12_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\);

-- Location: LCCOMB_X39_Y33_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~13_combout\,
	datac => \altera_internal_jtag~TDIUTAP\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\);

-- Location: LCCOMB_X40_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_dr_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\);

-- Location: FF_X39_Y33_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~14_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3));

-- Location: LCCOMB_X39_Y33_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(3),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\);

-- Location: LCCOMB_X39_Y33_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(3),
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\);

-- Location: LCCOMB_X39_Y33_N20
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(2),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|word_counter\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\);

-- Location: LCCOMB_X39_Y33_N14
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~10_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~9_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\);

-- Location: FF_X39_Y33_N15
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~11_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2));

-- Location: LCCOMB_X40_Y34_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~6_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|clear_signal~combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\);

-- Location: FF_X40_Y34_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~7_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1));

-- Location: LCCOMB_X40_Y34_N18
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|virtual_ir_scan_reg~q\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(8),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\);

-- Location: FF_X40_Y34_N19
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR~4_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0));

-- Location: LCCOMB_X41_Y35_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	datad => \altera_internal_jtag~TDIUTAP\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\);

-- Location: FF_X41_Y35_N7
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~3_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3));

-- Location: LCCOMB_X41_Y35_N12
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(3),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\);

-- Location: FF_X41_Y35_N13
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~2_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2));

-- Location: LCCOMB_X41_Y35_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(2),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\);

-- Location: FF_X41_Y35_N11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~1_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1));

-- Location: LCCOMB_X41_Y35_N8
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(1),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\);

-- Location: FF_X41_Y35_N9
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg~0_combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg_ena~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0));

-- Location: LCCOMB_X39_Y34_N6
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~5_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_info_reg|WORD_SR\(0),
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|hub_minor_ver_reg\(0),
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(2),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\);

-- Location: LCCOMB_X39_Y34_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~8_combout\,
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~4_combout\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~3_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~6_combout\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\);

-- Location: FF_X39_Y34_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo_mux_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|tdo~q\);

-- Location: CLKCTRL_G12
\altera_internal_jtag~TCKUTAPclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \altera_internal_jtag~TCKUTAPclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\);

-- Location: LCCOMB_X44_Y41_N16
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(7),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\);

-- Location: LCCOMB_X41_Y33_N10
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|reset_ena_reg_proc~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(8),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\);

-- Location: FF_X44_Y41_N17
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\);

-- Location: LCCOMB_X44_Y32_N16
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~1_combout\ = (\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\) # 
-- ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~0_combout\) # ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0_combout\ & 
-- !\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\,
	datab => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_VALID~0_combout\,
	datac => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~0_combout\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X44_Y32_N17
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X44_Y32_N10
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\ = LCELL((!\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\ & 
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\,
	datad => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\);

-- Location: LCCOMB_X44_Y32_N26
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~0_combout\ = (\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\) # 
-- ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\ & ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\) # 
-- (\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_WRITE~0_combout\,
	datab => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\,
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][7]~q\,
	combout => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X44_Y32_N27
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X44_Y32_N12
\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\ = (\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\) # 
-- (\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_1~q\,
	datad => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\);

-- Location: LCCOMB_X44_Y32_N20
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~1_combout\ = (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\ & ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\))) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\ 
-- & (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\)))) # (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\ & ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\,
	datad => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X44_Y32_N30
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~2_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- (((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\)))) # (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\ & ((!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~1_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X44_Y32_N24
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~3_combout\ = (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ $ (((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~2_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X44_Y32_N25
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X43_Y33_N16
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~0_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ $ (((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\) # (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~0_combout\);

-- Location: FF_X43_Y33_N17
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\);

-- Location: LCCOMB_X43_Y33_N20
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|Cout~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\ & 
-- (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\ & !\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\) # (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_INC~0_combout\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_GET_INC~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|Cout~0_combout\);

-- Location: LCCOMB_X43_Y33_N12
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|R~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|R~2_combout\ = \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\ $ (\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|Cout~0_combout\ $ 
-- (((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U1|Cout~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|R~2_combout\);

-- Location: FF_X43_Y33_N13
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_nextSize|U2|R~2_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\);

-- Location: LCCOMB_X43_Y33_N30
\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\ = (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\ & (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\ & 
-- !\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U2|Q~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U0|Q~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U1|Q~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\);

-- Location: LCCOMB_X45_Y32_N24
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~0_combout\ = (\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\ & (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\ & 
-- (!\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\ & !\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	datac => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~0_combout\);

-- Location: LCCOMB_X44_Y32_N14
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~0_combout\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\ & (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\)) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\ & ((\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\,
	datad => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\);

-- Location: LCCOMB_X44_Y32_N22
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\ & ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\)))) # (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\) # ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & 
-- !\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|NextState.STATE_PUT~1_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X44_Y32_N23
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X44_Y32_N4
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~0_combout\ = (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\ & 
-- (!\U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\ & ((\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\) # 
-- (!\U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_comparator_empty|TC~0_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	datac => \U_key_board_reader|U_ring_buffer|U_memory_address_control|U_size|U3|Q~q\,
	datad => \U_key_board_reader|U_output_buffer|U_output_buffer_control|CurrentState.STATE_FREE~0_combout\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~0_combout\);

-- Location: LCCOMB_X44_Y32_N8
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~1_combout\ = (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & 
-- ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & ((\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\))) # 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~0_combout\,
	datac => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~1_combout\);

-- Location: FF_X44_Y32_N9
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\);

-- Location: LCCOMB_X45_Y32_N14
\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\ = (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\ & 
-- (!\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\ & \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_2~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_0~q\,
	datad => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.state_bit_1~q\,
	combout => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\);

-- Location: LCCOMB_X45_Y32_N22
\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~0_combout\ = (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\ & 
-- (\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\ & ((\U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\) # (\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\,
	datac => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~0_combout\);

-- Location: FF_X45_Y32_N23
\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_key_decode|U_clk_div|ALT_INV_tmp~clkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X45_Y32_N20
\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~0_combout\ = (\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\ & 
-- (\U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\ & (\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\))) # (!\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\ 
-- & (((\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\) # (!\U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_1~q\,
	datab => \U_key_board_reader|U_ring_buffer|U_ring_buffer_control|CurrentState.STATE_PUT_ACK~0_combout\,
	datac => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_multiplexor|Y~1_combout\,
	combout => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~0_combout\);

-- Location: FF_X45_Y32_N21
\U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_key_decode|U_clk_div|ALT_INV_tmp~clkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_key_control|CurrentState.state_bit_0~q\);

-- Location: FF_X45_Y32_N7
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U1|R~combout\,
	clrn => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|ALT_INV_reset~clkctrl_outclk\,
	ena => \U_key_board_reader|U_key_decode|U_key_control|ALT_INV_CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\);

-- Location: LCCOMB_X45_Y32_N16
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~0_combout\ = (!\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\ & \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~0_combout\);

-- Location: LCCOMB_X45_Y32_N26
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~combout\ = (\clear~input_o\) # ((!\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ & (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~0_combout\ & 
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~0_combout\,
	datac => \clear~input_o\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~combout\);

-- Location: CLKCTRL_G10
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|reset~clkctrl_outclk\);

-- Location: FF_X45_Y32_N13
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~0_combout\,
	clrn => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|ALT_INV_reset~clkctrl_outclk\,
	ena => \U_key_board_reader|U_key_decode|U_key_control|ALT_INV_CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\);

-- Location: LCCOMB_X45_Y32_N0
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U2|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U2|R~combout\ = \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\ $ (((\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\ & 
-- \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U0|Q~q\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datad => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U1|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U2|R~combout\);

-- Location: FF_X45_Y32_N1
\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_key_board_reader|U_key_decode|U_clk_div|tmp~clkctrl_outclk\,
	d => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_adder|U2|R~combout\,
	clrn => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|ALT_INV_reset~clkctrl_outclk\,
	ena => \U_key_board_reader|U_key_decode|U_key_control|ALT_INV_CurrentState.state_bit_0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\);

-- Location: LCCOMB_X45_Y31_N16
\U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(0) = (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\) # (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(0));

-- Location: LCCOMB_X45_Y31_N26
\U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(1) = (\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\ & !\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(1));

-- Location: LCCOMB_X45_Y31_N20
\U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(2) = (!\U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\ & \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U2|Q~q\,
	datac => \U_key_board_reader|U_key_decode|U_key_scan|U_counter|U_reg|U3|Q~q\,
	combout => \U_key_board_reader|U_key_decode|U_key_scan|U_decoder|A\(2));

-- Location: LCCOMB_X44_Y41_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\);

-- Location: FF_X44_Y41_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\);

-- Location: LCCOMB_X44_Y41_N30
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(4),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\);

-- Location: FF_X44_Y41_N31
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAP\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~q\);

-- Location: CLKCTRL_G11
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y46_N28
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~0_combout\ = !\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~0_combout\);

-- Location: LCCOMB_X49_Y46_N24
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U1|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U1|R~combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\ $ (\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U1|R~combout\);

-- Location: FF_X49_Y46_N25
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U1|R~combout\,
	clrn => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\);

-- Location: LCCOMB_X49_Y46_N30
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_comparator|TC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_comparator|TC~combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\ & (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\ & 
-- (\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\ & !\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_comparator|TC~combout\);

-- Location: LCCOMB_X55_Y45_N0
\U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~0_combout\ = !\U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~0_combout\);

-- Location: LCCOMB_X49_Y46_N18
\U_lcd_serial_controller|U_lcd_serial_receiver|reset\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|reset~combout\ = (\clear~input_o\) # ((!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & 
-- !\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|reset~combout\);

-- Location: LCCOMB_X43_Y34_N26
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(3),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\);

-- Location: FF_X43_Y34_N27
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\);

-- Location: FF_X55_Y45_N1
\U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~0_combout\,
	clrn => \U_lcd_serial_controller|U_lcd_serial_receiver|ALT_INV_reset~combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~q\);

-- Location: LCCOMB_X49_Y46_N6
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\ = (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\ & ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\ & 
-- ((!\U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~q\))) # (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_parity_check|parity~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X49_Y46_N8
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\ & ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\ & 
-- (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ & !\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\)) # (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\ & 
-- (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ & \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\);

-- Location: LCCOMB_X49_Y46_N26
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~4_combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\ & 
-- ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\) # ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\ & 
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)))) # (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\ & 
-- (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\ & ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~4_combout\);

-- Location: LCCOMB_X49_Y46_N16
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~5_combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~4_combout\)) # (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- (((!\U_lcd_serial_controller|U_lcd_dispatcher|CurrentState~q\ & \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~4_combout\,
	datab => \U_lcd_serial_controller|U_lcd_dispatcher|CurrentState~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~5_combout\);

-- Location: FF_X49_Y46_N17
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~5_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X49_Y46_N0
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_comparator|TC~combout\) # ((!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ 
-- & (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\ & 
-- !\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_comparator|TC~combout\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~combout\);

-- Location: CLKCTRL_G7
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|reset~clkctrl_outclk\);

-- Location: FF_X49_Y46_N29
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~0_combout\,
	clrn => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\);

-- Location: LCCOMB_X49_Y46_N22
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U2|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U2|R~combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\ $ (((\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\ & 
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U2|R~combout\);

-- Location: FF_X49_Y46_N23
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U2|R~combout\,
	clrn => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\);

-- Location: LCCOMB_X49_Y46_N10
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U3|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U3|R~combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\ $ (((\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\ & 
-- (\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\ & \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U3|R~combout\);

-- Location: FF_X49_Y46_N11
\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_adder|U3|R~combout\,
	clrn => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\);

-- Location: LCCOMB_X49_Y46_N20
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\ = ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\) # ((\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\) # 
-- (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\))) # (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U2|Q~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_counter|U_reg|U1|Q~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\);

-- Location: LCCOMB_X49_Y46_N2
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~1_combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ & 
-- (((\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\ & \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\)))) # 
-- (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~q\,
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~0_combout\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~1_combout\);

-- Location: FF_X49_Y46_N3
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~1_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X46_Y46_N24
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\ = (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\);

-- Location: FF_X46_Y46_N25
\U_lcd_serial_controller|U_lcd_dispatcher|CurrentState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_dispatcher|CurrentState~q\);

-- Location: LCCOMB_X46_Y46_N26
\U_lcd_serial_controller|U_lcd_dispatcher|wrl\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_dispatcher|wrl~combout\ = (!\U_lcd_serial_controller|U_lcd_dispatcher|CurrentState~q\ & (!\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_lcd_serial_controller|U_lcd_dispatcher|CurrentState~q\,
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_dispatcher|wrl~combout\);

-- Location: LCCOMB_X37_Y1_N8
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[8]~feeder_combout\ = 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[8]~feeder_combout\);

-- Location: LCCOMB_X49_Y46_N4
\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\ = (\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- !\U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\);

-- Location: FF_X37_Y1_N9
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[8]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(8));

-- Location: LCCOMB_X37_Y1_N22
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[7]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(8),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[7]~feeder_combout\);

-- Location: FF_X37_Y1_N23
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[7]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(7));

-- Location: LCCOMB_X37_Y1_N12
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(7),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\);

-- Location: FF_X37_Y1_N13
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(6));

-- Location: LCCOMB_X37_Y1_N2
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(6),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\);

-- Location: FF_X37_Y1_N3
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(5));

-- Location: LCCOMB_X37_Y1_N0
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\);

-- Location: FF_X37_Y1_N1
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(4));

-- Location: LCCOMB_X37_Y1_N30
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\);

-- Location: FF_X37_Y1_N31
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(3));

-- Location: LCCOMB_X37_Y1_N4
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\);

-- Location: FF_X37_Y1_N5
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(2));

-- Location: LCCOMB_X37_Y1_N10
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\);

-- Location: FF_X37_Y1_N11
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(1));

-- Location: LCCOMB_X37_Y1_N24
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\ = \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(1),
	combout => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\);

-- Location: FF_X37_Y1_N25
\U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\,
	ena => \U_lcd_serial_controller|U_lcd_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_lcd_serial_controller|U_lcd_serial_receiver|U_shift_reg|shift_register\(0));

-- Location: LCCOMB_X44_Y41_N2
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(1),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\);

-- Location: FF_X44_Y41_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\);

-- Location: LCCOMB_X56_Y43_N20
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~0_combout\ = !\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~0_combout\);

-- Location: LCCOMB_X56_Y43_N0
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U2|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U2|R~combout\ = \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\ $ (((\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ & 
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U2|R~combout\);

-- Location: FF_X56_Y43_N1
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U2|R~combout\,
	clrn => \U_score_serial_controller|U_score_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\);

-- Location: LCCOMB_X56_Y43_N16
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_comparator|TC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|U_comparator|TC~combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\ & (!\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\ & 
-- (!\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ & \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_comparator|TC~combout\);

-- Location: LCCOMB_X55_Y45_N10
\U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~0_combout\ = !\U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~0_combout\);

-- Location: LCCOMB_X56_Y43_N12
\U_score_serial_controller|U_score_serial_receiver|reset\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|reset~combout\ = (\clear~input_o\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & 
-- (!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & !\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datac => \clear~input_o\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|reset~combout\);

-- Location: FF_X55_Y45_N11
\U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~0_combout\,
	clrn => \U_score_serial_controller|U_score_serial_receiver|ALT_INV_reset~combout\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~q\);

-- Location: LCCOMB_X56_Y43_N8
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~2_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~2_combout\);

-- Location: LCCOMB_X56_Y43_N4
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~1_combout\ = (\U_score_serial_controller|U_score_dispatcher|wrd~combout\) # 
-- ((\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~2_combout\ & ((!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\) # 
-- (!\U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_parity_check|parity~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~2_combout\,
	datad => \U_score_serial_controller|U_score_dispatcher|wrd~combout\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~1_combout\);

-- Location: LCCOMB_X56_Y43_N14
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- !\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\);

-- Location: LCCOMB_X56_Y43_N6
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\ = (!\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\ & 
-- (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\ & (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ & \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\);

-- Location: LCCOMB_X56_Y43_N24
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~1_combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & 
-- (\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\ & \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~1_combout\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~2_combout\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\);

-- Location: FF_X56_Y43_N25
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~3_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\);

-- Location: LCCOMB_X56_Y43_N26
\U_score_serial_controller|U_score_serial_receiver|U_counter|reset\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_comparator|TC~combout\) # 
-- ((!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\ & 
-- (!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & !\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_comparator|TC~combout\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~combout\);

-- Location: CLKCTRL_G5
\U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_score_serial_controller|U_score_serial_receiver|U_counter|reset~clkctrl_outclk\);

-- Location: FF_X56_Y43_N21
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~0_combout\,
	clrn => \U_score_serial_controller|U_score_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\);

-- Location: LCCOMB_X56_Y43_N30
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U1|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U1|R~combout\ = \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ $ (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U1|R~combout\);

-- Location: FF_X56_Y43_N31
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U1|R~combout\,
	clrn => \U_score_serial_controller|U_score_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\);

-- Location: LCCOMB_X56_Y43_N10
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U3|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U3|R~combout\ = \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\ $ (((\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ & 
-- (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\ & \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U3|R~combout\);

-- Location: FF_X56_Y43_N11
\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_adder|U3|R~combout\,
	clrn => \U_score_serial_controller|U_score_serial_receiver|U_counter|ALT_INV_reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\);

-- Location: LCCOMB_X56_Y43_N18
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\ & 
-- (!\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\ & (!\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\ & !\U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U3|Q~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U0|Q~q\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U1|Q~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_counter|U_reg|U2|Q~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\);

-- Location: LCCOMB_X56_Y43_N2
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~3_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ & 
-- (((!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\ & \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\)))) # 
-- (!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\ & 
-- (!\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][1]~q\,
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~0_combout\,
	datac => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~3_combout\);

-- Location: FF_X56_Y43_N3
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~3_combout\,
	clrn => \ALT_INV_clear~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\);

-- Location: LCCOMB_X56_Y42_N0
\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\ = (!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & 
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\);

-- Location: FF_X56_Y42_N1
\U_score_serial_controller|U_score_dispatcher|CurrentState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_VALID~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_dispatcher|CurrentState~q\);

-- Location: LCCOMB_X56_Y43_N28
\U_score_serial_controller|U_score_dispatcher|wrd\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_dispatcher|wrd~combout\ = LCELL((!\U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\ & (!\U_score_serial_controller|U_score_dispatcher|CurrentState~q\ & 
-- \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_0~q\,
	datac => \U_score_serial_controller|U_score_dispatcher|CurrentState~q\,
	datad => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.state_bit_1~q\,
	combout => \U_score_serial_controller|U_score_dispatcher|wrd~combout\);

-- Location: CLKCTRL_G13
\U_score_serial_controller|U_score_dispatcher|wrd~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\);

-- Location: LCCOMB_X70_Y45_N30
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\ = 
-- \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][3]~q\,
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\);

-- Location: FF_X70_Y45_N31
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[6]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6));

-- Location: LCCOMB_X70_Y45_N2
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\);

-- Location: FF_X70_Y45_N3
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[5]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5));

-- Location: LCCOMB_X70_Y45_N20
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\);

-- Location: FF_X70_Y45_N21
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[4]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4));

-- Location: LCCOMB_X70_Y45_N18
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\);

-- Location: FF_X70_Y45_N19
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[3]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3));

-- Location: LCCOMB_X70_Y45_N10
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\);

-- Location: FF_X70_Y45_N11
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[2]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2));

-- Location: LCCOMB_X70_Y45_N4
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\);

-- Location: FF_X70_Y45_N5
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[1]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1));

-- Location: LCCOMB_X70_Y45_N6
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	combout => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\);

-- Location: FF_X70_Y45_N7
\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][4]~clkctrl_outclk\,
	d => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register[0]~feeder_combout\,
	ena => \U_score_serial_controller|U_score_serial_receiver|U_serial_control|CurrentState.STATE_DATA~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0));

-- Location: LCCOMB_X70_Y45_N12
\U_score_display|clear_reg|q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|clear_reg|q~0_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|clear_reg|q~0_combout\);

-- Location: LCCOMB_X70_Y45_N24
\U_score_display|clear_reg|q~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|clear_reg|q~1_combout\ = (\U_score_display|clear_reg|q~0_combout\ & (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3))) # (!\U_score_display|clear_reg|q~0_combout\ & ((\U_score_display|clear_reg|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|clear_reg|q~0_combout\,
	combout => \U_score_display|clear_reg|q~1_combout\);

-- Location: FF_X70_Y45_N25
\U_score_display|clear_reg|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|clear_reg|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|clear_reg|q~q\);

-- Location: LCCOMB_X65_Y50_N4
\U_score_display|circuit_gen:0:in_reg|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:in_reg|U1|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_display|circuit_gen:0:in_reg|U1|Q~feeder_combout\);

-- Location: LCCOMB_X70_Y45_N16
\U_score_display|decoder|dout[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout\(0) = (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- !\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout\(0));

-- Location: FF_X65_Y50_N5
\U_score_display|circuit_gen:0:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:0:in_reg|U1|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:in_reg|U1|Q~q\);

-- Location: LCCOMB_X70_Y45_N0
\U_score_display|decoder|dout[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout[6]~0_combout\ = (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout[6]~0_combout\);

-- Location: FF_X65_Y50_N3
\U_score_display|circuit_gen:0:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:0:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\);

-- Location: FF_X70_Y46_N17
\U_score_display|circuit_gen:0:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	sload => VCC,
	ena => \U_score_display|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:in_reg|U3|Q~q\);

-- Location: FF_X65_Y50_N23
\U_score_display|circuit_gen:0:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:0:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\);

-- Location: LCCOMB_X65_Y50_N14
\U_score_display|circuit_gen:0:in_reg|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:in_reg|U2|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_score_display|circuit_gen:0:in_reg|U2|Q~feeder_combout\);

-- Location: FF_X65_Y50_N15
\U_score_display|circuit_gen:0:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:0:in_reg|U2|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:in_reg|U2|Q~q\);

-- Location: FF_X65_Y50_N13
\U_score_display|circuit_gen:0:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:0:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\);

-- Location: LCCOMB_X70_Y46_N26
\U_score_display|circuit_gen:0:in_reg|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:in_reg|U0|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_display|circuit_gen:0:in_reg|U0|Q~feeder_combout\);

-- Location: FF_X70_Y46_N27
\U_score_display|circuit_gen:0:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:0:in_reg|U0|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:in_reg|U0|Q~q\);

-- Location: FF_X65_Y50_N1
\U_score_display|circuit_gen:0:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:0:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\);

-- Location: LCCOMB_X65_Y50_N6
\U_score_display|circuit_gen:0:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~0_combout\ = (\U_score_display|circuit_gen:0:out_reg|U3|Q~q\ & (((\U_score_display|circuit_gen:0:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:0:out_reg|U3|Q~q\ & 
-- (!\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ $ (\U_score_display|circuit_gen:0:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\U_score_display|circuit_gen:0:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~1_combout\ = (\U_score_display|circuit_gen:0:hex_digit|Ndout[0]~0_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datac => \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~0_combout\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X65_Y50_N26
\U_score_display|circuit_gen:0:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~2_combout\ = (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U3|Q~q\)) # 
-- (!\U_score_display|circuit_gen:0:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:0:out_reg|U3|Q~q\) # (\U_score_display|circuit_gen:0:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X65_Y50_N28
\U_score_display|circuit_gen:0:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~3_combout\ = (\U_score_display|circuit_gen:0:hex_digit|Ndout[1]~2_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~2_combout\,
	datad => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X65_Y50_N10
\U_score_display|circuit_gen:0:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~4_combout\ = (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U3|Q~q\)) # 
-- (!\U_score_display|circuit_gen:0:out_reg|U0|Q~q\ & ((!\U_score_display|circuit_gen:0:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U3|Q~q\ & 
-- (\U_score_display|circuit_gen:0:out_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X65_Y50_N18
\U_score_display|circuit_gen:0:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~5_combout\ = (\U_score_display|circuit_gen:0:hex_digit|Ndout[2]~4_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~4_combout\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X65_Y50_N22
\U_score_display|circuit_gen:0:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~6_combout\ = (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U0|Q~q\))) # 
-- (!\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ $ 
-- (((\U_score_display|circuit_gen:0:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X65_Y50_N8
\U_score_display|circuit_gen:0:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~7_combout\ = (\U_score_display|circuit_gen:0:hex_digit|Ndout[3]~6_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datac => \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~6_combout\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X65_Y50_N12
\U_score_display|circuit_gen:0:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~8_combout\ = (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U3|Q~q\) # ((\U_score_display|circuit_gen:0:out_reg|U0|Q~q\)))) # 
-- (!\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:0:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:0:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X65_Y50_N16
\U_score_display|circuit_gen:0:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~9_combout\ = (\U_score_display|circuit_gen:0:hex_digit|Ndout[4]~8_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~8_combout\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X65_Y50_N2
\U_score_display|circuit_gen:0:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~10_combout\ = (\U_score_display|circuit_gen:0:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U3|Q~q\) # 
-- (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\))) # (!\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:0:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:0:out_reg|U0|Q~q\ & 
-- (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:0:out_reg|U3|Q~q\) # (!\U_score_display|circuit_gen:0:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X65_Y50_N20
\U_score_display|circuit_gen:0:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~11_combout\ = (\U_score_display|circuit_gen:0:hex_digit|Ndout[5]~10_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~10_combout\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X65_Y50_N0
\U_score_display|circuit_gen:0:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~12_combout\ = (\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & (!\U_score_display|circuit_gen:0:out_reg|U3|Q~q\ & ((!\U_score_display|circuit_gen:0:out_reg|U0|Q~q\) # 
-- (!\U_score_display|circuit_gen:0:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:0:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:0:out_reg|U2|Q~q\ $ (((\U_score_display|circuit_gen:0:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:0:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:0:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:0:out_reg|U0|Q~q\,
	datad => \U_score_display|circuit_gen:0:out_reg|U3|Q~q\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X65_Y50_N30
\U_score_display|circuit_gen:0:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~13_combout\ = (!\U_score_display|circuit_gen:0:hex_digit|Ndout[6]~12_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~12_combout\,
	combout => \U_score_display|circuit_gen:0:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X71_Y46_N12
\U_score_display|circuit_gen:1:in_reg|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:in_reg|U1|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_display|circuit_gen:1:in_reg|U1|Q~feeder_combout\);

-- Location: LCCOMB_X70_Y45_N22
\U_score_display|decoder|dout[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout[1]~1_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- !\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout[1]~1_combout\);

-- Location: FF_X71_Y46_N13
\U_score_display|circuit_gen:1:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:1:in_reg|U1|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:in_reg|U1|Q~q\);

-- Location: FF_X71_Y46_N23
\U_score_display|circuit_gen:1:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:1:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\);

-- Location: LCCOMB_X71_Y46_N30
\U_score_display|circuit_gen:1:in_reg|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:in_reg|U3|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	combout => \U_score_display|circuit_gen:1:in_reg|U3|Q~feeder_combout\);

-- Location: FF_X71_Y46_N31
\U_score_display|circuit_gen:1:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:1:in_reg|U3|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:in_reg|U3|Q~q\);

-- Location: FF_X71_Y46_N9
\U_score_display|circuit_gen:1:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:1:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\);

-- Location: LCCOMB_X71_Y46_N16
\U_score_display|circuit_gen:1:in_reg|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:in_reg|U2|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_score_display|circuit_gen:1:in_reg|U2|Q~feeder_combout\);

-- Location: FF_X71_Y46_N17
\U_score_display|circuit_gen:1:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:1:in_reg|U2|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:in_reg|U2|Q~q\);

-- Location: FF_X71_Y46_N25
\U_score_display|circuit_gen:1:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:1:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\);

-- Location: LCCOMB_X71_Y46_N2
\U_score_display|circuit_gen:1:in_reg|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:in_reg|U0|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_display|circuit_gen:1:in_reg|U0|Q~feeder_combout\);

-- Location: FF_X71_Y46_N3
\U_score_display|circuit_gen:1:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:1:in_reg|U0|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:in_reg|U0|Q~q\);

-- Location: FF_X71_Y46_N19
\U_score_display|circuit_gen:1:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:1:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\);

-- Location: LCCOMB_X71_Y46_N26
\U_score_display|circuit_gen:1:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~0_combout\ = (\U_score_display|circuit_gen:1:out_reg|U3|Q~q\ & (((\U_score_display|circuit_gen:1:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:1:out_reg|U3|Q~q\ & 
-- (!\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ $ (\U_score_display|circuit_gen:1:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X70_Y46_N16
\U_score_display|circuit_gen:1:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~1_combout\ = (\U_score_display|circuit_gen:1:hex_digit|Ndout[0]~0_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~0_combout\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X71_Y46_N14
\U_score_display|circuit_gen:1:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~2_combout\ = (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U3|Q~q\)) # 
-- (!\U_score_display|circuit_gen:1:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:1:out_reg|U3|Q~q\) # (\U_score_display|circuit_gen:1:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X71_Y46_N6
\U_score_display|circuit_gen:1:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~3_combout\ = (\U_score_display|circuit_gen:1:hex_digit|Ndout[1]~2_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~2_combout\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X71_Y46_N4
\U_score_display|circuit_gen:1:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~4_combout\ = (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U3|Q~q\)) # 
-- (!\U_score_display|circuit_gen:1:out_reg|U0|Q~q\ & ((!\U_score_display|circuit_gen:1:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U3|Q~q\ & 
-- (\U_score_display|circuit_gen:1:out_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X71_Y46_N20
\U_score_display|circuit_gen:1:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~5_combout\ = (\U_score_display|circuit_gen:1:hex_digit|Ndout[2]~4_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~4_combout\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X71_Y46_N8
\U_score_display|circuit_gen:1:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~6_combout\ = (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U0|Q~q\))) # 
-- (!\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ $ 
-- (((\U_score_display|circuit_gen:1:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X71_Y46_N10
\U_score_display|circuit_gen:1:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~7_combout\ = (\U_score_display|circuit_gen:1:hex_digit|Ndout[3]~6_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~6_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X71_Y46_N24
\U_score_display|circuit_gen:1:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~8_combout\ = (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U3|Q~q\) # ((\U_score_display|circuit_gen:1:out_reg|U0|Q~q\)))) # 
-- (!\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:1:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:1:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X71_Y46_N28
\U_score_display|circuit_gen:1:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~9_combout\ = (\U_score_display|circuit_gen:1:hex_digit|Ndout[4]~8_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~8_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X71_Y46_N22
\U_score_display|circuit_gen:1:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~10_combout\ = (\U_score_display|circuit_gen:1:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U3|Q~q\) # 
-- (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\))) # (!\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:1:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:1:out_reg|U0|Q~q\ & 
-- (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:1:out_reg|U3|Q~q\) # (!\U_score_display|circuit_gen:1:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X70_Y46_N18
\U_score_display|circuit_gen:1:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~11_combout\ = (\U_score_display|circuit_gen:1:hex_digit|Ndout[5]~10_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~10_combout\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X71_Y46_N18
\U_score_display|circuit_gen:1:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~12_combout\ = (\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & (!\U_score_display|circuit_gen:1:out_reg|U3|Q~q\ & ((!\U_score_display|circuit_gen:1:out_reg|U0|Q~q\) # 
-- (!\U_score_display|circuit_gen:1:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:1:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:1:out_reg|U2|Q~q\ $ (((\U_score_display|circuit_gen:1:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:1:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:1:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:1:out_reg|U0|Q~q\,
	datad => \U_score_display|circuit_gen:1:out_reg|U3|Q~q\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X70_Y46_N12
\U_score_display|circuit_gen:1:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~13_combout\ = (!\U_score_display|circuit_gen:1:hex_digit|Ndout[6]~12_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~12_combout\,
	combout => \U_score_display|circuit_gen:1:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X72_Y46_N10
\U_score_display|circuit_gen:2:in_reg|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:in_reg|U1|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_display|circuit_gen:2:in_reg|U1|Q~feeder_combout\);

-- Location: LCCOMB_X70_Y45_N8
\U_score_display|decoder|dout[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout[2]~2_combout\ = (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- !\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout[2]~2_combout\);

-- Location: FF_X72_Y46_N11
\U_score_display|circuit_gen:2:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:2:in_reg|U1|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:in_reg|U1|Q~q\);

-- Location: FF_X72_Y46_N21
\U_score_display|circuit_gen:2:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:2:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\);

-- Location: LCCOMB_X72_Y42_N10
\U_score_display|circuit_gen:2:in_reg|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:in_reg|U3|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	combout => \U_score_display|circuit_gen:2:in_reg|U3|Q~feeder_combout\);

-- Location: FF_X72_Y42_N11
\U_score_display|circuit_gen:2:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:2:in_reg|U3|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:in_reg|U3|Q~q\);

-- Location: FF_X72_Y46_N3
\U_score_display|circuit_gen:2:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:2:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\);

-- Location: LCCOMB_X72_Y42_N12
\U_score_display|circuit_gen:2:in_reg|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:in_reg|U2|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_score_display|circuit_gen:2:in_reg|U2|Q~feeder_combout\);

-- Location: FF_X72_Y42_N13
\U_score_display|circuit_gen:2:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:2:in_reg|U2|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:in_reg|U2|Q~q\);

-- Location: FF_X72_Y46_N7
\U_score_display|circuit_gen:2:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:2:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\);

-- Location: LCCOMB_X72_Y46_N22
\U_score_display|circuit_gen:2:in_reg|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:in_reg|U0|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_display|circuit_gen:2:in_reg|U0|Q~feeder_combout\);

-- Location: FF_X72_Y46_N23
\U_score_display|circuit_gen:2:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:2:in_reg|U0|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:in_reg|U0|Q~q\);

-- Location: FF_X72_Y46_N19
\U_score_display|circuit_gen:2:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:2:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\);

-- Location: LCCOMB_X72_Y46_N26
\U_score_display|circuit_gen:2:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~0_combout\ = (\U_score_display|circuit_gen:2:out_reg|U3|Q~q\ & (((\U_score_display|circuit_gen:2:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (!\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ $ (\U_score_display|circuit_gen:2:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X72_Y46_N16
\U_score_display|circuit_gen:2:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~1_combout\ = (\U_score_display|circuit_gen:2:hex_digit|Ndout[0]~0_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~0_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X72_Y46_N4
\U_score_display|circuit_gen:2:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~2_combout\ = (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U3|Q~q\)) # 
-- (!\U_score_display|circuit_gen:2:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:2:out_reg|U3|Q~q\) # (\U_score_display|circuit_gen:2:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X72_Y46_N30
\U_score_display|circuit_gen:2:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~3_combout\ = (\U_score_display|circuit_gen:2:hex_digit|Ndout[1]~2_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~2_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X72_Y46_N8
\U_score_display|circuit_gen:2:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~4_combout\ = (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U3|Q~q\)) # 
-- (!\U_score_display|circuit_gen:2:out_reg|U0|Q~q\ & ((!\U_score_display|circuit_gen:2:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U3|Q~q\ & 
-- (\U_score_display|circuit_gen:2:out_reg|U2|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X72_Y46_N0
\U_score_display|circuit_gen:2:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~5_combout\ = (\U_score_display|circuit_gen:2:hex_digit|Ndout[2]~4_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~4_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X72_Y46_N2
\U_score_display|circuit_gen:2:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~6_combout\ = (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U0|Q~q\))) # 
-- (!\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ $ 
-- (((\U_score_display|circuit_gen:2:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X72_Y46_N24
\U_score_display|circuit_gen:2:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~7_combout\ = (\U_score_display|circuit_gen:2:hex_digit|Ndout[3]~6_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~6_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X72_Y46_N6
\U_score_display|circuit_gen:2:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~8_combout\ = (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U3|Q~q\) # ((\U_score_display|circuit_gen:2:out_reg|U0|Q~q\)))) # 
-- (!\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:2:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:2:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X72_Y46_N14
\U_score_display|circuit_gen:2:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~9_combout\ = (\U_score_display|circuit_gen:2:hex_digit|Ndout[4]~8_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~8_combout\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X72_Y46_N20
\U_score_display|circuit_gen:2:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~10_combout\ = (\U_score_display|circuit_gen:2:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U3|Q~q\) # 
-- (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\))) # (!\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:2:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:2:out_reg|U0|Q~q\ & 
-- (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:2:out_reg|U3|Q~q\) # (!\U_score_display|circuit_gen:2:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X72_Y46_N28
\U_score_display|circuit_gen:2:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~11_combout\ = (\U_score_display|circuit_gen:2:hex_digit|Ndout[5]~10_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~10_combout\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X72_Y46_N18
\U_score_display|circuit_gen:2:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~12_combout\ = (\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & (!\U_score_display|circuit_gen:2:out_reg|U3|Q~q\ & ((!\U_score_display|circuit_gen:2:out_reg|U0|Q~q\) # 
-- (!\U_score_display|circuit_gen:2:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:2:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:2:out_reg|U2|Q~q\ $ (((\U_score_display|circuit_gen:2:out_reg|U3|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:2:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:2:out_reg|U0|Q~q\,
	datad => \U_score_display|circuit_gen:2:out_reg|U3|Q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X72_Y46_N12
\U_score_display|circuit_gen:2:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~13_combout\ = (!\U_score_display|clear_reg|q~q\) # (!\U_score_display|circuit_gen:2:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~12_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:2:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X76_Y41_N8
\U_score_display|circuit_gen:3:in_reg|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:in_reg|U1|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_display|circuit_gen:3:in_reg|U1|Q~feeder_combout\);

-- Location: LCCOMB_X70_Y45_N26
\U_score_display|decoder|dout[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout[3]~3_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- !\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout[3]~3_combout\);

-- Location: FF_X76_Y41_N9
\U_score_display|circuit_gen:3:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:3:in_reg|U1|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:in_reg|U1|Q~q\);

-- Location: FF_X76_Y41_N11
\U_score_display|circuit_gen:3:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:3:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\);

-- Location: FF_X76_Y41_N29
\U_score_display|circuit_gen:3:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	sload => VCC,
	ena => \U_score_display|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:in_reg|U2|Q~q\);

-- Location: FF_X76_Y41_N13
\U_score_display|circuit_gen:3:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:3:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\);

-- Location: FF_X76_Y41_N23
\U_score_display|circuit_gen:3:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	sload => VCC,
	ena => \U_score_display|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:in_reg|U3|Q~q\);

-- Location: FF_X76_Y41_N31
\U_score_display|circuit_gen:3:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:3:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\);

-- Location: LCCOMB_X76_Y41_N4
\U_score_display|circuit_gen:3:in_reg|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:in_reg|U0|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_display|circuit_gen:3:in_reg|U0|Q~feeder_combout\);

-- Location: FF_X76_Y41_N5
\U_score_display|circuit_gen:3:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:3:in_reg|U0|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:in_reg|U0|Q~q\);

-- Location: FF_X76_Y41_N19
\U_score_display|circuit_gen:3:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:3:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\);

-- Location: LCCOMB_X76_Y41_N26
\U_score_display|circuit_gen:3:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~0_combout\ = (\U_score_display|circuit_gen:3:out_reg|U3|Q~q\ & (((\U_score_display|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:3:out_reg|U3|Q~q\ & 
-- (!\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ $ (\U_score_display|circuit_gen:3:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X76_Y41_N6
\U_score_display|circuit_gen:3:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~1_combout\ = (\U_score_display|circuit_gen:3:hex_digit|Ndout[0]~0_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~0_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X76_Y41_N24
\U_score_display|circuit_gen:3:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~2_combout\ = (\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U3|Q~q\))) # 
-- (!\U_score_display|circuit_gen:3:out_reg|U0|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U3|Q~q\) 
-- # (\U_score_display|circuit_gen:3:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X76_Y41_N16
\U_score_display|circuit_gen:3:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~3_combout\ = (\U_score_display|circuit_gen:3:hex_digit|Ndout[1]~2_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~2_combout\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X76_Y41_N14
\U_score_display|circuit_gen:3:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~4_combout\ = (\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U3|Q~q\))) # 
-- (!\U_score_display|circuit_gen:3:out_reg|U0|Q~q\ & (!\U_score_display|circuit_gen:3:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & 
-- (\U_score_display|circuit_gen:3:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X76_Y41_N20
\U_score_display|circuit_gen:3:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~5_combout\ = (\U_score_display|circuit_gen:3:hex_digit|Ndout[2]~4_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~4_combout\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X76_Y41_N30
\U_score_display|circuit_gen:3:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~6_combout\ = (\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U0|Q~q\))) # 
-- (!\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U3|Q~q\)))) # (!\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ $ 
-- (((\U_score_display|circuit_gen:3:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X76_Y41_N0
\U_score_display|circuit_gen:3:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~7_combout\ = (\U_score_display|circuit_gen:3:hex_digit|Ndout[3]~6_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~6_combout\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X76_Y41_N12
\U_score_display|circuit_gen:3:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~8_combout\ = (\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U3|Q~q\) # ((\U_score_display|circuit_gen:3:out_reg|U0|Q~q\)))) # 
-- (!\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:3:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:3:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X76_Y41_N2
\U_score_display|circuit_gen:3:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~9_combout\ = (\U_score_display|circuit_gen:3:hex_digit|Ndout[4]~8_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~8_combout\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X76_Y41_N10
\U_score_display|circuit_gen:3:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~10_combout\ = (\U_score_display|circuit_gen:3:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U3|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\)) # 
-- (!\U_score_display|circuit_gen:3:out_reg|U3|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U1|Q~q\) # (!\U_score_display|circuit_gen:3:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:3:out_reg|U0|Q~q\ & 
-- (\U_score_display|circuit_gen:3:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:3:out_reg|U3|Q~q\) # (!\U_score_display|circuit_gen:3:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X76_Y41_N22
\U_score_display|circuit_gen:3:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~11_combout\ = (\U_score_display|circuit_gen:3:hex_digit|Ndout[5]~10_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~10_combout\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X76_Y41_N18
\U_score_display|circuit_gen:3:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~12_combout\ = (\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:3:out_reg|U3|Q~q\ & ((!\U_score_display|circuit_gen:3:out_reg|U1|Q~q\) # 
-- (!\U_score_display|circuit_gen:3:out_reg|U0|Q~q\)))) # (!\U_score_display|circuit_gen:3:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:3:out_reg|U3|Q~q\ $ (((\U_score_display|circuit_gen:3:out_reg|U1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:3:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:3:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:3:out_reg|U0|Q~q\,
	datad => \U_score_display|circuit_gen:3:out_reg|U1|Q~q\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X75_Y41_N16
\U_score_display|circuit_gen:3:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~13_combout\ = (!\U_score_display|circuit_gen:3:hex_digit|Ndout[6]~12_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~12_combout\,
	combout => \U_score_display|circuit_gen:3:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y44_N4
\U_score_display|circuit_gen:4:in_reg|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:in_reg|U2|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_score_display|circuit_gen:4:in_reg|U2|Q~feeder_combout\);

-- Location: LCCOMB_X70_Y45_N28
\U_score_display|decoder|dout[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout[4]~4_combout\ = (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout[4]~4_combout\);

-- Location: FF_X74_Y44_N5
\U_score_display|circuit_gen:4:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:4:in_reg|U2|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:in_reg|U2|Q~q\);

-- Location: FF_X74_Y44_N3
\U_score_display|circuit_gen:4:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:4:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\);

-- Location: LCCOMB_X74_Y44_N30
\U_score_display|circuit_gen:4:in_reg|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:in_reg|U1|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_display|circuit_gen:4:in_reg|U1|Q~feeder_combout\);

-- Location: FF_X74_Y44_N31
\U_score_display|circuit_gen:4:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:4:in_reg|U1|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:in_reg|U1|Q~q\);

-- Location: FF_X74_Y44_N7
\U_score_display|circuit_gen:4:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:4:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\);

-- Location: LCCOMB_X74_Y44_N22
\U_score_display|circuit_gen:4:in_reg|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:in_reg|U3|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	combout => \U_score_display|circuit_gen:4:in_reg|U3|Q~feeder_combout\);

-- Location: FF_X74_Y44_N23
\U_score_display|circuit_gen:4:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:4:in_reg|U3|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:in_reg|U3|Q~q\);

-- Location: FF_X74_Y44_N25
\U_score_display|circuit_gen:4:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:4:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\);

-- Location: LCCOMB_X74_Y44_N16
\U_score_display|circuit_gen:4:in_reg|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:in_reg|U0|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_display|circuit_gen:4:in_reg|U0|Q~feeder_combout\);

-- Location: FF_X74_Y44_N17
\U_score_display|circuit_gen:4:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:4:in_reg|U0|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:in_reg|U0|Q~q\);

-- Location: FF_X74_Y44_N19
\U_score_display|circuit_gen:4:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:4:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\);

-- Location: LCCOMB_X74_Y44_N12
\U_score_display|circuit_gen:4:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~0_combout\ = (\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U2|Q~q\)) # (!\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ & 
-- (!\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ $ (\U_score_display|circuit_gen:4:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y44_N8
\U_score_display|circuit_gen:4:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~1_combout\ = (\U_score_display|circuit_gen:4:hex_digit|Ndout[0]~0_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~0_combout\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y44_N10
\U_score_display|circuit_gen:4:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~2_combout\ = (\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U3|Q~q\) # (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ $ 
-- (\U_score_display|circuit_gen:4:out_reg|U0|Q~q\)))) # (!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ & \U_score_display|circuit_gen:4:out_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y44_N0
\U_score_display|circuit_gen:4:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~3_combout\ = (\U_score_display|circuit_gen:4:hex_digit|Ndout[1]~2_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~2_combout\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y44_N28
\U_score_display|circuit_gen:4:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~4_combout\ = (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U3|Q~q\))) # 
-- (!\U_score_display|circuit_gen:4:out_reg|U0|Q~q\ & (!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & 
-- (\U_score_display|circuit_gen:4:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y44_N26
\U_score_display|circuit_gen:4:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~5_combout\ = (\U_score_display|circuit_gen:4:hex_digit|Ndout[2]~4_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~4_combout\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y44_N24
\U_score_display|circuit_gen:4:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~6_combout\ = (\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ $ (((!\U_score_display|circuit_gen:4:out_reg|U0|Q~q\))))) # 
-- (!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & 
-- ((\U_score_display|circuit_gen:4:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X72_Y42_N8
\U_score_display|circuit_gen:4:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~7_combout\ = (\U_score_display|circuit_gen:4:hex_digit|Ndout[3]~6_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~6_combout\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y44_N2
\U_score_display|circuit_gen:4:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~8_combout\ = (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U3|Q~q\) # ((\U_score_display|circuit_gen:4:out_reg|U0|Q~q\)))) # 
-- (!\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:4:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:4:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y44_N14
\U_score_display|circuit_gen:4:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~9_combout\ = (\U_score_display|circuit_gen:4:hex_digit|Ndout[4]~8_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datac => \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~8_combout\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y44_N6
\U_score_display|circuit_gen:4:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~10_combout\ = (\U_score_display|circuit_gen:4:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U2|Q~q\)) # 
-- (!\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U1|Q~q\) # (!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:4:out_reg|U0|Q~q\ & 
-- (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:4:out_reg|U3|Q~q\) # (!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y44_N20
\U_score_display|circuit_gen:4:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~11_combout\ = (\U_score_display|circuit_gen:4:hex_digit|Ndout[5]~10_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~10_combout\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y44_N18
\U_score_display|circuit_gen:4:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~12_combout\ = (\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & (!\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ & ((!\U_score_display|circuit_gen:4:out_reg|U2|Q~q\) # 
-- (!\U_score_display|circuit_gen:4:out_reg|U0|Q~q\)))) # (!\U_score_display|circuit_gen:4:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:4:out_reg|U3|Q~q\ $ (((\U_score_display|circuit_gen:4:out_reg|U2|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:4:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:4:out_reg|U0|Q~q\,
	datad => \U_score_display|circuit_gen:4:out_reg|U2|Q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X76_Y41_N28
\U_score_display|circuit_gen:4:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~13_combout\ = (!\U_score_display|clear_reg|q~q\) # (!\U_score_display|circuit_gen:4:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~12_combout\,
	datab => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:4:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X74_Y41_N26
\U_score_display|circuit_gen:5:in_reg|U2|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:in_reg|U2|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(5),
	combout => \U_score_display|circuit_gen:5:in_reg|U2|Q~feeder_combout\);

-- Location: LCCOMB_X70_Y45_N14
\U_score_display|decoder|dout[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|decoder|dout[5]~5_combout\ = (\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0) & (!\U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1) & 
-- \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(0),
	datab => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(1),
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(2),
	combout => \U_score_display|decoder|dout[5]~5_combout\);

-- Location: FF_X74_Y41_N27
\U_score_display|circuit_gen:5:in_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:5:in_reg|U2|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:in_reg|U2|Q~q\);

-- Location: FF_X74_Y41_N29
\U_score_display|circuit_gen:5:out_reg|U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:5:in_reg|U2|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\);

-- Location: LCCOMB_X74_Y41_N30
\U_score_display|circuit_gen:5:in_reg|U1|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:in_reg|U1|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(4),
	combout => \U_score_display|circuit_gen:5:in_reg|U1|Q~feeder_combout\);

-- Location: FF_X74_Y41_N31
\U_score_display|circuit_gen:5:in_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:5:in_reg|U1|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:in_reg|U1|Q~q\);

-- Location: FF_X74_Y41_N21
\U_score_display|circuit_gen:5:out_reg|U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:5:in_reg|U1|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\);

-- Location: LCCOMB_X74_Y41_N2
\U_score_display|circuit_gen:5:in_reg|U3|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:in_reg|U3|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(6),
	combout => \U_score_display|circuit_gen:5:in_reg|U3|Q~feeder_combout\);

-- Location: FF_X74_Y41_N3
\U_score_display|circuit_gen:5:in_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:5:in_reg|U3|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:in_reg|U3|Q~q\);

-- Location: FF_X74_Y41_N23
\U_score_display|circuit_gen:5:out_reg|U3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:5:in_reg|U3|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\);

-- Location: LCCOMB_X74_Y41_N14
\U_score_display|circuit_gen:5:in_reg|U0|Q~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:in_reg|U0|Q~feeder_combout\ = \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_score_serial_controller|U_score_serial_receiver|U_shift_reg|shift_register\(3),
	combout => \U_score_display|circuit_gen:5:in_reg|U0|Q~feeder_combout\);

-- Location: FF_X74_Y41_N15
\U_score_display|circuit_gen:5:in_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	d => \U_score_display|circuit_gen:5:in_reg|U0|Q~feeder_combout\,
	ena => \U_score_display|decoder|dout[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:in_reg|U0|Q~q\);

-- Location: FF_X74_Y41_N19
\U_score_display|circuit_gen:5:out_reg|U0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_score_serial_controller|U_score_dispatcher|wrd~clkctrl_outclk\,
	asdata => \U_score_display|circuit_gen:5:in_reg|U0|Q~q\,
	sload => VCC,
	ena => \U_score_display|decoder|dout[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\);

-- Location: LCCOMB_X74_Y41_N8
\U_score_display|circuit_gen:5:hex_digit|Ndout[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~0_combout\ = (\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\)) # (!\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ & 
-- (!\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ $ (\U_score_display|circuit_gen:5:out_reg|U0|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~0_combout\);

-- Location: LCCOMB_X74_Y41_N6
\U_score_display|circuit_gen:5:hex_digit|Ndout[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~1_combout\ = (\U_score_display|circuit_gen:5:hex_digit|Ndout[0]~0_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~0_combout\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[0]~1_combout\);

-- Location: LCCOMB_X74_Y41_N10
\U_score_display|circuit_gen:5:hex_digit|Ndout[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~2_combout\ = (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U3|Q~q\) # (\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ $ 
-- (\U_score_display|circuit_gen:5:out_reg|U0|Q~q\)))) # (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ & \U_score_display|circuit_gen:5:out_reg|U0|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~2_combout\);

-- Location: LCCOMB_X74_Y41_N0
\U_score_display|circuit_gen:5:hex_digit|Ndout[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~3_combout\ = (\U_score_display|circuit_gen:5:hex_digit|Ndout[1]~2_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~2_combout\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[1]~3_combout\);

-- Location: LCCOMB_X74_Y41_N12
\U_score_display|circuit_gen:5:hex_digit|Ndout[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~4_combout\ = (\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U3|Q~q\))) # 
-- (!\U_score_display|circuit_gen:5:out_reg|U0|Q~q\ & (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\)))) # (!\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & 
-- (\U_score_display|circuit_gen:5:out_reg|U3|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~4_combout\);

-- Location: LCCOMB_X74_Y41_N24
\U_score_display|circuit_gen:5:hex_digit|Ndout[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~5_combout\ = (\U_score_display|circuit_gen:5:hex_digit|Ndout[2]~4_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~4_combout\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[2]~5_combout\);

-- Location: LCCOMB_X74_Y41_N22
\U_score_display|circuit_gen:5:hex_digit|Ndout[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~6_combout\ = (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ $ (((!\U_score_display|circuit_gen:5:out_reg|U0|Q~q\))))) # 
-- (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & 
-- ((\U_score_display|circuit_gen:5:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~6_combout\);

-- Location: LCCOMB_X70_Y46_N30
\U_score_display|circuit_gen:5:hex_digit|Ndout[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~7_combout\ = (\U_score_display|circuit_gen:5:hex_digit|Ndout[3]~6_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~6_combout\,
	datad => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[3]~7_combout\);

-- Location: LCCOMB_X74_Y41_N28
\U_score_display|circuit_gen:5:hex_digit|Ndout[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~8_combout\ = (\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U3|Q~q\) # ((\U_score_display|circuit_gen:5:out_reg|U0|Q~q\)))) # 
-- (!\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:5:out_reg|U3|Q~q\)) # (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & 
-- ((\U_score_display|circuit_gen:5:out_reg|U0|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~8_combout\);

-- Location: LCCOMB_X74_Y41_N16
\U_score_display|circuit_gen:5:hex_digit|Ndout[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~9_combout\ = (\U_score_display|circuit_gen:5:hex_digit|Ndout[4]~8_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|clear_reg|q~q\,
	datad => \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~8_combout\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[4]~9_combout\);

-- Location: LCCOMB_X74_Y41_N20
\U_score_display|circuit_gen:5:hex_digit|Ndout[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~10_combout\ = (\U_score_display|circuit_gen:5:out_reg|U0|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\)) # 
-- (!\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U1|Q~q\) # (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\))))) # (!\U_score_display|circuit_gen:5:out_reg|U0|Q~q\ & 
-- (\U_score_display|circuit_gen:5:out_reg|U1|Q~q\ & ((\U_score_display|circuit_gen:5:out_reg|U3|Q~q\) # (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~10_combout\);

-- Location: LCCOMB_X74_Y41_N4
\U_score_display|circuit_gen:5:hex_digit|Ndout[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~11_combout\ = (\U_score_display|circuit_gen:5:hex_digit|Ndout[5]~10_combout\) # (!\U_score_display|clear_reg|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~10_combout\,
	datac => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[5]~11_combout\);

-- Location: LCCOMB_X74_Y41_N18
\U_score_display|circuit_gen:5:hex_digit|Ndout[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~12_combout\ = (\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & (!\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ & ((!\U_score_display|circuit_gen:5:out_reg|U1|Q~q\) # 
-- (!\U_score_display|circuit_gen:5:out_reg|U0|Q~q\)))) # (!\U_score_display|circuit_gen:5:out_reg|U2|Q~q\ & (\U_score_display|circuit_gen:5:out_reg|U3|Q~q\ $ (((\U_score_display|circuit_gen:5:out_reg|U1|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_score_display|circuit_gen:5:out_reg|U3|Q~q\,
	datab => \U_score_display|circuit_gen:5:out_reg|U2|Q~q\,
	datac => \U_score_display|circuit_gen:5:out_reg|U0|Q~q\,
	datad => \U_score_display|circuit_gen:5:out_reg|U1|Q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~12_combout\);

-- Location: LCCOMB_X70_Y46_N24
\U_score_display|circuit_gen:5:hex_digit|Ndout[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~13_combout\ = (!\U_score_display|clear_reg|q~q\) # (!\U_score_display|circuit_gen:5:hex_digit|Ndout[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~12_combout\,
	datad => \U_score_display|clear_reg|q~q\,
	combout => \U_score_display|circuit_gen:5:hex_digit|Ndout[6]~13_combout\);

-- Location: LCCOMB_X44_Y41_N24
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irsr_reg\(6),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\);

-- Location: FF_X44_Y41_N25
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][6]~q\);

-- Location: FF_X42_Y35_N1
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][2]~q\);

-- Location: FF_X43_Y34_N3
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \altera_internal_jtag~TCKUTAPclkctrl_outclk\,
	d => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~feeder_combout\,
	clrn => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|ALT_INV_clr_reg~q\,
	ena => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|irf_reg[1][5]~q\);

-- Location: LCCOMB_X54_Y37_N0
\auto_hub|~GND\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;

-- Location: LCCOMB_X37_Y34_N0
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~q\,
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|clr_reg~_wirecell_combout\);

-- Location: LCCOMB_X39_Y35_N4
\auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state\(0),
	combout => \auto_hub|instrumentation_fabric_with_node_gen:fabric_gen_new_way:with_jtag_input_gen:instrumentation_fabric|instrumentation_fabric|alt_sld_fab|sldfabric|jtag_hub_gen:real_sld_jtag_hub|shadow_jsm|state[0]~_wirecell_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


