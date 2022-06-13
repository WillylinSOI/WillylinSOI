//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2022 06:06:54 PM
// Design Name: 
// Module Name: test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
import axi_vip_pkg::*;

`timescale 1ns / 1ps
`define ZYNQ_VIP_0 test_bench.mpsoc_sys.design_1_i.zynq_ultra_ps_e_0.inst

module test_bench;
reg tb_ACLK; 
reg tb_ARESETn;

//lULTRASCALE
reg resp;
reg reset_fin;
reg axi_data;

// TPG register base address - Check the Address Editor Tab in the BD
parameter  tpg_base_address = 32'h80000000;
//
// Address of some TPG registers - refer to PG103 for info
    //Control
    parameter  TPG_CONTROL_REG       = tpg_base_address;
    // active_height
    parameter  TPG_ACTIVE_H_REG      = tpg_base_address + 8'h10;
    // active_width
    parameter  TPG_ACTIVE_W_REG      = tpg_base_address + 8'h18;
    // background_pattern_id
    parameter  TPG_BG_PATTERN_ID_REG = tpg_base_address + 8'h20;
    //Color Format
    parameter  TPG_COLOR_FORMAT_REG  = tpg_base_address + 8'h40;

//////////////////////////////////////////////////////////////////////////////////
// VIP Configuration
integer height=1080, width=1920;
//////////////////////////////////////////////////////////////////////////////////


initial 
begin       
    tb_ACLK = 1'b0;
end

//------------------------------------------------------------------------
// Simple Clock Generator
//------------------------------------------------------------------------

always #10 tb_ACLK = !tb_ACLK;
   
initial
begin

    $display ("running the tb");
    reset_fin= 1'b0;
    tb_ARESETn = 1'b0;
    repeat(200)@(posedge tb_ACLK);        
    tb_ARESETn = 1'b1;
    @(posedge tb_ACLK);
    
    repeat(5) @(posedge tb_ACLK);
      
    //Reset the PL zynq_ultra_ps_e_0   Base_Zynq_MPSoC_zynq_ultra_ps_e_0_0
    `ZYNQ_VIP_0.por_srstb_reset(1'b0);
    `ZYNQ_VIP_0.fpga_soft_reset(32'h1);   
    #200;  // This delay depends on your clock frequency. It should be at least 16 clock cycles. 
    `ZYNQ_VIP_0.por_srstb_reset(1'b1);
    `ZYNQ_VIP_0.fpga_soft_reset(32'h0);
    
    // Set debug level info to off. For more info, set to 1.
    `ZYNQ_VIP_0.set_debug_level_info(0);
    `ZYNQ_VIP_0.set_stop_on_error(1); //This function sets the STOP_ON_ERROR internal control variable to the specified input value:
    // Set minimum port verbosity. Change to 32'd400 for maximum.
    `ZYNQ_VIP_0.M_AXI_HPM0_FPD.set_verbosity(32'd0); //When set to default value '32'd400', debug level info from Xil VIP is reported, else no info is reported.
    `ZYNQ_VIP_0.S_AXI_HP0_FPD.set_verbosity(32'd0);
      
    //Fill the source data area
    `ZYNQ_VIP_0.pre_load_mem(2'b00, 32'h00010000, 4096); // Write Random

     reset_fin= 1'b1;
     $display ("reset_fin set to 1");
end


initial begin    

    //Wait for the reset to be released
    wait (reset_fin == 1'b1);
    
    #200ns
    
    `ZYNQ_VIP_0.write_data(TPG_ACTIVE_H_REG,1,height, resp);
    `ZYNQ_VIP_0.write_data(TPG_ACTIVE_W_REG,1,width, resp);
    //Set TPG output background ID
    `ZYNQ_VIP_0.write_data(TPG_BG_PATTERN_ID_REG,1,9, resp);
        // Set TPG color format to YUV422
    `ZYNQ_VIP_0.write_data(TPG_COLOR_FORMAT_REG,1,2,resp);
    #200ns
    // Start the TPG in free-running mode    
    `ZYNQ_VIP_0.write_data(TPG_CONTROL_REG,1,8'h81, resp);

    $display("Testbench finished");   
    $finish;
      
end
      design_1_wrapper mpsoc_sys();
      
  
endmodule