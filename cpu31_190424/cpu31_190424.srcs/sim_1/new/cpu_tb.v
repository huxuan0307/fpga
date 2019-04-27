`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/24 18:10:04
// Design Name: 
// Module Name: cpu_tb
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


module cpu_tb(
    
    );
reg clk;
reg rst;
wire [7:0] o_seg;
wire [7:0] o_sel;
    
top_cpu_7seg top(clk,rst,o_seg,o_sel);
initial begin
    clk = 1'b0;
    rst = 1'b1;
    #200
    rst = 1'b0;
    
end


always begin
    #5 clk = ~clk;
end
endmodule
