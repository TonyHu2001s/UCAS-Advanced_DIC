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

module mul_tc_16_16 (
    input   [15:0]      a, 
    input   [15:0]      b,
    output [31:0]      product
);
wire [31:0] prod_0, prod_1, prod_2, prod_3, prod_4, prod_5, prod_6, prod_7;
wire [7:0] c;

booth u_booth( .a(a), .b(b), .prod_0(prod_0), .prod_1(prod_1), .prod_2(prod_2), .prod_3(prod_3), .prod_4(prod_4), .prod_5(prod_5), .prod_6(prod_6), .prod_7(prod_7), .c(c));

wallace u_wallace( .prod_0(prod_0), .prod_1(prod_1), .prod_2(prod_2), .prod_3(prod_3), .prod_4(prod_4), .prod_5(prod_5), .prod_6(prod_6), .prod_7(prod_7), .cin(c), .product(product));

endmodule


