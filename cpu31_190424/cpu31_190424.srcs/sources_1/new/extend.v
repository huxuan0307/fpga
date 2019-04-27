`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 19:18:18
// Design Name: 
// Module Name: extend
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


module extend#(parameter sWIDTH = 16, parameter tWIDTH = 32)(
    input   wire    [sWIDTH-1 :0]   iData,
    input   wire                    isSigned,
    output           [tWIDTH-1  :0] oData
    );
localparam EXTNUM = tWIDTH - sWIDTH;
assign oData = isSigned ? { {EXTNUM {iData[sWIDTH-1]}}, {iData[sWIDTH-1:0]} } : {{EXTNUM{1'b0}},iData};
endmodule
