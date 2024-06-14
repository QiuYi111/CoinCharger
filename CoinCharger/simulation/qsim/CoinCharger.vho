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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"

-- DATE "05/15/2024 21:33:42"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CoinCharger IS
    PORT (
	a : OUT std_logic;
	B23 : IN std_logic;
	c1 : IN std_logic;
	c2 : IN std_logic;
	c4 : IN std_logic;
	c5 : IN std_logic;
	b : OUT std_logic;
	c : OUT std_logic;
	d : OUT std_logic;
	e : OUT std_logic;
	f : OUT std_logic;
	g : OUT std_logic;
	a1 : OUT std_logic;
	b2 : OUT std_logic;
	c3 : OUT std_logic;
	d4 : OUT std_logic;
	e5 : OUT std_logic;
	f6 : OUT std_logic;
	g7 : OUT std_logic;
	a8 : OUT std_logic;
	b9 : OUT std_logic;
	c10 : OUT std_logic;
	d11 : OUT std_logic;
	e12 : OUT std_logic;
	f13 : OUT std_logic;
	g14 : OUT std_logic;
	a15 : OUT std_logic;
	b16 : OUT std_logic;
	c17 : OUT std_logic;
	d18 : OUT std_logic;
	e19 : OUT std_logic;
	f20 : OUT std_logic;
	g21 : OUT std_logic;
	sing : OUT std_logic
	);
END CoinCharger;

-- Design Ports Information
-- a	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B23	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c2	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c4	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c5	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b2	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c3	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d4	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e5	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f6	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g7	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a8	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b9	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c10	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d11	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e12	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f13	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g14	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a15	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b16	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c17	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d18	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e19	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f20	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g21	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sing	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CoinCharger IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_B23 : std_logic;
SIGNAL ww_c1 : std_logic;
SIGNAL ww_c2 : std_logic;
SIGNAL ww_c4 : std_logic;
SIGNAL ww_c5 : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_b2 : std_logic;
SIGNAL ww_c3 : std_logic;
SIGNAL ww_d4 : std_logic;
SIGNAL ww_e5 : std_logic;
SIGNAL ww_f6 : std_logic;
SIGNAL ww_g7 : std_logic;
SIGNAL ww_a8 : std_logic;
SIGNAL ww_b9 : std_logic;
SIGNAL ww_c10 : std_logic;
SIGNAL ww_d11 : std_logic;
SIGNAL ww_e12 : std_logic;
SIGNAL ww_f13 : std_logic;
SIGNAL ww_g14 : std_logic;
SIGNAL ww_a15 : std_logic;
SIGNAL ww_b16 : std_logic;
SIGNAL ww_c17 : std_logic;
SIGNAL ww_d18 : std_logic;
SIGNAL ww_e19 : std_logic;
SIGNAL ww_f20 : std_logic;
SIGNAL ww_g21 : std_logic;
SIGNAL ww_sing : std_logic;
SIGNAL \B23~input_o\ : std_logic;
SIGNAL \c1~input_o\ : std_logic;
SIGNAL \c2~input_o\ : std_logic;
SIGNAL \c4~input_o\ : std_logic;
SIGNAL \c5~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;

BEGIN

a <= ww_a;
ww_B23 <= B23;
ww_c1 <= c1;
ww_c2 <= c2;
ww_c4 <= c4;
ww_c5 <= c5;
b <= ww_b;
c <= ww_c;
d <= ww_d;
e <= ww_e;
f <= ww_f;
g <= ww_g;
a1 <= ww_a1;
b2 <= ww_b2;
c3 <= ww_c3;
d4 <= ww_d4;
e5 <= ww_e5;
f6 <= ww_f6;
g7 <= ww_g7;
a8 <= ww_a8;
b9 <= ww_b9;
c10 <= ww_c10;
d11 <= ww_d11;
e12 <= ww_e12;
f13 <= ww_f13;
g14 <= ww_g14;
a15 <= ww_a15;
b16 <= ww_b16;
c17 <= ww_c17;
d18 <= ww_d18;
e19 <= ww_e19;
f20 <= ww_f20;
g21 <= ww_g21;
sing <= ww_sing;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X64_Y0_N36
\a~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_a);

-- Location: IOOBUF_X34_Y81_N76
\b~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_b);

-- Location: IOOBUF_X32_Y0_N36
\c~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c);

-- Location: IOOBUF_X50_Y81_N42
\d~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_d);

-- Location: IOOBUF_X40_Y0_N36
\e~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_e);

-- Location: IOOBUF_X88_Y81_N20
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOOBUF_X70_Y81_N2
\g~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_g);

-- Location: IOOBUF_X76_Y81_N36
\a1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_a1);

-- Location: IOOBUF_X82_Y81_N42
\b2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_b2);

-- Location: IOOBUF_X66_Y81_N42
\c3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c3);

-- Location: IOOBUF_X50_Y81_N59
\d4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_d4);

-- Location: IOOBUF_X26_Y81_N59
\e5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_e5);

-- Location: IOOBUF_X52_Y0_N36
\f6~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_f6);

-- Location: IOOBUF_X40_Y81_N36
\g7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_g7);

-- Location: IOOBUF_X89_Y6_N22
\a8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_a8);

-- Location: IOOBUF_X40_Y0_N53
\b9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_b9);

-- Location: IOOBUF_X62_Y81_N2
\c10~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c10);

-- Location: IOOBUF_X28_Y81_N53
\d11~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_d11);

-- Location: IOOBUF_X30_Y0_N19
\e12~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_e12);

-- Location: IOOBUF_X58_Y81_N59
\f13~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_f13);

-- Location: IOOBUF_X4_Y0_N53
\g14~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_g14);

-- Location: IOOBUF_X58_Y81_N93
\a15~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_a15);

-- Location: IOOBUF_X28_Y0_N53
\b16~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_b16);

-- Location: IOOBUF_X76_Y81_N2
\c17~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_c17);

-- Location: IOOBUF_X80_Y81_N53
\d18~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_d18);

-- Location: IOOBUF_X36_Y81_N53
\e19~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_e19);

-- Location: IOOBUF_X2_Y0_N59
\f20~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_f20);

-- Location: IOOBUF_X26_Y81_N42
\g21~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_g21);

-- Location: IOOBUF_X52_Y0_N19
\sing~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_sing);

-- Location: IOIBUF_X89_Y9_N55
\B23~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B23,
	o => \B23~input_o\);

-- Location: IOIBUF_X32_Y81_N1
\c1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c1,
	o => \c1~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\c2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c2,
	o => \c2~input_o\);

-- Location: IOIBUF_X62_Y81_N52
\c4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c4,
	o => \c4~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\c5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c5,
	o => \c5~input_o\);

-- Location: LABCELL_X50_Y68_N3
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


