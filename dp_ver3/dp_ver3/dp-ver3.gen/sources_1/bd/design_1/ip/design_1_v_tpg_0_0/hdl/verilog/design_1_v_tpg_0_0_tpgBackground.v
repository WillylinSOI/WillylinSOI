// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgBackground (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        height,
        width,
        bckgndId,
        ZplateHorContStart,
        ZplateHorContDelta,
        ZplateVerContStart,
        ZplateVerContDelta,
        dpDynamicRange,
        dpYUVCoef,
        motionSpeed,
        colorFormat,
        bckgndYUV_din,
        bckgndYUV_full_n,
        bckgndYUV_write,
        height_c_din,
        height_c_full_n,
        height_c_write,
        width_c_din,
        width_c_full_n,
        width_c_write,
        motionSpeed_c_din,
        motionSpeed_c_full_n,
        motionSpeed_c_write,
        colorFormat_c_din,
        colorFormat_c_full_n,
        colorFormat_c_write,
        s
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] height;
input  [15:0] width;
input  [7:0] bckgndId;
input  [15:0] ZplateHorContStart;
input  [15:0] ZplateHorContDelta;
input  [15:0] ZplateVerContStart;
input  [15:0] ZplateVerContDelta;
input  [7:0] dpDynamicRange;
input  [7:0] dpYUVCoef;
input  [7:0] motionSpeed;
input  [7:0] colorFormat;
output  [23:0] bckgndYUV_din;
input   bckgndYUV_full_n;
output   bckgndYUV_write;
output  [15:0] height_c_din;
input   height_c_full_n;
output   height_c_write;
output  [15:0] width_c_din;
input   width_c_full_n;
output   width_c_write;
output  [7:0] motionSpeed_c_din;
input   motionSpeed_c_full_n;
output   motionSpeed_c_write;
output  [7:0] colorFormat_c_din;
input   colorFormat_c_full_n;
output   colorFormat_c_write;
input  [31:0] s;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg bckgndYUV_write;
reg height_c_write;
reg width_c_write;
reg motionSpeed_c_write;
reg colorFormat_c_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] rampStart;
reg   [15:0] rampVal_1;
reg   [7:0] rampVal;
reg   [7:0] hBarSel_2;
reg   [15:0] zonePlateVAddr;
reg   [15:0] hdata;
reg   [15:0] rampVal_2;
reg    height_c_blk_n;
reg    width_c_blk_n;
reg    motionSpeed_c_blk_n;
reg    colorFormat_c_blk_n;
wire   [13:0] trunc_ln506_fu_792_p1;
reg   [13:0] trunc_ln506_reg_1376;
wire   [13:0] trunc_ln507_fu_796_p1;
reg   [13:0] trunc_ln507_reg_1381;
wire   [0:0] icmp_ln519_fu_800_p2;
reg   [0:0] icmp_ln519_reg_1421;
reg   [7:0] rampStart_load_reg_1425;
wire   [0:0] cmp2_i210_fu_810_p2;
reg   [0:0] cmp2_i210_reg_1516;
wire   [7:0] conv_i6_i217_fu_816_p3;
reg   [7:0] conv_i6_i217_reg_1521;
wire   [0:0] not_cmp2_i210_fu_824_p2;
reg   [0:0] not_cmp2_i210_reg_1526;
wire   [0:0] cmp6_i_fu_830_p2;
reg   [0:0] cmp6_i_reg_1531;
wire   [7:0] conv_i6_i224_fu_836_p3;
reg   [7:0] conv_i6_i224_reg_1536;
wire   [4:0] conv_i_i226_cast_cast_fu_844_p3;
reg   [4:0] conv_i_i226_cast_cast_reg_1541;
wire   [2:0] conv_i6_i242_cast_cast_cast_cast_fu_852_p3;
reg   [2:0] conv_i6_i242_cast_cast_cast_cast_reg_1546;
wire   [7:0] conv_i_i244_fu_860_p3;
reg   [7:0] conv_i_i244_reg_1551;
wire   [7:0] conv_i_i260_fu_868_p3;
reg   [7:0] conv_i_i260_reg_1556;
wire   [7:0] conv_i_i276_fu_876_p3;
reg   [7:0] conv_i_i276_reg_1561;
reg   [10:0] barWidth_reg_1566;
wire   [0:0] cmp51_i_fu_900_p2;
reg   [0:0] cmp51_i_reg_1572;
wire   [0:0] icmp_fu_916_p2;
reg   [0:0] icmp_reg_1577;
wire   [7:0] conv_i4_i213_fu_950_p3;
reg   [7:0] conv_i4_i213_reg_1582;
wire   [15:0] shl_ln_fu_958_p3;
reg   [15:0] shl_ln_reg_1587;
wire   [1:0] select_ln1100_fu_966_p3;
reg   [1:0] select_ln1100_reg_1592;
reg   [15:0] y_3_reg_1597;
wire    ap_CS_fsm_state2;
wire   [0:0] cmp11_i303_fu_1076_p2;
reg   [0:0] cmp11_i303_reg_1647;
wire   [0:0] icmp_ln519_1_fu_1029_p2;
wire   [7:0] add_ln1489_fu_1093_p2;
reg   [7:0] add_ln1489_reg_1652;
wire   [0:0] icmp_ln1594_fu_1099_p2;
reg   [0:0] icmp_ln1594_reg_1657;
wire   [0:0] icmp_ln1594_1_fu_1106_p2;
reg   [0:0] icmp_ln1594_1_reg_1662;
wire   [0:0] or_ln1594_fu_1113_p2;
reg   [0:0] or_ln1594_reg_1667;
wire   [0:0] icmp_ln1594_2_fu_1120_p2;
reg   [0:0] icmp_ln1594_2_reg_1672;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_done;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_idle;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_ready;
wire   [23:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_bckgndYUV_din;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_bckgndYUV_write;
wire   [0:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_flag_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_flag_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_new_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_new_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_loc_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_loc_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_loc_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_loc_1_out_ap_vld;
wire   [7:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_4_loc_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_4_loc_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_loc_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_loc_1_out_ap_vld;
wire   [0:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_flag_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_flag_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_new_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_new_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_loc_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_loc_1_out_ap_vld;
wire   [0:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_flag_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_flag_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_new_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_new_1_out_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_loc_1_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_loc_1_out_ap_vld;
wire   [7:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_2_0_0_0_load376_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_2_0_0_0_load376_out_ap_vld;
wire   [7:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_1_0_0_0_load372_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_1_0_0_0_load372_out_ap_vld;
wire   [7:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_0_0_0_0_load368_out;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_0_0_0_0_load368_out_ap_vld;
wire   [7:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_ap_vld;
wire   [7:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_2;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_2_ap_vld;
wire   [15:0] grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr;
wire    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_ap_vld;
reg   [0:0] rampVal_3_flag_0_reg_478;
reg    ap_block_state1;
wire    ap_CS_fsm_state4;
reg   [0:0] hdata_flag_0_reg_490;
reg   [0:0] rampVal_2_flag_0_reg_502;
wire   [0:0] ap_phi_mux_rampVal_3_flag_3_phi_fu_518_p4;
reg   [0:0] rampVal_3_flag_3_reg_514;
reg   [15:0] rampVal_3_new_3_reg_526;
wire   [0:0] ap_phi_mux_hdata_flag_3_phi_fu_541_p4;
reg   [0:0] hdata_flag_3_reg_537;
reg   [15:0] hdata_new_3_reg_549;
wire   [0:0] ap_phi_mux_rampVal_2_flag_3_phi_fu_564_p4;
reg   [0:0] rampVal_2_flag_3_reg_560;
reg   [15:0] rampVal_2_new_3_reg_572;
reg    grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start_reg;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln706_fu_1132_p2;
wire    ap_CS_fsm_state5;
reg   [15:0] y_fu_328;
wire   [15:0] y_4_fu_1034_p2;
reg   [7:0] outpix_0_0_0_0_0_load366_fu_332;
reg   [7:0] outpix_0_1_0_0_0_load370_fu_336;
reg   [7:0] outpix_0_2_0_0_0_load374_fu_340;
reg   [15:0] rampVal_2_loc_0_fu_344;
reg   [15:0] hdata_loc_0_fu_348;
reg   [15:0] zonePlateVAddr_loc_0_fu_352;
reg   [7:0] hBarSel_4_loc_0_fu_356;
reg   [15:0] rampVal_loc_0_fu_360;
wire   [15:0] zext_ln1213_fu_930_p1;
reg   [15:0] rampVal_3_loc_0_fu_364;
reg   [15:0] rampVal_2_new_0_fu_368;
reg   [15:0] hdata_new_0_fu_372;
reg   [15:0] rampVal_3_new_0_fu_376;
wire   [13:0] add_i_fu_884_p2;
wire   [6:0] tmp_fu_906_p4;
wire   [7:0] trunc_ln519_fu_1025_p1;
wire   [1:0] Sel_fu_1083_p4;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 rampStart = 8'd0;
#0 rampVal_1 = 16'd0;
#0 rampVal = 8'd0;
#0 hBarSel_2 = 8'd0;
#0 zonePlateVAddr = 16'd0;
#0 hdata = 16'd0;
#0 rampVal_2 = 16'd0;
#0 grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start_reg = 1'b0;
end

design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_521_2 grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start),
    .ap_done(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_done),
    .ap_idle(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_idle),
    .ap_ready(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_ready),
    .bckgndYUV_din(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_bckgndYUV_din),
    .bckgndYUV_full_n(bckgndYUV_full_n),
    .bckgndYUV_write(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_bckgndYUV_write),
    .rampVal_3_flag_0(rampVal_3_flag_0_reg_478),
    .rampVal_3_new_0(rampVal_3_new_0_fu_376),
    .rampVal_3_loc_0(rampVal_3_loc_0_fu_364),
    .rampVal_loc_0(rampVal_loc_0_fu_360),
    .hBarSel_4_loc_0(hBarSel_4_loc_0_fu_356),
    .zonePlateVAddr_loc_0(zonePlateVAddr_loc_0_fu_352),
    .hdata_flag_0(hdata_flag_0_reg_490),
    .hdata_new_0(hdata_new_0_fu_372),
    .hdata_loc_0(hdata_loc_0_fu_348),
    .rampVal_2_flag_0(rampVal_2_flag_0_reg_502),
    .rampVal_2_new_0(rampVal_2_new_0_fu_368),
    .rampVal_2_loc_0(rampVal_2_loc_0_fu_344),
    .outpix_0_2_0_0_0_load374(outpix_0_2_0_0_0_load374_fu_340),
    .outpix_0_1_0_0_0_load370(outpix_0_1_0_0_0_load370_fu_336),
    .outpix_0_0_0_0_0_load366(outpix_0_0_0_0_0_load366_fu_332),
    .loopWidth(width),
    .conv_i_i276(conv_i_i276_reg_1561),
    .conv_i_i260(conv_i_i260_reg_1556),
    .conv_i_i244(conv_i_i244_reg_1551),
    .conv_i_i226_cast_cast(conv_i_i226_cast_cast_reg_1541),
    .conv_i_i_cast(not_cmp2_i210_reg_1526),
    .conv_i4_i213(conv_i4_i213_reg_1582),
    .conv_i6_i242_cast_cast_cast_cast(conv_i6_i242_cast_cast_cast_cast_reg_1546),
    .conv_i6_i224(conv_i6_i224_reg_1536),
    .conv_i6_i217(conv_i6_i217_reg_1521),
    .rampStart_1(rampStart_load_reg_1425),
    .Zplate_Hor_Control_Start(ZplateHorContStart),
    .bckgndId_load(bckgndId),
    .cmp2_i210(cmp2_i210_reg_1516),
    .zext_ln519(rampStart_load_reg_1425),
    .y(y_3_reg_1597),
    .cmp6_i(cmp6_i_reg_1531),
    .select_ln1100_1(select_ln1100_reg_1592),
    .cmp51_i(cmp51_i_reg_1572),
    .barWidth_cast(barWidth_reg_1566),
    .barWidth(barWidth_reg_1566),
    .shl_ln(shl_ln_reg_1587),
    .Zplate_Hor_Control_Delta(ZplateHorContDelta),
    .Zplate_Ver_Control_Start(ZplateVerContStart),
    .cmp11_i303(cmp11_i303_reg_1647),
    .Zplate_Ver_Control_Delta(ZplateVerContDelta),
    .trunc_ln7(trunc_ln507_reg_1381),
    .trunc_ln(trunc_ln506_reg_1376),
    .colorFormatLocal(colorFormat),
    .loopHeight(height),
    .add_ln1489(add_ln1489_reg_1652),
    .cmp83_i352(icmp_reg_1577),
    .or_ln1594(or_ln1594_reg_1667),
    .icmp_ln1594_2(icmp_ln1594_2_reg_1672),
    .icmp_ln1594(icmp_ln1594_reg_1657),
    .icmp_ln1594_1(icmp_ln1594_1_reg_1662),
    .dpDynamicRange_load(dpDynamicRange),
    .dpYUVCoef_load(dpYUVCoef),
    .rampVal_3_flag_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_flag_1_out),
    .rampVal_3_flag_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_flag_1_out_ap_vld),
    .rampVal_3_new_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_new_1_out),
    .rampVal_3_new_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_new_1_out_ap_vld),
    .rampVal_3_loc_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_loc_1_out),
    .rampVal_3_loc_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_loc_1_out_ap_vld),
    .rampVal_loc_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_loc_1_out),
    .rampVal_loc_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_loc_1_out_ap_vld),
    .hBarSel_4_loc_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_4_loc_1_out),
    .hBarSel_4_loc_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_4_loc_1_out_ap_vld),
    .zonePlateVAddr_loc_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_loc_1_out),
    .zonePlateVAddr_loc_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_loc_1_out_ap_vld),
    .hdata_flag_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_flag_1_out),
    .hdata_flag_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_flag_1_out_ap_vld),
    .hdata_new_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_new_1_out),
    .hdata_new_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_new_1_out_ap_vld),
    .hdata_loc_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_loc_1_out),
    .hdata_loc_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_loc_1_out_ap_vld),
    .rampVal_2_flag_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_flag_1_out),
    .rampVal_2_flag_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_flag_1_out_ap_vld),
    .rampVal_2_new_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_new_1_out),
    .rampVal_2_new_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_new_1_out_ap_vld),
    .rampVal_2_loc_1_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_loc_1_out),
    .rampVal_2_loc_1_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_loc_1_out_ap_vld),
    .outpix_0_2_0_0_0_load376_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_2_0_0_0_load376_out),
    .outpix_0_2_0_0_0_load376_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_2_0_0_0_load376_out_ap_vld),
    .outpix_0_1_0_0_0_load372_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_1_0_0_0_load372_out),
    .outpix_0_1_0_0_0_load372_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_1_0_0_0_load372_out_ap_vld),
    .outpix_0_0_0_0_0_load368_out(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_0_0_0_0_load368_out),
    .outpix_0_0_0_0_0_load368_out_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_0_0_0_0_load368_out_ap_vld),
    .rampVal(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal),
    .rampVal_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_ap_vld),
    .hBarSel_2(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_2),
    .hBarSel_2_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_2_ap_vld),
    .s(s),
    .zonePlateVAddr(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr),
    .zonePlateVAddr_ap_vld(grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state5)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd0) & (icmp_ln519_reg_1421 == 1'd0))) begin
            grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start_reg <= 1'b1;
        end else if ((grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_ready == 1'b1)) begin
            grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        hBarSel_4_loc_0_fu_356 <= hBarSel_2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        hBarSel_4_loc_0_fu_356 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_4_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        hdata_flag_0_reg_490 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_flag_1_out;
    end else if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        hdata_flag_0_reg_490 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd1) & (icmp_ln519_reg_1421 == 1'd0))) begin
        hdata_flag_3_reg_537 <= hdata_flag_0_reg_490;
    end else if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd1))) begin
        hdata_flag_3_reg_537 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        hdata_loc_0_fu_348 <= hdata;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        hdata_loc_0_fu_348 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rampVal_2_flag_0_reg_502 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_flag_1_out;
    end else if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        rampVal_2_flag_0_reg_502 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd1) & (icmp_ln519_reg_1421 == 1'd0))) begin
        rampVal_2_flag_3_reg_560 <= rampVal_2_flag_0_reg_502;
    end else if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd1))) begin
        rampVal_2_flag_3_reg_560 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        rampVal_2_loc_0_fu_344 <= rampVal_2;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        rampVal_2_loc_0_fu_344 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        rampVal_3_flag_0_reg_478 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_flag_1_out;
    end else if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        rampVal_3_flag_0_reg_478 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd1) & (icmp_ln519_reg_1421 == 1'd0))) begin
        rampVal_3_flag_3_reg_514 <= rampVal_3_flag_0_reg_478;
    end else if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd1))) begin
        rampVal_3_flag_3_reg_514 <= 1'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        rampVal_3_loc_0_fu_364 <= rampVal_1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        rampVal_3_loc_0_fu_364 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        rampVal_loc_0_fu_360 <= zext_ln1213_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        rampVal_loc_0_fu_360 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        y_fu_328 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd0) & (icmp_ln519_reg_1421 == 1'd0))) begin
        y_fu_328 <= y_4_fu_1034_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        zonePlateVAddr_loc_0_fu_352 <= zonePlateVAddr;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        zonePlateVAddr_loc_0_fu_352 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_loc_1_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd0) & (icmp_ln519_reg_1421 == 1'd0))) begin
        add_ln1489_reg_1652 <= add_ln1489_fu_1093_p2;
        cmp11_i303_reg_1647 <= cmp11_i303_fu_1076_p2;
        icmp_ln1594_1_reg_1662 <= icmp_ln1594_1_fu_1106_p2;
        icmp_ln1594_2_reg_1672 <= icmp_ln1594_2_fu_1120_p2;
        icmp_ln1594_reg_1657 <= icmp_ln1594_fu_1099_p2;
        or_ln1594_reg_1667 <= or_ln1594_fu_1113_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln519_fu_800_p2 == 1'd0))) begin
        barWidth_reg_1566 <= {{add_i_fu_884_p2[13:3]}};
        cmp2_i210_reg_1516 <= cmp2_i210_fu_810_p2;
        cmp51_i_reg_1572 <= cmp51_i_fu_900_p2;
        cmp6_i_reg_1531 <= cmp6_i_fu_830_p2;
        conv_i4_i213_reg_1582 <= conv_i4_i213_fu_950_p3;
        conv_i6_i217_reg_1521[1 : 0] <= conv_i6_i217_fu_816_p3[1 : 0];
conv_i6_i217_reg_1521[5 : 4] <= conv_i6_i217_fu_816_p3[5 : 4];
conv_i6_i217_reg_1521[7] <= conv_i6_i217_fu_816_p3[7];
        conv_i6_i224_reg_1536[0] <= conv_i6_i224_fu_836_p3[0];
conv_i6_i224_reg_1536[2] <= conv_i6_i224_fu_836_p3[2];
conv_i6_i224_reg_1536[4] <= conv_i6_i224_fu_836_p3[4];
conv_i6_i224_reg_1536[7] <= conv_i6_i224_fu_836_p3[7];
        conv_i6_i242_cast_cast_cast_cast_reg_1546[0] <= conv_i6_i242_cast_cast_cast_cast_fu_852_p3[0];
conv_i6_i242_cast_cast_cast_cast_reg_1546[2] <= conv_i6_i242_cast_cast_cast_cast_fu_852_p3[2];
        conv_i_i226_cast_cast_reg_1541[0] <= conv_i_i226_cast_cast_fu_844_p3[0];
conv_i_i226_cast_cast_reg_1541[2] <= conv_i_i226_cast_cast_fu_844_p3[2];
conv_i_i226_cast_cast_reg_1541[4] <= conv_i_i226_cast_cast_fu_844_p3[4];
        conv_i_i244_reg_1551[2] <= conv_i_i244_fu_860_p3[2];
conv_i_i244_reg_1551[4] <= conv_i_i244_fu_860_p3[4];
conv_i_i244_reg_1551[7] <= conv_i_i244_fu_860_p3[7];
        conv_i_i260_reg_1556[7] <= conv_i_i260_fu_868_p3[7];
        conv_i_i276_reg_1561[6 : 0] <= conv_i_i276_fu_876_p3[6 : 0];
        icmp_reg_1577 <= icmp_fu_916_p2;
        not_cmp2_i210_reg_1526 <= not_cmp2_i210_fu_824_p2;
        select_ln1100_reg_1592 <= select_ln1100_fu_966_p3;
        shl_ln_reg_1587[15 : 8] <= shl_ln_fu_958_p3[15 : 8];
    end
end

always @ (posedge ap_clk) begin
    if (((grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        hBarSel_2 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hBarSel_2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_hdata_flag_3_phi_fu_541_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        hdata <= hdata_new_3_reg_549;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        hdata_new_0_fu_372 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_hdata_new_1_out;
        outpix_0_0_0_0_0_load366_fu_332 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_0_0_0_0_load368_out;
        outpix_0_1_0_0_0_load370_fu_336 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_1_0_0_0_load372_out;
        outpix_0_2_0_0_0_load374_fu_340 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_outpix_0_2_0_0_0_load376_out;
        rampVal_2_new_0_fu_368 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_2_new_1_out;
        rampVal_3_new_0_fu_376 <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_3_new_1_out;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_1_fu_1029_p2 == 1'd1) & (icmp_ln519_reg_1421 == 1'd0))) begin
        hdata_new_3_reg_549 <= hdata_new_0_fu_372;
        rampVal_2_new_3_reg_572 <= rampVal_2_new_0_fu_368;
        rampVal_3_new_3_reg_526 <= rampVal_3_new_0_fu_376;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        icmp_ln519_reg_1421 <= icmp_ln519_fu_800_p2;
        rampStart_load_reg_1425 <= rampStart;
        trunc_ln506_reg_1376 <= trunc_ln506_fu_792_p1;
        trunc_ln507_reg_1381 <= trunc_ln507_fu_796_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln519_1_fu_1029_p2 == 1'd1) | (icmp_ln519_reg_1421 == 1'd1)))) begin
        rampStart <= add_ln706_fu_1132_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        rampVal <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_rampVal;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_rampVal_3_flag_3_phi_fu_518_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        rampVal_1 <= rampVal_3_new_3_reg_526;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_phi_mux_rampVal_2_flag_3_phi_fu_564_p4 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        rampVal_2 <= rampVal_2_new_3_reg_572;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln519_reg_1421 == 1'd0))) begin
        y_3_reg_1597 <= y_fu_328;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        zonePlateVAddr <= grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_zonePlateVAddr;
    end
end

always @ (*) begin
    if (((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bckgndYUV_write = grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_bckgndYUV_write;
    end else begin
        bckgndYUV_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_c_blk_n = colorFormat_c_full_n;
    end else begin
        colorFormat_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        colorFormat_c_write = 1'b1;
    end else begin
        colorFormat_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_c_blk_n = height_c_full_n;
    end else begin
        height_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        height_c_write = 1'b1;
    end else begin
        height_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        motionSpeed_c_blk_n = motionSpeed_c_full_n;
    end else begin
        motionSpeed_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        motionSpeed_c_write = 1'b1;
    end else begin
        motionSpeed_c_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_c_blk_n = width_c_full_n;
    end else begin
        width_c_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        width_c_write = 1'b1;
    end else begin
        width_c_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln519_1_fu_1029_p2 == 1'd1) | (icmp_ln519_reg_1421 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Sel_fu_1083_p4 = {{y_fu_328[7:6]}};

assign add_i_fu_884_p2 = (trunc_ln507_fu_796_p1 + 14'd7);

assign add_ln1489_fu_1093_p2 = (rampStart + trunc_ln519_fu_1025_p1);

assign add_ln706_fu_1132_p2 = (motionSpeed + rampStart);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

always @ (*) begin
    ap_block_state1 = ((colorFormat_c_full_n == 1'b0) | (motionSpeed_c_full_n == 1'b0) | (width_c_full_n == 1'b0) | (height_c_full_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign ap_phi_mux_hdata_flag_3_phi_fu_541_p4 = hdata_flag_3_reg_537;

assign ap_phi_mux_rampVal_2_flag_3_phi_fu_564_p4 = rampVal_2_flag_3_reg_560;

assign ap_phi_mux_rampVal_3_flag_3_phi_fu_518_p4 = rampVal_3_flag_3_reg_514;

assign bckgndYUV_din = grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_bckgndYUV_din;

assign cmp11_i303_fu_1076_p2 = ((y_fu_328 != 16'd0) ? 1'b1 : 1'b0);

assign cmp2_i210_fu_810_p2 = ((colorFormat == 8'd0) ? 1'b1 : 1'b0);

assign cmp51_i_fu_900_p2 = ((colorFormat != 8'd1) ? 1'b1 : 1'b0);

assign cmp6_i_fu_830_p2 = ((colorFormat == 8'd1) ? 1'b1 : 1'b0);

assign colorFormat_c_din = colorFormat;

assign conv_i4_i213_fu_950_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? rampStart : 8'd128);

assign conv_i6_i217_fu_816_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 8'd255 : 8'd76);

assign conv_i6_i224_fu_836_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 8'd0 : 8'd149);

assign conv_i6_i242_cast_cast_cast_cast_fu_852_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 3'd0 : 3'd5);

assign conv_i_i226_cast_cast_fu_844_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 5'd0 : 5'd21);

assign conv_i_i244_fu_860_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 8'd255 : 8'd107);

assign conv_i_i260_fu_868_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 8'd0 : 8'd128);

assign conv_i_i276_fu_876_p3 = ((cmp2_i210_fu_810_p2[0:0] == 1'b1) ? 8'd255 : 8'd128);

assign grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start = grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583_ap_start_reg;

assign height_c_din = height;

assign icmp_fu_916_p2 = ((tmp_fu_906_p4 != 7'd0) ? 1'b1 : 1'b0);

assign icmp_ln1594_1_fu_1106_p2 = ((Sel_fu_1083_p4 == 2'd0) ? 1'b1 : 1'b0);

assign icmp_ln1594_2_fu_1120_p2 = ((Sel_fu_1083_p4 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln1594_fu_1099_p2 = ((Sel_fu_1083_p4 == 2'd1) ? 1'b1 : 1'b0);

assign icmp_ln519_1_fu_1029_p2 = ((y_fu_328 == height) ? 1'b1 : 1'b0);

assign icmp_ln519_fu_800_p2 = ((height == 16'd0) ? 1'b1 : 1'b0);

assign motionSpeed_c_din = motionSpeed;

assign not_cmp2_i210_fu_824_p2 = (cmp2_i210_fu_810_p2 ^ 1'd1);

assign or_ln1594_fu_1113_p2 = (icmp_ln1594_fu_1099_p2 | icmp_ln1594_1_fu_1106_p2);

assign select_ln1100_fu_966_p3 = ((cmp6_i_fu_830_p2[0:0] == 1'b1) ? 2'd1 : 2'd2);

assign shl_ln_fu_958_p3 = {{rampStart}, {8'd0}};

assign tmp_fu_906_p4 = {{colorFormat[7:1]}};

assign trunc_ln506_fu_792_p1 = height[13:0];

assign trunc_ln507_fu_796_p1 = width[13:0];

assign trunc_ln519_fu_1025_p1 = y_fu_328[7:0];

assign width_c_din = width;

assign y_4_fu_1034_p2 = (y_fu_328 + 16'd1);

assign zext_ln1213_fu_930_p1 = rampVal;

always @ (posedge ap_clk) begin
    conv_i6_i217_reg_1521[3:2] <= 2'b11;
    conv_i6_i217_reg_1521[6] <= 1'b1;
    conv_i6_i224_reg_1536[1] <= 1'b0;
    conv_i6_i224_reg_1536[3:3] <= 1'b0;
    conv_i6_i224_reg_1536[6:5] <= 2'b00;
    conv_i_i226_cast_cast_reg_1541[1] <= 1'b0;
    conv_i_i226_cast_cast_reg_1541[3] <= 1'b0;
    conv_i6_i242_cast_cast_cast_cast_reg_1546[1] <= 1'b0;
    conv_i_i244_reg_1551[1:0] <= 2'b11;
    conv_i_i244_reg_1551[3:3] <= 1'b1;
    conv_i_i244_reg_1551[6:5] <= 2'b11;
    conv_i_i260_reg_1556[6:0] <= 7'b0000000;
    conv_i_i276_reg_1561[7] <= 1'b1;
    shl_ln_reg_1587[7:0] <= 8'b00000000;
end

endmodule //design_1_v_tpg_0_0_tpgBackground
