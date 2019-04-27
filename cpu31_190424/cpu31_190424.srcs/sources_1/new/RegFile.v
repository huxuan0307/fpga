`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 19:21:45
// Design Name: 
// Module Name: RegFile
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


module Regfiles#
(
    parameter ADDRWIDTH=5,
    parameter DATAWIDTH=32 
    )
(
    input clk,                          //时钟信号，下降沿写入数据
    input rst,                          //异步复位信号，高电平有效，全部寄存器置零
    input wen,                           //寄存器写有效信号，高电平时允许寄存器写入数据
    //input ren,                          //寄存器读有效信号，高电平时允许寄存器写入数据
                                        //低电平时允许寄存器读出数据
    input [ADDRWIDTH-1:0] raddr1,       //所需读取的寄存器地址
    input [ADDRWIDTH-1:0] raddr2,       //所需读取的寄存器地址
    input [ADDRWIDTH-1:0] waddr,        //写寄存器的地址
    input [DATAWIDTH-1:0] wdata,           //写寄存器的数，数据在下降沿时被写入
    output reg [DATAWIDTH-1:0] rdata1,         //raddr1 所对应寄存器的输出数据
    output reg [DATAWIDTH-1:0] rdata2          //raddr2 所对应寄存器的输出数据
    );

reg [31:0] array_reg[0:31];

always@* 
begin
    rdata1 <= array_reg[raddr1];
    rdata2 <= array_reg[raddr2];
end

integer i;

always @(negedge clk)   //下降沿写
begin
    if(rst) begin
        for(i=0;i<32;i=i+1)begin
            array_reg[i] <= 0;
        end
    end
    if(wen) begin
        if(waddr)begin  //waddr!=0
            array_reg[waddr] <= wdata;
        end
    end
end


    
    
endmodule
