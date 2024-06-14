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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
-- CREATED		"Wed May 15 19:43:48 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY CoinCharger IS 
	PORT
	(

	);
END CoinCharger;

ARCHITECTURE bdf_type OF CoinCharger IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT mux_0
	PORT(S : IN STD_LOGIC;
		 Y : OUT STD_LOGIC);
END COMPONENT;
ATTRIBUTE black_box OF mux_0: COMPONENT IS true;
ATTRIBUTE noopt OF mux_0: COMPONENT IS true;

COMPONENT btod
	PORT(n_0 : IN STD_LOGIC;
		 n_1 : IN STD_LOGIC;
		 n_2 : IN STD_LOGIC;
		 n_3 : IN STD_LOGIC;
		 n_4 : IN STD_LOGIC;
		 n_5 : IN STD_LOGIC;
		 n_6 : IN STD_LOGIC;
		 n_7 : IN STD_LOGIC;
		 n_8 : IN STD_LOGIC;
		 n_9 : IN STD_LOGIC;
		 N : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT discounter
	PORT(clk_1 : IN STD_LOGIC;
		 confirm : IN STD_LOGIC;
		 D_1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 D_2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 sing : OUT STD_LOGIC;
		 Ds_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Ds_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT d_controller
	PORT(Reset : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 N_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 D_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 D_2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT keyborad
	PORT(clk_s : IN STD_LOGIC;
		 R1 : IN STD_LOGIC;
		 R2 : IN STD_LOGIC;
		 R3 : IN STD_LOGIC;
		 R4 : IN STD_LOGIC;
		 c1 : IN STD_LOGIC;
		 c2 : IN STD_LOGIC;
		 c3 : IN STD_LOGIC;
		 c4 : IN STD_LOGIC;
		 N0 : OUT STD_LOGIC;
		 N1 : OUT STD_LOGIC;
		 N2 : OUT STD_LOGIC;
		 N3 : OUT STD_LOGIC;
		 N4 : OUT STD_LOGIC;
		 N5 : OUT STD_LOGIC;
		 N6 : OUT STD_LOGIC;
		 N7 : OUT STD_LOGIC;
		 N8 : OUT STD_LOGIC;
		 N9 : OUT STD_LOGIC;
		 start : OUT STD_LOGIC;
		 confirm : OUT STD_LOGIC;
		 reset : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT scanner
	PORT(clk_50 : IN STD_LOGIC;
		 r1 : OUT STD_LOGIC;
		 r2 : OUT STD_LOGIC;
		 r3 : OUT STD_LOGIC;
		 r4 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT switch
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 signal_in : IN STD_LOGIC;
		 signal_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT timer
	PORT(clk_i : IN STD_LOGIC;
		 clk_50 : OUT STD_LOGIC;
		 clk_1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT translate
	PORT(n : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 a : OUT STD_LOGIC;
		 b : OUT STD_LOGIC;
		 c : OUT STD_LOGIC;
		 d : OUT STD_LOGIC;
		 e : OUT STD_LOGIC;
		 f : OUT STD_LOGIC;
		 g : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	clk :  STD_LOGIC;
SIGNAL	clk1s :  STD_LOGIC;
SIGNAL	clk50hz :  STD_LOGIC;
SIGNAL	confirm :  STD_LOGIC;
SIGNAL	confirm1 :  STD_LOGIC;
SIGNAL	reset :  STD_LOGIC;
SIGNAL	sel :  STD_LOGIC;
SIGNAL	start :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_BtoD : btod
PORT MAP(n_0 => SYNTHESIZED_WIRE_0,
		 n_1 => SYNTHESIZED_WIRE_1,
		 n_2 => SYNTHESIZED_WIRE_2,
		 n_3 => SYNTHESIZED_WIRE_3,
		 n_4 => SYNTHESIZED_WIRE_4,
		 n_5 => SYNTHESIZED_WIRE_5,
		 n_6 => SYNTHESIZED_WIRE_6,
		 n_7 => SYNTHESIZED_WIRE_7,
		 n_8 => SYNTHESIZED_WIRE_8,
		 n_9 => SYNTHESIZED_WIRE_9,
		 N => SYNTHESIZED_WIRE_12);


b2v_DisCounter : discounter
PORT MAP(clk_1 => clk1s,
		 confirm => confirm1,
		 D_1 => SYNTHESIZED_WIRE_21,
		 D_2 => SYNTHESIZED_WIRE_22,
		 Ds_1 => SYNTHESIZED_WIRE_19,
		 Ds_2 => SYNTHESIZED_WIRE_18);


b2v_inst1 : d_controller
PORT MAP(Reset => reset,
		 clk => clk,
		 N_in => SYNTHESIZED_WIRE_12,
		 D_1 => SYNTHESIZED_WIRE_21,
		 D_2 => SYNTHESIZED_WIRE_22);


b2v_keyborad : keyborad
PORT MAP(clk_s => clk1s,
		 R1 => SYNTHESIZED_WIRE_13,
		 R2 => SYNTHESIZED_WIRE_14,
		 R3 => SYNTHESIZED_WIRE_15,
		 R4 => SYNTHESIZED_WIRE_16,
		 N0 => SYNTHESIZED_WIRE_0,
		 N1 => SYNTHESIZED_WIRE_1,
		 N2 => SYNTHESIZED_WIRE_2,
		 N3 => SYNTHESIZED_WIRE_3,
		 N4 => SYNTHESIZED_WIRE_4,
		 N5 => SYNTHESIZED_WIRE_5,
		 N6 => SYNTHESIZED_WIRE_6,
		 N7 => SYNTHESIZED_WIRE_7,
		 N8 => SYNTHESIZED_WIRE_8,
		 N9 => SYNTHESIZED_WIRE_9,
		 start => start,
		 confirm => confirm,
		 reset => reset);


b2v_mux1 : mux_0
PORT MAP(S => sel,
		 Y => clk);


b2v_Scanner : scanner
PORT MAP(clk_50 => clk50hz,
		 r1 => SYNTHESIZED_WIRE_13,
		 r2 => SYNTHESIZED_WIRE_14,
		 r3 => SYNTHESIZED_WIRE_15,
		 r4 => SYNTHESIZED_WIRE_16);


b2v_switch1 : switch
PORT MAP(reset => reset,
		 signal_in => start,
		 signal_out => sel);


b2v_switch2 : switch
PORT MAP(reset => reset,
		 signal_in => confirm,
		 signal_out => confirm1);


b2v_Timer : timer
PORT MAP(clk_i => clk,
		 clk_50 => clk50hz,
		 clk_1 => clk1s);


b2v_Tran3 : translate
PORT MAP(n => SYNTHESIZED_WIRE_22);


b2v_Trans1 : translate
PORT MAP(n => SYNTHESIZED_WIRE_18);


b2v_Trans2 : translate
PORT MAP(n => SYNTHESIZED_WIRE_19);


b2v_Trans4 : translate
PORT MAP(n => SYNTHESIZED_WIRE_21);


END bdf_type;