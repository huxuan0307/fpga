`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 20:21:33
// Design Name: 
// Module Name: imem_divide
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


module imem_divide(
    input   [31:0]  iData,
    output  [5:0] op,
    output  [4:0] rs,
    output  [4:0] rt,
    output  [4:0] rd,
    output  [4:0]  shamt,
    output  [5:0]   func,
    output  [15:0]  imm,
    output  [25:0]  index
    );
assign  op      = iData[31:26];
assign  rs      = iData[25:21];
assign  rt      = iData[20:16];
assign  rd      = iData[15:11];
assign  shamt   = iData[10:6];
assign  func    = iData[5:0];
assign  imm     = iData[15:0];
assign  index   = iData[25:0];
endmodule
