`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/18 00:23:36
// Design Name: 
// Module Name: cpu
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


module cpu(
    input           clk,
    input           rst,
    input   [31:0]  iData,      //来自内存的数据
    output  [31:0]  oData,      //送往内存的数据
    output  [31:0]  oAddr,      //写入内存的地址
    output          mem_we,     //写内存的使能
    output  [31:0]  pc,         //
    output  [31:0]  inst        //imem寄存器的指令
    );
//imem_devider out
wire [5:0] op = inst[31:26];
wire [4:0] rs = inst[25:21]; 
wire [4:0] rt = inst[20:16];
wire [4:0] rd = inst[15:11];
wire [5:0] func = inst[5:0];
wire [25:0] index = inst[25:0];
wire [31:0] ext18out;
wire [31:0] ext16out;
wire [31:0] ext5out;

//cu out
wire [1:0] Csel_rf_waddr;
wire [1:0] Csel_rf_wdata;
wire Crf_we;
wire Csel_alua;
wire Csel_alub;
wire [1:0] Csel_pc;
wire [3:0] Caluc;
wire [4:0] Cra;
wire CisSigned5;
wire CisSigned16;
wire CisSigned18;
wire Cmem_we;

//regfile out
wire [31:0] rdata1;
wire [31:0] rdata2;

//alu out
wire [31:0] alu_r;
wire alu_zero;
wire alu_carry;
wire alu_negative;
wire alu_overflow;

//pc out
wire [31:0] pc_pc;
wire [31:0] pc_npc;

//imem out
wire [31:0] imem_inst;

//add out
wire [31:0] add_r;


imem_devide imem_devide_0(
    CisSigned5, CisSigned16, CisSigned18, imem_inst,
    op,rs,rt,rd,func,index,ext5out,ext16out,ext18out
    );
add add_0(pc_npc, ext18out, add_r);
pc_hier pc_hier_0(.clk(clk), .rst(rst), .en(1'b1),
                 .iData_b(add_r), .iData_jr(rdata1), .iData_j(index),
                 .sel_pc(Csel_pc),
                 .pc_out(pc_pc),
                 .npc_out(pc_npc)
                 );
cu cu_0(op, func, alu_zero, 
        Csel_rf_waddr, Csel_rf_wdata,
        Crf_we, Csel_alua, Csel_alub, Csel_pc, Caluc, Cra,
        CisSigned5, CisSigned16, CisSigned18,
        Cmem_we);

wire [4:0] rfwaddr;
wire [31:0] rfwdata;
MUX4#(5) MUX4_0(.iData0(rd),.iData1(rt),.iData2(Cra),.iData3(),.sel(Csel_rf_waddr),.oData(rfwaddr));
MUX4#(32) MUX4_1(.iData0(alu_r),.iData1(iData),.iData2(pc_npc),.iData3(),.sel(Csel_rf_wdata),.oData(rfwdata));

Regfiles cpu_ref(clk,rst,Crf_we,
                        rs,rt,rfwaddr,rfwdata,
                        rdata1,rdata2);

wire [31:0] alu_a;
wire [31:0] alu_b;
MUX#(32) MUX_0(rdata1,ext5out,Csel_alua,alu_a);
MUX#(32) MUX_1(rdata2,ext16out,Csel_alub,alu_b);
ALU ALU_0(alu_a, alu_b, Caluc,
        alu_r,alu_zero,alu_carry,alu_negative,alu_overflow);

dist_mem_gen_0 dist_mem_gen_0_0(.a(pc_pc[12:2]),.spo(imem_inst)); 
//iram imem(pc_pc[11:2],imem_inst);
assign oData = rdata2;
assign oAddr = alu_r;
assign mem_we = Cmem_we;
assign pc = pc_pc;
assign inst = imem_inst;

endmodule

module imem_devide(
    input isSigned5,
    input isSigned16,
    input isSigned18,
    input [31:0] inst,
    output [5:0] op,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [5:0] func,
    output [25:0] index,
    output [31:0] ext5out,
    output [31:0] ext16out,
    output [31:0] ext18out
);
wire [15:0] imm;
wire [4:0] shamt;

assign  op      = inst[31:26];
assign  rs      = inst[25:21];
assign  rt      = inst[20:16];
assign  rd      = inst[15:11];
assign  shamt   = inst[10:6];
assign  func    = inst[5:0];
assign  imm     = inst[15:0];
assign  index   = inst[25:0];

extend#(16,32) ext16(imm,isSigned16,ext16out);
extend#(5,32) ext5(shamt,isSigned5,ext5out);
extend#(18,32) ext18({imm[15:0],2'b0},isSigned18,ext18out);

endmodule
