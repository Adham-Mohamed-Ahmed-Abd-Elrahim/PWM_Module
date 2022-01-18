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

-- DATE "01/08/2022 01:22:35"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PWM IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	en : IN std_logic;
	duty_cycle : IN std_logic_vector(3 DOWNTO 0);
	PWM_OUT : BUFFER std_logic
	);
END PWM;

-- Design Ports Information
-- PWM_OUT	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[3]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- duty_cycle[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PWM IS
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
SIGNAL ww_en : std_logic;
SIGNAL ww_duty_cycle : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PWM_OUT : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PWM_OUT~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \current_state.idle_state~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \current_state.idle_state~q\ : std_logic;
SIGNAL \en~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~13_combout\ : std_logic;
SIGNAL \counter[0]~_emulated_q\ : std_logic;
SIGNAL \counter[0]~14_combout\ : std_logic;
SIGNAL \counter~25_combout\ : std_logic;
SIGNAL \counter[1]~9_combout\ : std_logic;
SIGNAL \counter[1]~_emulated_q\ : std_logic;
SIGNAL \counter[1]~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \counter[2]~5_combout\ : std_logic;
SIGNAL \counter[2]~_emulated_q\ : std_logic;
SIGNAL \counter[2]~6_combout\ : std_logic;
SIGNAL \counter~23_combout\ : std_logic;
SIGNAL \counter~24_combout\ : std_logic;
SIGNAL \counter[3]~1_combout\ : std_logic;
SIGNAL \counter[3]~_emulated_q\ : std_logic;
SIGNAL \counter[3]~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sat~1_combout\ : std_logic;
SIGNAL \sat~_emulated_q\ : std_logic;
SIGNAL \sat~2_combout\ : std_logic;
SIGNAL \duty_cycle[2]~input_o\ : std_logic;
SIGNAL \duty_cycle[0]~input_o\ : std_logic;
SIGNAL \duty_cycle[1]~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \duty_cycle[3]~input_o\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \current_state.high~q\ : std_logic;
SIGNAL \ALT_INV_en~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_en <= en;
ww_duty_cycle <= duty_cycle;
PWM_OUT <= ww_PWM_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\en~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \en~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_en~inputclkctrl_outclk\ <= NOT \en~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N23
\PWM_OUT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.high~q\,
	devoe => ww_devoe,
	o => \PWM_OUT~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: LCCOMB_X2_Y10_N28
\current_state.idle_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state.idle_state~0_combout\ = (\en~input_o\) # (\current_state.idle_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => \current_state.idle_state~q\,
	combout => \current_state.idle_state~0_combout\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y10_N29
\current_state.idle_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \current_state.idle_state~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.idle_state~q\);

-- Location: CLKCTRL_G4
\en~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \en~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \en~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y10_N0
\counter[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~13_combout\ = (GLOBAL(\en~inputclkctrl_outclk\) & (!\counter[0]~14_combout\)) # (!GLOBAL(\en~inputclkctrl_outclk\) & ((\counter[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[0]~14_combout\,
	datac => \counter[0]~13_combout\,
	datad => \en~inputclkctrl_outclk\,
	combout => \counter[0]~13_combout\);

-- Location: FF_X1_Y10_N13
\counter[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[0]~13_combout\,
	clrn => \ALT_INV_en~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[0]~_emulated_q\);

-- Location: LCCOMB_X1_Y10_N12
\counter[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~14_combout\ = (\en~input_o\ & (!\counter[0]~14_combout\)) # (!\en~input_o\ & ((\counter[0]~_emulated_q\ $ (\counter[0]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~14_combout\,
	datab => \en~input_o\,
	datac => \counter[0]~_emulated_q\,
	datad => \counter[0]~13_combout\,
	combout => \counter[0]~14_combout\);

-- Location: LCCOMB_X1_Y10_N8
\counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~25_combout\ = \Equal0~0_combout\ $ (\counter[0]~14_combout\ $ (\counter[1]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \counter[0]~14_combout\,
	datad => \counter[1]~10_combout\,
	combout => \counter~25_combout\);

-- Location: LCCOMB_X1_Y10_N10
\counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~9_combout\ = (GLOBAL(\en~inputclkctrl_outclk\) & ((\counter~25_combout\))) # (!GLOBAL(\en~inputclkctrl_outclk\) & (\counter[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[1]~9_combout\,
	datac => \counter~25_combout\,
	datad => \en~inputclkctrl_outclk\,
	combout => \counter[1]~9_combout\);

-- Location: FF_X1_Y10_N19
\counter[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[1]~9_combout\,
	clrn => \ALT_INV_en~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[1]~_emulated_q\);

-- Location: LCCOMB_X1_Y10_N18
\counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~10_combout\ = (\en~input_o\ & (\counter~25_combout\)) # (!\en~input_o\ & ((\counter[1]~_emulated_q\ $ (\counter[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \counter~25_combout\,
	datac => \counter[1]~_emulated_q\,
	datad => \counter[1]~9_combout\,
	combout => \counter[1]~10_combout\);

-- Location: LCCOMB_X2_Y10_N30
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \counter[2]~6_combout\ $ (((\counter[0]~14_combout\ & \counter[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~14_combout\,
	datab => \counter[1]~10_combout\,
	datac => \counter[2]~6_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y10_N2
\counter[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~5_combout\ = (GLOBAL(\en~inputclkctrl_outclk\) & (\Add0~0_combout\)) # (!GLOBAL(\en~inputclkctrl_outclk\) & ((\counter[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \counter[2]~5_combout\,
	datad => \en~inputclkctrl_outclk\,
	combout => \counter[2]~5_combout\);

-- Location: FF_X1_Y10_N23
\counter[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[2]~5_combout\,
	clrn => \ALT_INV_en~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[2]~_emulated_q\);

-- Location: LCCOMB_X1_Y10_N22
\counter[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~6_combout\ = (\en~input_o\ & (\Add0~0_combout\)) # (!\en~input_o\ & ((\counter[2]~5_combout\ $ (\counter[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \counter[2]~5_combout\,
	datac => \counter[2]~_emulated_q\,
	datad => \en~input_o\,
	combout => \counter[2]~6_combout\);

-- Location: LCCOMB_X1_Y10_N14
\counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~23_combout\ = \Equal0~0_combout\ $ (((\counter[0]~14_combout\ & (\counter[1]~10_combout\ & \counter[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~14_combout\,
	datab => \counter[1]~10_combout\,
	datac => \counter[2]~6_combout\,
	datad => \Equal0~0_combout\,
	combout => \counter~23_combout\);

-- Location: LCCOMB_X2_Y10_N16
\counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~24_combout\ = \counter[3]~2_combout\ $ (\counter~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[3]~2_combout\,
	datad => \counter~23_combout\,
	combout => \counter~24_combout\);

-- Location: LCCOMB_X2_Y10_N20
\counter[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~1_combout\ = (GLOBAL(\en~inputclkctrl_outclk\) & (\counter~24_combout\)) # (!GLOBAL(\en~inputclkctrl_outclk\) & ((\counter[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter~24_combout\,
	datac => \counter[3]~1_combout\,
	datad => \en~inputclkctrl_outclk\,
	combout => \counter[3]~1_combout\);

-- Location: FF_X2_Y10_N27
\counter[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \counter[3]~1_combout\,
	clrn => \ALT_INV_en~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter[3]~_emulated_q\);

-- Location: LCCOMB_X2_Y10_N26
\counter[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~2_combout\ = (\en~input_o\ & (\counter~24_combout\)) # (!\en~input_o\ & ((\counter[3]~_emulated_q\ $ (\counter[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \counter~24_combout\,
	datac => \counter[3]~_emulated_q\,
	datad => \counter[3]~1_combout\,
	combout => \counter[3]~2_combout\);

-- Location: LCCOMB_X1_Y10_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\counter[3]~2_combout\ & (\counter[0]~14_combout\ & (!\counter[2]~6_combout\ & !\counter[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[3]~2_combout\,
	datab => \counter[0]~14_combout\,
	datac => \counter[2]~6_combout\,
	datad => \counter[1]~10_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y10_N6
\sat~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat~1_combout\ = (GLOBAL(\en~inputclkctrl_outclk\) & ((\Equal0~0_combout\))) # (!GLOBAL(\en~inputclkctrl_outclk\) & (\sat~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat~1_combout\,
	datab => \Equal0~0_combout\,
	datad => \en~inputclkctrl_outclk\,
	combout => \sat~1_combout\);

-- Location: FF_X1_Y10_N7
\sat~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sat~1_combout\,
	clrn => \ALT_INV_en~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sat~_emulated_q\);

-- Location: LCCOMB_X1_Y10_N16
\sat~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sat~2_combout\ = (\en~input_o\ & (((\Equal0~0_combout\)))) # (!\en~input_o\ & (\sat~1_combout\ $ (((\sat~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \sat~_emulated_q\,
	datad => \en~input_o\,
	combout => \sat~2_combout\);

-- Location: IOIBUF_X0_Y8_N15
\duty_cycle[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(2),
	o => \duty_cycle[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\duty_cycle[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(0),
	o => \duty_cycle[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\duty_cycle[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(1),
	o => \duty_cycle[1]~input_o\);

-- Location: LCCOMB_X1_Y10_N30
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\duty_cycle[1]~input_o\ & (((\duty_cycle[0]~input_o\ & !\counter[0]~14_combout\)) # (!\counter[1]~10_combout\))) # (!\duty_cycle[1]~input_o\ & (\duty_cycle[0]~input_o\ & (!\counter[0]~14_combout\ & !\counter[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_cycle[0]~input_o\,
	datab => \duty_cycle[1]~input_o\,
	datac => \counter[0]~14_combout\,
	datad => \counter[1]~10_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y10_N4
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\duty_cycle[2]~input_o\ & ((\Selector0~0_combout\) # (!\counter[2]~6_combout\))) # (!\duty_cycle[2]~input_o\ & (\Selector0~0_combout\ & !\counter[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \duty_cycle[2]~input_o\,
	datac => \Selector0~0_combout\,
	datad => \counter[2]~6_combout\,
	combout => \Selector0~1_combout\);

-- Location: IOIBUF_X0_Y9_N8
\duty_cycle[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_duty_cycle(3),
	o => \duty_cycle[3]~input_o\);

-- Location: LCCOMB_X1_Y10_N26
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\counter[3]~2_combout\ & (\Selector0~1_combout\ & \duty_cycle[3]~input_o\)) # (!\counter[3]~2_combout\ & ((\Selector0~1_combout\) # (\duty_cycle[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[3]~2_combout\,
	datac => \Selector0~1_combout\,
	datad => \duty_cycle[3]~input_o\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X1_Y10_N28
\Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\current_state.high~q\ & ((\Selector0~2_combout\))) # (!\current_state.high~q\ & (\sat~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sat~2_combout\,
	datac => \Selector0~2_combout\,
	datad => \current_state.high~q\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X1_Y10_N24
\Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\current_state.idle_state~q\ & ((\Selector0~3_combout\))) # (!\current_state.idle_state~q\ & (\en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.idle_state~q\,
	datac => \en~input_o\,
	datad => \Selector0~3_combout\,
	combout => \Selector0~4_combout\);

-- Location: FF_X1_Y10_N25
\current_state.high\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.high~q\);

ww_PWM_OUT <= \PWM_OUT~output_o\;
END structure;


