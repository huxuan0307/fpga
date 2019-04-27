`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/07 18:14:16
// Design Name: 
// Module Name: dram
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


module dmem(
    input clk,
    input rst,
    input we,   //1:write, 0:read
    input [31:0] addr,
    input [31:0] iData,
    output [31:0] oData
    );
reg [31:0] ram[0:31]; 
integer i;

assign oData = ram[addr[6:2]];
always@(negedge clk)
begin
    if(rst)begin
        for(i=0;i<32;i=i+1)begin
            ram[i] <= 32'b0;
        end
    end else if(we) begin
        ram[addr[6:2]] <= iData;
    end


end
endmodule
