
wire kernel_monitor_reset;
wire kernel_monitor_clock;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
wire [0:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_937_2_fu_145.m_axis_video_TDATA_blk_n;

assign inst_idle_sigs[0] = grp_v_tpgHlsDataFlow_fu_319.entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (grp_v_tpgHlsDataFlow_fu_319.entry_proc_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_319.entry_proc_U0.ap_continue);
assign inst_idle_sigs[1] = grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.ap_idle;
assign inst_block_sigs[1] = (grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.grp_tpgBackground_Pipeline_VITIS_LOOP_521_2_fu_583.bckgndYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.height_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.width_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.motionSpeed_c_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgBackground_U0.colorFormat_c_blk_n;
assign inst_idle_sigs[2] = grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.ap_idle;
assign inst_block_sigs[2] = (grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_730_2_fu_196.bckgndYUV_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.height_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.width_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.colorFormat_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.motionSpeed_blk_n | ~grp_v_tpgHlsDataFlow_fu_319.tpgForeground_U0.grp_tpgForeground_Pipeline_VITIS_LOOP_730_2_fu_196.ovrlayYUV_blk_n;
assign inst_idle_sigs[3] = grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_block_sigs[3] = (grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.ap_done & ~grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.ap_continue) | ~grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_937_2_fu_145.ovrlayYUV_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = grp_v_tpgHlsDataFlow_fu_319.ap_idle;
assign inst_idle_sigs[6] = grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.ap_idle;
assign inst_idle_sigs[7] = grp_v_tpgHlsDataFlow_fu_319.MultiPixStream2AXIvideo_U0.grp_MultiPixStream2AXIvideo_Pipeline_VITIS_LOOP_937_2_fu_145.ap_idle;

design_1_v_tpg_0_0_hls_deadlock_idx0_monitor design_1_v_tpg_0_0_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);

