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

module wallace(
    input   [31:0]      prod_0, 
    input   [31:0]      prod_1, 
    input   [31:0]      prod_2, 
    input   [31:0]      prod_3, 
    input   [31:0]      prod_4, 
    input   [31:0]      prod_5, 
    input   [31:0]      prod_6, 
    input   [31:0]      prod_7, 
    input   [7:0]        cin,
    output [31:0]      product
);

wire [31:0]    a, b;

wallace_tree u_wallace_tree(.prod_0(prod_0), .prod_1(prod_1), .prod_2(prod_2), .prod_3(prod_3), .prod_4(prod_4), .prod_5(prod_5), .prod_6(prod_6), .prod_7(prod_7), .cin(cin[5:0]), .cout(b), .s(a));

wallace_adder u_wallace_adder(.a(a), .b({b[30:0],cin[6]}), .cin(cin[7]), .sum(product));

endmodule


