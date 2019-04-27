`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/17 23:43:47
// Design Name: 
// Module Name: iram
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


module iram(
    input [9:0] addr,
    output [31:0] oData
    );
reg [31:0] ram [0:1023];
integer i;
initial begin
    $readmemh("D:/test/load.txt",ram);
//    #5
//    for(i=0;i<128;i=i+1)begin
//        #1 $display("ram[%d]=%h",i,ram[i]);
//    end
    
end
assign oData = ram[addr[9:0]];

endmodule
