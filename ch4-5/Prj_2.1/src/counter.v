// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : running_watch.v
// Create       : 2023-12-02 23:01
// *********************************************************************************
// Description  : 
//                running watch
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-12-02   huzhengxuan        1.0             Original
//==================================================================================

module counter 
# (parameter COUNT = 9
    )
(
    input        clk    ,   // 10M 
    input        rst_n  ,   // async reset, negedge valid
    input        clear  ,   // clear, posedge valid
    output  [3:0]   count   ,  // time high
    output  full
);

reg [3:0] count_reg;
reg full_reg;

// always@(posedge clk or negedge rst_n)begin
//     if(!rst_n || clear)begin
//         count_reg <= 4'b0;
//         full_reg <= 1'b0;
//     end else begin
//         if(count_reg == COUNT) begin
//             count_reg <= 4'b0;
//             full_reg <= 1'b1;
//         end else begin
//             count_reg <= count_reg + 4'b1;
//             full_reg <= 1'b0;
//         end 
//     end
// end
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        count_reg <= 4'b0;
        full_reg <= 1'b0;
    end else if(clear)begin
        count_reg <= 4'b0;
        full_reg <= 1'b0;
    end else begin
        if(count_reg == COUNT) begin
            count_reg <= 4'b0;
            full_reg <= 1'b1;
        end else begin
            count_reg <= count_reg + 4'b1;
            full_reg <= 1'b0;
        end 
    end
end

assign count = count_reg;
assign full = full_reg;

endmodule


