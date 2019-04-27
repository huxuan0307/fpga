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
    input clk,                          //ʱ���źţ��½���д������
    input rst,                          //�첽��λ�źţ��ߵ�ƽ��Ч��ȫ���Ĵ�������
    input wen,                           //�Ĵ���д��Ч�źţ��ߵ�ƽʱ����Ĵ���д������
    //input ren,                          //�Ĵ�������Ч�źţ��ߵ�ƽʱ����Ĵ���д������
                                        //�͵�ƽʱ����Ĵ�����������
    input [ADDRWIDTH-1:0] raddr1,       //�����ȡ�ļĴ�����ַ
    input [ADDRWIDTH-1:0] raddr2,       //�����ȡ�ļĴ�����ַ
    input [ADDRWIDTH-1:0] waddr,        //д�Ĵ����ĵ�ַ
    input [DATAWIDTH-1:0] wdata,           //д�Ĵ����������������½���ʱ��д��
    output reg [DATAWIDTH-1:0] rdata1,         //raddr1 ����Ӧ�Ĵ������������
    output reg [DATAWIDTH-1:0] rdata2          //raddr2 ����Ӧ�Ĵ������������
    );

reg [31:0] array_reg[0:31];

always@* 
begin
    rdata1 <= array_reg[raddr1];
    rdata2 <= array_reg[raddr2];
end

integer i;

always @(negedge clk)   //�½���д
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
