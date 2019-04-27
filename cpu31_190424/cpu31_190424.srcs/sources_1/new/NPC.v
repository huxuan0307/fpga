`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 19:05:09
// Design Name: 
// Module Name: NPC
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


module NPC(
    input           clk,
    input           en,
    input   [31:0]  pc,
    output  reg  [31:0]  npc
    );
initial npc = 32'h0040_0004;

always@(posedge clk)
begin
    if(en) begin
        npc <= pc + 32'd4;
    end else begin
        npc <= npc;
    end
end
    
endmodule
