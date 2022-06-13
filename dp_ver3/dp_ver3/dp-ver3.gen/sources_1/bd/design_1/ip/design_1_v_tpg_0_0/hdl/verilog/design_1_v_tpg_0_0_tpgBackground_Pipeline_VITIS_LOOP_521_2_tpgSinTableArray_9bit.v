// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_521_2_tpgSinTableArray_9bit (
address0, ce0, q0, address1, ce1, q1, address2, ce2, q2, reset,clk);

parameter DataWidth = 9;
parameter AddressWidth = 11;
parameter AddressRange = 2048;

input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input[AddressWidth-1:0] address2;
input ce2;
output reg[DataWidth-1:0] q2;
input reset;
input clk;

reg [DataWidth-1:0] ram0[0:AddressRange-1];
reg [DataWidth-1:0] ram1[0:AddressRange-1];

initial begin
    $readmemh("./design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_521_2_tpgSinTableArray_9bit.dat", ram0);
    $readmemh("./design_1_v_tpg_0_0_tpgBackground_Pipeline_VITIS_LOOP_521_2_tpgSinTableArray_9bit.dat", ram1);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram0[address0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram0[address1];
    end
end



always @(posedge clk)  
begin 
    if (ce2) 
    begin
        q2 <= ram1[address2];
    end
end



endmodule

