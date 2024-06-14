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

-- DATE "06/14/2024 09:24:37"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BtoD IS
    PORT (
	n_0 : IN std_logic;
	n_1 : IN std_logic;
	n_2 : IN std_logic;
	n_3 : IN std_logic;
	n_4 : IN std_logic;
	n_5 : IN std_logic;
	n_6 : IN std_logic;
	n_7 : IN std_logic;
	n_8 : IN std_logic;
	n_9 : IN std_logic;
	N : OUT std_logic_vector(3 DOWNTO 0)
	);
END BtoD;

-- Design Ports Information
-- N[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[3]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_2	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_1	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_0	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_4	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_3	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_6	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_8	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_7	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_5	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_9	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BtoD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n_0 : std_logic;
SIGNAL ww_n_1 : std_logic;
SIGNAL ww_n_2 : std_logic;
SIGNAL ww_n_3 : std_logic;
SIGNAL ww_n_4 : std_logic;
SIGNAL ww_n_5 : std_logic;
SIGNAL ww_n_6 : std_logic;
SIGNAL ww_n_7 : std_logic;
SIGNAL ww_n_8 : std_logic;
SIGNAL ww_n_9 : std_logic;
SIGNAL ww_N : std_logic_vector(3 DOWNTO 0);
SIGNAL \n_4~input_o\ : std_logic;
SIGNAL \n_7~input_o\ : std_logic;
SIGNAL \N[0]~output_o\ : std_logic;
SIGNAL \N[1]~output_o\ : std_logic;
SIGNAL \N[2]~output_o\ : std_logic;
SIGNAL \N[3]~output_o\ : std_logic;
SIGNAL \n_2~input_o\ : std_logic;
SIGNAL \n_1~input_o\ : std_logic;
SIGNAL \n_0~input_o\ : std_logic;
SIGNAL \n_3~input_o\ : std_logic;
SIGNAL \n_6~input_o\ : std_logic;
SIGNAL \n_8~input_o\ : std_logic;
SIGNAL \n_5~input_o\ : std_logic;
SIGNAL \N~2_combout\ : std_logic;
SIGNAL \N~3_combout\ : std_logic;
SIGNAL \N~4_combout\ : std_logic;
SIGNAL \n_9~input_o\ : std_logic;
SIGNAL \N~6_combout\ : std_logic;
SIGNAL \N~7_combout\ : std_logic;
SIGNAL \N~8_combout\ : std_logic;
SIGNAL \N~10_combout\ : std_logic;
SIGNAL \N~12_combout\ : std_logic;
SIGNAL \N~5_combout\ : std_logic;
SIGNAL \N~9_combout\ : std_logic;
SIGNAL \N~11_combout\ : std_logic;

BEGIN

ww_n_0 <= n_0;
ww_n_1 <= n_1;
ww_n_2 <= n_2;
ww_n_3 <= n_3;
ww_n_4 <= n_4;
ww_n_5 <= n_5;
ww_n_6 <= n_6;
ww_n_7 <= n_7;
ww_n_8 <= n_8;
ww_n_9 <= n_9;
N <= ww_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X14_Y0_N1
\n_4~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_4,
	o => \n_4~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\n_7~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_7,
	o => \n_7~input_o\);

-- Location: IOOBUF_X20_Y0_N2
\N[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N~4_combout\,
	devoe => ww_devoe,
	o => \N[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\N[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N~8_combout\,
	devoe => ww_devoe,
	o => \N[1]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\N[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N~12_combout\,
	devoe => ww_devoe,
	o => \N[2]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\N[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \N~11_combout\,
	devoe => ww_devoe,
	o => \N[3]~output_o\);

-- Location: IOIBUF_X12_Y0_N8
\n_2~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_2,
	o => \n_2~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\n_1~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_1,
	o => \n_1~input_o\);

-- Location: IOIBUF_X20_Y31_N1
\n_0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_0,
	o => \n_0~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\n_3~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_3,
	o => \n_3~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\n_6~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_6,
	o => \n_6~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\n_8~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_8,
	o => \n_8~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\n_5~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_5,
	o => \n_5~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\N~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~2_combout\ = (!\n_5~input_o\ & ((\n_6~input_o\) # ((!\n_7~input_o\ & \n_8~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_7~input_o\,
	datab => \n_6~input_o\,
	datac => \n_8~input_o\,
	datad => \n_5~input_o\,
	combout => \N~2_combout\);

-- Location: LCCOMB_X21_Y1_N18
\N~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~3_combout\ = (!\n_3~input_o\ & ((\n_4~input_o\) # (\N~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_4~input_o\,
	datab => \n_3~input_o\,
	datad => \N~2_combout\,
	combout => \N~3_combout\);

-- Location: LCCOMB_X21_Y1_N28
\N~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~4_combout\ = (\n_0~input_o\) # ((!\n_1~input_o\ & ((\n_2~input_o\) # (\N~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_2~input_o\,
	datab => \n_1~input_o\,
	datac => \n_0~input_o\,
	datad => \N~3_combout\,
	combout => \N~4_combout\);

-- Location: IOIBUF_X33_Y16_N22
\n_9~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n_9,
	o => \n_9~input_o\);

-- Location: LCCOMB_X21_Y1_N0
\N~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~6_combout\ = (\n_6~input_o\) # ((\n_5~input_o\) # ((\N~5_combout\ & \n_9~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N~5_combout\,
	datab => \n_6~input_o\,
	datac => \n_5~input_o\,
	datad => \n_9~input_o\,
	combout => \N~6_combout\);

-- Location: LCCOMB_X21_Y1_N10
\N~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~7_combout\ = (!\n_4~input_o\ & (!\n_3~input_o\ & (!\n_0~input_o\ & \N~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_4~input_o\,
	datab => \n_3~input_o\,
	datac => \n_0~input_o\,
	datad => \N~6_combout\,
	combout => \N~7_combout\);

-- Location: LCCOMB_X21_Y1_N20
\N~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~8_combout\ = (\N~7_combout\) # ((!\n_0~input_o\ & ((\n_2~input_o\) # (\n_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_2~input_o\,
	datab => \n_1~input_o\,
	datac => \n_0~input_o\,
	datad => \N~7_combout\,
	combout => \N~8_combout\);

-- Location: LCCOMB_X21_Y1_N16
\N~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~10_combout\ = (!\n_4~input_o\ & (!\n_3~input_o\ & (!\n_5~input_o\ & !\n_6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_4~input_o\,
	datab => \n_3~input_o\,
	datac => \n_5~input_o\,
	datad => \n_6~input_o\,
	combout => \N~10_combout\);

-- Location: LCCOMB_X21_Y1_N12
\N~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~12_combout\ = (!\n_2~input_o\ & (!\n_0~input_o\ & (!\n_1~input_o\ & !\N~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_2~input_o\,
	datab => \n_0~input_o\,
	datac => \n_1~input_o\,
	datad => \N~10_combout\,
	combout => \N~12_combout\);

-- Location: LCCOMB_X21_Y1_N6
\N~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~5_combout\ = (!\n_7~input_o\ & !\n_8~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_7~input_o\,
	datac => \n_8~input_o\,
	combout => \N~5_combout\);

-- Location: LCCOMB_X21_Y1_N22
\N~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~9_combout\ = (!\n_2~input_o\ & (!\n_1~input_o\ & !\n_0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n_2~input_o\,
	datab => \n_1~input_o\,
	datac => \n_0~input_o\,
	combout => \N~9_combout\);

-- Location: LCCOMB_X21_Y1_N2
\N~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \N~11_combout\ = (\N~10_combout\ & (\N~9_combout\ & ((\n_9~input_o\) # (!\N~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \N~5_combout\,
	datab => \N~10_combout\,
	datac => \N~9_combout\,
	datad => \n_9~input_o\,
	combout => \N~11_combout\);

ww_N(0) <= \N[0]~output_o\;

ww_N(1) <= \N[1]~output_o\;

ww_N(2) <= \N[2]~output_o\;

ww_N(3) <= \N[3]~output_o\;
END structure;


