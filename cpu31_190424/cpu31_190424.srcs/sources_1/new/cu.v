`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/11 15:31:51
// Design Name: 
// Module Name: cu
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

module cu(
    input [5:0] op,
    input [5:0] func,
    input       zero,

    output   [1:0]sel_rf_waddr,
    output   [1:0]sel_rf_wdata,

    output   rf_wen,
    output   sel_alua,
    output   sel_alub,
    output   [1:0]sel_pc,
    output   [3:0]aluc,
    output   [4:0]ra,
    output   ext5isSigned,
    output   ext16isSigned,
    output   ext18isSigned,
    output   dmem_we
    );
wire opzero = ~(|op);
wire i_add  =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &   ~func[1]    &   ~func[0];
wire i_addu =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &   ~func[1]    &    func[0];
wire i_sub  =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &    func[1]    &   ~func[0];
wire i_subu =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &    func[1]    &    func[0];
wire i_and  =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &   ~func[1]    &   ~func[0];
wire i_or   =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &   ~func[1]    &    func[0];
wire i_xor  =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &    func[1]    &   ~func[0];
wire i_nor  =   opzero  &   func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &    func[1]    &    func[0];
wire i_slt  =   opzero  &   func[5] &   ~func[4]    &    func[3]    &   ~func[2]    &    func[1]    &   ~func[0];
wire i_sltu =   opzero  &   func[5] &   ~func[4]    &    func[3]    &   ~func[2]    &    func[1]    &    func[0];
wire i_sll  =   opzero  &  ~func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &   ~func[1]    &   ~func[0];
wire i_srl  =   opzero  &  ~func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &    func[1]    &   ~func[0];
wire i_sra  =   opzero  &  ~func[5] &   ~func[4]    &   ~func[3]    &   ~func[2]    &    func[1]    &    func[0];
wire i_sllv =   opzero  &  ~func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &   ~func[1]    &   ~func[0];
wire i_srlv =   opzero  &  ~func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &    func[1]    &   ~func[0];
wire i_srav =   opzero  &  ~func[5] &   ~func[4]    &   ~func[3]    &    func[2]    &    func[1]    &    func[0];
wire i_jr   =   opzero  &  ~func[5] &   ~func[4]    &    func[3]    &   ~func[2]    &   ~func[1]    &   ~func[0];
wire i_addi =              ~op[5]   &   ~op[4]      &    op[3]      &   ~op[2]      &   ~op[1]      &   ~op[0];    
wire i_addiu=              ~op[5]   &   ~op[4]      &    op[3]      &   ~op[2]      &   ~op[1]      &    op[0];
wire i_andi =              ~op[5]   &   ~op[4]      &    op[3]      &    op[2]      &   ~op[1]      &   ~op[0];
wire i_ori  =              ~op[5]   &   ~op[4]      &    op[3]      &    op[2]      &   ~op[1]      &    op[0];
wire i_xori =              ~op[5]   &   ~op[4]      &    op[3]      &    op[2]      &    op[1]      &   ~op[0];
wire i_lui  =              ~op[5]   &   ~op[4]      &    op[3]      &    op[2]      &    op[1]      &    op[0];
wire i_lw   =               op[5]   &   ~op[4]      &   ~op[3]      &   ~op[2]      &    op[1]      &    op[0];
wire i_sw   =               op[5]   &   ~op[4]      &    op[3]      &   ~op[2]      &    op[1]      &    op[0];
wire i_beq  =              ~op[5]   &   ~op[4]      &   ~op[3]      &    op[2]      &   ~op[1]      &   ~op[0];
wire i_bne  =              ~op[5]   &   ~op[4]      &   ~op[3]      &    op[2]      &   ~op[1]      &    op[0];
wire i_slti =              ~op[5]   &   ~op[4]      &    op[3]      &   ~op[2]      &    op[1]      &   ~op[0];
wire i_sltiu=              ~op[5]   &   ~op[4]      &    op[3]      &   ~op[2]      &    op[1]      &    op[0];
wire i_j    =              ~op[5]   &   ~op[4]      &   ~op[3]      &   ~op[2]      &    op[1]      &   ~op[0];
wire i_jal  =              ~op[5]   &   ~op[4]      &   ~op[3]      &   ~op[2]      &    op[1]      &    op[0];

assign sel_alua =           i_sll   |   i_srl   |   i_sra;
assign sel_alub =           i_addi  |   i_addiu |   i_andi  |   i_ori   |   i_xori  |   i_lui   |   i_lw    |   i_sw    |   i_slti  |   i_sltiu;
assign sel_rf_waddr[0] =    i_addi  |   i_addiu |   i_andi  |   i_ori   |   i_xori  |   i_lui   |   i_lw    |   i_slti  |   i_sltiu;
assign sel_rf_waddr[1] =    i_jal;
assign sel_rf_wdata[0] =    i_lw;
assign sel_rf_wdata[1] =    i_jal;
assign rf_wen          =    i_add   |   i_addu  |   i_and   |   i_nor   |   i_or    |   i_sll   |   i_sllv  | i_slt     | i_sltu    |
                            i_sra   |   i_srav  |   i_srl   |   i_srlv  |   i_sub   |   i_subu  |   i_xor   | i_addi    | i_addiu   |
                            i_andi  |   i_lui   |   i_lw    |   i_ori   |   i_slti  |   i_sltiu |   i_xori  | i_jal   ;

assign sel_pc[0]       =    i_beq&zero   |   i_bne&~zero    |   i_jr;
assign sel_pc[1]       =    i_j     |   i_jal   |   i_jr;
assign aluc[3]         =    i_slt   |   i_sltu  |   i_sll   |   i_srl   |   i_sra   |   i_sllv  |   i_srlv  |   i_srav  |   i_lui   |   i_slti  |
                            i_sltiu;
assign aluc[2]         =    i_and   |   i_or    |   i_xor   |   i_nor   |   i_srl   |   i_sra   |   i_srlv  |   i_srav  |   i_andi  |   i_ori   |
                            i_xori  |   i_lui;
assign aluc[1]         =    i_sub   |   i_subu  |   i_xor   |   i_nor   |   i_slt   |   i_sltu  |   i_sra   |   i_srav  |   i_xori  |
                            i_lui   |   i_beq   |   i_bne   |   i_slti  |   i_sltiu;
assign aluc[0]         =    i_addu  |   i_subu  |   i_or    |   i_nor   |   i_sltu  |   i_addiu |   i_ori   |   i_lui   |   i_sltiu;
assign ra              =    5'b11111;
assign ext5isSigned    =    1'b0;
assign ext16isSigned   =    i_addi  |   i_addiu |   i_lw    |   i_sw    |   i_beq   |   i_bne   |   i_slti  |   i_sltiu;  
assign ext18isSigned   =    i_beq   |   i_bne;
assign dmem_we         =    i_sw;
endmodule
