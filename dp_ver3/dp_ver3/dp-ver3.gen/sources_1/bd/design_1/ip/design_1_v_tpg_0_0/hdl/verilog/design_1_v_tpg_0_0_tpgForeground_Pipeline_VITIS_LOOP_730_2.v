// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_730_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bckgndYUV_dout,
        bckgndYUV_empty_n,
        bckgndYUV_read,
        ovrlayYUV_din,
        ovrlayYUV_full_n,
        ovrlayYUV_write,
        boxHCoord_loc_0,
        boxVCoord_loc_0,
        loopWidth,
        pixOut_6,
        pixOut,
        pixOut_4,
        and4_i,
        and24_i,
        tobool,
        and10_i,
        p_read,
        p_read4,
        y,
        zext_ln1872,
        vMax,
        hMax,
        zext_ln1872_1,
        cmp72_i,
        p_read6,
        p_read2,
        icmp_ln1921,
        cmp11_i159,
        cmp13_i,
        select_ln1933_1,
        boxHCoord_loc_1_out,
        boxHCoord_loc_1_out_ap_vld,
        boxVCoord_loc_1_out,
        boxVCoord_loc_1_out_ap_vld,
        boxHCoord,
        boxHCoord_ap_vld,
        boxVCoord,
        boxVCoord_ap_vld
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [23:0] bckgndYUV_dout;
input   bckgndYUV_empty_n;
output   bckgndYUV_read;
output  [23:0] ovrlayYUV_din;
input   ovrlayYUV_full_n;
output   ovrlayYUV_write;
input  [15:0] boxHCoord_loc_0;
input  [15:0] boxVCoord_loc_0;
input  [15:0] loopWidth;
input  [7:0] pixOut_6;
input  [7:0] pixOut;
input  [7:0] pixOut_4;
input  [0:0] and4_i;
input  [0:0] and24_i;
input  [0:0] tobool;
input  [0:0] and10_i;
input  [7:0] p_read;
input  [15:0] p_read4;
input  [15:0] y;
input  [7:0] zext_ln1872;
input  [15:0] vMax;
input  [15:0] hMax;
input  [8:0] zext_ln1872_1;
input  [0:0] cmp72_i;
input  [7:0] p_read6;
input  [15:0] p_read2;
input  [0:0] icmp_ln1921;
input  [0:0] cmp11_i159;
input  [0:0] cmp13_i;
input  [1:0] select_ln1933_1;
output  [15:0] boxHCoord_loc_1_out;
output   boxHCoord_loc_1_out_ap_vld;
output  [15:0] boxVCoord_loc_1_out;
output   boxVCoord_loc_1_out_ap_vld;
output  [15:0] boxHCoord;
output   boxHCoord_ap_vld;
output  [15:0] boxVCoord;
output   boxVCoord_ap_vld;

reg ap_idle;
reg bckgndYUV_read;
reg ovrlayYUV_write;
reg boxHCoord_loc_1_out_ap_vld;
reg boxVCoord_loc_1_out_ap_vld;
reg boxHCoord_ap_vld;
reg boxVCoord_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg   [0:0] icmp_ln730_reg_967;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln730_fu_437_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] vDir;
reg   [0:0] hDir;
wire   [1:0] whiYuv_2_address0;
reg    whiYuv_2_ce0;
wire   [7:0] whiYuv_2_q0;
reg    ovrlayYUV_blk_n;
wire    ap_block_pp0_stage0;
reg    bckgndYUV_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [7:0] p_read_4_reg_894;
wire   [15:0] zext_ln1872_1_cast_fu_407_p1;
reg   [15:0] zext_ln1872_1_cast_reg_942;
wire   [15:0] zext_ln1872_cast_fu_411_p1;
reg   [15:0] zext_ln1872_cast_reg_948;
reg   [15:0] x_reg_956;
wire   [0:0] trunc_ln730_fu_433_p1;
reg   [0:0] trunc_ln730_reg_962;
wire   [0:0] icmp_ln1842_fu_453_p2;
wire   [0:0] hDir_load_load_fu_459_p1;
wire   [0:0] icmp_ln1847_fu_466_p2;
wire   [0:0] icmp_ln1852_fu_477_p2;
wire   [0:0] vDir_load_load_fu_488_p1;
wire   [0:0] icmp_ln1859_fu_495_p2;
wire   [0:0] icmp_ln1864_fu_506_p2;
wire   [0:0] and_ln1921_fu_586_p2;
reg   [0:0] and_ln1921_reg_999;
wire   [0:0] or_ln1921_fu_591_p2;
reg   [0:0] or_ln1921_reg_1006;
reg   [0:0] ap_phi_mux_empty_67_phi_fu_329_p8;
wire   [0:0] ap_phi_reg_pp0_iter1_empty_67_reg_326;
reg   [0:0] ap_phi_mux_empty_66_phi_fu_346_p8;
wire   [0:0] ap_phi_reg_pp0_iter1_empty_66_reg_343;
reg   [7:0] ap_phi_mux_pix_val_V_2_phi_fu_363_p10;
wire   [7:0] ap_phi_reg_pp0_iter2_pix_val_V_2_reg_360;
wire   [7:0] pixOut_3_fu_636_p4;
wire   [7:0] select_ln1921_fu_725_p3;
wire   [0:0] and_ln1900_fu_708_p2;
reg   [7:0] ap_phi_mux_pix_val_V_1_phi_fu_378_p10;
wire   [7:0] ap_phi_reg_pp0_iter2_pix_val_V_1_reg_375;
wire   [7:0] pixOut_2_fu_624_p4;
wire   [7:0] select_ln1921_1_fu_732_p3;
wire   [7:0] pixOut_5_fu_718_p3;
reg   [7:0] ap_phi_mux_pix_val_V_phi_fu_394_p10;
wire   [7:0] ap_phi_reg_pp0_iter2_pix_val_V_reg_391;
wire   [7:0] pixOut_1_fu_618_p1;
wire   [7:0] select_ln1921_2_fu_740_p3;
wire   [63:0] zext_ln1933_fu_608_p1;
reg   [15:0] x_1_fu_130;
wire   [15:0] x_2_fu_442_p2;
wire    ap_loop_init;
reg   [15:0] boxTop_fu_134;
wire   [15:0] select_ln1873_fu_557_p3;
reg   [15:0] boxLeft_fu_138;
wire   [15:0] select_ln1869_fu_533_p3;
reg    ap_block_pp0_stage0_01001;
wire   [15:0] or_ln1842_fu_448_p2;
wire   [15:0] sub_ln1872_fu_523_p2;
wire   [15:0] add_ln1870_fu_528_p2;
wire   [15:0] sub_ln1876_fu_547_p2;
wire   [15:0] add_ln1874_fu_552_p2;
wire   [0:0] icmp_ln1921_1_fu_581_p2;
wire   [0:0] or_ln1933_fu_596_p2;
wire   [1:0] select_ln1933_fu_601_p3;
wire   [0:0] ult_fu_664_p2;
wire   [15:0] boxBottom_fu_659_p2;
wire   [0:0] icmp_ln1895_fu_680_p2;
wire   [15:0] boxRight_fu_654_p2;
wire   [0:0] notrhs_fu_675_p2;
wire   [0:0] rev39_fu_669_p2;
wire   [0:0] icmp_ln1895_1_fu_691_p2;
wire   [0:0] xor_ln1895_fu_685_p2;
wire   [0:0] and_ln1900_2_fu_702_p2;
wire   [0:0] and_ln1900_1_fu_696_p2;
wire   [0:0] and_ln1905_fu_714_p2;
wire   [7:0] select_ln1951_fu_755_p3;
wire   [7:0] select_ln1947_fu_748_p3;
wire   [7:0] select_ln1949_fu_776_p3;
wire   [7:0] p_0_2_0_0_03294100_fu_762_p3;
wire   [7:0] empty_fu_783_p3;
wire   [7:0] p_0_0_0_0_0289096_fu_769_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
reg    ap_condition_628;
reg    ap_condition_353;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 vDir = 1'd0;
#0 hDir = 1'd0;
#0 ap_done_reg = 1'b0;
end

design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_730_2_whiYuv_2 #(
    .DataWidth( 8 ),
    .AddressRange( 3 ),
    .AddressWidth( 2 ))
whiYuv_2_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(whiYuv_2_address0),
    .ce0(whiYuv_2_ce0),
    .q0(whiYuv_2_q0)
);

design_1_v_tpg_0_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            boxLeft_fu_138 <= boxHCoord_loc_0;
        end else if ((1'b1 == ap_condition_628)) begin
            boxLeft_fu_138 <= select_ln1869_fu_533_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            boxTop_fu_134 <= boxVCoord_loc_0;
        end else if ((1'b1 == ap_condition_628)) begin
            boxTop_fu_134 <= select_ln1873_fu_557_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_353)) begin
        if (((icmp_ln1852_fu_477_p2 == 1'd1) & (hDir_load_load_fu_459_p1 == 1'd1))) begin
            hDir <= 1'd0;
        end else if (((icmp_ln1847_fu_466_p2 == 1'd1) & (hDir_load_load_fu_459_p1 == 1'd0))) begin
            hDir <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_353)) begin
        if (((icmp_ln1864_fu_506_p2 == 1'd1) & (vDir_load_load_fu_488_p1 == 1'd1))) begin
            vDir <= 1'd0;
        end else if (((icmp_ln1859_fu_495_p2 == 1'd1) & (vDir_load_load_fu_488_p1 == 1'd0))) begin
            vDir <= 1'd1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            x_1_fu_130 <= 16'd0;
        end else if (((icmp_ln730_fu_437_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            x_1_fu_130 <= x_2_fu_442_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln730_fu_437_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_read_4_reg_894 == 8'd2))) begin
        and_ln1921_reg_999 <= and_ln1921_fu_586_p2;
        or_ln1921_reg_1006 <= or_ln1921_fu_591_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln730_reg_967 <= icmp_ln730_fu_437_p2;
        trunc_ln730_reg_962 <= trunc_ln730_fu_433_p1;
        x_reg_956 <= x_1_fu_130;
        zext_ln1872_1_cast_reg_942[8 : 0] <= zext_ln1872_1_cast_fu_407_p1[8 : 0];
        zext_ln1872_cast_reg_948[7 : 0] <= zext_ln1872_cast_fu_411_p1[7 : 0];
    end
end

always @ (*) begin
    if (((icmp_ln730_fu_437_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1859_fu_495_p2 == 1'd0) & (vDir_load_load_fu_488_p1 == 1'd0) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)) | ((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1864_fu_506_p2 == 1'd1) & (vDir_load_load_fu_488_p1 == 1'd1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)))) begin
        ap_phi_mux_empty_66_phi_fu_346_p8 = 1'd0;
    end else if ((((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1864_fu_506_p2 == 1'd0) & (vDir_load_load_fu_488_p1 == 1'd1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)) | ((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1859_fu_495_p2 == 1'd1) & (vDir_load_load_fu_488_p1 == 1'd0) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)))) begin
        ap_phi_mux_empty_66_phi_fu_346_p8 = 1'd1;
    end else begin
        ap_phi_mux_empty_66_phi_fu_346_p8 = ap_phi_reg_pp0_iter1_empty_66_reg_343;
    end
end

always @ (*) begin
    if ((((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1847_fu_466_p2 == 1'd0) & (hDir_load_load_fu_459_p1 == 1'd0) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)) | ((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1852_fu_477_p2 == 1'd1) & (hDir_load_load_fu_459_p1 == 1'd1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)))) begin
        ap_phi_mux_empty_67_phi_fu_329_p8 = 1'd0;
    end else if ((((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1852_fu_477_p2 == 1'd0) & (hDir_load_load_fu_459_p1 == 1'd1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)) | ((icmp_ln730_fu_437_p2 == 1'd0) & (icmp_ln1847_fu_466_p2 == 1'd1) & (hDir_load_load_fu_459_p1 == 1'd0) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1)))) begin
        ap_phi_mux_empty_67_phi_fu_329_p8 = 1'd1;
    end else begin
        ap_phi_mux_empty_67_phi_fu_329_p8 = ap_phi_reg_pp0_iter1_empty_67_reg_326;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln1900_fu_708_p2) & (icmp_ln730_reg_967 == 1'd0) & (p_read_4_reg_894 == 8'd1))) begin
        ap_phi_mux_pix_val_V_1_phi_fu_378_p10 = pixOut_5_fu_718_p3;
    end else if (((icmp_ln730_reg_967 == 1'd0) & (or_ln1921_reg_1006 == 1'd1) & (p_read_4_reg_894 == 8'd2))) begin
        ap_phi_mux_pix_val_V_1_phi_fu_378_p10 = select_ln1921_1_fu_732_p3;
    end else if ((((1'd0 == and_ln1900_fu_708_p2) & (icmp_ln730_reg_967 == 1'd0) & (p_read_4_reg_894 == 8'd1)) | (~(p_read_4_reg_894 == 8'd2) & ~(p_read_4_reg_894 == 8'd1) & (icmp_ln730_reg_967 == 1'd0)))) begin
        ap_phi_mux_pix_val_V_1_phi_fu_378_p10 = {{bckgndYUV_dout[15:8]}};
    end else if (((icmp_ln730_reg_967 == 1'd0) & (or_ln1921_reg_1006 == 1'd0) & (p_read_4_reg_894 == 8'd2))) begin
        ap_phi_mux_pix_val_V_1_phi_fu_378_p10 = whiYuv_2_q0;
    end else begin
        ap_phi_mux_pix_val_V_1_phi_fu_378_p10 = ap_phi_reg_pp0_iter2_pix_val_V_1_reg_375;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln1900_fu_708_p2) & (icmp_ln730_reg_967 == 1'd0) & (p_read_4_reg_894 == 8'd1))) begin
        ap_phi_mux_pix_val_V_2_phi_fu_363_p10 = pixOut_6;
    end else if (((icmp_ln730_reg_967 == 1'd0) & (or_ln1921_reg_1006 == 1'd1) & (p_read_4_reg_894 == 8'd2))) begin
        ap_phi_mux_pix_val_V_2_phi_fu_363_p10 = select_ln1921_fu_725_p3;
    end else if ((((1'd0 == and_ln1900_fu_708_p2) & (icmp_ln730_reg_967 == 1'd0) & (p_read_4_reg_894 == 8'd1)) | (~(p_read_4_reg_894 == 8'd2) & ~(p_read_4_reg_894 == 8'd1) & (icmp_ln730_reg_967 == 1'd0)))) begin
        ap_phi_mux_pix_val_V_2_phi_fu_363_p10 = {{bckgndYUV_dout[23:16]}};
    end else if (((icmp_ln730_reg_967 == 1'd0) & (or_ln1921_reg_1006 == 1'd0) & (p_read_4_reg_894 == 8'd2))) begin
        ap_phi_mux_pix_val_V_2_phi_fu_363_p10 = pixOut;
    end else begin
        ap_phi_mux_pix_val_V_2_phi_fu_363_p10 = ap_phi_reg_pp0_iter2_pix_val_V_2_reg_360;
    end
end

always @ (*) begin
    if (((1'd1 == and_ln1900_fu_708_p2) & (icmp_ln730_reg_967 == 1'd0) & (p_read_4_reg_894 == 8'd1))) begin
        ap_phi_mux_pix_val_V_phi_fu_394_p10 = pixOut_4;
    end else if (((icmp_ln730_reg_967 == 1'd0) & (or_ln1921_reg_1006 == 1'd1) & (p_read_4_reg_894 == 8'd2))) begin
        ap_phi_mux_pix_val_V_phi_fu_394_p10 = select_ln1921_2_fu_740_p3;
    end else if ((((1'd0 == and_ln1900_fu_708_p2) & (icmp_ln730_reg_967 == 1'd0) & (p_read_4_reg_894 == 8'd1)) | (~(p_read_4_reg_894 == 8'd2) & ~(p_read_4_reg_894 == 8'd1) & (icmp_ln730_reg_967 == 1'd0)))) begin
        ap_phi_mux_pix_val_V_phi_fu_394_p10 = pixOut_1_fu_618_p1;
    end else if (((icmp_ln730_reg_967 == 1'd0) & (or_ln1921_reg_1006 == 1'd0) & (p_read_4_reg_894 == 8'd2))) begin
        ap_phi_mux_pix_val_V_phi_fu_394_p10 = 8'd240;
    end else begin
        ap_phi_mux_pix_val_V_phi_fu_394_p10 = ap_phi_reg_pp0_iter2_pix_val_V_reg_391;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (icmp_ln730_reg_967 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        bckgndYUV_blk_n = bckgndYUV_empty_n;
    end else begin
        bckgndYUV_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln730_reg_967 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        bckgndYUV_read = 1'b1;
    end else begin
        bckgndYUV_read = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln730_fu_437_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_read_4_reg_894 == 8'd1))) begin
        boxHCoord_ap_vld = 1'b1;
    end else begin
        boxHCoord_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln730_fu_437_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        boxHCoord_loc_1_out_ap_vld = 1'b1;
    end else begin
        boxHCoord_loc_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln730_fu_437_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_read_4_reg_894 == 8'd1))) begin
        boxVCoord_ap_vld = 1'b1;
    end else begin
        boxVCoord_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln730_fu_437_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        boxVCoord_loc_1_out_ap_vld = 1'b1;
    end else begin
        boxVCoord_loc_1_out_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ovrlayYUV_blk_n = ovrlayYUV_full_n;
    end else begin
        ovrlayYUV_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ovrlayYUV_write = 1'b1;
    end else begin
        ovrlayYUV_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        whiYuv_2_ce0 = 1'b1;
    end else begin
        whiYuv_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1870_fu_528_p2 = (boxLeft_fu_138 + zext_ln1872_cast_reg_948);

assign add_ln1874_fu_552_p2 = (boxTop_fu_134 + zext_ln1872_cast_reg_948);

assign and_ln1900_1_fu_696_p2 = (rev39_fu_669_p2 & notrhs_fu_675_p2);

assign and_ln1900_2_fu_702_p2 = (xor_ln1895_fu_685_p2 & icmp_ln1895_1_fu_691_p2);

assign and_ln1900_fu_708_p2 = (and_ln1900_2_fu_702_p2 & and_ln1900_1_fu_696_p2);

assign and_ln1905_fu_714_p2 = (trunc_ln730_reg_962 & cmp72_i);

assign and_ln1921_fu_586_p2 = (icmp_ln1921_1_fu_581_p2 & icmp_ln1921);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & ((ovrlayYUV_full_n == 1'b0) | ((icmp_ln730_reg_967 == 1'd0) & (bckgndYUV_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & ((ovrlayYUV_full_n == 1'b0) | ((icmp_ln730_reg_967 == 1'd0) & (bckgndYUV_empty_n == 1'b0))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & ((ovrlayYUV_full_n == 1'b0) | ((icmp_ln730_reg_967 == 1'd0) & (bckgndYUV_empty_n == 1'b0))));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = ((ovrlayYUV_full_n == 1'b0) | ((icmp_ln730_reg_967 == 1'd0) & (bckgndYUV_empty_n == 1'b0)));
end

always @ (*) begin
    ap_condition_353 = ((icmp_ln730_fu_437_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (p_read_4_reg_894 == 8'd1));
end

always @ (*) begin
    ap_condition_628 = ((icmp_ln730_fu_437_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln1842_fu_453_p2 == 1'd1) & (p_read_4_reg_894 == 8'd1));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign ap_phi_reg_pp0_iter1_empty_66_reg_343 = 'bx;

assign ap_phi_reg_pp0_iter1_empty_67_reg_326 = 'bx;

assign ap_phi_reg_pp0_iter2_pix_val_V_1_reg_375 = 'bx;

assign ap_phi_reg_pp0_iter2_pix_val_V_2_reg_360 = 'bx;

assign ap_phi_reg_pp0_iter2_pix_val_V_reg_391 = 'bx;

assign boxBottom_fu_659_p2 = (boxTop_fu_134 + p_read4);

assign boxHCoord = ((ap_phi_mux_empty_67_phi_fu_329_p8[0:0] == 1'b1) ? sub_ln1872_fu_523_p2 : add_ln1870_fu_528_p2);

assign boxHCoord_loc_1_out = boxLeft_fu_138;

assign boxRight_fu_654_p2 = (boxLeft_fu_138 + p_read4);

assign boxVCoord = ((ap_phi_mux_empty_66_phi_fu_346_p8[0:0] == 1'b1) ? sub_ln1876_fu_547_p2 : add_ln1874_fu_552_p2);

assign boxVCoord_loc_1_out = boxTop_fu_134;

assign empty_fu_783_p3 = ((tobool[0:0] == 1'b1) ? ap_phi_mux_pix_val_V_1_phi_fu_378_p10 : select_ln1949_fu_776_p3);

assign hDir_load_load_fu_459_p1 = hDir;

assign icmp_ln1842_fu_453_p2 = ((or_ln1842_fu_448_p2 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1847_fu_466_p2 = ((boxLeft_fu_138 > hMax) ? 1'b1 : 1'b0);

assign icmp_ln1852_fu_477_p2 = ((boxLeft_fu_138 < zext_ln1872_1_cast_reg_942) ? 1'b1 : 1'b0);

assign icmp_ln1859_fu_495_p2 = ((boxTop_fu_134 > vMax) ? 1'b1 : 1'b0);

assign icmp_ln1864_fu_506_p2 = ((boxTop_fu_134 < zext_ln1872_1_cast_reg_942) ? 1'b1 : 1'b0);

assign icmp_ln1895_1_fu_691_p2 = ((x_reg_956 < boxRight_fu_654_p2) ? 1'b1 : 1'b0);

assign icmp_ln1895_fu_680_p2 = ((x_reg_956 < boxLeft_fu_138) ? 1'b1 : 1'b0);

assign icmp_ln1921_1_fu_581_p2 = ((x_1_fu_130 != p_read2) ? 1'b1 : 1'b0);

assign icmp_ln730_fu_437_p2 = ((x_1_fu_130 == loopWidth) ? 1'b1 : 1'b0);

assign notrhs_fu_675_p2 = ((y < boxBottom_fu_659_p2) ? 1'b1 : 1'b0);

assign or_ln1842_fu_448_p2 = (y | x_1_fu_130);

assign or_ln1921_fu_591_p2 = (cmp11_i159 | and_ln1921_fu_586_p2);

assign or_ln1933_fu_596_p2 = (trunc_ln730_fu_433_p1 | cmp13_i);

assign ovrlayYUV_din = {{{p_0_2_0_0_03294100_fu_762_p3}, {empty_fu_783_p3}}, {p_0_0_0_0_0289096_fu_769_p3}};

assign p_0_0_0_0_0289096_fu_769_p3 = ((tobool[0:0] == 1'b1) ? ap_phi_mux_pix_val_V_phi_fu_394_p10 : select_ln1947_fu_748_p3);

assign p_0_2_0_0_03294100_fu_762_p3 = ((tobool[0:0] == 1'b1) ? ap_phi_mux_pix_val_V_2_phi_fu_363_p10 : select_ln1951_fu_755_p3);

assign p_read_4_reg_894 = p_read;

assign pixOut_1_fu_618_p1 = bckgndYUV_dout[7:0];

assign pixOut_2_fu_624_p4 = {{bckgndYUV_dout[15:8]}};

assign pixOut_3_fu_636_p4 = {{bckgndYUV_dout[23:16]}};

assign pixOut_5_fu_718_p3 = ((and_ln1905_fu_714_p2[0:0] == 1'b1) ? pixOut_6 : p_read6);

assign rev39_fu_669_p2 = (ult_fu_664_p2 ^ 1'd1);

assign select_ln1869_fu_533_p3 = ((ap_phi_mux_empty_67_phi_fu_329_p8[0:0] == 1'b1) ? sub_ln1872_fu_523_p2 : add_ln1870_fu_528_p2);

assign select_ln1873_fu_557_p3 = ((ap_phi_mux_empty_66_phi_fu_346_p8[0:0] == 1'b1) ? sub_ln1876_fu_547_p2 : add_ln1874_fu_552_p2);

assign select_ln1921_1_fu_732_p3 = ((and_ln1921_reg_999[0:0] == 1'b1) ? pixOut_2_fu_624_p4 : 8'd240);

assign select_ln1921_2_fu_740_p3 = ((and_ln1921_reg_999[0:0] == 1'b1) ? pixOut_1_fu_618_p1 : 8'd240);

assign select_ln1921_fu_725_p3 = ((and_ln1921_reg_999[0:0] == 1'b1) ? pixOut_3_fu_636_p4 : pixOut);

assign select_ln1933_fu_601_p3 = ((or_ln1933_fu_596_p2[0:0] == 1'b1) ? select_ln1933_1 : 2'd1);

assign select_ln1947_fu_748_p3 = ((and4_i[0:0] == 1'b1) ? 8'd0 : ap_phi_mux_pix_val_V_phi_fu_394_p10);

assign select_ln1949_fu_776_p3 = ((and10_i[0:0] == 1'b1) ? 8'd0 : ap_phi_mux_pix_val_V_1_phi_fu_378_p10);

assign select_ln1951_fu_755_p3 = ((and24_i[0:0] == 1'b1) ? 8'd0 : ap_phi_mux_pix_val_V_2_phi_fu_363_p10);

assign sub_ln1872_fu_523_p2 = (boxLeft_fu_138 - zext_ln1872_cast_reg_948);

assign sub_ln1876_fu_547_p2 = (boxTop_fu_134 - zext_ln1872_cast_reg_948);

assign trunc_ln730_fu_433_p1 = x_1_fu_130[0:0];

assign ult_fu_664_p2 = ((y < boxTop_fu_134) ? 1'b1 : 1'b0);

assign vDir_load_load_fu_488_p1 = vDir;

assign whiYuv_2_address0 = zext_ln1933_fu_608_p1;

assign x_2_fu_442_p2 = (x_1_fu_130 + 16'd1);

assign xor_ln1895_fu_685_p2 = (icmp_ln1895_fu_680_p2 ^ 1'd1);

assign zext_ln1872_1_cast_fu_407_p1 = zext_ln1872_1;

assign zext_ln1872_cast_fu_411_p1 = zext_ln1872;

assign zext_ln1933_fu_608_p1 = select_ln1933_fu_601_p3;

always @ (posedge ap_clk) begin
    zext_ln1872_1_cast_reg_942[15:9] <= 7'b0000000;
    zext_ln1872_cast_reg_948[15:8] <= 8'b00000000;
end

endmodule //design_1_v_tpg_0_0_tpgForeground_Pipeline_VITIS_LOOP_730_2