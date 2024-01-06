// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : sqrt.v
// Create       : 2023-12-28 23:40
// *********************************************************************************
// Description  : 
//                floor(sqrt(x))
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-12-28   huzhengxuan        1.0             Original
//==================================================================================

module sqrt (
    input               clk     ,   // 10M 
    input               rst_n  ,   // async reset, negedge valid
    input               vld_in ,
    input   [31:0]   x        ,
    output             vld_out,
    output [15:0]   y
);

parameter d_width = 32;
parameter q_width = 16;
// parameter cnt_width = 4;

reg [q_width-1:0]  y_reg    [q_width:0];
reg [2*d_width-1:0]  x_cpl[q_width:0];
reg vld_flag    [q_width:0];

// reg [cnt_width:0]  count;


always@(posedge clk or negedge rst_n)begin
    if(!rst_n)begin
        y_reg[0] <= 'b0;
        x_cpl[0]  <= 'b0;
        vld_flag[0] <= 1'b0;
    end else if(vld_in)begin
        x_cpl[0] <= {{q_width{1'b0}},x};
        vld_flag[0] <= 1'b1;
    end else begin
        vld_flag[0] <=1'b0;
    end
end

generate
    genvar i;
    for(i=1;i<=q_width;i=i+1)begin: sqrt_ger
    always @(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            x_cpl[i] <= 'b0;
            y_reg[i] <= 'b0;
            vld_flag[i] <= 1'b0;
        end else if(vld_flag[i-1])begin
            if(x_cpl[i-1][2*d_width-3:d_width-2] == 'b0)begin
                x_cpl[i] <= {x_cpl[i-1][2*d_width-3:0],2'b0};
                y_reg[i] <= {y_reg[i-1][q_width-2:0],1'b0};
                vld_flag[i] <= vld_flag[i-1];
            end else if(x_cpl[i-1][2*d_width-3:d_width-2] >= {{(q_width-2){1'b0}},y_reg[i-1],1'b0,1'b1})begin
                x_cpl[i][2*d_width-1:d_width] <= x_cpl[i-1][2*d_width-3:d_width-2] - {{(q_width-2){1'b0}},y_reg[i-1],1'b0,1'b1};
                x_cpl[i][d_width-1:0] <= {x_cpl[i-1][d_width-3:0],2'b0};
                y_reg[i] <= {y_reg[i-1][q_width-2:0],1'b1};
                vld_flag[i] <= vld_flag[i-1];
            end else begin
                x_cpl[i] <= {x_cpl[i-1][2*d_width-3:0],2'b0};
                y_reg[i] <= {y_reg[i-1][q_width-2:0],1'b0};
                vld_flag[i] <= vld_flag[i-1];
            end
        end else begin 
            vld_flag[i] <= vld_flag[i-1];
        end
    end
    end
endgenerate

// always@(posedge clk or negedge rst_n)begin
//     if(!rst_n)begin
//         y_reg  <= 'b0;
//         x_cpl  <= {{q_width{1'b0}},x};
//         count <= 'b0;
//     end else if(vld_in && !count[cnt_width])begin
//         if(x_cpl[2*d_width-3:d_width-2] == 'b0)begin
//             x_cpl <= {x_cpl[2*d_width-3:0],2'b0};
//             y_reg <= {y_reg[q_width-2:0],1'b0};
//             count <= count + 1'b1;
//         end else if(x_cpl[2*d_width-3:d_width-2] >= {{(q_width-2){1'b0}},y_reg,1'b0,1'b1})begin
//             x_cpl[2*d_width-1:d_width] <= x_cpl[2*d_width-3:d_width-2] - {{(q_width-2){1'b0}},y_reg,1'b0,1'b1};
//             x_cpl[d_width-1:0] <= {x_cpl[d_width-3:0],2'b0};
//             y_reg <= {y_reg[q_width-2:0],1'b1};
//             count <= count + 1'b1;
//         end else begin
//             x_cpl <= {x_cpl[2*d_width-3:0],2'b0};
//             y_reg <= {y_reg[q_width-2:0],1'b0};
//             count <= count + 1'b1;
//         end
//     end   
// end

assign vld_out = vld_flag[q_width];
assign y = {{q_width{vld_out}}} & y_reg[q_width];


endmodule


