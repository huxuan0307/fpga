`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/22 16:29:21
// Design Name: 
// Module Name: top_cpu_7seg
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


module top_cpu_7seg(
    input clk,
    input rst,
    output [7:0] o_seg,
    output [7:0] o_sel
    );

wire [31:0] inst;
wire [31:0] pc;
wire clk_25MHz;

reg [31:0] cnt;

always@(posedge clk)
begin
    if(rst)begin
        cnt <= 32'b0;
    end else begin
        if(cnt == 32'h8000_0000)begin
            cnt <= 32'b0;
        end
        cnt <= cnt+1;
    end
end

seg7x16 seg7x16_0(
clk,
rst,
1'b1,
inst,
o_seg,
o_sel
    );
clk_wiz_1 clk100_25(.clk_in1(clk),.reset(rst),.clk_out1(clk_25MHz));
sccomp_dataflow cpu(
    clk_25MHz,
    rst,
    inst,
    pc
);
    
endmodule
