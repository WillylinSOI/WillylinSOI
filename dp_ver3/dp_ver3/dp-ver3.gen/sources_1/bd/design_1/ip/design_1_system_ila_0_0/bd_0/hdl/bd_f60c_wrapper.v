//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (SLOT_0_VIDEO_TIMING_active_video,
    SLOT_0_VIDEO_TIMING_hblank,
    SLOT_0_VIDEO_TIMING_hsync,
    SLOT_0_VIDEO_TIMING_vblank,
    SLOT_0_VIDEO_TIMING_vsync,
    clk);
  input SLOT_0_VIDEO_TIMING_active_video;
  input SLOT_0_VIDEO_TIMING_hblank;
  input SLOT_0_VIDEO_TIMING_hsync;
  input SLOT_0_VIDEO_TIMING_vblank;
  input SLOT_0_VIDEO_TIMING_vsync;
  input clk;

  wire SLOT_0_VIDEO_TIMING_active_video;
  wire SLOT_0_VIDEO_TIMING_hblank;
  wire SLOT_0_VIDEO_TIMING_hsync;
  wire SLOT_0_VIDEO_TIMING_vblank;
  wire SLOT_0_VIDEO_TIMING_vsync;
  wire clk;

  bd_f60c bd_f60c_i
       (.SLOT_0_VIDEO_TIMING_active_video(SLOT_0_VIDEO_TIMING_active_video),
        .SLOT_0_VIDEO_TIMING_hblank(SLOT_0_VIDEO_TIMING_hblank),
        .SLOT_0_VIDEO_TIMING_hsync(SLOT_0_VIDEO_TIMING_hsync),
        .SLOT_0_VIDEO_TIMING_vblank(SLOT_0_VIDEO_TIMING_vblank),
        .SLOT_0_VIDEO_TIMING_vsync(SLOT_0_VIDEO_TIMING_vsync),
        .clk(clk));
endmodule
