// *********************************************************************************
// Author       : huzhengxuan
// E-mail       : huzhengxuan23s@ict.ac.cn
// File         : booth.v
// Create       : 2023-12-09 16:55
// *********************************************************************************
// Description  : 
//                booth
//==================================================================================
// Revision History:
// Date         By              Revision        Change Description
//----------------------------------------------------------------------------------
// 2023-12-09   huzhengxuan        1.0             Original
//==================================================================================

module booth_code
(
    input   [15:0]       a,
    input   [2:0]         b_code,
    output [31:0]       prod_a,
    output                 c0
);

wire neg, one, two, zero;
// wire [31:0] prod_a_pre;

assign neg = (b_code == 3'b100) | (b_code == 3'b101) | (b_code == 3'b110);
assign one = (b_code == 3'b001) | (b_code == 3'b010) | (b_code == 3'b101) | (b_code == 3'b110);
assign two = (b_code == 3'b011) | (b_code == 3'b100) ;
assign zero = (b_code == 3'b000) | (b_code == 3'b111);
// assign prod_a_pre = ({32{zero}} & 32'b0) | ({32{one}} & {{16{a[15]}},a}) | ({32{two}} & {{15{a[15]}},a,1'b0});
assign prod_a = ({32{zero}} & 32'b0) | ({32{one}} & {{16{a[15]}},a}) | ({32{two}} & {{15{a[15]}},a,1'b0});
// assign prod_a = neg ? (~prod_a_pre) : prod_a_pre;
assign c0 = neg;


endmodule


