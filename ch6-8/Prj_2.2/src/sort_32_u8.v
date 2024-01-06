// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : sort_32_u8.v
// Create       : 2024-01-01 21:19
// *********************************************************************************
// Description  : 
//                sort_32_u8
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2024-01-01   huzhengxuan        1.0             Original
//==================================================================================

module sort_32_u8 
#(parameter DATASIZE = 8,
   parameter NUM = 32)
(
    input                   clk,
    input                   rst_n,
    input                   vld_in,
    input   [DATASIZE-1:0] din_0,din_1,din_2,din_3,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,din_16,din_17,din_18,din_19,din_20,din_21,din_22,din_23,din_24,din_25,din_26,din_27,din_28,din_29,din_30,din_31,
    output                 vld_out,
    output  [DATASIZE-1:0] dout_0,dout_1,dout_2,dout_3,dout_4,dout_5,dout_6,dout_7,dout_8,dout_9,dout_10,dout_11,dout_12,dout_13,dout_14,dout_15,dout_16,dout_17,dout_18,dout_19,dout_20,dout_21,dout_22,dout_23,dout_24,dout_25,dout_26,dout_27,dout_28,dout_29,dout_30,dout_31
);


reg vld_flag;
reg [4:0] score_0, score_1,score_2,score_3,score_4,score_5,score_6,score_7,score_8,score_9,score_10,score_11,score_12,score_13,score_14,score_15,score_16,score_17,score_18,score_19,score_20,score_21,score_22,score_23,score_24,score_25,score_26,score_27,score_28,score_29,score_30,score_31;
reg vld_out_reg;
reg [DATASIZE-1:0] outValue[NUM-1:0];

sort_score u_score_0 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_0), .din_1(din_1), .din_2(din_2), .din_3(din_3), .din_4(din_4), .din_5(din_5), .din_6(din_6), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd0), .vld_out(vld_flag), .out_score(score_0));
sort_score u_score_1 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_1), .din_1(din_0), .din_2(din_2), .din_3(din_3), .din_4(din_4), .din_5(din_5), .din_6(din_6), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd1), .vld_out(), .out_score(score_1));  
sort_score u_score_2 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_2), .din_1(din_0), .din_2(din_1), .din_3(din_3), .din_4(din_4), .din_5(din_5), .din_6(din_6), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd2), .vld_out(), .out_score(score_2)); 
sort_score u_score_3 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_3), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_4), .din_5(din_5), .din_6(din_6), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd3), .vld_out(), .out_score(score_3)); 
sort_score u_score_4 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_4), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_5), .din_6(din_6), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd4), .vld_out(), .out_score(score_4));
sort_score u_score_5 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_5), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_6), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd5), .vld_out(), .out_score(score_5));            
sort_score u_score_6 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_6), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_7), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd6), .vld_out(), .out_score(score_6));         
sort_score u_score_7 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_7), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_8), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd7), .vld_out(), .out_score(score_7));     
sort_score u_score_8 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_8), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_9), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd8), .vld_out(), .out_score(score_8));
sort_score u_score_9 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_9), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_10), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd9), .vld_out(), .out_score(score_9));
sort_score u_score_10 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_10), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_11), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31),
                                        .input_index(5'd10), .vld_out(), .out_score(score_10));       
sort_score u_score_11 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_11), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_12), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd11), .vld_out(), .out_score(score_11));  
sort_score u_score_12 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_12), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_13), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd12), .vld_out(), .out_score(score_12));
sort_score u_score_13 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_13), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_14), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31),
                                        .input_index(5'd13), .vld_out(), .out_score(score_13));   
sort_score u_score_14 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_14), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_15), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd14), .vld_out(), .out_score(score_14));   
sort_score u_score_15 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_15), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_16), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd15), .vld_out(), .out_score(score_15));    
sort_score u_score_16 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_16), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_17), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd16), .vld_out(), .out_score(score_16));
sort_score u_score_17 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_17), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_18), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd17), .vld_out(), .out_score(score_17));    
sort_score u_score_18 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_18), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_19), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd18), .vld_out(), .out_score(score_18));   
sort_score u_score_19 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_19), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_20), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd19), .vld_out(), .out_score(score_19));               
sort_score u_score_20 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_20), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_21), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd20), .vld_out(), .out_score(score_20));   
sort_score u_score_21 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_21), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_22), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd21), .vld_out(), .out_score(score_21));    
sort_score u_score_22 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_22), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_23), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd22), .vld_out(), .out_score(score_22));    
sort_score u_score_23 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_23), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_24), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd23), .vld_out(), .out_score(score_23));     
sort_score u_score_24 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_24), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_25), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd24), .vld_out(), .out_score(score_24));    
sort_score u_score_25 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_25), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_26), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd25), .vld_out(), .out_score(score_25)); 
sort_score u_score_26 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_26), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_25), .din_27(din_27), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd26), .vld_out(), .out_score(score_26));    
sort_score u_score_27 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_27), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_25), .din_27(din_26), .din_28(din_28), .din_29(din_29), .din_30(din_30), .din_31(din_31), 
                                        .input_index(5'd27), .vld_out(), .out_score(score_27));    
sort_score u_score_28 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_28), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_25), .din_27(din_26), .din_28(din_27), .din_29(din_29), .din_30(din_30), .din_31(din_31),
                                        .input_index(5'd28), .vld_out(), .out_score(score_28));
sort_score u_score_29 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_29), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_25), .din_27(din_26), .din_28(din_27), .din_29(din_28), .din_30(din_30), .din_31(din_31),
                                        .input_index(5'd29), .vld_out(), .out_score(score_29));
sort_score u_score_30 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_30), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_25), .din_27(din_26), .din_28(din_27), .din_29(din_28), .din_30(din_29), .din_31(din_31),
                                        .input_index(5'd30), .vld_out(), .out_score(score_30));
sort_score u_score_31 (.clk(clk), .rst_n(rst_n), .vld_in(vld_in), .din_ref(din_31), .din_1(din_0), .din_2(din_1), .din_3(din_2), .din_4(din_3), .din_5(din_4), .din_6(din_5), .din_7(din_6), .din_8(din_7), .din_9(din_8), .din_10(din_9), 
                                        .din_11(din_10), .din_12(din_11), .din_13(din_12), .din_14(din_13), .din_15(din_14), .din_16(din_15), .din_17(din_16), .din_18(din_17), .din_19(din_18), .din_20(din_19), 
                                        .din_21(din_20), .din_22(din_21), .din_23(din_22), .din_24(din_23), .din_25(din_24), .din_26(din_25), .din_27(din_26), .din_28(din_27), .din_29(din_28), .din_30(din_29), .din_31(din_30),
                                        .input_index(5'd31), .vld_out(), .out_score(score_31));

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        vld_out_reg <= 1'b0;
        outValue[0] <= 'b0;
        outValue[1] <= 'b0;
        outValue[2] <= 'b0;
        outValue[3] <= 'b0;
        outValue[4] <= 'b0;
        outValue[5] <= 'b0;
        outValue[6] <= 'b0;
        outValue[7] <= 'b0;
        outValue[8] <= 'b0;
        outValue[9] <= 'b0;
        outValue[10] <= 'b0;
        outValue[11] <= 'b0;
        outValue[12] <= 'b0;
        outValue[13] <= 'b0;
        outValue[14] <= 'b0;
        outValue[15] <= 'b0;
        outValue[16] <= 'b0;
        outValue[17] <= 'b0;
        outValue[18] <= 'b0;
        outValue[19] <= 'b0;
        outValue[20] <= 'b0;
        outValue[21] <= 'b0;
        outValue[22] <= 'b0;
        outValue[23] <= 'b0;
        outValue[24] <= 'b0;
        outValue[25] <= 'b0;
        outValue[26] <= 'b0;
        outValue[27] <= 'b0;
        outValue[28] <= 'b0;
        outValue[29] <= 'b0;
        outValue[30] <= 'b0;
        outValue[31] <= 'b0;
    end else if(vld_flag)begin
        vld_out_reg <= 1'b1;
        outValue[score_0] <= din_0;
        outValue[score_1] <= din_1;
        outValue[score_2] <= din_2;
        outValue[score_3] <= din_3;
        outValue[score_4] <= din_4;
        outValue[score_5] <= din_5;
        outValue[score_6] <= din_6;
        outValue[score_7] <= din_7;
        outValue[score_8] <= din_8;
        outValue[score_9] <= din_9;
        outValue[score_10] <= din_10;
        outValue[score_11] <= din_11;
        outValue[score_12] <= din_12;
        outValue[score_13] <= din_13;
        outValue[score_14] <= din_14;
        outValue[score_15] <= din_15;
        outValue[score_16] <= din_16;
        outValue[score_17] <= din_17;
        outValue[score_18] <= din_18;
        outValue[score_19] <= din_19;
        outValue[score_20] <= din_20;
        outValue[score_21] <= din_21;
        outValue[score_22] <= din_22;
        outValue[score_23] <= din_23;
        outValue[score_24] <= din_24;
        outValue[score_25] <= din_25;
        outValue[score_26] <= din_26;
        outValue[score_27] <= din_27;
        outValue[score_28] <= din_28;
        outValue[score_29] <= din_29;
        outValue[score_30] <= din_30;
        outValue[score_31] <= din_31;
    end else begin
        vld_out_reg <= 1'b0;
    end
end

assign vld_out = vld_out_reg;
assign dout_0 =  {DATASIZE{vld_out}}&outValue[0];
assign dout_1 =  {DATASIZE{vld_out}}&outValue[1];
assign dout_2 =  {DATASIZE{vld_out}}&outValue[2];
assign dout_3 =  {DATASIZE{vld_out}} & outValue[3];
assign dout_4 =  {DATASIZE{vld_out}} & outValue[4];
assign dout_5 =  {DATASIZE{vld_out}} & outValue[5];
assign dout_6 =  {DATASIZE{vld_out}} & outValue[6];
assign dout_7 =  {DATASIZE{vld_out}} & outValue[7];
assign dout_8 =  {DATASIZE{vld_out}} & outValue[8];
assign dout_9 =  {DATASIZE{vld_out}} & outValue[9];
assign dout_10 = {DATASIZE{vld_out}} & outValue[10];
assign dout_11 = {DATASIZE{vld_out}} & outValue[11];
assign dout_12 = {DATASIZE{vld_out}} & outValue[12];
assign dout_13 = {DATASIZE{vld_out}} & outValue[13];
assign dout_14 = {DATASIZE{vld_out}} & outValue[14];
assign dout_15 = {DATASIZE{vld_out}} & outValue[15];
assign dout_16 = {DATASIZE{vld_out}} & outValue[16];
assign dout_17 = {DATASIZE{vld_out}} & outValue[17];
assign dout_18 = {DATASIZE{vld_out}} & outValue[18];
assign dout_19 = {DATASIZE{vld_out}} & outValue[19];
assign dout_20 = {DATASIZE{vld_out}} & outValue[20];
assign dout_21 = {DATASIZE{vld_out}} & outValue[21];
assign dout_22 = {DATASIZE{vld_out}} & outValue[22];
assign dout_23 = {DATASIZE{vld_out}} & outValue[23];
assign dout_24 = {DATASIZE{vld_out}} & outValue[24];
assign dout_25 = {DATASIZE{vld_out}} & outValue[25];
assign dout_26 = {DATASIZE{vld_out}} & outValue[26];
assign dout_27 = {DATASIZE{vld_out}} & outValue[27];
assign dout_28 = {DATASIZE{vld_out}} & outValue[28];
assign dout_29 = {DATASIZE{vld_out}} & outValue[29];
assign dout_30 = {DATASIZE{vld_out}} & outValue[30];
assign dout_31 = {DATASIZE{vld_out}} & outValue[31];


endmodule


