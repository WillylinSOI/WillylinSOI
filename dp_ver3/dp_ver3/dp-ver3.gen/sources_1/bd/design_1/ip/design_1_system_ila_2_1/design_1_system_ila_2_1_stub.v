// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Jun  1 11:29:25 2022
// Host        : S008-188 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/willylin/Desktop/dp_ver3/dp_ver3/dp-ver3.gen/sources_1/bd/design_1/ip/design_1_system_ila_2_1/design_1_system_ila_2_1_stub.v
// Design      : design_1_system_ila_2_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f66c,Vivado 2021.1" *)
module design_1_system_ila_2_1(clk, probe0, probe1, probe2, probe3, probe4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[35:0],probe2[0:0],probe3[0:0],probe4[0:0]" */;
  input clk;
  input [0:0]probe0;
  input [35:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
endmodule
