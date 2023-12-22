// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : seq_detector.v
// Create       : 2023-11-06 00:26
// *********************************************************************************
// Description  : 
//                sequential detector
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-11-06   huzhengxuan        1.0             Original
//==================================================================================

module seq_detector (
    input        clk    , 
    input        rst_n  ,   //async reset
    input        din_vld,
    input        din    ,
    output       result
);
    
reg [5:0] seq_reg;
reg result_reg;

always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        seq_reg <= 6'b0;
        result_reg <= 1'b0;
    end else begin
        if(din_vld)begin
            seq_reg <= {seq_reg[4:0],din};
        end
    end
end

assign result = (seq_reg == 6'b111000) | (seq_reg == 6'b101110);


endmodule


