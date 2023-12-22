// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : running_watch.v
// Create       : 2023-11-07 09:17
// *********************************************************************************
// Description  : 
//                running watch
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-11-07   huzhengxuan        1.0             Original
//==================================================================================

module stop_watch (
    input        clk    ,   // 10M 
    input        rst_n  ,   // async reset, negedge valid
    input        clear  ,   // clear, posedge valid
    input        start_stop,//
    output  [3:0]     hr_h   ,   // hour high
    output  [3:0]     hr_l   ,   // hour low
    output  [3:0]     min_h  ,   // min  high
    output  [3:0]     min_l  ,   // min  low
    output  [3:0]     sec_h  ,   // sec  high
    output  [3:0]     sec_l     // sec  low
);
    
reg state;
wire clk_gated, full_sec_l, full_sec_h, full_min_l, full_min_h, full_hr_l, full_hr_h;

// always@(posedge clk or negedge rst_n)begin
//     if((!rst_n) || clear)begin
//         state <= 1'b0;
//     end else begin
//         if(start_stop)begin
//             state <= ~state;
//         end
//     end
// end
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        state <= 1'b0;
    end else if(clear)begin
        state <= 1'b0;
    end else if(start_stop)begin
        state <= ~state;
    end
end

reg [7:0] count_sec;
reg full_sec;
always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        count_sec <= 1'b0;
        full_sec <= 1'b0;
    end else begin
    if(count_sec == 8'b0110_0010)begin
        count_sec <= 8'b0;
        full_sec <= 1'b1;
    end else begin
        count_sec <= count_sec + 8'b1;
        full_sec <= 1'b0;
    end
    end
end

assign clk_gated = full_sec & state;

counter #(9) u_counter_sec_l  ( .clk(clk_gated), .rst_n(rst_n), .clear(clear), .count(sec_l), .full(full_sec_l));
counter #(5) u_counter_sec_h ( .clk(full_sec_l), .rst_n(rst_n), .clear(clear), .count(sec_h), .full(full_sec_h));
counter #(9) u_counter_min_l ( .clk(full_sec_h), .rst_n(rst_n), .clear(clear), .count(min_l), .full(full_min_l));
counter #(5) u_counter_min_h ( .clk(full_min_l), .rst_n(rst_n), .clear(clear), .count(min_h), .full(full_min_h));
counter #(9) u_counter_hr_l ( .clk(full_min_h), .rst_n(rst_n), .clear(clear), .count(hr_l), .full(full_hr_l));
counter #(9) u_counter_hr_h ( .clk(full_hr_l), .rst_n(rst_n), .clear(clear), .count(hr_h), .full(full_hr_h));

endmodule


