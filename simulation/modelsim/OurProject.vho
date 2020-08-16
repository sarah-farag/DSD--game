-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/08/2019 22:00:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	OurProject IS
    PORT (
	clk1 : IN std_logic;
	buttons : IN std_logic_vector(1 DOWNTO 0);
	outl : BUFFER std_logic_vector(6 DOWNTO 0);
	outm : BUFFER std_logic_vector(6 DOWNTO 0);
	clkout : BUFFER std_logic
	);
END OurProject;

-- Design Ports Information
-- outl[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outl[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outl[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outl[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outl[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outl[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outl[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outm[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clkout	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttons[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk1	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF OurProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk1 : std_logic;
SIGNAL ww_buttons : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_outl : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outm : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clkout : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \gen|clk_1Hz_temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk1~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \outl[0]~output_o\ : std_logic;
SIGNAL \outl[1]~output_o\ : std_logic;
SIGNAL \outl[2]~output_o\ : std_logic;
SIGNAL \outl[3]~output_o\ : std_logic;
SIGNAL \outl[4]~output_o\ : std_logic;
SIGNAL \outl[5]~output_o\ : std_logic;
SIGNAL \outl[6]~output_o\ : std_logic;
SIGNAL \outm[0]~output_o\ : std_logic;
SIGNAL \outm[1]~output_o\ : std_logic;
SIGNAL \outm[2]~output_o\ : std_logic;
SIGNAL \outm[3]~output_o\ : std_logic;
SIGNAL \outm[4]~output_o\ : std_logic;
SIGNAL \outm[5]~output_o\ : std_logic;
SIGNAL \outm[6]~output_o\ : std_logic;
SIGNAL \clkout~output_o\ : std_logic;
SIGNAL \clk1~input_o\ : std_logic;
SIGNAL \clk1~inputclkctrl_outclk\ : std_logic;
SIGNAL \gen|clockcounter[0]~32_combout\ : std_logic;
SIGNAL \gen|clockcounter[0]~33\ : std_logic;
SIGNAL \gen|clockcounter[1]~34_combout\ : std_logic;
SIGNAL \gen|clockcounter[1]~35\ : std_logic;
SIGNAL \gen|clockcounter[2]~36_combout\ : std_logic;
SIGNAL \gen|clockcounter[2]~37\ : std_logic;
SIGNAL \gen|clockcounter[3]~38_combout\ : std_logic;
SIGNAL \gen|clockcounter[3]~39\ : std_logic;
SIGNAL \gen|clockcounter[4]~40_combout\ : std_logic;
SIGNAL \gen|clockcounter[4]~41\ : std_logic;
SIGNAL \gen|clockcounter[5]~42_combout\ : std_logic;
SIGNAL \gen|clockcounter[5]~43\ : std_logic;
SIGNAL \gen|clockcounter[6]~44_combout\ : std_logic;
SIGNAL \gen|clockcounter[6]~45\ : std_logic;
SIGNAL \gen|clockcounter[7]~46_combout\ : std_logic;
SIGNAL \gen|clockcounter[7]~47\ : std_logic;
SIGNAL \gen|clockcounter[8]~48_combout\ : std_logic;
SIGNAL \gen|clockcounter[8]~49\ : std_logic;
SIGNAL \gen|clockcounter[9]~50_combout\ : std_logic;
SIGNAL \gen|clockcounter[9]~51\ : std_logic;
SIGNAL \gen|clockcounter[10]~52_combout\ : std_logic;
SIGNAL \gen|clockcounter[10]~53\ : std_logic;
SIGNAL \gen|clockcounter[11]~54_combout\ : std_logic;
SIGNAL \gen|clockcounter[11]~55\ : std_logic;
SIGNAL \gen|clockcounter[12]~56_combout\ : std_logic;
SIGNAL \gen|clockcounter[12]~57\ : std_logic;
SIGNAL \gen|clockcounter[13]~58_combout\ : std_logic;
SIGNAL \gen|clockcounter[13]~59\ : std_logic;
SIGNAL \gen|clockcounter[14]~60_combout\ : std_logic;
SIGNAL \gen|clockcounter[14]~61\ : std_logic;
SIGNAL \gen|clockcounter[15]~62_combout\ : std_logic;
SIGNAL \gen|clockcounter[15]~63\ : std_logic;
SIGNAL \gen|clockcounter[16]~64_combout\ : std_logic;
SIGNAL \gen|clockcounter[16]~65\ : std_logic;
SIGNAL \gen|clockcounter[17]~66_combout\ : std_logic;
SIGNAL \gen|clockcounter[17]~67\ : std_logic;
SIGNAL \gen|clockcounter[18]~68_combout\ : std_logic;
SIGNAL \gen|clockcounter[18]~69\ : std_logic;
SIGNAL \gen|clockcounter[19]~70_combout\ : std_logic;
SIGNAL \gen|clockcounter[19]~71\ : std_logic;
SIGNAL \gen|clockcounter[20]~72_combout\ : std_logic;
SIGNAL \gen|clockcounter[20]~73\ : std_logic;
SIGNAL \gen|clockcounter[21]~74_combout\ : std_logic;
SIGNAL \gen|clockcounter[21]~75\ : std_logic;
SIGNAL \gen|clockcounter[22]~76_combout\ : std_logic;
SIGNAL \gen|clockcounter[22]~77\ : std_logic;
SIGNAL \gen|clockcounter[23]~78_combout\ : std_logic;
SIGNAL \gen|clockcounter[23]~79\ : std_logic;
SIGNAL \gen|clockcounter[24]~80_combout\ : std_logic;
SIGNAL \gen|clockcounter[24]~81\ : std_logic;
SIGNAL \gen|clockcounter[25]~82_combout\ : std_logic;
SIGNAL \gen|clockcounter[25]~83\ : std_logic;
SIGNAL \gen|clockcounter[26]~84_combout\ : std_logic;
SIGNAL \gen|clockcounter[26]~85\ : std_logic;
SIGNAL \gen|clockcounter[27]~86_combout\ : std_logic;
SIGNAL \gen|clockcounter[27]~87\ : std_logic;
SIGNAL \gen|clockcounter[28]~88_combout\ : std_logic;
SIGNAL \gen|clockcounter[28]~89\ : std_logic;
SIGNAL \gen|clockcounter[29]~90_combout\ : std_logic;
SIGNAL \gen|clockcounter[29]~91\ : std_logic;
SIGNAL \gen|clockcounter[30]~92_combout\ : std_logic;
SIGNAL \gen|clockcounter[30]~93\ : std_logic;
SIGNAL \gen|clockcounter[31]~94_combout\ : std_logic;
SIGNAL \gen|LessThan0~0_combout\ : std_logic;
SIGNAL \gen|LessThan0~1_combout\ : std_logic;
SIGNAL \gen|LessThan0~2_combout\ : std_logic;
SIGNAL \gen|LessThan0~4_combout\ : std_logic;
SIGNAL \gen|LessThan0~3_combout\ : std_logic;
SIGNAL \gen|LessThan0~5_combout\ : std_logic;
SIGNAL \gen|LessThan0~6_combout\ : std_logic;
SIGNAL \gen|LessThan0~7_combout\ : std_logic;
SIGNAL \gen|LessThan0~8_combout\ : std_logic;
SIGNAL \gen|clk_1Hz_temp~feeder_combout\ : std_logic;
SIGNAL \gen|clk_1Hz_temp~q\ : std_logic;
SIGNAL \gen|clk_1Hz_temp~clkctrl_outclk\ : std_logic;
SIGNAL \six|Add1~0_combout\ : std_logic;
SIGNAL \buttons[1]~input_o\ : std_logic;
SIGNAL \buttons[0]~input_o\ : std_logic;
SIGNAL \six|Equal3~0_combout\ : std_logic;
SIGNAL \six|Add1~1\ : std_logic;
SIGNAL \six|Add1~2_combout\ : std_logic;
SIGNAL \six|Add1~21\ : std_logic;
SIGNAL \six|Add1~22_combout\ : std_logic;
SIGNAL \six|Add1~23\ : std_logic;
SIGNAL \six|Add1~24_combout\ : std_logic;
SIGNAL \six|Add1~25\ : std_logic;
SIGNAL \six|Add1~26_combout\ : std_logic;
SIGNAL \six|Add1~27\ : std_logic;
SIGNAL \six|Add1~28_combout\ : std_logic;
SIGNAL \six|Add1~29\ : std_logic;
SIGNAL \six|Add1~30_combout\ : std_logic;
SIGNAL \six|Add1~31\ : std_logic;
SIGNAL \six|Add1~32_combout\ : std_logic;
SIGNAL \six|Add1~33\ : std_logic;
SIGNAL \six|Add1~34_combout\ : std_logic;
SIGNAL \six|Add1~35\ : std_logic;
SIGNAL \six|Add1~36_combout\ : std_logic;
SIGNAL \six|l[18]~feeder_combout\ : std_logic;
SIGNAL \six|Add1~37\ : std_logic;
SIGNAL \six|Add1~38_combout\ : std_logic;
SIGNAL \six|Add1~39\ : std_logic;
SIGNAL \six|Add1~40_combout\ : std_logic;
SIGNAL \six|Add1~41\ : std_logic;
SIGNAL \six|Add1~42_combout\ : std_logic;
SIGNAL \six|Add1~43\ : std_logic;
SIGNAL \six|Add1~44_combout\ : std_logic;
SIGNAL \six|Add1~45\ : std_logic;
SIGNAL \six|Add1~46_combout\ : std_logic;
SIGNAL \six|Add1~47\ : std_logic;
SIGNAL \six|Add1~48_combout\ : std_logic;
SIGNAL \six|Add1~49\ : std_logic;
SIGNAL \six|Add1~50_combout\ : std_logic;
SIGNAL \six|Equal5~2_combout\ : std_logic;
SIGNAL \six|Add1~51\ : std_logic;
SIGNAL \six|Add1~52_combout\ : std_logic;
SIGNAL \six|Add1~53\ : std_logic;
SIGNAL \six|Add1~54_combout\ : std_logic;
SIGNAL \six|Add1~55\ : std_logic;
SIGNAL \six|Add1~56_combout\ : std_logic;
SIGNAL \six|Add1~57\ : std_logic;
SIGNAL \six|Add1~58_combout\ : std_logic;
SIGNAL \six|Equal5~1_combout\ : std_logic;
SIGNAL \six|Add1~59\ : std_logic;
SIGNAL \six|Add1~60_combout\ : std_logic;
SIGNAL \six|Add1~61\ : std_logic;
SIGNAL \six|Add1~62_combout\ : std_logic;
SIGNAL \six|Equal5~0_combout\ : std_logic;
SIGNAL \six|Equal5~3_combout\ : std_logic;
SIGNAL \six|Equal5~4_combout\ : std_logic;
SIGNAL \six|l~1_combout\ : std_logic;
SIGNAL \six|Add1~3\ : std_logic;
SIGNAL \six|Add1~4_combout\ : std_logic;
SIGNAL \six|Add1~5\ : std_logic;
SIGNAL \six|Add1~7\ : std_logic;
SIGNAL \six|Add1~8_combout\ : std_logic;
SIGNAL \six|Add1~9\ : std_logic;
SIGNAL \six|Add1~10_combout\ : std_logic;
SIGNAL \six|Add1~11\ : std_logic;
SIGNAL \six|Add1~12_combout\ : std_logic;
SIGNAL \six|Add1~13\ : std_logic;
SIGNAL \six|Add1~14_combout\ : std_logic;
SIGNAL \six|Add1~15\ : std_logic;
SIGNAL \six|Add1~16_combout\ : std_logic;
SIGNAL \six|Add1~17\ : std_logic;
SIGNAL \six|Add1~18_combout\ : std_logic;
SIGNAL \six|Add1~19\ : std_logic;
SIGNAL \six|Add1~20_combout\ : std_logic;
SIGNAL \six|Equal5~6_combout\ : std_logic;
SIGNAL \six|Equal5~8_combout\ : std_logic;
SIGNAL \six|Equal5~7_combout\ : std_logic;
SIGNAL \six|Equal5~5_combout\ : std_logic;
SIGNAL \six|Equal5~9_combout\ : std_logic;
SIGNAL \six|Add1~6_combout\ : std_logic;
SIGNAL \six|l~0_combout\ : std_logic;
SIGNAL \sevenl|output[0]~0_combout\ : std_logic;
SIGNAL \sevenl|output[1]~1_combout\ : std_logic;
SIGNAL \sevenl|output[2]~2_combout\ : std_logic;
SIGNAL \sevenl|output[3]~3_combout\ : std_logic;
SIGNAL \sevenl|output[4]~4_combout\ : std_logic;
SIGNAL \sevenl|output[5]~5_combout\ : std_logic;
SIGNAL \sevenl|output[6]~6_combout\ : std_logic;
SIGNAL \six|Add0~0_combout\ : std_logic;
SIGNAL \six|m[3]~0_combout\ : std_logic;
SIGNAL \six|Add0~1\ : std_logic;
SIGNAL \six|Add0~2_combout\ : std_logic;
SIGNAL \six|Add0~3\ : std_logic;
SIGNAL \six|Add0~4_combout\ : std_logic;
SIGNAL \six|m~1_combout\ : std_logic;
SIGNAL \six|Add0~5\ : std_logic;
SIGNAL \six|Add0~6_combout\ : std_logic;
SIGNAL \six|Add0~7\ : std_logic;
SIGNAL \six|Add0~8_combout\ : std_logic;
SIGNAL \six|Add0~9\ : std_logic;
SIGNAL \six|Add0~10_combout\ : std_logic;
SIGNAL \six|Add0~11\ : std_logic;
SIGNAL \six|Add0~12_combout\ : std_logic;
SIGNAL \six|Add0~13\ : std_logic;
SIGNAL \six|Add0~14_combout\ : std_logic;
SIGNAL \six|Add0~15\ : std_logic;
SIGNAL \six|Add0~16_combout\ : std_logic;
SIGNAL \six|Add0~17\ : std_logic;
SIGNAL \six|Add0~18_combout\ : std_logic;
SIGNAL \six|Add0~19\ : std_logic;
SIGNAL \six|Add0~20_combout\ : std_logic;
SIGNAL \six|Add0~21\ : std_logic;
SIGNAL \six|Add0~22_combout\ : std_logic;
SIGNAL \six|process_0~7_combout\ : std_logic;
SIGNAL \six|Add0~23\ : std_logic;
SIGNAL \six|Add0~24_combout\ : std_logic;
SIGNAL \six|Add0~25\ : std_logic;
SIGNAL \six|Add0~26_combout\ : std_logic;
SIGNAL \six|Add0~27\ : std_logic;
SIGNAL \six|Add0~28_combout\ : std_logic;
SIGNAL \six|Add0~29\ : std_logic;
SIGNAL \six|Add0~30_combout\ : std_logic;
SIGNAL \six|Add0~31\ : std_logic;
SIGNAL \six|Add0~32_combout\ : std_logic;
SIGNAL \six|Add0~33\ : std_logic;
SIGNAL \six|Add0~34_combout\ : std_logic;
SIGNAL \six|Add0~35\ : std_logic;
SIGNAL \six|Add0~36_combout\ : std_logic;
SIGNAL \six|Add0~37\ : std_logic;
SIGNAL \six|Add0~38_combout\ : std_logic;
SIGNAL \six|process_0~5_combout\ : std_logic;
SIGNAL \six|process_0~8_combout\ : std_logic;
SIGNAL \six|process_0~6_combout\ : std_logic;
SIGNAL \six|process_0~9_combout\ : std_logic;
SIGNAL \six|Add0~39\ : std_logic;
SIGNAL \six|Add0~40_combout\ : std_logic;
SIGNAL \six|Add0~41\ : std_logic;
SIGNAL \six|Add0~42_combout\ : std_logic;
SIGNAL \six|Add0~43\ : std_logic;
SIGNAL \six|Add0~44_combout\ : std_logic;
SIGNAL \six|Add0~45\ : std_logic;
SIGNAL \six|Add0~46_combout\ : std_logic;
SIGNAL \six|Add0~47\ : std_logic;
SIGNAL \six|Add0~48_combout\ : std_logic;
SIGNAL \six|Add0~49\ : std_logic;
SIGNAL \six|Add0~50_combout\ : std_logic;
SIGNAL \six|Add0~51\ : std_logic;
SIGNAL \six|Add0~52_combout\ : std_logic;
SIGNAL \six|Add0~53\ : std_logic;
SIGNAL \six|Add0~54_combout\ : std_logic;
SIGNAL \six|process_0~2_combout\ : std_logic;
SIGNAL \six|Add0~55\ : std_logic;
SIGNAL \six|Add0~56_combout\ : std_logic;
SIGNAL \six|Add0~57\ : std_logic;
SIGNAL \six|Add0~58_combout\ : std_logic;
SIGNAL \six|Add0~59\ : std_logic;
SIGNAL \six|Add0~60_combout\ : std_logic;
SIGNAL \six|Add0~61\ : std_logic;
SIGNAL \six|Add0~62_combout\ : std_logic;
SIGNAL \six|process_0~1_combout\ : std_logic;
SIGNAL \six|process_0~3_combout\ : std_logic;
SIGNAL \six|process_0~0_combout\ : std_logic;
SIGNAL \six|process_0~4_combout\ : std_logic;
SIGNAL \six|process_0~10_combout\ : std_logic;
SIGNAL \six|m~2_combout\ : std_logic;
SIGNAL \sevenm|output[0]~0_combout\ : std_logic;
SIGNAL \sevenm|output[1]~1_combout\ : std_logic;
SIGNAL \sevenm|output[2]~2_combout\ : std_logic;
SIGNAL \sevenm|output[3]~3_combout\ : std_logic;
SIGNAL \sevenm|output[4]~4_combout\ : std_logic;
SIGNAL \sevenm|output[5]~5_combout\ : std_logic;
SIGNAL \sevenm|output[6]~6_combout\ : std_logic;
SIGNAL \gen|clockcounter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \six|l\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \six|m\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk1 <= clk1;
ww_buttons <= buttons;
outl <= ww_outl;
outm <= ww_outm;
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\gen|clk_1Hz_temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \gen|clk_1Hz_temp~q\);

\clk1~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk1~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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

-- Location: IOOBUF_X58_Y54_N16
\outl[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \outl[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\outl[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \outl[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\outl[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \outl[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\outl[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \outl[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\outl[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \outl[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\outl[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \outl[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\outl[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenl|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \outl[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\outm[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[0]~0_combout\,
	devoe => ww_devoe,
	o => \outm[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\outm[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[1]~1_combout\,
	devoe => ww_devoe,
	o => \outm[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\outm[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[2]~2_combout\,
	devoe => ww_devoe,
	o => \outm[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\outm[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[3]~3_combout\,
	devoe => ww_devoe,
	o => \outm[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\outm[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[4]~4_combout\,
	devoe => ww_devoe,
	o => \outm[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\outm[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[5]~5_combout\,
	devoe => ww_devoe,
	o => \outm[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\outm[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenm|output[6]~6_combout\,
	devoe => ww_devoe,
	o => \outm[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\clkout~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clkout~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk1,
	o => \clk1~input_o\);

-- Location: CLKCTRL_G19
\clk1~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk1~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk1~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y24_N0
\gen|clockcounter[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[0]~32_combout\ = \gen|clockcounter\(0) $ (VCC)
-- \gen|clockcounter[0]~33\ = CARRY(\gen|clockcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(0),
	datad => VCC,
	combout => \gen|clockcounter[0]~32_combout\,
	cout => \gen|clockcounter[0]~33\);

-- Location: FF_X30_Y24_N1
\gen|clockcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[0]~32_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(0));

-- Location: LCCOMB_X30_Y24_N2
\gen|clockcounter[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[1]~34_combout\ = (\gen|clockcounter\(1) & (!\gen|clockcounter[0]~33\)) # (!\gen|clockcounter\(1) & ((\gen|clockcounter[0]~33\) # (GND)))
-- \gen|clockcounter[1]~35\ = CARRY((!\gen|clockcounter[0]~33\) # (!\gen|clockcounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(1),
	datad => VCC,
	cin => \gen|clockcounter[0]~33\,
	combout => \gen|clockcounter[1]~34_combout\,
	cout => \gen|clockcounter[1]~35\);

-- Location: FF_X30_Y24_N3
\gen|clockcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[1]~34_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(1));

-- Location: LCCOMB_X30_Y24_N4
\gen|clockcounter[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[2]~36_combout\ = (\gen|clockcounter\(2) & (\gen|clockcounter[1]~35\ $ (GND))) # (!\gen|clockcounter\(2) & (!\gen|clockcounter[1]~35\ & VCC))
-- \gen|clockcounter[2]~37\ = CARRY((\gen|clockcounter\(2) & !\gen|clockcounter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(2),
	datad => VCC,
	cin => \gen|clockcounter[1]~35\,
	combout => \gen|clockcounter[2]~36_combout\,
	cout => \gen|clockcounter[2]~37\);

-- Location: FF_X30_Y24_N5
\gen|clockcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[2]~36_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(2));

-- Location: LCCOMB_X30_Y24_N6
\gen|clockcounter[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[3]~38_combout\ = (\gen|clockcounter\(3) & (!\gen|clockcounter[2]~37\)) # (!\gen|clockcounter\(3) & ((\gen|clockcounter[2]~37\) # (GND)))
-- \gen|clockcounter[3]~39\ = CARRY((!\gen|clockcounter[2]~37\) # (!\gen|clockcounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(3),
	datad => VCC,
	cin => \gen|clockcounter[2]~37\,
	combout => \gen|clockcounter[3]~38_combout\,
	cout => \gen|clockcounter[3]~39\);

-- Location: FF_X30_Y24_N7
\gen|clockcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[3]~38_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(3));

-- Location: LCCOMB_X30_Y24_N8
\gen|clockcounter[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[4]~40_combout\ = (\gen|clockcounter\(4) & (\gen|clockcounter[3]~39\ $ (GND))) # (!\gen|clockcounter\(4) & (!\gen|clockcounter[3]~39\ & VCC))
-- \gen|clockcounter[4]~41\ = CARRY((\gen|clockcounter\(4) & !\gen|clockcounter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(4),
	datad => VCC,
	cin => \gen|clockcounter[3]~39\,
	combout => \gen|clockcounter[4]~40_combout\,
	cout => \gen|clockcounter[4]~41\);

-- Location: FF_X30_Y24_N9
\gen|clockcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[4]~40_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(4));

-- Location: LCCOMB_X30_Y24_N10
\gen|clockcounter[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[5]~42_combout\ = (\gen|clockcounter\(5) & (!\gen|clockcounter[4]~41\)) # (!\gen|clockcounter\(5) & ((\gen|clockcounter[4]~41\) # (GND)))
-- \gen|clockcounter[5]~43\ = CARRY((!\gen|clockcounter[4]~41\) # (!\gen|clockcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(5),
	datad => VCC,
	cin => \gen|clockcounter[4]~41\,
	combout => \gen|clockcounter[5]~42_combout\,
	cout => \gen|clockcounter[5]~43\);

-- Location: FF_X30_Y24_N11
\gen|clockcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[5]~42_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(5));

-- Location: LCCOMB_X30_Y24_N12
\gen|clockcounter[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[6]~44_combout\ = (\gen|clockcounter\(6) & (\gen|clockcounter[5]~43\ $ (GND))) # (!\gen|clockcounter\(6) & (!\gen|clockcounter[5]~43\ & VCC))
-- \gen|clockcounter[6]~45\ = CARRY((\gen|clockcounter\(6) & !\gen|clockcounter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(6),
	datad => VCC,
	cin => \gen|clockcounter[5]~43\,
	combout => \gen|clockcounter[6]~44_combout\,
	cout => \gen|clockcounter[6]~45\);

-- Location: FF_X30_Y24_N13
\gen|clockcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[6]~44_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(6));

-- Location: LCCOMB_X30_Y24_N14
\gen|clockcounter[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[7]~46_combout\ = (\gen|clockcounter\(7) & (!\gen|clockcounter[6]~45\)) # (!\gen|clockcounter\(7) & ((\gen|clockcounter[6]~45\) # (GND)))
-- \gen|clockcounter[7]~47\ = CARRY((!\gen|clockcounter[6]~45\) # (!\gen|clockcounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(7),
	datad => VCC,
	cin => \gen|clockcounter[6]~45\,
	combout => \gen|clockcounter[7]~46_combout\,
	cout => \gen|clockcounter[7]~47\);

-- Location: FF_X30_Y24_N15
\gen|clockcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[7]~46_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(7));

-- Location: LCCOMB_X30_Y24_N16
\gen|clockcounter[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[8]~48_combout\ = (\gen|clockcounter\(8) & (\gen|clockcounter[7]~47\ $ (GND))) # (!\gen|clockcounter\(8) & (!\gen|clockcounter[7]~47\ & VCC))
-- \gen|clockcounter[8]~49\ = CARRY((\gen|clockcounter\(8) & !\gen|clockcounter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(8),
	datad => VCC,
	cin => \gen|clockcounter[7]~47\,
	combout => \gen|clockcounter[8]~48_combout\,
	cout => \gen|clockcounter[8]~49\);

-- Location: FF_X30_Y24_N17
\gen|clockcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[8]~48_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(8));

-- Location: LCCOMB_X30_Y24_N18
\gen|clockcounter[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[9]~50_combout\ = (\gen|clockcounter\(9) & (!\gen|clockcounter[8]~49\)) # (!\gen|clockcounter\(9) & ((\gen|clockcounter[8]~49\) # (GND)))
-- \gen|clockcounter[9]~51\ = CARRY((!\gen|clockcounter[8]~49\) # (!\gen|clockcounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(9),
	datad => VCC,
	cin => \gen|clockcounter[8]~49\,
	combout => \gen|clockcounter[9]~50_combout\,
	cout => \gen|clockcounter[9]~51\);

-- Location: FF_X30_Y24_N19
\gen|clockcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[9]~50_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(9));

-- Location: LCCOMB_X30_Y24_N20
\gen|clockcounter[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[10]~52_combout\ = (\gen|clockcounter\(10) & (\gen|clockcounter[9]~51\ $ (GND))) # (!\gen|clockcounter\(10) & (!\gen|clockcounter[9]~51\ & VCC))
-- \gen|clockcounter[10]~53\ = CARRY((\gen|clockcounter\(10) & !\gen|clockcounter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(10),
	datad => VCC,
	cin => \gen|clockcounter[9]~51\,
	combout => \gen|clockcounter[10]~52_combout\,
	cout => \gen|clockcounter[10]~53\);

-- Location: FF_X30_Y24_N21
\gen|clockcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[10]~52_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(10));

-- Location: LCCOMB_X30_Y24_N22
\gen|clockcounter[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[11]~54_combout\ = (\gen|clockcounter\(11) & (!\gen|clockcounter[10]~53\)) # (!\gen|clockcounter\(11) & ((\gen|clockcounter[10]~53\) # (GND)))
-- \gen|clockcounter[11]~55\ = CARRY((!\gen|clockcounter[10]~53\) # (!\gen|clockcounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(11),
	datad => VCC,
	cin => \gen|clockcounter[10]~53\,
	combout => \gen|clockcounter[11]~54_combout\,
	cout => \gen|clockcounter[11]~55\);

-- Location: FF_X30_Y24_N23
\gen|clockcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[11]~54_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(11));

-- Location: LCCOMB_X30_Y24_N24
\gen|clockcounter[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[12]~56_combout\ = (\gen|clockcounter\(12) & (\gen|clockcounter[11]~55\ $ (GND))) # (!\gen|clockcounter\(12) & (!\gen|clockcounter[11]~55\ & VCC))
-- \gen|clockcounter[12]~57\ = CARRY((\gen|clockcounter\(12) & !\gen|clockcounter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(12),
	datad => VCC,
	cin => \gen|clockcounter[11]~55\,
	combout => \gen|clockcounter[12]~56_combout\,
	cout => \gen|clockcounter[12]~57\);

-- Location: FF_X30_Y24_N25
\gen|clockcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[12]~56_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(12));

-- Location: LCCOMB_X30_Y24_N26
\gen|clockcounter[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[13]~58_combout\ = (\gen|clockcounter\(13) & (!\gen|clockcounter[12]~57\)) # (!\gen|clockcounter\(13) & ((\gen|clockcounter[12]~57\) # (GND)))
-- \gen|clockcounter[13]~59\ = CARRY((!\gen|clockcounter[12]~57\) # (!\gen|clockcounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(13),
	datad => VCC,
	cin => \gen|clockcounter[12]~57\,
	combout => \gen|clockcounter[13]~58_combout\,
	cout => \gen|clockcounter[13]~59\);

-- Location: FF_X30_Y24_N27
\gen|clockcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[13]~58_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(13));

-- Location: LCCOMB_X30_Y24_N28
\gen|clockcounter[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[14]~60_combout\ = (\gen|clockcounter\(14) & (\gen|clockcounter[13]~59\ $ (GND))) # (!\gen|clockcounter\(14) & (!\gen|clockcounter[13]~59\ & VCC))
-- \gen|clockcounter[14]~61\ = CARRY((\gen|clockcounter\(14) & !\gen|clockcounter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(14),
	datad => VCC,
	cin => \gen|clockcounter[13]~59\,
	combout => \gen|clockcounter[14]~60_combout\,
	cout => \gen|clockcounter[14]~61\);

-- Location: FF_X30_Y24_N29
\gen|clockcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[14]~60_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(14));

-- Location: LCCOMB_X30_Y24_N30
\gen|clockcounter[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[15]~62_combout\ = (\gen|clockcounter\(15) & (!\gen|clockcounter[14]~61\)) # (!\gen|clockcounter\(15) & ((\gen|clockcounter[14]~61\) # (GND)))
-- \gen|clockcounter[15]~63\ = CARRY((!\gen|clockcounter[14]~61\) # (!\gen|clockcounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(15),
	datad => VCC,
	cin => \gen|clockcounter[14]~61\,
	combout => \gen|clockcounter[15]~62_combout\,
	cout => \gen|clockcounter[15]~63\);

-- Location: FF_X30_Y24_N31
\gen|clockcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[15]~62_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(15));

-- Location: LCCOMB_X30_Y23_N0
\gen|clockcounter[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[16]~64_combout\ = (\gen|clockcounter\(16) & (\gen|clockcounter[15]~63\ $ (GND))) # (!\gen|clockcounter\(16) & (!\gen|clockcounter[15]~63\ & VCC))
-- \gen|clockcounter[16]~65\ = CARRY((\gen|clockcounter\(16) & !\gen|clockcounter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(16),
	datad => VCC,
	cin => \gen|clockcounter[15]~63\,
	combout => \gen|clockcounter[16]~64_combout\,
	cout => \gen|clockcounter[16]~65\);

-- Location: FF_X30_Y23_N1
\gen|clockcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[16]~64_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(16));

-- Location: LCCOMB_X30_Y23_N2
\gen|clockcounter[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[17]~66_combout\ = (\gen|clockcounter\(17) & (!\gen|clockcounter[16]~65\)) # (!\gen|clockcounter\(17) & ((\gen|clockcounter[16]~65\) # (GND)))
-- \gen|clockcounter[17]~67\ = CARRY((!\gen|clockcounter[16]~65\) # (!\gen|clockcounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(17),
	datad => VCC,
	cin => \gen|clockcounter[16]~65\,
	combout => \gen|clockcounter[17]~66_combout\,
	cout => \gen|clockcounter[17]~67\);

-- Location: FF_X29_Y24_N15
\gen|clockcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \gen|clockcounter[17]~66_combout\,
	sclr => \gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(17));

-- Location: LCCOMB_X30_Y23_N4
\gen|clockcounter[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[18]~68_combout\ = (\gen|clockcounter\(18) & (\gen|clockcounter[17]~67\ $ (GND))) # (!\gen|clockcounter\(18) & (!\gen|clockcounter[17]~67\ & VCC))
-- \gen|clockcounter[18]~69\ = CARRY((\gen|clockcounter\(18) & !\gen|clockcounter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(18),
	datad => VCC,
	cin => \gen|clockcounter[17]~67\,
	combout => \gen|clockcounter[18]~68_combout\,
	cout => \gen|clockcounter[18]~69\);

-- Location: FF_X29_Y24_N19
\gen|clockcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \gen|clockcounter[18]~68_combout\,
	sclr => \gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(18));

-- Location: LCCOMB_X30_Y23_N6
\gen|clockcounter[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[19]~70_combout\ = (\gen|clockcounter\(19) & (!\gen|clockcounter[18]~69\)) # (!\gen|clockcounter\(19) & ((\gen|clockcounter[18]~69\) # (GND)))
-- \gen|clockcounter[19]~71\ = CARRY((!\gen|clockcounter[18]~69\) # (!\gen|clockcounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(19),
	datad => VCC,
	cin => \gen|clockcounter[18]~69\,
	combout => \gen|clockcounter[19]~70_combout\,
	cout => \gen|clockcounter[19]~71\);

-- Location: FF_X29_Y24_N5
\gen|clockcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \gen|clockcounter[19]~70_combout\,
	sclr => \gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(19));

-- Location: LCCOMB_X30_Y23_N8
\gen|clockcounter[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[20]~72_combout\ = (\gen|clockcounter\(20) & (\gen|clockcounter[19]~71\ $ (GND))) # (!\gen|clockcounter\(20) & (!\gen|clockcounter[19]~71\ & VCC))
-- \gen|clockcounter[20]~73\ = CARRY((\gen|clockcounter\(20) & !\gen|clockcounter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(20),
	datad => VCC,
	cin => \gen|clockcounter[19]~71\,
	combout => \gen|clockcounter[20]~72_combout\,
	cout => \gen|clockcounter[20]~73\);

-- Location: FF_X29_Y24_N11
\gen|clockcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	asdata => \gen|clockcounter[20]~72_combout\,
	sclr => \gen|LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(20));

-- Location: LCCOMB_X30_Y23_N10
\gen|clockcounter[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[21]~74_combout\ = (\gen|clockcounter\(21) & (!\gen|clockcounter[20]~73\)) # (!\gen|clockcounter\(21) & ((\gen|clockcounter[20]~73\) # (GND)))
-- \gen|clockcounter[21]~75\ = CARRY((!\gen|clockcounter[20]~73\) # (!\gen|clockcounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(21),
	datad => VCC,
	cin => \gen|clockcounter[20]~73\,
	combout => \gen|clockcounter[21]~74_combout\,
	cout => \gen|clockcounter[21]~75\);

-- Location: FF_X30_Y23_N11
\gen|clockcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[21]~74_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(21));

-- Location: LCCOMB_X30_Y23_N12
\gen|clockcounter[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[22]~76_combout\ = (\gen|clockcounter\(22) & (\gen|clockcounter[21]~75\ $ (GND))) # (!\gen|clockcounter\(22) & (!\gen|clockcounter[21]~75\ & VCC))
-- \gen|clockcounter[22]~77\ = CARRY((\gen|clockcounter\(22) & !\gen|clockcounter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(22),
	datad => VCC,
	cin => \gen|clockcounter[21]~75\,
	combout => \gen|clockcounter[22]~76_combout\,
	cout => \gen|clockcounter[22]~77\);

-- Location: FF_X30_Y23_N13
\gen|clockcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[22]~76_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(22));

-- Location: LCCOMB_X30_Y23_N14
\gen|clockcounter[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[23]~78_combout\ = (\gen|clockcounter\(23) & (!\gen|clockcounter[22]~77\)) # (!\gen|clockcounter\(23) & ((\gen|clockcounter[22]~77\) # (GND)))
-- \gen|clockcounter[23]~79\ = CARRY((!\gen|clockcounter[22]~77\) # (!\gen|clockcounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(23),
	datad => VCC,
	cin => \gen|clockcounter[22]~77\,
	combout => \gen|clockcounter[23]~78_combout\,
	cout => \gen|clockcounter[23]~79\);

-- Location: FF_X30_Y23_N15
\gen|clockcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[23]~78_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(23));

-- Location: LCCOMB_X30_Y23_N16
\gen|clockcounter[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[24]~80_combout\ = (\gen|clockcounter\(24) & (\gen|clockcounter[23]~79\ $ (GND))) # (!\gen|clockcounter\(24) & (!\gen|clockcounter[23]~79\ & VCC))
-- \gen|clockcounter[24]~81\ = CARRY((\gen|clockcounter\(24) & !\gen|clockcounter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(24),
	datad => VCC,
	cin => \gen|clockcounter[23]~79\,
	combout => \gen|clockcounter[24]~80_combout\,
	cout => \gen|clockcounter[24]~81\);

-- Location: FF_X30_Y23_N17
\gen|clockcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[24]~80_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(24));

-- Location: LCCOMB_X30_Y23_N18
\gen|clockcounter[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[25]~82_combout\ = (\gen|clockcounter\(25) & (!\gen|clockcounter[24]~81\)) # (!\gen|clockcounter\(25) & ((\gen|clockcounter[24]~81\) # (GND)))
-- \gen|clockcounter[25]~83\ = CARRY((!\gen|clockcounter[24]~81\) # (!\gen|clockcounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(25),
	datad => VCC,
	cin => \gen|clockcounter[24]~81\,
	combout => \gen|clockcounter[25]~82_combout\,
	cout => \gen|clockcounter[25]~83\);

-- Location: FF_X30_Y23_N19
\gen|clockcounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[25]~82_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(25));

-- Location: LCCOMB_X30_Y23_N20
\gen|clockcounter[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[26]~84_combout\ = (\gen|clockcounter\(26) & (\gen|clockcounter[25]~83\ $ (GND))) # (!\gen|clockcounter\(26) & (!\gen|clockcounter[25]~83\ & VCC))
-- \gen|clockcounter[26]~85\ = CARRY((\gen|clockcounter\(26) & !\gen|clockcounter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(26),
	datad => VCC,
	cin => \gen|clockcounter[25]~83\,
	combout => \gen|clockcounter[26]~84_combout\,
	cout => \gen|clockcounter[26]~85\);

-- Location: FF_X30_Y23_N21
\gen|clockcounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[26]~84_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(26));

-- Location: LCCOMB_X30_Y23_N22
\gen|clockcounter[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[27]~86_combout\ = (\gen|clockcounter\(27) & (!\gen|clockcounter[26]~85\)) # (!\gen|clockcounter\(27) & ((\gen|clockcounter[26]~85\) # (GND)))
-- \gen|clockcounter[27]~87\ = CARRY((!\gen|clockcounter[26]~85\) # (!\gen|clockcounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(27),
	datad => VCC,
	cin => \gen|clockcounter[26]~85\,
	combout => \gen|clockcounter[27]~86_combout\,
	cout => \gen|clockcounter[27]~87\);

-- Location: FF_X30_Y23_N23
\gen|clockcounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[27]~86_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(27));

-- Location: LCCOMB_X30_Y23_N24
\gen|clockcounter[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[28]~88_combout\ = (\gen|clockcounter\(28) & (\gen|clockcounter[27]~87\ $ (GND))) # (!\gen|clockcounter\(28) & (!\gen|clockcounter[27]~87\ & VCC))
-- \gen|clockcounter[28]~89\ = CARRY((\gen|clockcounter\(28) & !\gen|clockcounter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(28),
	datad => VCC,
	cin => \gen|clockcounter[27]~87\,
	combout => \gen|clockcounter[28]~88_combout\,
	cout => \gen|clockcounter[28]~89\);

-- Location: FF_X30_Y23_N25
\gen|clockcounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[28]~88_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(28));

-- Location: LCCOMB_X30_Y23_N26
\gen|clockcounter[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[29]~90_combout\ = (\gen|clockcounter\(29) & (!\gen|clockcounter[28]~89\)) # (!\gen|clockcounter\(29) & ((\gen|clockcounter[28]~89\) # (GND)))
-- \gen|clockcounter[29]~91\ = CARRY((!\gen|clockcounter[28]~89\) # (!\gen|clockcounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(29),
	datad => VCC,
	cin => \gen|clockcounter[28]~89\,
	combout => \gen|clockcounter[29]~90_combout\,
	cout => \gen|clockcounter[29]~91\);

-- Location: FF_X30_Y23_N27
\gen|clockcounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[29]~90_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(29));

-- Location: LCCOMB_X30_Y23_N28
\gen|clockcounter[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[30]~92_combout\ = (\gen|clockcounter\(30) & (\gen|clockcounter[29]~91\ $ (GND))) # (!\gen|clockcounter\(30) & (!\gen|clockcounter[29]~91\ & VCC))
-- \gen|clockcounter[30]~93\ = CARRY((\gen|clockcounter\(30) & !\gen|clockcounter[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(30),
	datad => VCC,
	cin => \gen|clockcounter[29]~91\,
	combout => \gen|clockcounter[30]~92_combout\,
	cout => \gen|clockcounter[30]~93\);

-- Location: FF_X30_Y23_N29
\gen|clockcounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[30]~92_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(30));

-- Location: LCCOMB_X30_Y23_N30
\gen|clockcounter[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clockcounter[31]~94_combout\ = \gen|clockcounter\(31) $ (\gen|clockcounter[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(31),
	cin => \gen|clockcounter[30]~93\,
	combout => \gen|clockcounter[31]~94_combout\);

-- Location: FF_X30_Y23_N31
\gen|clockcounter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clockcounter[31]~94_combout\,
	sclr => \gen|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clockcounter\(31));

-- Location: LCCOMB_X29_Y24_N0
\gen|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~0_combout\ = (!\gen|clockcounter\(29) & (!\gen|clockcounter\(28) & (!\gen|clockcounter\(26) & !\gen|clockcounter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(29),
	datab => \gen|clockcounter\(28),
	datac => \gen|clockcounter\(26),
	datad => \gen|clockcounter\(27),
	combout => \gen|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y24_N26
\gen|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~1_combout\ = (((!\gen|clockcounter\(17) & !\gen|clockcounter\(18))) # (!\gen|clockcounter\(19))) # (!\gen|clockcounter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(20),
	datab => \gen|clockcounter\(17),
	datac => \gen|clockcounter\(19),
	datad => \gen|clockcounter\(18),
	combout => \gen|LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y24_N8
\gen|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~2_combout\ = (((\gen|LessThan0~1_combout\) # (!\gen|clockcounter\(21))) # (!\gen|clockcounter\(23))) # (!\gen|clockcounter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(22),
	datab => \gen|clockcounter\(23),
	datac => \gen|LessThan0~1_combout\,
	datad => \gen|clockcounter\(21),
	combout => \gen|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y24_N22
\gen|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~4_combout\ = (!\gen|clockcounter\(10) & (!\gen|clockcounter\(9) & (!\gen|clockcounter\(7) & !\gen|clockcounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(10),
	datab => \gen|clockcounter\(9),
	datac => \gen|clockcounter\(7),
	datad => \gen|clockcounter\(8),
	combout => \gen|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y24_N12
\gen|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~3_combout\ = (((!\gen|clockcounter\(14)) # (!\gen|clockcounter\(13))) # (!\gen|clockcounter\(12))) # (!\gen|clockcounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(15),
	datab => \gen|clockcounter\(12),
	datac => \gen|clockcounter\(13),
	datad => \gen|clockcounter\(14),
	combout => \gen|LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y24_N6
\gen|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~5_combout\ = (\gen|LessThan0~3_combout\) # ((!\gen|clockcounter\(11) & \gen|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(11),
	datac => \gen|LessThan0~4_combout\,
	datad => \gen|LessThan0~3_combout\,
	combout => \gen|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y24_N20
\gen|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~6_combout\ = (!\gen|clockcounter\(18) & (!\gen|clockcounter\(16) & \gen|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen|clockcounter\(18),
	datac => \gen|clockcounter\(16),
	datad => \gen|LessThan0~5_combout\,
	combout => \gen|LessThan0~6_combout\);

-- Location: LCCOMB_X29_Y24_N28
\gen|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~7_combout\ = (\gen|clockcounter\(25) & ((\gen|clockcounter\(24)) # ((!\gen|LessThan0~2_combout\ & !\gen|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(24),
	datab => \gen|clockcounter\(25),
	datac => \gen|LessThan0~2_combout\,
	datad => \gen|LessThan0~6_combout\,
	combout => \gen|LessThan0~7_combout\);

-- Location: LCCOMB_X29_Y24_N30
\gen|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|LessThan0~8_combout\ = (!\gen|clockcounter\(31) & (((\gen|clockcounter\(30)) # (\gen|LessThan0~7_combout\)) # (!\gen|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen|clockcounter\(31),
	datab => \gen|LessThan0~0_combout\,
	datac => \gen|clockcounter\(30),
	datad => \gen|LessThan0~7_combout\,
	combout => \gen|LessThan0~8_combout\);

-- Location: LCCOMB_X29_Y24_N16
\gen|clk_1Hz_temp~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \gen|clk_1Hz_temp~feeder_combout\ = \gen|LessThan0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen|LessThan0~8_combout\,
	combout => \gen|clk_1Hz_temp~feeder_combout\);

-- Location: FF_X29_Y24_N17
\gen|clk_1Hz_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk1~inputclkctrl_outclk\,
	d => \gen|clk_1Hz_temp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen|clk_1Hz_temp~q\);

-- Location: CLKCTRL_G4
\gen|clk_1Hz_temp~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gen|clk_1Hz_temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gen|clk_1Hz_temp~clkctrl_outclk\);

-- Location: LCCOMB_X72_Y53_N0
\six|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~0_combout\ = \six|l\(0) $ (VCC)
-- \six|Add1~1\ = CARRY(\six|l\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(0),
	datad => VCC,
	combout => \six|Add1~0_combout\,
	cout => \six|Add1~1\);

-- Location: IOIBUF_X46_Y54_N29
\buttons[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(1),
	o => \buttons[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\buttons[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttons(0),
	o => \buttons[0]~input_o\);

-- Location: LCCOMB_X71_Y53_N28
\six|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal3~0_combout\ = (\buttons[0]~input_o\ & \buttons[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datad => \buttons[1]~input_o\,
	combout => \six|Equal3~0_combout\);

-- Location: FF_X72_Y53_N1
\six|l[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~0_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(0));

-- Location: LCCOMB_X72_Y53_N2
\six|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~2_combout\ = (\six|l\(1) & (!\six|Add1~1\)) # (!\six|l\(1) & ((\six|Add1~1\) # (GND)))
-- \six|Add1~3\ = CARRY((!\six|Add1~1\) # (!\six|l\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(1),
	datad => VCC,
	cin => \six|Add1~1\,
	combout => \six|Add1~2_combout\,
	cout => \six|Add1~3\);

-- Location: LCCOMB_X72_Y53_N20
\six|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~20_combout\ = (\six|l\(10) & (\six|Add1~19\ $ (GND))) # (!\six|l\(10) & (!\six|Add1~19\ & VCC))
-- \six|Add1~21\ = CARRY((\six|l\(10) & !\six|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(10),
	datad => VCC,
	cin => \six|Add1~19\,
	combout => \six|Add1~20_combout\,
	cout => \six|Add1~21\);

-- Location: LCCOMB_X72_Y53_N22
\six|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~22_combout\ = (\six|l\(11) & (!\six|Add1~21\)) # (!\six|l\(11) & ((\six|Add1~21\) # (GND)))
-- \six|Add1~23\ = CARRY((!\six|Add1~21\) # (!\six|l\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(11),
	datad => VCC,
	cin => \six|Add1~21\,
	combout => \six|Add1~22_combout\,
	cout => \six|Add1~23\);

-- Location: FF_X72_Y53_N23
\six|l[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~22_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(11));

-- Location: LCCOMB_X72_Y53_N24
\six|Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~24_combout\ = (\six|l\(12) & (\six|Add1~23\ $ (GND))) # (!\six|l\(12) & (!\six|Add1~23\ & VCC))
-- \six|Add1~25\ = CARRY((\six|l\(12) & !\six|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(12),
	datad => VCC,
	cin => \six|Add1~23\,
	combout => \six|Add1~24_combout\,
	cout => \six|Add1~25\);

-- Location: FF_X72_Y53_N25
\six|l[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~24_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(12));

-- Location: LCCOMB_X72_Y53_N26
\six|Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~26_combout\ = (\six|l\(13) & (!\six|Add1~25\)) # (!\six|l\(13) & ((\six|Add1~25\) # (GND)))
-- \six|Add1~27\ = CARRY((!\six|Add1~25\) # (!\six|l\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(13),
	datad => VCC,
	cin => \six|Add1~25\,
	combout => \six|Add1~26_combout\,
	cout => \six|Add1~27\);

-- Location: FF_X72_Y53_N27
\six|l[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~26_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(13));

-- Location: LCCOMB_X72_Y53_N28
\six|Add1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~28_combout\ = (\six|l\(14) & (\six|Add1~27\ $ (GND))) # (!\six|l\(14) & (!\six|Add1~27\ & VCC))
-- \six|Add1~29\ = CARRY((\six|l\(14) & !\six|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(14),
	datad => VCC,
	cin => \six|Add1~27\,
	combout => \six|Add1~28_combout\,
	cout => \six|Add1~29\);

-- Location: FF_X72_Y53_N29
\six|l[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~28_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(14));

-- Location: LCCOMB_X72_Y53_N30
\six|Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~30_combout\ = (\six|l\(15) & (!\six|Add1~29\)) # (!\six|l\(15) & ((\six|Add1~29\) # (GND)))
-- \six|Add1~31\ = CARRY((!\six|Add1~29\) # (!\six|l\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(15),
	datad => VCC,
	cin => \six|Add1~29\,
	combout => \six|Add1~30_combout\,
	cout => \six|Add1~31\);

-- Location: FF_X72_Y53_N31
\six|l[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~30_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(15));

-- Location: LCCOMB_X72_Y52_N0
\six|Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~32_combout\ = (\six|l\(16) & (\six|Add1~31\ $ (GND))) # (!\six|l\(16) & (!\six|Add1~31\ & VCC))
-- \six|Add1~33\ = CARRY((\six|l\(16) & !\six|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(16),
	datad => VCC,
	cin => \six|Add1~31\,
	combout => \six|Add1~32_combout\,
	cout => \six|Add1~33\);

-- Location: FF_X72_Y52_N1
\six|l[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~32_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(16));

-- Location: LCCOMB_X72_Y52_N2
\six|Add1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~34_combout\ = (\six|l\(17) & (!\six|Add1~33\)) # (!\six|l\(17) & ((\six|Add1~33\) # (GND)))
-- \six|Add1~35\ = CARRY((!\six|Add1~33\) # (!\six|l\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(17),
	datad => VCC,
	cin => \six|Add1~33\,
	combout => \six|Add1~34_combout\,
	cout => \six|Add1~35\);

-- Location: FF_X72_Y52_N3
\six|l[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~34_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(17));

-- Location: LCCOMB_X72_Y52_N4
\six|Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~36_combout\ = (\six|l\(18) & (\six|Add1~35\ $ (GND))) # (!\six|l\(18) & (!\six|Add1~35\ & VCC))
-- \six|Add1~37\ = CARRY((\six|l\(18) & !\six|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(18),
	datad => VCC,
	cin => \six|Add1~35\,
	combout => \six|Add1~36_combout\,
	cout => \six|Add1~37\);

-- Location: LCCOMB_X71_Y52_N12
\six|l[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|l[18]~feeder_combout\ = \six|Add1~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \six|Add1~36_combout\,
	combout => \six|l[18]~feeder_combout\);

-- Location: FF_X71_Y52_N13
\six|l[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|l[18]~feeder_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(18));

-- Location: LCCOMB_X72_Y52_N6
\six|Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~38_combout\ = (\six|l\(19) & (!\six|Add1~37\)) # (!\six|l\(19) & ((\six|Add1~37\) # (GND)))
-- \six|Add1~39\ = CARRY((!\six|Add1~37\) # (!\six|l\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(19),
	datad => VCC,
	cin => \six|Add1~37\,
	combout => \six|Add1~38_combout\,
	cout => \six|Add1~39\);

-- Location: FF_X72_Y52_N7
\six|l[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~38_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(19));

-- Location: LCCOMB_X72_Y52_N8
\six|Add1~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~40_combout\ = (\six|l\(20) & (\six|Add1~39\ $ (GND))) # (!\six|l\(20) & (!\six|Add1~39\ & VCC))
-- \six|Add1~41\ = CARRY((\six|l\(20) & !\six|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(20),
	datad => VCC,
	cin => \six|Add1~39\,
	combout => \six|Add1~40_combout\,
	cout => \six|Add1~41\);

-- Location: FF_X72_Y52_N9
\six|l[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~40_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(20));

-- Location: LCCOMB_X72_Y52_N10
\six|Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~42_combout\ = (\six|l\(21) & (!\six|Add1~41\)) # (!\six|l\(21) & ((\six|Add1~41\) # (GND)))
-- \six|Add1~43\ = CARRY((!\six|Add1~41\) # (!\six|l\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(21),
	datad => VCC,
	cin => \six|Add1~41\,
	combout => \six|Add1~42_combout\,
	cout => \six|Add1~43\);

-- Location: FF_X72_Y52_N11
\six|l[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~42_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(21));

-- Location: LCCOMB_X72_Y52_N12
\six|Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~44_combout\ = (\six|l\(22) & (\six|Add1~43\ $ (GND))) # (!\six|l\(22) & (!\six|Add1~43\ & VCC))
-- \six|Add1~45\ = CARRY((\six|l\(22) & !\six|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(22),
	datad => VCC,
	cin => \six|Add1~43\,
	combout => \six|Add1~44_combout\,
	cout => \six|Add1~45\);

-- Location: FF_X72_Y52_N13
\six|l[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~44_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(22));

-- Location: LCCOMB_X72_Y52_N14
\six|Add1~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~46_combout\ = (\six|l\(23) & (!\six|Add1~45\)) # (!\six|l\(23) & ((\six|Add1~45\) # (GND)))
-- \six|Add1~47\ = CARRY((!\six|Add1~45\) # (!\six|l\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(23),
	datad => VCC,
	cin => \six|Add1~45\,
	combout => \six|Add1~46_combout\,
	cout => \six|Add1~47\);

-- Location: FF_X72_Y52_N15
\six|l[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~46_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(23));

-- Location: LCCOMB_X72_Y52_N16
\six|Add1~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~48_combout\ = (\six|l\(24) & (\six|Add1~47\ $ (GND))) # (!\six|l\(24) & (!\six|Add1~47\ & VCC))
-- \six|Add1~49\ = CARRY((\six|l\(24) & !\six|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(24),
	datad => VCC,
	cin => \six|Add1~47\,
	combout => \six|Add1~48_combout\,
	cout => \six|Add1~49\);

-- Location: FF_X72_Y52_N17
\six|l[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~48_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(24));

-- Location: LCCOMB_X72_Y52_N18
\six|Add1~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~50_combout\ = (\six|l\(25) & (!\six|Add1~49\)) # (!\six|l\(25) & ((\six|Add1~49\) # (GND)))
-- \six|Add1~51\ = CARRY((!\six|Add1~49\) # (!\six|l\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(25),
	datad => VCC,
	cin => \six|Add1~49\,
	combout => \six|Add1~50_combout\,
	cout => \six|Add1~51\);

-- Location: FF_X72_Y52_N19
\six|l[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~50_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(25));

-- Location: LCCOMB_X71_Y53_N22
\six|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~2_combout\ = (!\six|l\(25) & (!\six|l\(23) & (!\six|l\(24) & !\six|l\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(25),
	datab => \six|l\(23),
	datac => \six|l\(24),
	datad => \six|l\(22),
	combout => \six|Equal5~2_combout\);

-- Location: LCCOMB_X72_Y52_N20
\six|Add1~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~52_combout\ = (\six|l\(26) & (\six|Add1~51\ $ (GND))) # (!\six|l\(26) & (!\six|Add1~51\ & VCC))
-- \six|Add1~53\ = CARRY((\six|l\(26) & !\six|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(26),
	datad => VCC,
	cin => \six|Add1~51\,
	combout => \six|Add1~52_combout\,
	cout => \six|Add1~53\);

-- Location: FF_X72_Y52_N21
\six|l[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~52_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(26));

-- Location: LCCOMB_X72_Y52_N22
\six|Add1~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~54_combout\ = (\six|l\(27) & (!\six|Add1~53\)) # (!\six|l\(27) & ((\six|Add1~53\) # (GND)))
-- \six|Add1~55\ = CARRY((!\six|Add1~53\) # (!\six|l\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(27),
	datad => VCC,
	cin => \six|Add1~53\,
	combout => \six|Add1~54_combout\,
	cout => \six|Add1~55\);

-- Location: FF_X72_Y52_N23
\six|l[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~54_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(27));

-- Location: LCCOMB_X72_Y52_N24
\six|Add1~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~56_combout\ = (\six|l\(28) & (\six|Add1~55\ $ (GND))) # (!\six|l\(28) & (!\six|Add1~55\ & VCC))
-- \six|Add1~57\ = CARRY((\six|l\(28) & !\six|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(28),
	datad => VCC,
	cin => \six|Add1~55\,
	combout => \six|Add1~56_combout\,
	cout => \six|Add1~57\);

-- Location: FF_X72_Y52_N25
\six|l[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~56_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(28));

-- Location: LCCOMB_X72_Y52_N26
\six|Add1~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~58_combout\ = (\six|l\(29) & (!\six|Add1~57\)) # (!\six|l\(29) & ((\six|Add1~57\) # (GND)))
-- \six|Add1~59\ = CARRY((!\six|Add1~57\) # (!\six|l\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(29),
	datad => VCC,
	cin => \six|Add1~57\,
	combout => \six|Add1~58_combout\,
	cout => \six|Add1~59\);

-- Location: FF_X72_Y52_N27
\six|l[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~58_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(29));

-- Location: LCCOMB_X71_Y53_N4
\six|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~1_combout\ = (!\six|l\(29) & (!\six|l\(28) & (!\six|l\(27) & !\six|l\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(29),
	datab => \six|l\(28),
	datac => \six|l\(27),
	datad => \six|l\(26),
	combout => \six|Equal5~1_combout\);

-- Location: LCCOMB_X72_Y52_N28
\six|Add1~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~60_combout\ = (\six|l\(30) & (\six|Add1~59\ $ (GND))) # (!\six|l\(30) & (!\six|Add1~59\ & VCC))
-- \six|Add1~61\ = CARRY((\six|l\(30) & !\six|Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(30),
	datad => VCC,
	cin => \six|Add1~59\,
	combout => \six|Add1~60_combout\,
	cout => \six|Add1~61\);

-- Location: FF_X72_Y52_N29
\six|l[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~60_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(30));

-- Location: LCCOMB_X72_Y52_N30
\six|Add1~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~62_combout\ = \six|l\(31) $ (\six|Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(31),
	cin => \six|Add1~61\,
	combout => \six|Add1~62_combout\);

-- Location: FF_X72_Y52_N31
\six|l[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~62_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(31));

-- Location: LCCOMB_X71_Y53_N26
\six|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~0_combout\ = (!\six|l\(1) & (!\six|l\(2) & (!\six|l\(31) & !\six|l\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(1),
	datab => \six|l\(2),
	datac => \six|l\(31),
	datad => \six|l\(30),
	combout => \six|Equal5~0_combout\);

-- Location: LCCOMB_X71_Y52_N2
\six|Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~3_combout\ = (!\six|l\(18) & (!\six|l\(20) & (!\six|l\(21) & !\six|l\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(18),
	datab => \six|l\(20),
	datac => \six|l\(21),
	datad => \six|l\(19),
	combout => \six|Equal5~3_combout\);

-- Location: LCCOMB_X71_Y53_N24
\six|Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~4_combout\ = (\six|Equal5~2_combout\ & (\six|Equal5~1_combout\ & (\six|Equal5~0_combout\ & \six|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|Equal5~2_combout\,
	datab => \six|Equal5~1_combout\,
	datac => \six|Equal5~0_combout\,
	datad => \six|Equal5~3_combout\,
	combout => \six|Equal5~4_combout\);

-- Location: LCCOMB_X71_Y53_N6
\six|l~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|l~1_combout\ = (\six|Add1~2_combout\ & ((!\six|Equal5~4_combout\) # (!\six|Equal5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|Add1~2_combout\,
	datab => \six|Equal5~9_combout\,
	datad => \six|Equal5~4_combout\,
	combout => \six|l~1_combout\);

-- Location: FF_X71_Y53_N7
\six|l[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|l~1_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(1));

-- Location: LCCOMB_X72_Y53_N4
\six|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~4_combout\ = (\six|l\(2) & (\six|Add1~3\ $ (GND))) # (!\six|l\(2) & (!\six|Add1~3\ & VCC))
-- \six|Add1~5\ = CARRY((\six|l\(2) & !\six|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(2),
	datad => VCC,
	cin => \six|Add1~3\,
	combout => \six|Add1~4_combout\,
	cout => \six|Add1~5\);

-- Location: FF_X72_Y53_N5
\six|l[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~4_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(2));

-- Location: LCCOMB_X72_Y53_N6
\six|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~6_combout\ = (\six|l\(3) & (!\six|Add1~5\)) # (!\six|l\(3) & ((\six|Add1~5\) # (GND)))
-- \six|Add1~7\ = CARRY((!\six|Add1~5\) # (!\six|l\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(3),
	datad => VCC,
	cin => \six|Add1~5\,
	combout => \six|Add1~6_combout\,
	cout => \six|Add1~7\);

-- Location: LCCOMB_X72_Y53_N8
\six|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~8_combout\ = (\six|l\(4) & (\six|Add1~7\ $ (GND))) # (!\six|l\(4) & (!\six|Add1~7\ & VCC))
-- \six|Add1~9\ = CARRY((\six|l\(4) & !\six|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(4),
	datad => VCC,
	cin => \six|Add1~7\,
	combout => \six|Add1~8_combout\,
	cout => \six|Add1~9\);

-- Location: FF_X72_Y53_N9
\six|l[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~8_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(4));

-- Location: LCCOMB_X72_Y53_N10
\six|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~10_combout\ = (\six|l\(5) & (!\six|Add1~9\)) # (!\six|l\(5) & ((\six|Add1~9\) # (GND)))
-- \six|Add1~11\ = CARRY((!\six|Add1~9\) # (!\six|l\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(5),
	datad => VCC,
	cin => \six|Add1~9\,
	combout => \six|Add1~10_combout\,
	cout => \six|Add1~11\);

-- Location: FF_X72_Y53_N11
\six|l[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~10_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(5));

-- Location: LCCOMB_X72_Y53_N12
\six|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~12_combout\ = (\six|l\(6) & (\six|Add1~11\ $ (GND))) # (!\six|l\(6) & (!\six|Add1~11\ & VCC))
-- \six|Add1~13\ = CARRY((\six|l\(6) & !\six|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(6),
	datad => VCC,
	cin => \six|Add1~11\,
	combout => \six|Add1~12_combout\,
	cout => \six|Add1~13\);

-- Location: FF_X72_Y53_N13
\six|l[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~12_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(6));

-- Location: LCCOMB_X72_Y53_N14
\six|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~14_combout\ = (\six|l\(7) & (!\six|Add1~13\)) # (!\six|l\(7) & ((\six|Add1~13\) # (GND)))
-- \six|Add1~15\ = CARRY((!\six|Add1~13\) # (!\six|l\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(7),
	datad => VCC,
	cin => \six|Add1~13\,
	combout => \six|Add1~14_combout\,
	cout => \six|Add1~15\);

-- Location: FF_X72_Y53_N15
\six|l[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~14_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(7));

-- Location: LCCOMB_X72_Y53_N16
\six|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~16_combout\ = (\six|l\(8) & (\six|Add1~15\ $ (GND))) # (!\six|l\(8) & (!\six|Add1~15\ & VCC))
-- \six|Add1~17\ = CARRY((\six|l\(8) & !\six|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(8),
	datad => VCC,
	cin => \six|Add1~15\,
	combout => \six|Add1~16_combout\,
	cout => \six|Add1~17\);

-- Location: FF_X72_Y53_N17
\six|l[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~16_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(8));

-- Location: LCCOMB_X72_Y53_N18
\six|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add1~18_combout\ = (\six|l\(9) & (!\six|Add1~17\)) # (!\six|l\(9) & ((\six|Add1~17\) # (GND)))
-- \six|Add1~19\ = CARRY((!\six|Add1~17\) # (!\six|l\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|l\(9),
	datad => VCC,
	cin => \six|Add1~17\,
	combout => \six|Add1~18_combout\,
	cout => \six|Add1~19\);

-- Location: FF_X72_Y53_N19
\six|l[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~18_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(9));

-- Location: FF_X72_Y53_N21
\six|l[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add1~20_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(10));

-- Location: LCCOMB_X71_Y53_N12
\six|Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~6_combout\ = (!\six|l\(10) & (!\six|l\(11) & (!\six|l\(12) & !\six|l\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(10),
	datab => \six|l\(11),
	datac => \six|l\(12),
	datad => \six|l\(13),
	combout => \six|Equal5~6_combout\);

-- Location: LCCOMB_X71_Y53_N16
\six|Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~8_combout\ = (!\six|l\(5) & (\six|l\(3) & (\six|l\(0) & !\six|l\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(5),
	datab => \six|l\(3),
	datac => \six|l\(0),
	datad => \six|l\(4),
	combout => \six|Equal5~8_combout\);

-- Location: LCCOMB_X71_Y53_N30
\six|Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~7_combout\ = (!\six|l\(9) & (!\six|l\(8) & (!\six|l\(7) & !\six|l\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(9),
	datab => \six|l\(8),
	datac => \six|l\(7),
	datad => \six|l\(6),
	combout => \six|Equal5~7_combout\);

-- Location: LCCOMB_X71_Y53_N18
\six|Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~5_combout\ = (!\six|l\(15) & (!\six|l\(14) & (!\six|l\(16) & !\six|l\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(15),
	datab => \six|l\(14),
	datac => \six|l\(16),
	datad => \six|l\(17),
	combout => \six|Equal5~5_combout\);

-- Location: LCCOMB_X71_Y53_N14
\six|Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Equal5~9_combout\ = (\six|Equal5~6_combout\ & (\six|Equal5~8_combout\ & (\six|Equal5~7_combout\ & \six|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|Equal5~6_combout\,
	datab => \six|Equal5~8_combout\,
	datac => \six|Equal5~7_combout\,
	datad => \six|Equal5~5_combout\,
	combout => \six|Equal5~9_combout\);

-- Location: LCCOMB_X71_Y53_N0
\six|l~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|l~0_combout\ = (\six|Add1~6_combout\ & ((!\six|Equal5~4_combout\) # (!\six|Equal5~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \six|Equal5~9_combout\,
	datac => \six|Add1~6_combout\,
	datad => \six|Equal5~4_combout\,
	combout => \six|l~0_combout\);

-- Location: FF_X71_Y53_N1
\six|l[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|l~0_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|l\(3));

-- Location: LCCOMB_X67_Y53_N24
\sevenl|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[0]~0_combout\ = (!\six|l\(3) & (!\six|l\(1) & (\six|l\(0) $ (\six|l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[0]~0_combout\);

-- Location: LCCOMB_X67_Y53_N6
\sevenl|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[1]~1_combout\ = (!\six|l\(3) & (\six|l\(2) & (\six|l\(0) $ (\six|l\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[1]~1_combout\);

-- Location: LCCOMB_X67_Y53_N0
\sevenl|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[2]~2_combout\ = (!\six|l\(0) & (!\six|l\(3) & (\six|l\(1) & !\six|l\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[2]~2_combout\);

-- Location: LCCOMB_X67_Y53_N14
\sevenl|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[3]~3_combout\ = (!\six|l\(3) & ((\six|l\(0) & (\six|l\(1) $ (!\six|l\(2)))) # (!\six|l\(0) & (!\six|l\(1) & \six|l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[3]~3_combout\);

-- Location: LCCOMB_X67_Y53_N28
\sevenl|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[4]~4_combout\ = (\six|l\(0)) # ((\six|l\(1) & (\six|l\(3))) # (!\six|l\(1) & ((\six|l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[4]~4_combout\);

-- Location: LCCOMB_X67_Y53_N10
\sevenl|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[5]~5_combout\ = (!\six|l\(3) & ((\six|l\(0) & ((\six|l\(1)) # (!\six|l\(2)))) # (!\six|l\(0) & (\six|l\(1) & !\six|l\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[5]~5_combout\);

-- Location: LCCOMB_X67_Y53_N12
\sevenl|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenl|output[6]~6_combout\ = (!\six|l\(3) & ((\six|l\(1) & (\six|l\(0) & \six|l\(2))) # (!\six|l\(1) & ((!\six|l\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|l\(0),
	datab => \six|l\(3),
	datac => \six|l\(1),
	datad => \six|l\(2),
	combout => \sevenl|output[6]~6_combout\);

-- Location: LCCOMB_X70_Y53_N0
\six|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~0_combout\ = \six|m\(0) $ (VCC)
-- \six|Add0~1\ = CARRY(\six|m\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(0),
	datad => VCC,
	combout => \six|Add0~0_combout\,
	cout => \six|Add0~1\);

-- Location: LCCOMB_X71_Y53_N8
\six|m[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|m[3]~0_combout\ = (\buttons[0]~input_o\ & (\buttons[1]~input_o\ & (\six|Equal5~9_combout\ & \six|Equal5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttons[0]~input_o\,
	datab => \buttons[1]~input_o\,
	datac => \six|Equal5~9_combout\,
	datad => \six|Equal5~4_combout\,
	combout => \six|m[3]~0_combout\);

-- Location: FF_X70_Y53_N1
\six|m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~0_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(0));

-- Location: LCCOMB_X70_Y53_N2
\six|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~2_combout\ = (\six|m\(1) & (!\six|Add0~1\)) # (!\six|m\(1) & ((\six|Add0~1\) # (GND)))
-- \six|Add0~3\ = CARRY((!\six|Add0~1\) # (!\six|m\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datad => VCC,
	cin => \six|Add0~1\,
	combout => \six|Add0~2_combout\,
	cout => \six|Add0~3\);

-- Location: LCCOMB_X70_Y53_N4
\six|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~4_combout\ = (\six|m\(2) & (\six|Add0~3\ $ (GND))) # (!\six|m\(2) & (!\six|Add0~3\ & VCC))
-- \six|Add0~5\ = CARRY((\six|m\(2) & !\six|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(2),
	datad => VCC,
	cin => \six|Add0~3\,
	combout => \six|Add0~4_combout\,
	cout => \six|Add0~5\);

-- Location: LCCOMB_X71_Y53_N20
\six|m~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|m~1_combout\ = (\six|Add0~4_combout\ & !\six|process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \six|Add0~4_combout\,
	datad => \six|process_0~10_combout\,
	combout => \six|m~1_combout\);

-- Location: FF_X71_Y53_N21
\six|m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|m~1_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(2));

-- Location: LCCOMB_X70_Y53_N6
\six|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~6_combout\ = (\six|m\(3) & (!\six|Add0~5\)) # (!\six|m\(3) & ((\six|Add0~5\) # (GND)))
-- \six|Add0~7\ = CARRY((!\six|Add0~5\) # (!\six|m\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(3),
	datad => VCC,
	cin => \six|Add0~5\,
	combout => \six|Add0~6_combout\,
	cout => \six|Add0~7\);

-- Location: FF_X70_Y53_N7
\six|m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~6_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(3));

-- Location: LCCOMB_X70_Y53_N8
\six|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~8_combout\ = (\six|m\(4) & (\six|Add0~7\ $ (GND))) # (!\six|m\(4) & (!\six|Add0~7\ & VCC))
-- \six|Add0~9\ = CARRY((\six|m\(4) & !\six|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(4),
	datad => VCC,
	cin => \six|Add0~7\,
	combout => \six|Add0~8_combout\,
	cout => \six|Add0~9\);

-- Location: FF_X70_Y53_N9
\six|m[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~8_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(4));

-- Location: LCCOMB_X70_Y53_N10
\six|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~10_combout\ = (\six|m\(5) & (!\six|Add0~9\)) # (!\six|m\(5) & ((\six|Add0~9\) # (GND)))
-- \six|Add0~11\ = CARRY((!\six|Add0~9\) # (!\six|m\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(5),
	datad => VCC,
	cin => \six|Add0~9\,
	combout => \six|Add0~10_combout\,
	cout => \six|Add0~11\);

-- Location: FF_X70_Y53_N11
\six|m[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~10_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(5));

-- Location: LCCOMB_X70_Y53_N12
\six|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~12_combout\ = (\six|m\(6) & (\six|Add0~11\ $ (GND))) # (!\six|m\(6) & (!\six|Add0~11\ & VCC))
-- \six|Add0~13\ = CARRY((\six|m\(6) & !\six|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(6),
	datad => VCC,
	cin => \six|Add0~11\,
	combout => \six|Add0~12_combout\,
	cout => \six|Add0~13\);

-- Location: FF_X70_Y53_N13
\six|m[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~12_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(6));

-- Location: LCCOMB_X70_Y53_N14
\six|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~14_combout\ = (\six|m\(7) & (!\six|Add0~13\)) # (!\six|m\(7) & ((\six|Add0~13\) # (GND)))
-- \six|Add0~15\ = CARRY((!\six|Add0~13\) # (!\six|m\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(7),
	datad => VCC,
	cin => \six|Add0~13\,
	combout => \six|Add0~14_combout\,
	cout => \six|Add0~15\);

-- Location: FF_X70_Y53_N15
\six|m[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~14_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(7));

-- Location: LCCOMB_X70_Y53_N16
\six|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~16_combout\ = (\six|m\(8) & (\six|Add0~15\ $ (GND))) # (!\six|m\(8) & (!\six|Add0~15\ & VCC))
-- \six|Add0~17\ = CARRY((\six|m\(8) & !\six|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(8),
	datad => VCC,
	cin => \six|Add0~15\,
	combout => \six|Add0~16_combout\,
	cout => \six|Add0~17\);

-- Location: FF_X70_Y53_N17
\six|m[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~16_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(8));

-- Location: LCCOMB_X70_Y53_N18
\six|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~18_combout\ = (\six|m\(9) & (!\six|Add0~17\)) # (!\six|m\(9) & ((\six|Add0~17\) # (GND)))
-- \six|Add0~19\ = CARRY((!\six|Add0~17\) # (!\six|m\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(9),
	datad => VCC,
	cin => \six|Add0~17\,
	combout => \six|Add0~18_combout\,
	cout => \six|Add0~19\);

-- Location: FF_X70_Y53_N19
\six|m[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~18_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(9));

-- Location: LCCOMB_X70_Y53_N20
\six|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~20_combout\ = (\six|m\(10) & (\six|Add0~19\ $ (GND))) # (!\six|m\(10) & (!\six|Add0~19\ & VCC))
-- \six|Add0~21\ = CARRY((\six|m\(10) & !\six|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(10),
	datad => VCC,
	cin => \six|Add0~19\,
	combout => \six|Add0~20_combout\,
	cout => \six|Add0~21\);

-- Location: FF_X70_Y53_N21
\six|m[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~20_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(10));

-- Location: LCCOMB_X70_Y53_N22
\six|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~22_combout\ = (\six|m\(11) & (!\six|Add0~21\)) # (!\six|m\(11) & ((\six|Add0~21\) # (GND)))
-- \six|Add0~23\ = CARRY((!\six|Add0~21\) # (!\six|m\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(11),
	datad => VCC,
	cin => \six|Add0~21\,
	combout => \six|Add0~22_combout\,
	cout => \six|Add0~23\);

-- Location: FF_X70_Y53_N23
\six|m[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~22_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(11));

-- Location: LCCOMB_X69_Y53_N30
\six|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~7_combout\ = (!\six|m\(10) & (!\six|m\(9) & (!\six|m\(11) & !\six|m\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(10),
	datab => \six|m\(9),
	datac => \six|m\(11),
	datad => \six|m\(8),
	combout => \six|process_0~7_combout\);

-- Location: LCCOMB_X70_Y53_N24
\six|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~24_combout\ = (\six|m\(12) & (\six|Add0~23\ $ (GND))) # (!\six|m\(12) & (!\six|Add0~23\ & VCC))
-- \six|Add0~25\ = CARRY((\six|m\(12) & !\six|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(12),
	datad => VCC,
	cin => \six|Add0~23\,
	combout => \six|Add0~24_combout\,
	cout => \six|Add0~25\);

-- Location: FF_X70_Y53_N25
\six|m[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~24_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(12));

-- Location: LCCOMB_X70_Y53_N26
\six|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~26_combout\ = (\six|m\(13) & (!\six|Add0~25\)) # (!\six|m\(13) & ((\six|Add0~25\) # (GND)))
-- \six|Add0~27\ = CARRY((!\six|Add0~25\) # (!\six|m\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(13),
	datad => VCC,
	cin => \six|Add0~25\,
	combout => \six|Add0~26_combout\,
	cout => \six|Add0~27\);

-- Location: FF_X70_Y53_N27
\six|m[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~26_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(13));

-- Location: LCCOMB_X70_Y53_N28
\six|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~28_combout\ = (\six|m\(14) & (\six|Add0~27\ $ (GND))) # (!\six|m\(14) & (!\six|Add0~27\ & VCC))
-- \six|Add0~29\ = CARRY((\six|m\(14) & !\six|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(14),
	datad => VCC,
	cin => \six|Add0~27\,
	combout => \six|Add0~28_combout\,
	cout => \six|Add0~29\);

-- Location: FF_X70_Y53_N29
\six|m[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~28_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(14));

-- Location: LCCOMB_X70_Y53_N30
\six|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~30_combout\ = (\six|m\(15) & (!\six|Add0~29\)) # (!\six|m\(15) & ((\six|Add0~29\) # (GND)))
-- \six|Add0~31\ = CARRY((!\six|Add0~29\) # (!\six|m\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(15),
	datad => VCC,
	cin => \six|Add0~29\,
	combout => \six|Add0~30_combout\,
	cout => \six|Add0~31\);

-- Location: FF_X70_Y53_N31
\six|m[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~30_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(15));

-- Location: LCCOMB_X70_Y52_N0
\six|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~32_combout\ = (\six|m\(16) & (\six|Add0~31\ $ (GND))) # (!\six|m\(16) & (!\six|Add0~31\ & VCC))
-- \six|Add0~33\ = CARRY((\six|m\(16) & !\six|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(16),
	datad => VCC,
	cin => \six|Add0~31\,
	combout => \six|Add0~32_combout\,
	cout => \six|Add0~33\);

-- Location: FF_X70_Y52_N1
\six|m[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~32_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(16));

-- Location: LCCOMB_X70_Y52_N2
\six|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~34_combout\ = (\six|m\(17) & (!\six|Add0~33\)) # (!\six|m\(17) & ((\six|Add0~33\) # (GND)))
-- \six|Add0~35\ = CARRY((!\six|Add0~33\) # (!\six|m\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(17),
	datad => VCC,
	cin => \six|Add0~33\,
	combout => \six|Add0~34_combout\,
	cout => \six|Add0~35\);

-- Location: FF_X70_Y52_N3
\six|m[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~34_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(17));

-- Location: LCCOMB_X70_Y52_N4
\six|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~36_combout\ = (\six|m\(18) & (\six|Add0~35\ $ (GND))) # (!\six|m\(18) & (!\six|Add0~35\ & VCC))
-- \six|Add0~37\ = CARRY((\six|m\(18) & !\six|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(18),
	datad => VCC,
	cin => \six|Add0~35\,
	combout => \six|Add0~36_combout\,
	cout => \six|Add0~37\);

-- Location: FF_X70_Y52_N5
\six|m[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~36_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(18));

-- Location: LCCOMB_X70_Y52_N6
\six|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~38_combout\ = (\six|m\(19) & (!\six|Add0~37\)) # (!\six|m\(19) & ((\six|Add0~37\) # (GND)))
-- \six|Add0~39\ = CARRY((!\six|Add0~37\) # (!\six|m\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(19),
	datad => VCC,
	cin => \six|Add0~37\,
	combout => \six|Add0~38_combout\,
	cout => \six|Add0~39\);

-- Location: FF_X70_Y52_N7
\six|m[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~38_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(19));

-- Location: LCCOMB_X69_Y52_N0
\six|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~5_combout\ = (!\six|m\(18) & (!\six|m\(16) & (!\six|m\(19) & !\six|m\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(18),
	datab => \six|m\(16),
	datac => \six|m\(19),
	datad => \six|m\(17),
	combout => \six|process_0~5_combout\);

-- Location: LCCOMB_X69_Y53_N8
\six|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~8_combout\ = (!\six|m\(5) & (!\six|m\(4) & (!\six|m\(7) & !\six|m\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(5),
	datab => \six|m\(4),
	datac => \six|m\(7),
	datad => \six|m\(6),
	combout => \six|process_0~8_combout\);

-- Location: LCCOMB_X69_Y53_N28
\six|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~6_combout\ = (!\six|m\(15) & (!\six|m\(14) & (!\six|m\(13) & !\six|m\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(15),
	datab => \six|m\(14),
	datac => \six|m\(13),
	datad => \six|m\(12),
	combout => \six|process_0~6_combout\);

-- Location: LCCOMB_X69_Y53_N2
\six|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~9_combout\ = (\six|process_0~7_combout\ & (\six|process_0~5_combout\ & (\six|process_0~8_combout\ & \six|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|process_0~7_combout\,
	datab => \six|process_0~5_combout\,
	datac => \six|process_0~8_combout\,
	datad => \six|process_0~6_combout\,
	combout => \six|process_0~9_combout\);

-- Location: LCCOMB_X70_Y52_N8
\six|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~40_combout\ = (\six|m\(20) & (\six|Add0~39\ $ (GND))) # (!\six|m\(20) & (!\six|Add0~39\ & VCC))
-- \six|Add0~41\ = CARRY((\six|m\(20) & !\six|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(20),
	datad => VCC,
	cin => \six|Add0~39\,
	combout => \six|Add0~40_combout\,
	cout => \six|Add0~41\);

-- Location: FF_X70_Y52_N9
\six|m[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~40_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(20));

-- Location: LCCOMB_X70_Y52_N10
\six|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~42_combout\ = (\six|m\(21) & (!\six|Add0~41\)) # (!\six|m\(21) & ((\six|Add0~41\) # (GND)))
-- \six|Add0~43\ = CARRY((!\six|Add0~41\) # (!\six|m\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(21),
	datad => VCC,
	cin => \six|Add0~41\,
	combout => \six|Add0~42_combout\,
	cout => \six|Add0~43\);

-- Location: FF_X70_Y52_N11
\six|m[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~42_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(21));

-- Location: LCCOMB_X70_Y52_N12
\six|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~44_combout\ = (\six|m\(22) & (\six|Add0~43\ $ (GND))) # (!\six|m\(22) & (!\six|Add0~43\ & VCC))
-- \six|Add0~45\ = CARRY((\six|m\(22) & !\six|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(22),
	datad => VCC,
	cin => \six|Add0~43\,
	combout => \six|Add0~44_combout\,
	cout => \six|Add0~45\);

-- Location: FF_X70_Y52_N13
\six|m[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~44_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(22));

-- Location: LCCOMB_X70_Y52_N14
\six|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~46_combout\ = (\six|m\(23) & (!\six|Add0~45\)) # (!\six|m\(23) & ((\six|Add0~45\) # (GND)))
-- \six|Add0~47\ = CARRY((!\six|Add0~45\) # (!\six|m\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(23),
	datad => VCC,
	cin => \six|Add0~45\,
	combout => \six|Add0~46_combout\,
	cout => \six|Add0~47\);

-- Location: FF_X70_Y52_N15
\six|m[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~46_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(23));

-- Location: LCCOMB_X70_Y52_N16
\six|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~48_combout\ = (\six|m\(24) & (\six|Add0~47\ $ (GND))) # (!\six|m\(24) & (!\six|Add0~47\ & VCC))
-- \six|Add0~49\ = CARRY((\six|m\(24) & !\six|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(24),
	datad => VCC,
	cin => \six|Add0~47\,
	combout => \six|Add0~48_combout\,
	cout => \six|Add0~49\);

-- Location: FF_X70_Y52_N17
\six|m[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~48_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(24));

-- Location: LCCOMB_X70_Y52_N18
\six|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~50_combout\ = (\six|m\(25) & (!\six|Add0~49\)) # (!\six|m\(25) & ((\six|Add0~49\) # (GND)))
-- \six|Add0~51\ = CARRY((!\six|Add0~49\) # (!\six|m\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(25),
	datad => VCC,
	cin => \six|Add0~49\,
	combout => \six|Add0~50_combout\,
	cout => \six|Add0~51\);

-- Location: FF_X70_Y52_N19
\six|m[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~50_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(25));

-- Location: LCCOMB_X70_Y52_N20
\six|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~52_combout\ = (\six|m\(26) & (\six|Add0~51\ $ (GND))) # (!\six|m\(26) & (!\six|Add0~51\ & VCC))
-- \six|Add0~53\ = CARRY((\six|m\(26) & !\six|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(26),
	datad => VCC,
	cin => \six|Add0~51\,
	combout => \six|Add0~52_combout\,
	cout => \six|Add0~53\);

-- Location: FF_X70_Y52_N21
\six|m[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~52_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(26));

-- Location: LCCOMB_X70_Y52_N22
\six|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~54_combout\ = (\six|m\(27) & (!\six|Add0~53\)) # (!\six|m\(27) & ((\six|Add0~53\) # (GND)))
-- \six|Add0~55\ = CARRY((!\six|Add0~53\) # (!\six|m\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(27),
	datad => VCC,
	cin => \six|Add0~53\,
	combout => \six|Add0~54_combout\,
	cout => \six|Add0~55\);

-- Location: FF_X70_Y52_N23
\six|m[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~54_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(27));

-- Location: LCCOMB_X69_Y52_N30
\six|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~2_combout\ = (!\six|m\(26) & (!\six|m\(25) & (!\six|m\(27) & !\six|m\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(26),
	datab => \six|m\(25),
	datac => \six|m\(27),
	datad => \six|m\(24),
	combout => \six|process_0~2_combout\);

-- Location: LCCOMB_X70_Y52_N24
\six|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~56_combout\ = (\six|m\(28) & (\six|Add0~55\ $ (GND))) # (!\six|m\(28) & (!\six|Add0~55\ & VCC))
-- \six|Add0~57\ = CARRY((\six|m\(28) & !\six|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(28),
	datad => VCC,
	cin => \six|Add0~55\,
	combout => \six|Add0~56_combout\,
	cout => \six|Add0~57\);

-- Location: FF_X70_Y52_N25
\six|m[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~56_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(28));

-- Location: LCCOMB_X70_Y52_N26
\six|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~58_combout\ = (\six|m\(29) & (!\six|Add0~57\)) # (!\six|m\(29) & ((\six|Add0~57\) # (GND)))
-- \six|Add0~59\ = CARRY((!\six|Add0~57\) # (!\six|m\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(29),
	datad => VCC,
	cin => \six|Add0~57\,
	combout => \six|Add0~58_combout\,
	cout => \six|Add0~59\);

-- Location: FF_X70_Y52_N27
\six|m[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~58_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(29));

-- Location: LCCOMB_X70_Y52_N28
\six|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~60_combout\ = (\six|m\(30) & (\six|Add0~59\ $ (GND))) # (!\six|m\(30) & (!\six|Add0~59\ & VCC))
-- \six|Add0~61\ = CARRY((\six|m\(30) & !\six|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \six|m\(30),
	datad => VCC,
	cin => \six|Add0~59\,
	combout => \six|Add0~60_combout\,
	cout => \six|Add0~61\);

-- Location: FF_X70_Y52_N29
\six|m[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~60_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(30));

-- Location: LCCOMB_X70_Y52_N30
\six|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|Add0~62_combout\ = \six|m\(31) $ (\six|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(31),
	cin => \six|Add0~61\,
	combout => \six|Add0~62_combout\);

-- Location: FF_X70_Y52_N31
\six|m[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|Add0~62_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(31));

-- Location: LCCOMB_X69_Y52_N28
\six|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~1_combout\ = (!\six|m\(31) & (!\six|m\(29) & (!\six|m\(30) & !\six|m\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(31),
	datab => \six|m\(29),
	datac => \six|m\(30),
	datad => \six|m\(28),
	combout => \six|process_0~1_combout\);

-- Location: LCCOMB_X69_Y52_N8
\six|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~3_combout\ = (!\six|m\(20) & (!\six|m\(23) & (!\six|m\(21) & !\six|m\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(20),
	datab => \six|m\(23),
	datac => \six|m\(21),
	datad => \six|m\(22),
	combout => \six|process_0~3_combout\);

-- Location: LCCOMB_X69_Y52_N10
\six|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~0_combout\ = (!\six|m\(1) & (!\six|m\(3) & (\six|m\(2) & \six|m\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datab => \six|m\(3),
	datac => \six|m\(2),
	datad => \six|m\(0),
	combout => \six|process_0~0_combout\);

-- Location: LCCOMB_X69_Y52_N6
\six|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~4_combout\ = (\six|process_0~2_combout\ & (\six|process_0~1_combout\ & (\six|process_0~3_combout\ & \six|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|process_0~2_combout\,
	datab => \six|process_0~1_combout\,
	datac => \six|process_0~3_combout\,
	datad => \six|process_0~0_combout\,
	combout => \six|process_0~4_combout\);

-- Location: LCCOMB_X71_Y53_N10
\six|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|process_0~10_combout\ = (\six|process_0~9_combout\ & (\six|Equal5~4_combout\ & (\six|Equal5~9_combout\ & \six|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|process_0~9_combout\,
	datab => \six|Equal5~4_combout\,
	datac => \six|Equal5~9_combout\,
	datad => \six|process_0~4_combout\,
	combout => \six|process_0~10_combout\);

-- Location: LCCOMB_X71_Y53_N2
\six|m~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \six|m~2_combout\ = (\six|Add0~2_combout\ & !\six|process_0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|Add0~2_combout\,
	datad => \six|process_0~10_combout\,
	combout => \six|m~2_combout\);

-- Location: FF_X71_Y53_N3
\six|m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gen|clk_1Hz_temp~clkctrl_outclk\,
	d => \six|m~2_combout\,
	clrn => \buttons[1]~input_o\,
	ena => \six|m[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \six|m\(1));

-- Location: LCCOMB_X69_Y53_N24
\sevenm|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[0]~0_combout\ = (!\six|m\(1) & (!\six|m\(3) & (\six|m\(2) $ (\six|m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datab => \six|m\(2),
	datac => \six|m\(0),
	datad => \six|m\(3),
	combout => \sevenm|output[0]~0_combout\);

-- Location: LCCOMB_X71_Y52_N28
\sevenm|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[1]~1_combout\ = (!\six|m\(3) & (\six|m\(2) & (\six|m\(1) $ (\six|m\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(3),
	datab => \six|m\(1),
	datac => \six|m\(0),
	datad => \six|m\(2),
	combout => \sevenm|output[1]~1_combout\);

-- Location: LCCOMB_X71_Y52_N26
\sevenm|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[2]~2_combout\ = (!\six|m\(3) & (\six|m\(1) & (!\six|m\(0) & !\six|m\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(3),
	datab => \six|m\(1),
	datac => \six|m\(0),
	datad => \six|m\(2),
	combout => \sevenm|output[2]~2_combout\);

-- Location: LCCOMB_X69_Y53_N10
\sevenm|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[3]~3_combout\ = (!\six|m\(3) & ((\six|m\(1) & (\six|m\(2) & \six|m\(0))) # (!\six|m\(1) & (\six|m\(2) $ (\six|m\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datab => \six|m\(2),
	datac => \six|m\(0),
	datad => \six|m\(3),
	combout => \sevenm|output[3]~3_combout\);

-- Location: LCCOMB_X69_Y53_N4
\sevenm|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[4]~4_combout\ = (\six|m\(0)) # ((\six|m\(1) & ((\six|m\(3)))) # (!\six|m\(1) & (\six|m\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datab => \six|m\(2),
	datac => \six|m\(0),
	datad => \six|m\(3),
	combout => \sevenm|output[4]~4_combout\);

-- Location: LCCOMB_X69_Y52_N4
\sevenm|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[5]~5_combout\ = (!\six|m\(3) & ((\six|m\(1) & ((\six|m\(0)) # (!\six|m\(2)))) # (!\six|m\(1) & (\six|m\(0) & !\six|m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datab => \six|m\(0),
	datac => \six|m\(2),
	datad => \six|m\(3),
	combout => \sevenm|output[5]~5_combout\);

-- Location: LCCOMB_X69_Y53_N22
\sevenm|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sevenm|output[6]~6_combout\ = (!\six|m\(3) & ((\six|m\(1) & (\six|m\(2) & \six|m\(0))) # (!\six|m\(1) & (!\six|m\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \six|m\(1),
	datab => \six|m\(2),
	datac => \six|m\(0),
	datad => \six|m\(3),
	combout => \sevenm|output[6]~6_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
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

ww_outl(0) <= \outl[0]~output_o\;

ww_outl(1) <= \outl[1]~output_o\;

ww_outl(2) <= \outl[2]~output_o\;

ww_outl(3) <= \outl[3]~output_o\;

ww_outl(4) <= \outl[4]~output_o\;

ww_outl(5) <= \outl[5]~output_o\;

ww_outl(6) <= \outl[6]~output_o\;

ww_outm(0) <= \outm[0]~output_o\;

ww_outm(1) <= \outm[1]~output_o\;

ww_outm(2) <= \outm[2]~output_o\;

ww_outm(3) <= \outm[3]~output_o\;

ww_outm(4) <= \outm[4]~output_o\;

ww_outm(5) <= \outm[5]~output_o\;

ww_outm(6) <= \outm[6]~output_o\;

ww_clkout <= \clkout~output_o\;
END structure;


