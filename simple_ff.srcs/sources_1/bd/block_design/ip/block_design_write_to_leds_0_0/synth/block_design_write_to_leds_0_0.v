// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:write_to_leds:1.0
// IP Revision: 5

(* X_CORE_INFO = "write_to_leds_v1_0,Vivado 2015.3" *)
(* CHECK_LICENSE_TYPE = "block_design_write_to_leds_0_0,write_to_leds_v1_0,{}" *)
(* CORE_GENERATION_INFO = "block_design_write_to_leds_0_0,write_to_leds_v1_0,{x_ipProduct=Vivado 2015.3,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=write_to_leds,x_ipVersion=1.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_fir_samples_TDATA_WIDTH=32,LEDS_WIDTH=16,DIVIDER_FACTOR=10,INPUT_SAMPLE_WIDTH=27}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module block_design_write_to_leds_0_0 (
  fir_samples_tdata,
  fir_samples_tvalid,
  leds,
  fir_samples_tready,
  fir_samples_aclk,
  fir_samples_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fir_samples TDATA" *)
input wire [31 : 0] fir_samples_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fir_samples TVALID" *)
input wire fir_samples_tvalid;
output wire [15 : 0] leds;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 fir_samples TREADY" *)
output wire fir_samples_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fir_samples_CLK CLK" *)
input wire fir_samples_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 fir_samples_RST RST" *)
input wire fir_samples_aresetn;

  write_to_leds_v1_0 #(
    .C_fir_samples_TDATA_WIDTH(32),  // AXI4Stream sink: Data Width
    .LEDS_WIDTH(16),
    .DIVIDER_FACTOR(10),
    .INPUT_SAMPLE_WIDTH(27)
  ) inst (
    .fir_samples_tdata(fir_samples_tdata),
    .fir_samples_tvalid(fir_samples_tvalid),
    .leds(leds),
    .fir_samples_tready(fir_samples_tready),
    .fir_samples_aclk(fir_samples_aclk),
    .fir_samples_aresetn(fir_samples_aresetn)
  );
endmodule
