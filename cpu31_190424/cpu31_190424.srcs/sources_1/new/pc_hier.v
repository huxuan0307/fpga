`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 14:03:08
// Design Name: 
// Module Name: pc_hier
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


module pc_hier(
    input clk,
    input rst,
    input en,
    input [31:0] iData_b,
    input [31:0] iData_jr,
    input [25:0] iData_j,
    input [1:0] sel_pc,
    
    output [31:0] pc_out,
    output [31:0] npc_out
    );
    
wire [31:0] mux4_out;
wire [31:0] i_pc;
wire [31:0] i_npc;
assign pc_out = i_pc;
assign npc_out = i_npc;
PC PC_0(
.clk(clk),
.rst(rst),
.en(en), 
.npc(mux4_out),
.pc(i_pc),
.pc31_28()
);
NPC NPC_0(clk, en, i_pc, i_npc);
MUX4#(32) MUX4_0(i_npc, iData_b, {{i_pc[31:28]}, {iData_j[25:0]}, {2'b0}}, iData_jr,
            sel_pc,
            mux4_out
            );

    
endmodule
