`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 19:08:05
// Design Name: 
// Module Name: PC
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


module PC(
    input               clk,
    input               rst,
    input               en,
    input       [31:0]  npc,

    output  reg [31:0]  pc,
    output  [3:0]       pc31_28
    );
    assign pc31_28 = pc[31:28]; 
initial pc = 32'h0040_0000;
always@(negedge clk,posedge rst)
begin
    if(rst)
        pc <= 32'h0040_0000;
    else if(en) begin
        pc <= npc;
    end
    
end
endmodule
