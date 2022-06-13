// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Jun  1 11:27:50 2022
// Host        : S008-188 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/willylin/Desktop/dp_ver3/dp_ver3/dp-ver3.gen/sources_1/bd/design_1/ip/design_1_v_tc_0_0/design_1_v_tc_0_0_stub.v
// Design      : design_1_v_tc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "v_tc,Vivado 2021.1" *)
module design_1_v_tc_0_0(clk, clken, gen_clken, sof_state, intc_if, 
  hsync_out, hblank_out, vsync_out, vblank_out, active_video_out, resetn, fsync_out)
/* synthesis syn_black_box black_box_pad_pin="clk,clken,gen_clken,sof_state,intc_if[31:0],hsync_out,hblank_out,vsync_out,vblank_out,active_video_out,resetn,fsync_out[0:0]" */;
  input clk;
  input clken;
  input gen_clken;
  input sof_state;
  output [31:0]intc_if;
  output hsync_out;
  output hblank_out;
  output vsync_out;
  output vblank_out;
  output active_video_out;
  input resetn;
  output [0:0]fsync_out;
endmodule
