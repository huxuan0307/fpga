`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/28 19:27:47
// Design Name: 
// Module Name: ALU
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
`define ADDU    4'b0001
`define ADD     4'b0000
`define SUBU    4'b0011
`define SUB     4'b0010
`define AND     4'b0100
`define OR      4'b0101
`define XOR     4'b0110
`define NOR     4'b0111

`define SLT     4'b1010
`define SLTU    4'b1011

`define SLL     4'b1000
`define SRL     4'b1100
`define SRA     4'b1110
`define LUI     4'b1111

module ALU #( parameter N = 32 )(
    input [N-1:0] a,
    input [N-1:0] b,
    input [3:0] aluc,       //4位输入，由a，b经过aluc的指令生成
    output [N-1:0] r,
    output zero,
    output carry,
    output negative,
    output reg overflow
    );
reg [32:0] temp;
assign zero = ~|temp[31:0];
assign carry = temp[32];
assign negative = temp[31];
//assign r = overflow ? 32'b0 : temp[31:0];
assign r = temp[31:0];
always@*
    case (aluc)
        `ADDU:  begin: addu
            temp        <= a + b;
        end
        `ADD:   begin: add
            temp[32:0]  <= {a[31],a[31:0]} + {b[31],b[31:0]};
            overflow    <= temp[32]^temp[31];
        end
        `SUB:   begin:  sub
            temp[32:0]  <= {a[31],a[31:0]} - {b[31],b[31:0]};
            overflow    <= temp[32]^temp[31];
        end
        `SUBU:  begin
            temp        <= a - b;
        end
        `AND:   begin
            temp        <= a&b;
        end 
        `OR:    begin
            temp        <= a|b;
        end
        `XOR:   begin
            temp        <= a^b;
        end
        `NOR:   begin
            temp        <= ~(a|b);
        end
        `SLT:   begin
            temp        <= ($signed(a)<$signed(b)) ? {31'b0,1'b1} : 32'b0;
        end
        `SLTU:  begin
            temp        <= {1'b0,a} < {1'b0,b} ? {31'b0,1'b1} : 32'b0;
        end
        `SLL:   begin
            temp        <= b<<a[4:0];
        end
        `SRL:   begin
            temp        <= b>>a[4:0];
        end
        `SRA:   begin
            temp        <= $signed(b)>>>a[4:0];
        end
        `LUI:   begin
            temp        <= {b[15:0],16'b0};
        end
        default: begin
      
        end
    endcase
endmodule
