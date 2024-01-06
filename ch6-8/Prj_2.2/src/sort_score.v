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

module sort_score 
#(parameter DATASIZE = 8)
(
    input                   clk,
    input                   rst_n,
    input                   vld_in,
    input   [DATASIZE-1:0] din_ref,din_1,din_2,din_3,din_4,din_5,din_6,din_7,din_8,din_9,din_10,din_11,din_12,din_13,din_14,din_15,din_16,din_17,din_18,din_19,din_20,din_21,din_22,din_23,din_24,din_25,din_26,din_27,din_28,din_29,din_30,din_31,
    input   [4:0]   input_index, 
    output                 vld_out,
    output  [4:0] out_score
);

reg score_0,score_1,score_2,score_3,score_4,score_5,score_6,score_7,score_8,score_9,score_10,score_11,score_12,score_13,score_14,score_15,score_16,score_17,score_18,score_19,score_20,score_21,score_22,score_23,score_24,score_25,score_26,score_27,score_28,score_29,score_30,score_31;
reg vld_flag, vld_out_reg;
reg [4:0]out_score_reg;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        vld_flag <= 1'b0;
        score_0 <=  1'b0;
        score_1 <=  1'b0;
        score_2 <=  1'b0;
        score_3 <=  1'b0;
        score_4 <=  1'b0;
        score_5 <=  1'b0;
        score_6 <=  1'b0;
        score_7 <=  1'b0;
        score_8 <=  1'b0;
        score_9 <=  1'b0;
        score_10 <= 1'b0;
        score_11 <= 1'b0;
        score_12 <= 1'b0;
        score_13 <= 1'b0;
        score_14 <= 1'b0;
        score_15 <= 1'b0;
        score_16 <= 1'b0;
        score_17 <= 1'b0;
        score_18 <= 1'b0;
        score_19 <= 1'b0;
        score_20 <= 1'b0;
        score_21 <= 1'b0;
        score_22 <= 1'b0;
        score_23 <= 1'b0;
        score_24 <= 1'b0;
        score_25 <= 1'b0;
        score_26 <= 1'b0;
        score_27 <= 1'b0;
        score_28 <= 1'b0;
        score_29 <= 1'b0;
        score_30 <= 1'b0;
        score_31 <= 1'b0;
    end else if(vld_in)begin
        vld_flag <= 1'b1;
        if((din_ref > din_1) || ((din_ref == din_1)&&(input_index >= 5'd1)))begin
            score_1 <= 1'b1;
        end else begin
            score_1 <= 1'b0;
        end
        if((din_ref > din_2) || ((din_ref == din_2)&&(input_index >= 5'd2)))begin
            score_2 <= 1'b1;
        end else begin
            score_2 <= 1'b0;
        end
        if((din_ref > din_3) || ((din_ref == din_3)&&(input_index >= 5'd3)))begin
            score_3 <= 1'b1;
        end else begin
            score_3 <= 1'b0;
        end
        if((din_ref > din_4) || ((din_ref == din_4)&&(input_index >= 5'd4)))begin
            score_4 <= 1'b1;
        end else begin
            score_4 <= 1'b0;
        end
        if((din_ref > din_5) || ((din_ref == din_5)&&(input_index >= 5'd5)))begin
            score_5 <= 1'b1;
        end else begin
            score_5 <= 1'b0;
        end
        if((din_ref > din_6) || ((din_ref == din_6)&&(input_index >= 5'd6)))begin
            score_6 <= 1'b1;
        end else begin
            score_6 <= 1'b0;
        end
        if((din_ref > din_7) || ((din_ref == din_7)&&(input_index >= 5'd7)))begin
            score_7 <= 1'b1;
        end else begin
            score_7 <= 1'b0;
        end
        if((din_ref > din_8) || ((din_ref == din_8)&&(input_index >= 5'd8)))begin
            score_8 <= 1'b1;
        end else begin
            score_8 <= 1'b0;
        end
        if((din_ref > din_9) || ((din_ref == din_9)&&(input_index >= 5'd9)))begin
            score_9 <= 1'b1;
        end else begin
            score_9 <= 1'b0;
        end
        if((din_ref > din_10) || ((din_ref == din_10)&&(input_index >= 5'd10)))begin
            score_10 <= 1'b1;
        end else begin
            score_10 <= 1'b0;
        end
        if((din_ref > din_11) || ((din_ref == din_11)&&(input_index >= 5'd11)))begin
            score_11 <= 1'b1;
        end else begin
            score_11 <= 1'b0;
        end
        if((din_ref > din_12) || ((din_ref == din_12)&&(input_index >= 5'd12)))begin
            score_12 <= 1'b1;
        end else begin
            score_12 <= 1'b0;
        end
        if((din_ref > din_13) || ((din_ref == din_13)&&(input_index >= 5'd13)))begin
            score_13 <= 1'b1;
        end else begin
            score_13 <= 1'b0;
        end
        if((din_ref > din_14) || ((din_ref == din_14)&&(input_index >= 5'd14)))begin
            score_14 <= 1'b1;
        end else begin
            score_14 <= 1'b0;
        end
        if((din_ref > din_15) || ((din_ref == din_15)&&(input_index >= 5'd15)))begin
            score_15 <= 1'b1;
        end else begin
            score_15 <= 1'b0;
        end
        if((din_ref > din_16) || ((din_ref == din_16)&&(input_index >= 5'd16)))begin
            score_16 <= 1'b1;
        end else begin
            score_16 <= 1'b0;
        end
        if((din_ref > din_17) || ((din_ref == din_17)&&(input_index >= 5'd17)))begin
            score_17 <= 1'b1;
        end else begin
            score_17 <= 1'b0;
        end
        if((din_ref > din_18) || ((din_ref == din_18)&&(input_index >= 5'd18)))begin
            score_18 <= 1'b1;
        end else begin
            score_18 <= 1'b0;
        end
        if((din_ref > din_19) || ((din_ref == din_19)&&(input_index >= 5'd19)))begin
            score_19 <= 1'b1;
        end else begin
            score_19 <= 1'b0;
        end
        if((din_ref > din_20) || ((din_ref == din_20)&&(input_index >= 5'd20)))begin
            score_20 <= 1'b1;
        end else begin
            score_20 <= 1'b0;
        end
        if((din_ref > din_21) || ((din_ref == din_21)&&(input_index >= 5'd21)))begin
            score_21 <= 1'b1;
        end else begin
            score_21 <= 1'b0;
        end
        if((din_ref > din_22) || ((din_ref == din_22)&&(input_index >= 5'd22)))begin
            score_22 <= 1'b1;
        end else begin
            score_22 <= 1'b0;
        end
        if((din_ref > din_23) || ((din_ref == din_23)&&(input_index >= 5'd23)))begin
            score_23 <= 1'b1;
        end else begin
            score_23 <= 1'b0;
        end
        if((din_ref > din_24) || ((din_ref == din_24)&&(input_index >= 5'd24)))begin
            score_24 <= 1'b1;
        end else begin
            score_24 <= 1'b0;
        end
        if((din_ref > din_25) || ((din_ref == din_25)&&(input_index >= 5'd25)))begin
            score_25 <= 1'b1;
        end else begin
            score_25 <= 1'b0;
        end
        if((din_ref > din_26) || ((din_ref == din_26)&&(input_index >= 5'd26)))begin
            score_26 <= 1'b1;
        end else begin
            score_26 <= 1'b0;
        end
        if((din_ref > din_27) || ((din_ref == din_27)&&(input_index >= 5'd27)))begin
            score_27 <= 1'b1;
        end else begin
            score_27 <= 1'b0;
        end
        if((din_ref > din_28) || ((din_ref == din_28)&&(input_index >= 5'd28)))begin
            score_28 <= 1'b1;
        end else begin
            score_28 <= 1'b0;
        end
        if((din_ref > din_29) || ((din_ref == din_29)&&(input_index >= 5'd29)))begin
            score_29 <= 1'b1;
        end else begin
            score_29 <= 1'b0;
        end
        if((din_ref > din_30) || ((din_ref == din_30)&&(input_index >= 5'd30)))begin
            score_30 <= 1'b1;
        end else begin
            score_30 <= 1'b0;
        end
        if((din_ref > din_31) || ((din_ref == din_31)&&(input_index >= 5'd31)))begin
            score_31 <= 1'b1;
        end else begin
            score_31 <= 1'b0;
        end
    end else begin
        vld_flag <= 1'b0;
    end
end

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        vld_out_reg <= 1'b0;
        out_score_reg <= 5'b0;
    end else if(vld_flag)begin
        vld_out_reg <= 1'b1;
        out_score_reg <= score_1 + score_2 + score_3 +score_4 + score_5 + score_6 + score_7 + score_8 +score_9 + score_10 +  score_11 + score_12 + score_13 +score_14 + score_15 + score_16 + score_17 + score_18 +score_19 + score_20 + score_21 + score_22 + score_23 +score_24 + score_25 + score_26 + score_27 + score_28 +score_29 + score_30 + score_31;  
    end else begin
        vld_out_reg <= 1'b0;
    end
end

assign vld_out = vld_out_reg;
assign out_score = {5{vld_out}} & out_score_reg;


endmodule


