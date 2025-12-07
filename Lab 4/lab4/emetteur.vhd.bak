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
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Wed Jul 03 10:57:31 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY emetteur IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		SEQ :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		TX :  OUT  STD_LOGIC
	);
END emetteur;

ARCHITECTURE bdf_type OF emetteur IS 

SIGNAL	DFF_inst2 :  STD_LOGIC;
SIGNAL	DFFE_inst7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	DFFE_inst8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	DFFE_inst9 :  STD_LOGIC;
SIGNAL	DFFE_inst10 :  STD_LOGIC;
SIGNAL	DFFE_inst11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	DFF_inst3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	DFF_inst4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	DFF_inst5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	DFFE_inst6 :  STD_LOGIC;


BEGIN 
TX <= SYNTHESIZED_WIRE_10;



PROCESS(CLK,SEQ)
BEGIN
IF (SEQ = '0') THEN
	SYNTHESIZED_WIRE_10 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_10 <= DFF_inst2;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	IF (SYNTHESIZED_WIRE_9 = '1') THEN
	DFFE_inst10 <= DFFE_inst7;
	END IF;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	IF (SYNTHESIZED_WIRE_9 = '1') THEN
	DFFE_inst11 <= DFFE_inst8;
	END IF;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_9 <= NOT(SEQ);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_10 AND DFFE_inst9;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_10 AND DFFE_inst10;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_10 AND DFFE_inst11;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_2 XOR DFF_inst3;


SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_3 XOR DFF_inst4;


SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_4 XOR DFF_inst5;


PROCESS(CLK,SEQ)
BEGIN
IF (SEQ = '0') THEN
	DFF_inst2 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst2 <= SYNTHESIZED_WIRE_5;
END IF;
END PROCESS;


PROCESS(CLK,SEQ)
BEGIN
IF (SEQ = '0') THEN
	DFF_inst3 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst3 <= SYNTHESIZED_WIRE_6;
END IF;
END PROCESS;


PROCESS(CLK,SEQ)
BEGIN
IF (SEQ = '0') THEN
	DFF_inst4 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst4 <= SYNTHESIZED_WIRE_7;
END IF;
END PROCESS;


PROCESS(CLK,SEQ)
BEGIN
IF (SEQ = '0') THEN
	DFF_inst5 <= '1';
ELSIF (RISING_EDGE(CLK)) THEN
	DFF_inst5 <= SYNTHESIZED_WIRE_10;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	IF (SEQ = '1') THEN
	DFFE_inst6 <= A;
	END IF;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	IF (SEQ = '1') THEN
	DFFE_inst7 <= B;
	END IF;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	IF (SEQ = '1') THEN
	DFFE_inst8 <= C;
	END IF;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	IF (SYNTHESIZED_WIRE_9 = '1') THEN
	DFFE_inst9 <= DFFE_inst6;
	END IF;
END IF;
END PROCESS;


END bdf_type;