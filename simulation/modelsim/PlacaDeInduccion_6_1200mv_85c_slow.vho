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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/08/2023 17:33:14"

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

ENTITY 	Tiempo IS
    PORT (
	K0 : IN std_logic;
	Salida_Tiempo : OUT std_logic_vector(0 TO 1)
	);
END Tiempo;

-- Design Ports Information
-- Salida_Tiempo[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida_Tiempo[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- K0	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Tiempo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_K0 : std_logic;
SIGNAL ww_Salida_Tiempo : std_logic_vector(0 TO 1);
SIGNAL \K0~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Salida_Tiempo[1]~output_o\ : std_logic;
SIGNAL \Salida_Tiempo[0]~output_o\ : std_logic;
SIGNAL \K0~input_o\ : std_logic;
SIGNAL \K0~inputclkctrl_outclk\ : std_logic;
SIGNAL \maquina:un_minuto[1]~feeder_combout\ : std_logic;
SIGNAL \maquina:un_minuto[1]~q\ : std_logic;
SIGNAL \un_minuto~1_combout\ : std_logic;
SIGNAL \maquina:un_minuto[0]~feeder_combout\ : std_logic;
SIGNAL \maquina:un_minuto[0]~q\ : std_logic;
SIGNAL \un_minuto~0_combout\ : std_logic;
SIGNAL \Salida_Tiempo[1]~reg0_q\ : std_logic;
SIGNAL \Salida_Tiempo[0]~reg0_q\ : std_logic;

BEGIN

ww_K0 <= K0;
Salida_Tiempo <= ww_Salida_Tiempo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\K0~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \K0~input_o\);

-- Location: IOOBUF_X12_Y0_N2
\Salida_Tiempo[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Salida_Tiempo[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Salida_Tiempo[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\Salida_Tiempo[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Salida_Tiempo[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Salida_Tiempo[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\K0~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_K0,
	o => \K0~input_o\);

-- Location: CLKCTRL_G17
\K0~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \K0~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \K0~inputclkctrl_outclk\);

-- Location: LCCOMB_X13_Y1_N28
\maquina:un_minuto[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \maquina:un_minuto[1]~feeder_combout\ = \un_minuto~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \un_minuto~0_combout\,
	combout => \maquina:un_minuto[1]~feeder_combout\);

-- Location: FF_X13_Y1_N29
\maquina:un_minuto[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \K0~inputclkctrl_outclk\,
	d => \maquina:un_minuto[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina:un_minuto[1]~q\);

-- Location: LCCOMB_X13_Y1_N18
\un_minuto~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \un_minuto~1_combout\ = (\maquina:un_minuto[0]~q\) # (\maquina:un_minuto[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina:un_minuto[0]~q\,
	datad => \maquina:un_minuto[1]~q\,
	combout => \un_minuto~1_combout\);

-- Location: LCCOMB_X13_Y1_N14
\maquina:un_minuto[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \maquina:un_minuto[0]~feeder_combout\ = \un_minuto~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \un_minuto~1_combout\,
	combout => \maquina:un_minuto[0]~feeder_combout\);

-- Location: FF_X13_Y1_N15
\maquina:un_minuto[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \K0~inputclkctrl_outclk\,
	d => \maquina:un_minuto[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina:un_minuto[0]~q\);

-- Location: LCCOMB_X13_Y1_N16
\un_minuto~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \un_minuto~0_combout\ = (\maquina:un_minuto[0]~q\) # (!\maquina:un_minuto[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina:un_minuto[0]~q\,
	datad => \maquina:un_minuto[1]~q\,
	combout => \un_minuto~0_combout\);

-- Location: FF_X13_Y1_N17
\Salida_Tiempo[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \K0~inputclkctrl_outclk\,
	d => \un_minuto~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salida_Tiempo[1]~reg0_q\);

-- Location: FF_X13_Y1_N19
\Salida_Tiempo[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \K0~inputclkctrl_outclk\,
	d => \un_minuto~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salida_Tiempo[0]~reg0_q\);

ww_Salida_Tiempo(1) <= \Salida_Tiempo[1]~output_o\;

ww_Salida_Tiempo(0) <= \Salida_Tiempo[0]~output_o\;
END structure;


