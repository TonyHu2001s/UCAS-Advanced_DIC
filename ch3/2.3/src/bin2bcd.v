// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : bin2bcd.v
// Create       : 2023-11-06 23:53
// *********************************************************************************
// Description  : 
//                Binary to BCD
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-11-06   huzhengxuan        1.0             Original
//==================================================================================

module bin2bcd (
    input    [7:0]    bin_in    , 
    output   [9:0]    bcd_out
);
    
reg [17:0] temp_reg;

integer i;

always@(bin_in)begin
    temp_reg[7:0] = bin_in;
    temp_reg[17:8] = 10'b0;
    for(i = 0; i<8; i = i+1)begin
        if(temp_reg[11:8] > 4'd4)begin
            temp_reg[11:8] = temp_reg[11:8] + 4'b0011;
        end else begin
            temp_reg[11:8] = temp_reg[11:8];
        end
        if(temp_reg[15:12] > 4'd4)begin
            temp_reg[15:12] = temp_reg[15:12] + 4'b0011;
        end else begin
            temp_reg[15:12] = temp_reg[15:12];
        end
        temp_reg = temp_reg << 1;
    end    
end

assign bcd_out = temp_reg[17:8];

endmodule


