`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 19:45:18
// Design Name: 
// Module Name: MUX
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


module MUX#(parameter WIDTH = 1)(
    input   [WIDTH-1:0] iData0,
    input   [WIDTH-1:0] iData1,
    input   sel,
    output   [WIDTH-1:0] oData
    );
    assign oData = sel ? iData1 : iData0; 
endmodule
