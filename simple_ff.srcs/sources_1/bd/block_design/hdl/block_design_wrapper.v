//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.3 (win64) Build 1368829 Mon Sep 28 20:06:43 MDT 2015
//Date        : Sat May 14 14:05:33 2016
//Host        : idea-PC running 64-bit major release  (build 9200)
//Command     : generate_target block_design_wrapper.bd
//Design      : block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module block_design_wrapper
   (clk_100MHz,
    leds,
    pmod_mic_adc_io0_io,
    pmod_mic_adc_io1_io,
    pmod_mic_adc_sck_io,
    pmod_mic_adc_ss_io,
    resetn);
  input clk_100MHz;
  output [15:0]leds;
  inout pmod_mic_adc_io0_io;
  inout pmod_mic_adc_io1_io;
  inout pmod_mic_adc_sck_io;
  inout [0:0]pmod_mic_adc_ss_io;
  input resetn;

  wire clk_100MHz;
  wire [15:0]leds;
  wire pmod_mic_adc_io0_i;
  wire pmod_mic_adc_io0_io;
  wire pmod_mic_adc_io0_o;
  wire pmod_mic_adc_io0_t;
  wire pmod_mic_adc_io1_i;
  wire pmod_mic_adc_io1_io;
  wire pmod_mic_adc_io1_o;
  wire pmod_mic_adc_io1_t;
  wire pmod_mic_adc_sck_i;
  wire pmod_mic_adc_sck_io;
  wire pmod_mic_adc_sck_o;
  wire pmod_mic_adc_sck_t;
  wire [0:0]pmod_mic_adc_ss_i_0;
  wire [0:0]pmod_mic_adc_ss_io_0;
  wire [0:0]pmod_mic_adc_ss_o_0;
  wire pmod_mic_adc_ss_t;
  wire resetn;

  block_design block_design_i
       (.clk_100MHz(clk_100MHz),
        .leds(leds),
        .pmod_mic_adc_io0_i(pmod_mic_adc_io0_i),
        .pmod_mic_adc_io0_o(pmod_mic_adc_io0_o),
        .pmod_mic_adc_io0_t(pmod_mic_adc_io0_t),
        .pmod_mic_adc_io1_i(pmod_mic_adc_io1_i),
        .pmod_mic_adc_io1_o(pmod_mic_adc_io1_o),
        .pmod_mic_adc_io1_t(pmod_mic_adc_io1_t),
        .pmod_mic_adc_sck_i(pmod_mic_adc_sck_i),
        .pmod_mic_adc_sck_o(pmod_mic_adc_sck_o),
        .pmod_mic_adc_sck_t(pmod_mic_adc_sck_t),
        .pmod_mic_adc_ss_i(pmod_mic_adc_ss_i_0),
        .pmod_mic_adc_ss_o(pmod_mic_adc_ss_o_0),
        .pmod_mic_adc_ss_t(pmod_mic_adc_ss_t),
        .resetn(resetn));
  IOBUF pmod_mic_adc_io0_iobuf
       (.I(pmod_mic_adc_io0_o),
        .IO(pmod_mic_adc_io0_io),
        .O(pmod_mic_adc_io0_i),
        .T(pmod_mic_adc_io0_t));
  IOBUF pmod_mic_adc_io1_iobuf
       (.I(pmod_mic_adc_io1_o),
        .IO(pmod_mic_adc_io1_io),
        .O(pmod_mic_adc_io1_i),
        .T(pmod_mic_adc_io1_t));
  IOBUF pmod_mic_adc_sck_iobuf
       (.I(pmod_mic_adc_sck_o),
        .IO(pmod_mic_adc_sck_io),
        .O(pmod_mic_adc_sck_i),
        .T(pmod_mic_adc_sck_t));
  IOBUF pmod_mic_adc_ss_iobuf_0
       (.I(pmod_mic_adc_ss_o_0),
        .IO(pmod_mic_adc_ss_io[0]),
        .O(pmod_mic_adc_ss_i_0),
        .T(pmod_mic_adc_ss_t));
endmodule
