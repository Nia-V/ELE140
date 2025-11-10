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
-- Generated on "11/10/2025 11:56:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CelluleType
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CelluleType_vhd_vec_tst IS
END CelluleType_vhd_vec_tst;
ARCHITECTURE CelluleType_arch OF CelluleType_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL F_C : STD_LOGIC;
SIGNAL F_D : STD_LOGIC;
SIGNAL x : STD_LOGIC;
SIGNAL y : STD_LOGIC;
COMPONENT CelluleType
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	F_C : BUFFER STD_LOGIC;
	F_D : BUFFER STD_LOGIC;
	x : IN STD_LOGIC;
	y : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CelluleType
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	F_C => F_C,
	F_D => F_D,
	x => x,
	y => y
	);

-- x
t_prcs_x: PROCESS
BEGIN
	x <= '0';
	WAIT FOR 320000 ps;
	x <= '1';
	WAIT FOR 320000 ps;
	x <= '0';
	WAIT FOR 320000 ps;
	x <= '1';
WAIT;
END PROCESS t_prcs_x;

-- y
t_prcs_y: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		y <= '0';
		WAIT FOR 160000 ps;
		y <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	y <= '0';
WAIT;
END PROCESS t_prcs_y;

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A <= '0';
		WAIT FOR 80000 ps;
		A <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;

-- B
t_prcs_B: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		B <= '0';
		WAIT FOR 40000 ps;
		B <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	B <= '0';
WAIT;
END PROCESS t_prcs_B;
END CelluleType_arch;
