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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "06/14/2024 09:42:15"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	Timer IS
    PORT (
	clk_i : IN std_logic;
	clk_50 : OUT std_logic;
	clk_1 : OUT std_logic
	);
END Timer;

-- Design Ports Information
-- clk_50	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_1	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_i	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Timer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_i : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_clk_1 : std_logic;
SIGNAL \clk_i~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \count1~4_combout\ : std_logic;
SIGNAL \count1~5_combout\ : std_logic;
SIGNAL \count1~6_combout\ : std_logic;
SIGNAL \count1~7_combout\ : std_logic;
SIGNAL \count2~0_combout\ : std_logic;
SIGNAL \count2~11_combout\ : std_logic;
SIGNAL \clk_50~output_o\ : std_logic;
SIGNAL \clk_1~output_o\ : std_logic;
SIGNAL \clk_i~input_o\ : std_logic;
SIGNAL \clk_i~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \count1~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \count1~1_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \count1~2_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \count1~3_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clk_temp_50~0_combout\ : std_logic;
SIGNAL \clk_temp_50~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \count2~5_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \count2~2_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \count2~3_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \count2~4_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \count2~8_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \count2~9_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \count2~10_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \count2~7_combout\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \count2~6_combout\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \count2~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \clk_temp_1~0_combout\ : std_logic;
SIGNAL \clk_temp_1~q\ : std_logic;
SIGNAL count2 : std_logic_vector(24 DOWNTO 0);
SIGNAL count1 : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk_i <= clk_i;
clk_50 <= ww_clk_50;
clk_1 <= ww_clk_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_i~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_i~input_o\);

-- Location: LCCOMB_X31_Y12_N22
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (count1(7) & (!\Add0~13\)) # (!count1(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!count1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X31_Y12_N30
\Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (count1(11) & (!\Add0~21\)) # (!count1(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!count1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X31_Y11_N6
\Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (count1(15) & (!\Add0~29\)) # (!count1(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!count1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X31_Y11_N8
\Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (count1(16) & (\Add0~31\ $ (GND))) # (!count1(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((count1(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X31_Y11_N10
\Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (count1(17) & (!\Add0~33\)) # (!count1(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!count1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X31_Y11_N12
\Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (count1(18) & (\Add0~35\ $ (GND))) # (!count1(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((count1(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X31_Y11_N14
\Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (count1(19) & (!\Add0~37\)) # (!count1(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!count1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X14_Y19_N12
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count2(2) & (\Add1~3\ $ (GND))) # (!count2(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count2(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X14_Y19_N26
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (count2(9) & (!\Add1~17\)) # (!count2(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!count2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X14_Y18_N2
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (count2(13) & (!\Add1~25\)) # (!count2(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!count2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X14_Y18_N20
\Add1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (count2(22) & (\Add1~43\ $ (GND))) # (!count2(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((count2(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X14_Y18_N22
\Add1~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (count2(23) & (!\Add1~45\)) # (!count2(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!count2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X14_Y18_N24
\Add1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = \Add1~47\ $ (!count2(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count2(24),
	cin => \Add1~47\,
	combout => \Add1~48_combout\);

-- Location: FF_X31_Y12_N23
\count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(7));

-- Location: LCCOMB_X32_Y12_N30
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count1(6) & (!count1(5) & (!count1(4) & !count1(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(6),
	datab => count1(5),
	datac => count1(4),
	datad => count1(7),
	combout => \Equal0~1_combout\);

-- Location: FF_X31_Y12_N31
\count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(11));

-- Location: FF_X31_Y11_N7
\count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(15));

-- Location: FF_X32_Y11_N5
\count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(16));

-- Location: FF_X32_Y11_N7
\count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(17));

-- Location: FF_X31_Y11_N31
\count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(18));

-- Location: FF_X32_Y11_N21
\count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(19));

-- Location: LCCOMB_X32_Y11_N26
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count1(17) & (count1(18) & (count1(16) & count1(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(17),
	datab => count1(18),
	datac => count1(16),
	datad => count1(19),
	combout => \Equal0~5_combout\);

-- Location: FF_X15_Y18_N31
\count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(13));

-- Location: FF_X14_Y19_N27
\count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(9));

-- Location: LCCOMB_X14_Y19_N6
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count2(9) & (!count2(8) & (count2(7) & !count2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(9),
	datab => count2(8),
	datac => count2(7),
	datad => count2(6),
	combout => \Equal1~1_combout\);

-- Location: FF_X14_Y19_N13
\count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(2));

-- Location: FF_X15_Y18_N7
\count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(23));

-- Location: FF_X14_Y18_N25
\count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(24));

-- Location: LCCOMB_X32_Y11_N4
\count1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~4_combout\ = (!\Equal0~7_combout\ & \Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~32_combout\,
	combout => \count1~4_combout\);

-- Location: LCCOMB_X32_Y11_N6
\count1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~5_combout\ = (!\Equal0~7_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~34_combout\,
	combout => \count1~5_combout\);

-- Location: LCCOMB_X31_Y11_N30
\count1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~6_combout\ = (!\Equal0~7_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datad => \Add0~36_combout\,
	combout => \count1~6_combout\);

-- Location: LCCOMB_X32_Y11_N20
\count1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~7_combout\ = (!\Equal0~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~38_combout\,
	combout => \count1~7_combout\);

-- Location: LCCOMB_X15_Y18_N30
\count2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~0_combout\ = (!\Equal1~7_combout\ & \Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datad => \Add1~26_combout\,
	combout => \count2~0_combout\);

-- Location: LCCOMB_X15_Y18_N6
\count2~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~11_combout\ = (!\Equal1~7_combout\ & \Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datad => \Add1~46_combout\,
	combout => \count2~11_combout\);

-- Location: IOOBUF_X33_Y11_N9
\clk_50~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_temp_50~q\,
	devoe => ww_devoe,
	o => \clk_50~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\clk_1~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_temp_1~q\,
	devoe => ww_devoe,
	o => \clk_1~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk_i~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_i,
	o => \clk_i~input_o\);

-- Location: CLKCTRL_G17
\clk_i~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_i~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_i~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y12_N8
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = count1(0) $ (VCC)
-- \Add0~1\ = CARRY(count1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count1(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X31_Y12_N4
\count1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~0_combout\ = (\Add0~0_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \count1~0_combout\);

-- Location: FF_X31_Y12_N5
\count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(0));

-- Location: LCCOMB_X31_Y12_N10
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (count1(1) & (!\Add0~1\)) # (!count1(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!count1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X31_Y12_N12
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (count1(2) & (\Add0~3\ $ (GND))) # (!count1(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((count1(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X31_Y12_N14
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (count1(3) & (!\Add0~5\)) # (!count1(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!count1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X31_Y12_N15
\count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(3));

-- Location: LCCOMB_X31_Y12_N16
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (count1(4) & (\Add0~7\ $ (GND))) # (!count1(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((count1(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X31_Y12_N17
\count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(4));

-- Location: LCCOMB_X31_Y12_N18
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (count1(5) & (!\Add0~9\)) # (!count1(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!count1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X31_Y12_N19
\count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(5));

-- Location: LCCOMB_X31_Y12_N20
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (count1(6) & (\Add0~11\ $ (GND))) # (!count1(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((count1(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y12_N2
\count1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~1_combout\ = (\Add0~12_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~7_combout\,
	combout => \count1~1_combout\);

-- Location: FF_X31_Y12_N3
\count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(6));

-- Location: LCCOMB_X31_Y12_N24
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (count1(8) & (\Add0~15\ $ (GND))) # (!count1(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((count1(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X31_Y12_N25
\count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(8));

-- Location: LCCOMB_X31_Y12_N26
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (count1(9) & (!\Add0~17\)) # (!count1(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!count1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X31_Y12_N0
\count1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~2_combout\ = (\Add0~18_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~18_combout\,
	datad => \Equal0~7_combout\,
	combout => \count1~2_combout\);

-- Location: FF_X31_Y12_N1
\count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(9));

-- Location: LCCOMB_X31_Y12_N28
\Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (count1(10) & (\Add0~19\ $ (GND))) # (!count1(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((count1(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X31_Y12_N29
\count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(10));

-- Location: LCCOMB_X31_Y11_N0
\Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (count1(12) & (\Add0~23\ $ (GND))) # (!count1(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((count1(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: FF_X31_Y11_N1
\count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(12));

-- Location: LCCOMB_X31_Y11_N2
\Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (count1(13) & (!\Add0~25\)) # (!count1(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!count1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: FF_X31_Y11_N3
\count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(13));

-- Location: LCCOMB_X31_Y11_N4
\Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (count1(14) & (\Add0~27\ $ (GND))) # (!count1(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((count1(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X31_Y11_N16
\Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (count1(20) & (\Add0~39\ $ (GND))) # (!count1(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((count1(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: FF_X31_Y11_N17
\count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(20));

-- Location: LCCOMB_X31_Y11_N18
\Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (count1(21) & (!\Add0~41\)) # (!count1(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!count1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: FF_X31_Y11_N19
\count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(21));

-- Location: LCCOMB_X31_Y11_N20
\Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (count1(22) & (\Add0~43\ $ (GND))) # (!count1(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((count1(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count1(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: FF_X31_Y11_N21
\count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(22));

-- Location: LCCOMB_X31_Y11_N22
\Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (count1(23) & (!\Add0~45\)) # (!count1(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!count1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count1(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X31_Y11_N24
\Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!count1(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count1(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: FF_X31_Y11_N25
\count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(24));

-- Location: FF_X31_Y11_N23
\count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(23));

-- Location: LCCOMB_X32_Y11_N8
\Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!count1(22) & (!count1(21) & (!count1(20) & !count1(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(22),
	datab => count1(21),
	datac => count1(20),
	datad => count1(23),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X31_Y11_N26
\count1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count1~3_combout\ = (\Add0~28_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~7_combout\,
	combout => \count1~3_combout\);

-- Location: FF_X31_Y11_N27
\count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(14));

-- Location: LCCOMB_X31_Y11_N28
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!count1(15) & (!count1(13) & (count1(14) & !count1(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(15),
	datab => count1(13),
	datac => count1(14),
	datad => count1(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X31_Y12_N6
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count1(11) & (count1(9) & (!count1(8) & !count1(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(11),
	datab => count1(9),
	datac => count1(8),
	datad => count1(10),
	combout => \Equal0~2_combout\);

-- Location: FF_X31_Y12_N11
\count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(1));

-- Location: FF_X31_Y12_N13
\count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count1(2));

-- Location: LCCOMB_X32_Y12_N28
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count1(3) & (!count1(0) & (!count1(1) & !count1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count1(3),
	datab => count1(0),
	datac => count1(1),
	datad => count1(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X32_Y11_N18
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X32_Y11_N2
\Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~5_combout\ & (!count1(24) & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => count1(24),
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X32_Y11_N12
\clk_temp_50~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_temp_50~0_combout\ = \clk_temp_50~q\ $ (\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_temp_50~q\,
	datad => \Equal0~7_combout\,
	combout => \clk_temp_50~0_combout\);

-- Location: FF_X32_Y11_N13
clk_temp_50 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \clk_temp_50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_temp_50~q\);

-- Location: LCCOMB_X14_Y19_N8
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count2(0) $ (VCC)
-- \Add1~1\ = CARRY(count2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count2(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X14_Y19_N2
\count2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~5_combout\ = (\Add1~0_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~7_combout\,
	combout => \count2~5_combout\);

-- Location: FF_X14_Y19_N3
\count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(0));

-- Location: LCCOMB_X14_Y19_N10
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count2(1) & (!\Add1~1\)) # (!count2(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X14_Y19_N14
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count2(3) & (!\Add1~5\)) # (!count2(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X14_Y19_N15
\count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(3));

-- Location: LCCOMB_X14_Y19_N16
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count2(4) & (\Add1~7\ $ (GND))) # (!count2(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count2(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X14_Y19_N17
\count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(4));

-- Location: LCCOMB_X14_Y19_N18
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count2(5) & (!\Add1~9\)) # (!count2(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!count2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X14_Y19_N19
\count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(5));

-- Location: LCCOMB_X14_Y19_N20
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (count2(6) & (\Add1~11\ $ (GND))) # (!count2(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((count2(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X14_Y19_N21
\count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(6));

-- Location: LCCOMB_X14_Y19_N22
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count2(7) & (!\Add1~13\)) # (!count2(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!count2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X14_Y19_N0
\count2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~2_combout\ = (\Add1~14_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \Equal1~7_combout\,
	combout => \count2~2_combout\);

-- Location: FF_X14_Y19_N1
\count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(7));

-- Location: LCCOMB_X14_Y19_N24
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (count2(8) & (\Add1~15\ $ (GND))) # (!count2(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((count2(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X14_Y19_N25
\count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(8));

-- Location: LCCOMB_X14_Y19_N28
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (count2(10) & (\Add1~19\ $ (GND))) # (!count2(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((count2(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X14_Y19_N29
\count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(10));

-- Location: LCCOMB_X14_Y19_N30
\Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (count2(11) & (!\Add1~21\)) # (!count2(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!count2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X14_Y18_N0
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (count2(12) & (\Add1~23\ $ (GND))) # (!count2(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((count2(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X14_Y18_N4
\Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (count2(14) & (\Add1~27\ $ (GND))) # (!count2(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((count2(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X15_Y18_N0
\count2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~3_combout\ = (\Add1~28_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~28_combout\,
	datad => \Equal1~7_combout\,
	combout => \count2~3_combout\);

-- Location: FF_X15_Y18_N1
\count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(14));

-- Location: LCCOMB_X14_Y18_N6
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (count2(15) & (!\Add1~29\)) # (!count2(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!count2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X15_Y18_N26
\count2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~4_combout\ = (\Add1~30_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~30_combout\,
	datad => \Equal1~7_combout\,
	combout => \count2~4_combout\);

-- Location: FF_X15_Y18_N27
\count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(15));

-- Location: LCCOMB_X14_Y18_N8
\Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (count2(16) & (\Add1~31\ $ (GND))) # (!count2(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((count2(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X14_Y18_N9
\count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(16));

-- Location: LCCOMB_X14_Y18_N10
\Add1~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (count2(17) & (!\Add1~33\)) # (!count2(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!count2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X14_Y18_N12
\Add1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (count2(18) & (\Add1~35\ $ (GND))) # (!count2(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((count2(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X14_Y18_N14
\Add1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (count2(19) & (!\Add1~37\)) # (!count2(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!count2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X14_Y18_N16
\Add1~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (count2(20) & (\Add1~39\ $ (GND))) # (!count2(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((count2(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count2(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X14_Y18_N28
\count2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~8_combout\ = (!\Equal1~7_combout\ & \Add1~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add1~40_combout\,
	combout => \count2~8_combout\);

-- Location: FF_X14_Y18_N29
\count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(20));

-- Location: LCCOMB_X14_Y18_N18
\Add1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (count2(21) & (!\Add1~41\)) # (!count2(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!count2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count2(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X14_Y18_N30
\count2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~9_combout\ = (!\Equal1~7_combout\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add1~42_combout\,
	combout => \count2~9_combout\);

-- Location: FF_X14_Y18_N31
\count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(21));

-- Location: LCCOMB_X15_Y18_N12
\count2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~10_combout\ = (!\Equal1~7_combout\ & \Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datad => \Add1~44_combout\,
	combout => \count2~10_combout\);

-- Location: FF_X15_Y18_N13
\count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(22));

-- Location: LCCOMB_X15_Y18_N8
\Equal1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (count2(23) & (count2(21) & (count2(20) & count2(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(23),
	datab => count2(21),
	datac => count2(20),
	datad => count2(22),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X15_Y18_N4
\count2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~7_combout\ = (!\Equal1~7_combout\ & \Add1~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datad => \Add1~38_combout\,
	combout => \count2~7_combout\);

-- Location: FF_X15_Y18_N5
\count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(19));

-- Location: LCCOMB_X14_Y18_N26
\count2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~6_combout\ = (!\Equal1~7_combout\ & \Add1~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~7_combout\,
	datad => \Add1~34_combout\,
	combout => \count2~6_combout\);

-- Location: FF_X14_Y18_N27
\count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(17));

-- Location: FF_X14_Y18_N13
\count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(18));

-- Location: LCCOMB_X15_Y18_N22
\Equal1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!count2(16) & (count2(19) & (count2(17) & !count2(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(16),
	datab => count2(19),
	datac => count2(17),
	datad => count2(18),
	combout => \Equal1~5_combout\);

-- Location: FF_X14_Y19_N31
\count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(11));

-- Location: LCCOMB_X15_Y18_N20
\count2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count2~1_combout\ = (\Add1~24_combout\ & !\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~24_combout\,
	datad => \Equal1~7_combout\,
	combout => \count2~1_combout\);

-- Location: FF_X15_Y18_N21
\count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \count2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(12));

-- Location: LCCOMB_X15_Y18_N2
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (count2(13) & (!count2(11) & (!count2(10) & count2(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(13),
	datab => count2(11),
	datac => count2(10),
	datad => count2(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y19_N4
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!count2(2) & (!count2(4) & (!count2(3) & !count2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(2),
	datab => count2(4),
	datac => count2(3),
	datad => count2(5),
	combout => \Equal1~2_combout\);

-- Location: FF_X14_Y19_N11
\count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count2(1));

-- Location: LCCOMB_X15_Y18_N16
\Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (count2(15) & (count2(14) & (!count2(1) & !count2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(15),
	datab => count2(14),
	datac => count2(1),
	datad => count2(0),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X15_Y18_N18
\Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~3_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X15_Y18_N10
\Equal1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!count2(24) & (\Equal1~6_combout\ & (\Equal1~5_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count2(24),
	datab => \Equal1~6_combout\,
	datac => \Equal1~5_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X15_Y18_N24
\clk_temp_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \clk_temp_1~0_combout\ = \clk_temp_1~q\ $ (\Equal1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_temp_1~q\,
	datad => \Equal1~7_combout\,
	combout => \clk_temp_1~0_combout\);

-- Location: FF_X15_Y18_N25
clk_temp_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_i~inputclkctrl_outclk\,
	d => \clk_temp_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_temp_1~q\);

ww_clk_50 <= \clk_50~output_o\;

ww_clk_1 <= \clk_1~output_o\;
END structure;


