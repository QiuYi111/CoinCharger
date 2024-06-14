// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
// CREATED		"Wed May 15 19:43:19 2024"

module CoinCharger(
);



wire	clk;
wire	clk1s;
wire	clk50hz;
wire	confirm;
wire	confirm1;
wire	reset;
wire	sel;
wire	start;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[3:0] SYNTHESIZED_WIRE_21;
wire	[3:0] SYNTHESIZED_WIRE_22;
wire	[3:0] SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	[3:0] SYNTHESIZED_WIRE_19;





BtoD	b2v_BtoD(
	.n_0(SYNTHESIZED_WIRE_0),
	.n_1(SYNTHESIZED_WIRE_1),
	.n_2(SYNTHESIZED_WIRE_2),
	.n_3(SYNTHESIZED_WIRE_3),
	.n_4(SYNTHESIZED_WIRE_4),
	.n_5(SYNTHESIZED_WIRE_5),
	.n_6(SYNTHESIZED_WIRE_6),
	.n_7(SYNTHESIZED_WIRE_7),
	.n_8(SYNTHESIZED_WIRE_8),
	.n_9(SYNTHESIZED_WIRE_9),
	.N(SYNTHESIZED_WIRE_12));


DisCounter	b2v_DisCounter(
	.clk_1(clk1s),
	.confirm(confirm1),
	.D_1(SYNTHESIZED_WIRE_21),
	.D_2(SYNTHESIZED_WIRE_22),
	
	.Ds_1(SYNTHESIZED_WIRE_19),
	.Ds_2(SYNTHESIZED_WIRE_18));


D_Controller	b2v_inst1(
	.Reset(reset),
	.clk(clk),
	.N_in(SYNTHESIZED_WIRE_12),
	.D_1(SYNTHESIZED_WIRE_21),
	.D_2(SYNTHESIZED_WIRE_22));


keyborad	b2v_keyborad(
	.clk_s(clk1s),
	.R1(SYNTHESIZED_WIRE_13),
	.R2(SYNTHESIZED_WIRE_14),
	.R3(SYNTHESIZED_WIRE_15),
	.R4(SYNTHESIZED_WIRE_16),
	
	
	
	
	.N0(SYNTHESIZED_WIRE_0),
	.N1(SYNTHESIZED_WIRE_1),
	.N2(SYNTHESIZED_WIRE_2),
	.N3(SYNTHESIZED_WIRE_3),
	.N4(SYNTHESIZED_WIRE_4),
	.N5(SYNTHESIZED_WIRE_5),
	.N6(SYNTHESIZED_WIRE_6),
	.N7(SYNTHESIZED_WIRE_7),
	.N8(SYNTHESIZED_WIRE_8),
	.N9(SYNTHESIZED_WIRE_9),
	.start(start),
	.confirm(confirm),
	.reset(reset));


mux_0	b2v_mux1(
	
	
	.S(sel),
	.Y(clk));


scanner	b2v_Scanner(
	.clk_50(clk50hz),
	.r1(SYNTHESIZED_WIRE_13),
	.r2(SYNTHESIZED_WIRE_14),
	.r3(SYNTHESIZED_WIRE_15),
	.r4(SYNTHESIZED_WIRE_16));


switch	b2v_switch1(
	
	.reset(reset),
	.signal_in(start),
	.signal_out(sel));


switch	b2v_switch2(
	
	.reset(reset),
	.signal_in(confirm),
	.signal_out(confirm1));


Timer	b2v_Timer(
	.clk_i(clk),
	.clk_50(clk50hz),
	.clk_1(clk1s));


Translate	b2v_Tran3(
	.n(SYNTHESIZED_WIRE_22)
	
	
	
	
	
	
	);


Translate	b2v_Trans1(
	.n(SYNTHESIZED_WIRE_18)
	
	
	
	
	
	
	);


Translate	b2v_Trans2(
	.n(SYNTHESIZED_WIRE_19)
	
	
	
	
	
	
	);


Translate	b2v_Trans4(
	.n(SYNTHESIZED_WIRE_21)
	
	
	
	
	
	
	);


endmodule

module mux_0(S,Y);
/* synthesis black_box */

input S;
output Y;

endmodule
