`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/06 21:51:22
// Design Name: 
// Module Name: MUX4
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


module MUX4#(parameter WIDTH = 1)(
    input   [WIDTH-1:0] iData0,
    input   [WIDTH-1:0] iData1,
    input   [WIDTH-1:0] iData2,
    input   [WIDTH-1:0] iData3,
    input   [1:0]       sel,
    output   reg [WIDTH-1:0] oData
    );
always@* begin
    case (sel)
        2'b00: oData <= iData0;
        2'b01: oData <= iData1;
        2'b10: oData <= iData2;
        2'b11: oData <= iData3;
    endcase
end
endmodule