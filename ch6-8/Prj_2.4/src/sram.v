// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : add_tc_16_16.v
// Create       : 2023-12-05 16:56
// *********************************************************************************
// Description  : 
//                add_tc_16_16
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-12-05   huzhengxuan        1.0             Original
//==================================================================================

module sram #(
    parameter ADDR_DEPTH = 4,
    parameter DATA_WIDTH = 8,
    parameter DATA_DEPTH = 16
)(
    input clk,
    input rst_n,
    input cs_n,
    input w_en,
    input [ADDR_DEPTH-1:0] addr,
    input [DATA_WIDTH-1:0] din,
    output reg [DATA_WIDTH-1:0] dout
);
    
    reg [DATA_WIDTH-1:0] mem [DATA_DEPTH-1:0];
    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0) begin
            for (i = 0; i < DATA_DEPTH; i=i+1) begin
                mem[i] <= (1'b0 << (DATA_WIDTH-1));
            end
        end
        else if (w_en == 1'b1 && cs_n == 1'b0) begin
            mem[addr] <= din;
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (rst_n == 1'b0) begin
            dout <= (1'b0 << (DATA_WIDTH-1));
        end
        else if (cs_n == 1'b0) begin
            dout <= mem[addr];
        end
    end

endmodule
