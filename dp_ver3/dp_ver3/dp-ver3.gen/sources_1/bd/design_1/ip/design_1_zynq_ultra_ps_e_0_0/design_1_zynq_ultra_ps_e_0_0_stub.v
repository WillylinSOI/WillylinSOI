// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Thu May 19 14:11:33 2022
// Host        : S008-188 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_zynq_ultra_ps_e_0_0 -prefix
//               design_1_zynq_ultra_ps_e_0_0_ design_1_zynq_ultra_ps_e_0_0_stub.v
// Design      : design_1_zynq_ultra_ps_e_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zynq_ultra_ps_e_v3_3_5_zynq_ultra_ps_e,Vivado 2021.1" *)
module design_1_zynq_ultra_ps_e_0_0(maxihpm0_lpd_aclk, maxigp2_awid, 
  maxigp2_awaddr, maxigp2_awlen, maxigp2_awsize, maxigp2_awburst, maxigp2_awlock, 
  maxigp2_awcache, maxigp2_awprot, maxigp2_awvalid, maxigp2_awuser, maxigp2_awready, 
  maxigp2_wdata, maxigp2_wstrb, maxigp2_wlast, maxigp2_wvalid, maxigp2_wready, maxigp2_bid, 
  maxigp2_bresp, maxigp2_bvalid, maxigp2_bready, maxigp2_arid, maxigp2_araddr, maxigp2_arlen, 
  maxigp2_arsize, maxigp2_arburst, maxigp2_arlock, maxigp2_arcache, maxigp2_arprot, 
  maxigp2_arvalid, maxigp2_aruser, maxigp2_arready, maxigp2_rid, maxigp2_rdata, 
  maxigp2_rresp, maxigp2_rlast, maxigp2_rvalid, maxigp2_rready, maxigp2_awqos, maxigp2_arqos, 
  dp_video_ref_clk, dp_live_video_in_vsync, dp_live_video_in_hsync, dp_live_video_in_de, 
  dp_live_video_in_pixel1, dp_video_in_clk, dp_video_out_hsync, dp_video_out_vsync, 
  dp_video_out_pixel1, dp_live_gfx_alpha_in, dp_live_gfx_pixel1_in, 
  dp_external_custom_event1, dp_external_custom_event2, dp_external_vsync_event, 
  dp_live_video_de_out, pl_ps_irq0, pl_resetn0, pl_clk0)
/* synthesis syn_black_box black_box_pad_pin="maxihpm0_lpd_aclk,maxigp2_awid[15:0],maxigp2_awaddr[39:0],maxigp2_awlen[7:0],maxigp2_awsize[2:0],maxigp2_awburst[1:0],maxigp2_awlock,maxigp2_awcache[3:0],maxigp2_awprot[2:0],maxigp2_awvalid,maxigp2_awuser[15:0],maxigp2_awready,maxigp2_wdata[31:0],maxigp2_wstrb[3:0],maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid[15:0],maxigp2_bresp[1:0],maxigp2_bvalid,maxigp2_bready,maxigp2_arid[15:0],maxigp2_araddr[39:0],maxigp2_arlen[7:0],maxigp2_arsize[2:0],maxigp2_arburst[1:0],maxigp2_arlock,maxigp2_arcache[3:0],maxigp2_arprot[2:0],maxigp2_arvalid,maxigp2_aruser[15:0],maxigp2_arready,maxigp2_rid[15:0],maxigp2_rdata[31:0],maxigp2_rresp[1:0],maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos[3:0],maxigp2_arqos[3:0],dp_video_ref_clk,dp_live_video_in_vsync,dp_live_video_in_hsync,dp_live_video_in_de,dp_live_video_in_pixel1[35:0],dp_video_in_clk,dp_video_out_hsync,dp_video_out_vsync,dp_video_out_pixel1[35:0],dp_live_gfx_alpha_in[7:0],dp_live_gfx_pixel1_in[35:0],dp_external_custom_event1,dp_external_custom_event2,dp_external_vsync_event,dp_live_video_de_out,pl_ps_irq0[0:0],pl_resetn0,pl_clk0" */;
  input maxihpm0_lpd_aclk;
  output [15:0]maxigp2_awid;
  output [39:0]maxigp2_awaddr;
  output [7:0]maxigp2_awlen;
  output [2:0]maxigp2_awsize;
  output [1:0]maxigp2_awburst;
  output maxigp2_awlock;
  output [3:0]maxigp2_awcache;
  output [2:0]maxigp2_awprot;
  output maxigp2_awvalid;
  output [15:0]maxigp2_awuser;
  input maxigp2_awready;
  output [31:0]maxigp2_wdata;
  output [3:0]maxigp2_wstrb;
  output maxigp2_wlast;
  output maxigp2_wvalid;
  input maxigp2_wready;
  input [15:0]maxigp2_bid;
  input [1:0]maxigp2_bresp;
  input maxigp2_bvalid;
  output maxigp2_bready;
  output [15:0]maxigp2_arid;
  output [39:0]maxigp2_araddr;
  output [7:0]maxigp2_arlen;
  output [2:0]maxigp2_arsize;
  output [1:0]maxigp2_arburst;
  output maxigp2_arlock;
  output [3:0]maxigp2_arcache;
  output [2:0]maxigp2_arprot;
  output maxigp2_arvalid;
  output [15:0]maxigp2_aruser;
  input maxigp2_arready;
  input [15:0]maxigp2_rid;
  input [31:0]maxigp2_rdata;
  input [1:0]maxigp2_rresp;
  input maxigp2_rlast;
  input maxigp2_rvalid;
  output maxigp2_rready;
  output [3:0]maxigp2_awqos;
  output [3:0]maxigp2_arqos;
  output dp_video_ref_clk;
  input dp_live_video_in_vsync;
  input dp_live_video_in_hsync;
  input dp_live_video_in_de;
  input [35:0]dp_live_video_in_pixel1;
  input dp_video_in_clk;
  output dp_video_out_hsync;
  output dp_video_out_vsync;
  output [35:0]dp_video_out_pixel1;
  input [7:0]dp_live_gfx_alpha_in;
  input [35:0]dp_live_gfx_pixel1_in;
  input dp_external_custom_event1;
  input dp_external_custom_event2;
  input dp_external_vsync_event;
  output dp_live_video_de_out;
  input [0:0]pl_ps_irq0;
  output pl_resetn0;
  output pl_clk0;
endmodule
