-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Wed Jun  1 11:29:31 2022
-- Host        : S008-188 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/willylin/Desktop/dp_ver3/dp_ver3/dp-ver3.gen/sources_1/bd/design_1/ip/design_1_system_ila_1_1/design_1_system_ila_1_1_stub.vhdl
-- Design      : design_1_system_ila_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_system_ila_1_1 is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_AXIS_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    SLOT_0_AXIS_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXIS_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXIS_tlast : in STD_LOGIC;
    SLOT_0_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXIS_tvalid : in STD_LOGIC;
    SLOT_0_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end design_1_system_ila_1_1;

architecture stub of design_1_system_ila_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_AXIS_tid[0:0],SLOT_0_AXIS_tdest[0:0],SLOT_0_AXIS_tdata[23:0],SLOT_0_AXIS_tstrb[2:0],SLOT_0_AXIS_tkeep[2:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tuser[0:0],SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f69c,Vivado 2021.1";
begin
end;
