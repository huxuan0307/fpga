`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 00:07:54
// Design Name: 
// Module Name: sccomp_dataflow
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


module sccomp_dataflow(
    input clk_in,
    input reset,
    output [31:0] inst,
    output [31:0] pc
    );

wire [31:0] dataBus0;   //进内存
wire [31:0] dataBus1;   //出内存
wire [31:0] addrBus;
wire mem_we;

cpu sccpu(clk_in, reset, dataBus1, dataBus0, addrBus, mem_we, pc, inst);

dmem dmem_0(clk_in, reset, mem_we, addrBus, dataBus0, dataBus1);

    
    
    
    
    
endmodule
