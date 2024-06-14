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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/15/2024 21:33:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CoinCharger
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CoinCharger_vhd_vec_tst IS
END CoinCharger_vhd_vec_tst;
ARCHITECTURE CoinCharger_arch OF CoinCharger_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL a1 : STD_LOGIC;
SIGNAL a8 : STD_LOGIC;
SIGNAL a15 : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL b2 : STD_LOGIC;
SIGNAL b9 : STD_LOGIC;
SIGNAL b16 : STD_LOGIC;
SIGNAL B23 : STD_LOGIC;
SIGNAL c : STD_LOGIC;
SIGNAL c1 : STD_LOGIC;
SIGNAL c2 : STD_LOGIC;
SIGNAL c3 : STD_LOGIC;
SIGNAL c4 : STD_LOGIC;
SIGNAL c5 : STD_LOGIC;
SIGNAL c10 : STD_LOGIC;
SIGNAL c17 : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL d4 : STD_LOGIC;
SIGNAL d11 : STD_LOGIC;
SIGNAL d18 : STD_LOGIC;
SIGNAL e : STD_LOGIC;
SIGNAL e5 : STD_LOGIC;
SIGNAL e12 : STD_LOGIC;
SIGNAL e19 : STD_LOGIC;
SIGNAL f : STD_LOGIC;
SIGNAL f6 : STD_LOGIC;
SIGNAL f13 : STD_LOGIC;
SIGNAL f20 : STD_LOGIC;
SIGNAL g : STD_LOGIC;
SIGNAL g7 : STD_LOGIC;
SIGNAL g14 : STD_LOGIC;
SIGNAL g21 : STD_LOGIC;
SIGNAL sing : STD_LOGIC;
COMPONENT CoinCharger
	PORT (
	a : OUT STD_LOGIC;
	a1 : OUT STD_LOGIC;
	a8 : OUT STD_LOGIC;
	a15 : OUT STD_LOGIC;
	b : OUT STD_LOGIC;
	b2 : OUT STD_LOGIC;
	b9 : OUT STD_LOGIC;
	b16 : OUT STD_LOGIC;
	B23 : IN STD_LOGIC;
	c : OUT STD_LOGIC;
	c1 : IN STD_LOGIC;
	c2 : IN STD_LOGIC;
	c3 : OUT STD_LOGIC;
	c4 : IN STD_LOGIC;
	c5 : IN STD_LOGIC;
	c10 : OUT STD_LOGIC;
	c17 : OUT STD_LOGIC;
	d : OUT STD_LOGIC;
	d4 : OUT STD_LOGIC;
	d11 : OUT STD_LOGIC;
	d18 : OUT STD_LOGIC;
	e : OUT STD_LOGIC;
	e5 : OUT STD_LOGIC;
	e12 : OUT STD_LOGIC;
	e19 : OUT STD_LOGIC;
	f : OUT STD_LOGIC;
	f6 : OUT STD_LOGIC;
	f13 : OUT STD_LOGIC;
	f20 : OUT STD_LOGIC;
	g : OUT STD_LOGIC;
	g7 : OUT STD_LOGIC;
	g14 : OUT STD_LOGIC;
	g21 : OUT STD_LOGIC;
	sing : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CoinCharger
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	a1 => a1,
	a8 => a8,
	a15 => a15,
	b => b,
	b2 => b2,
	b9 => b9,
	b16 => b16,
	B23 => B23,
	c => c,
	c1 => c1,
	c2 => c2,
	c3 => c3,
	c4 => c4,
	c5 => c5,
	c10 => c10,
	c17 => c17,
	d => d,
	d4 => d4,
	d11 => d11,
	d18 => d18,
	e => e,
	e5 => e5,
	e12 => e12,
	e19 => e19,
	f => f,
	f6 => f6,
	f13 => f13,
	f20 => f20,
	g => g,
	g7 => g7,
	g14 => g14,
	g21 => g21,
	sing => sing
	);

-- B23
t_prcs_B23: PROCESS
BEGIN
LOOP
	B23 <= '0';
	WAIT FOR 20000 ps;
	B23 <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_B23;

-- c1
t_prcs_c1: PROCESS
BEGIN
	c1 <= '0';
	WAIT FOR 60000 ps;
	c1 <= '1';
	WAIT FOR 30000 ps;
	c1 <= '0';
	WAIT FOR 30000 ps;
	c1 <= '1';
	WAIT FOR 40000 ps;
	c1 <= '0';
	WAIT FOR 40000 ps;
	c1 <= '1';
	WAIT FOR 70000 ps;
	c1 <= '0';
WAIT;
END PROCESS t_prcs_c1;

-- c2
t_prcs_c2: PROCESS
BEGIN
	c2 <= '0';
	WAIT FOR 60000 ps;
	c2 <= '1';
	WAIT FOR 60000 ps;
	c2 <= '0';
	WAIT FOR 50000 ps;
	c2 <= '1';
	WAIT FOR 50000 ps;
	c2 <= '0';
WAIT;
END PROCESS t_prcs_c2;

-- c4
t_prcs_c4: PROCESS
BEGIN
	c4 <= '0';
WAIT;
END PROCESS t_prcs_c4;

-- c5
t_prcs_c5: PROCESS
BEGIN
	c5 <= '0';
WAIT;
END PROCESS t_prcs_c5;
END CoinCharger_arch;
