// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.2 (win64) Build 1577090 Thu Jun  2 16:32:40 MDT 2016
// Date        : Thu Apr 25 01:05:01 2019
// Host        : DESKTOP-KQ0V594 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               D:/vivado_code/fpga/cpu31_190424/cpu31_190424.sim/sim_1/impl/func/sccomp_dataflow_func_impl.v
// Design      : top_cpu_7seg
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clk_wiz_1
   (clk_in1,
    clk_out1,
    reset);
  input clk_in1;
  output clk_out1;
  input reset;

  (* IBUF_LOW_PWR *) wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_1_clk_wiz_1_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_1_clk_wiz" *) 
module clk_wiz_1_clk_wiz_1_clk_wiz
   (clk_in1,
    clk_out1,
    reset);
  input clk_in1;
  output clk_out1;
  input reset;

  wire clk_in1;
  wire clk_out1;
  wire clk_out1_clk_wiz_1;
  wire clkfbout_buf_clk_wiz_1;
  wire clkfbout_clk_wiz_1;
  wire reset;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_LOCKED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_1),
        .O(clkfbout_buf_clk_wiz_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_1),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(9.125000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(36.500000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_1),
        .CLKFBOUT(clkfbout_clk_wiz_1),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_in1),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clk_out1_clk_wiz_1),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_mmcm_adv_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_mmcm_adv_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(reset));
endmodule

module seg7x16
   (Q,
    o_sel_OBUF,
    clk_out1,
    AS,
    D);
  output [6:0]Q;
  output [7:0]o_sel_OBUF;
  input clk_out1;
  input [0:0]AS;
  input [31:0]D;

  wire \<const1> ;
  wire [0:0]AS;
  wire [6:0]\^Q ;
  wire clk_out1;
  wire \cnt[0]_i_5__0_n_1 ;
  wire \cnt_reg[0]_i_1__0_n_1 ;
  wire \cnt_reg[0]_i_1__0_n_5 ;
  wire \cnt_reg[0]_i_1__0_n_6 ;
  wire \cnt_reg[0]_i_1__0_n_7 ;
  wire \cnt_reg[0]_i_1__0_n_8 ;
  wire \cnt_reg[12]_i_1__0_n_6 ;
  wire \cnt_reg[12]_i_1__0_n_7 ;
  wire \cnt_reg[12]_i_1__0_n_8 ;
  wire \cnt_reg[4]_i_1__0_n_1 ;
  wire \cnt_reg[4]_i_1__0_n_5 ;
  wire \cnt_reg[4]_i_1__0_n_6 ;
  wire \cnt_reg[4]_i_1__0_n_7 ;
  wire \cnt_reg[4]_i_1__0_n_8 ;
  wire \cnt_reg[8]_i_1__0_n_1 ;
  wire \cnt_reg[8]_i_1__0_n_5 ;
  wire \cnt_reg[8]_i_1__0_n_6 ;
  wire \cnt_reg[8]_i_1__0_n_7 ;
  wire \cnt_reg[8]_i_1__0_n_8 ;
  wire \cnt_reg_n_1_[0] ;
  wire \cnt_reg_n_1_[10] ;
  wire \cnt_reg_n_1_[11] ;
  wire \cnt_reg_n_1_[12] ;
  wire \cnt_reg_n_1_[13] ;
  wire \cnt_reg_n_1_[1] ;
  wire \cnt_reg_n_1_[2] ;
  wire \cnt_reg_n_1_[3] ;
  wire \cnt_reg_n_1_[4] ;
  wire \cnt_reg_n_1_[5] ;
  wire \cnt_reg_n_1_[6] ;
  wire \cnt_reg_n_1_[7] ;
  wire \cnt_reg_n_1_[8] ;
  wire \cnt_reg_n_1_[9] ;
  wire [7:0]o_sel_OBUF;
  wire [1:0]p_0_in;
  wire [2:0]seg7_addr;
  wire \seg7_addr[2]_i_1_n_1 ;
  wire seg7_clk;
  wire [2:0]\NLW_cnt_reg[0]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_cnt_reg[8]_i_1__0_CO_UNCONNECTED ;

  assign Q[6] = \<const1> ;
  assign Q[5:0] = \^Q [5:0];
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5__0 
       (.I0(\cnt_reg_n_1_[0] ),
        .O(\cnt[0]_i_5__0_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[0]_i_1__0_n_8 ),
        .Q(\cnt_reg_n_1_[0] ));
  CARRY4 \cnt_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_1__0_n_1 ,\NLW_cnt_reg[0]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_1__0_n_5 ,\cnt_reg[0]_i_1__0_n_6 ,\cnt_reg[0]_i_1__0_n_7 ,\cnt_reg[0]_i_1__0_n_8 }),
        .S({\cnt_reg_n_1_[3] ,\cnt_reg_n_1_[2] ,\cnt_reg_n_1_[1] ,\cnt[0]_i_5__0_n_1 }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[8]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_1_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[8]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_1_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[12]_i_1__0_n_8 ),
        .Q(\cnt_reg_n_1_[12] ));
  CARRY4 \cnt_reg[12]_i_1__0 
       (.CI(\cnt_reg[8]_i_1__0_n_1 ),
        .CO(\NLW_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[12]_i_1__0_O_UNCONNECTED [3],\cnt_reg[12]_i_1__0_n_6 ,\cnt_reg[12]_i_1__0_n_7 ,\cnt_reg[12]_i_1__0_n_8 }),
        .S({1'b0,seg7_clk,\cnt_reg_n_1_[13] ,\cnt_reg_n_1_[12] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[12]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_1_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[12]_i_1__0_n_6 ),
        .Q(seg7_clk));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[0]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_1_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[0]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_1_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[0]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_1_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[4]_i_1__0_n_8 ),
        .Q(\cnt_reg_n_1_[4] ));
  CARRY4 \cnt_reg[4]_i_1__0 
       (.CI(\cnt_reg[0]_i_1__0_n_1 ),
        .CO({\cnt_reg[4]_i_1__0_n_1 ,\NLW_cnt_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1__0_n_5 ,\cnt_reg[4]_i_1__0_n_6 ,\cnt_reg[4]_i_1__0_n_7 ,\cnt_reg[4]_i_1__0_n_8 }),
        .S({\cnt_reg_n_1_[7] ,\cnt_reg_n_1_[6] ,\cnt_reg_n_1_[5] ,\cnt_reg_n_1_[4] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[4]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_1_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[4]_i_1__0_n_6 ),
        .Q(\cnt_reg_n_1_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[4]_i_1__0_n_5 ),
        .Q(\cnt_reg_n_1_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[8]_i_1__0_n_8 ),
        .Q(\cnt_reg_n_1_[8] ));
  CARRY4 \cnt_reg[8]_i_1__0 
       (.CI(\cnt_reg[4]_i_1__0_n_1 ),
        .CO({\cnt_reg[8]_i_1__0_n_1 ,\NLW_cnt_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1__0_n_5 ,\cnt_reg[8]_i_1__0_n_6 ,\cnt_reg[8]_i_1__0_n_7 ,\cnt_reg[8]_i_1__0_n_8 }),
        .S({\cnt_reg_n_1_[11] ,\cnt_reg_n_1_[10] ,\cnt_reg_n_1_[9] ,\cnt_reg_n_1_[8] }));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk_out1),
        .CE(1'b1),
        .CLR(AS),
        .D(\cnt_reg[8]_i_1__0_n_7 ),
        .Q(\cnt_reg_n_1_[9] ));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[0] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(\^Q [0]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[1] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(\^Q [1]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[2] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(\^Q [2]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[3] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(\^Q [3]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[4] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(\^Q [4]));
  FDPE #(
    .INIT(1'b1)) 
    \o_seg_r_reg[5] 
       (.C(clk_out1),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(\^Q [5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \o_sel_OBUF[0]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[2]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[1]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[2]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[2]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \o_sel_OBUF[3]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \o_sel_OBUF[4]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(o_sel_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \o_sel_OBUF[5]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \o_sel_OBUF[6]_inst_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[2]),
        .I2(seg7_addr[0]),
        .O(o_sel_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \o_sel_OBUF[7]_inst_i_1 
       (.I0(seg7_addr[2]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[1]),
        .O(o_sel_OBUF[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \seg7_addr[0]_i_1 
       (.I0(seg7_addr[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \seg7_addr[1]_i_1 
       (.I0(seg7_addr[0]),
        .I1(seg7_addr[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \seg7_addr[2]_i_1 
       (.I0(seg7_addr[1]),
        .I1(seg7_addr[0]),
        .I2(seg7_addr[2]),
        .O(\seg7_addr[2]_i_1_n_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[0] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[0]),
        .Q(seg7_addr[0]));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[1] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[1]),
        .Q(seg7_addr[1]));
  FDCE #(
    .INIT(1'b0)) 
    \seg7_addr_reg[2] 
       (.C(seg7_clk),
        .CE(1'b1),
        .CLR(AS),
        .D(\seg7_addr[2]_i_1_n_1 ),
        .Q(seg7_addr[2]));
endmodule

(* ECO_CHECKSUM = "6e50f376" *) 
(* NotValidForBitStream *)
module top_cpu_7seg
   (clk,
    rst,
    o_seg,
    o_sel);
  input clk;
  input rst;
  output [7:0]o_seg;
  output [7:0]o_sel;

  wire clk;
  wire clk_25MHz;
  wire clk_IBUF;
  wire [7:0]o_seg;
  wire [6:0]o_seg_OBUF;
  wire [7:0]o_sel;
  wire [7:0]o_sel_OBUF;
  wire rst;
  wire rst_IBUF;
  wire [31:0]NLW_seg7x16_0_D_UNCONNECTED;

  clk_wiz_1 clk100_25
       (.clk_in1(clk_IBUF),
        .clk_out1(clk_25MHz),
        .reset(rst_IBUF));
  (* OPT_INSERTED *) 
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \o_seg_OBUF[0]_inst 
       (.I(o_seg_OBUF[0]),
        .O(o_seg[0]));
  OBUF \o_seg_OBUF[1]_inst 
       (.I(o_seg_OBUF[1]),
        .O(o_seg[1]));
  OBUF \o_seg_OBUF[2]_inst 
       (.I(o_seg_OBUF[2]),
        .O(o_seg[2]));
  OBUF \o_seg_OBUF[3]_inst 
       (.I(o_seg_OBUF[3]),
        .O(o_seg[3]));
  OBUF \o_seg_OBUF[4]_inst 
       (.I(o_seg_OBUF[4]),
        .O(o_seg[4]));
  OBUF \o_seg_OBUF[5]_inst 
       (.I(o_seg_OBUF[5]),
        .O(o_seg[5]));
  OBUF \o_seg_OBUF[6]_inst 
       (.I(o_seg_OBUF[6]),
        .O(o_seg[6]));
  OBUF \o_seg_OBUF[7]_inst 
       (.I(1'b1),
        .O(o_seg[7]));
  OBUF \o_sel_OBUF[0]_inst 
       (.I(o_sel_OBUF[0]),
        .O(o_sel[0]));
  OBUF \o_sel_OBUF[1]_inst 
       (.I(o_sel_OBUF[1]),
        .O(o_sel[1]));
  OBUF \o_sel_OBUF[2]_inst 
       (.I(o_sel_OBUF[2]),
        .O(o_sel[2]));
  OBUF \o_sel_OBUF[3]_inst 
       (.I(o_sel_OBUF[3]),
        .O(o_sel[3]));
  OBUF \o_sel_OBUF[4]_inst 
       (.I(o_sel_OBUF[4]),
        .O(o_sel[4]));
  OBUF \o_sel_OBUF[5]_inst 
       (.I(o_sel_OBUF[5]),
        .O(o_sel[5]));
  OBUF \o_sel_OBUF[6]_inst 
       (.I(o_sel_OBUF[6]),
        .O(o_sel[6]));
  OBUF \o_sel_OBUF[7]_inst 
       (.I(o_sel_OBUF[7]),
        .O(o_sel[7]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  seg7x16 seg7x16_0
       (.AS(rst_IBUF),
        .D(NLW_seg7x16_0_D_UNCONNECTED[31:0]),
        .Q(o_seg_OBUF),
        .clk_out1(clk_25MHz),
        .o_sel_OBUF(o_sel_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
