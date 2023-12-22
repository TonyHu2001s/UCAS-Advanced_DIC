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

module booth 
(
    input   [15:0]       a,
    input   [15:0]       b,
    output [31:0]       prod_0,
    output [31:0]       prod_1,
    output [31:0]       prod_2,
    output [31:0]       prod_3,
    output [31:0]       prod_4,
    output [31:0]       prod_5,
    output [31:0]       prod_6,
    output [31:0]       prod_7,
    output [7:0]         c
);

wire [31:0] prod_0_pre, prod_1_pre, prod_2_pre, prod_3_pre, prod_4_pre, prod_5_pre, prod_6_pre, prod_7_pre; 

booth_code u_booth_code_0 (.a(a), .b_code({b[1:0],1'b0}), .prod_a(prod_0_pre), .c0(c[0]));
booth_code u_booth_code_1 (.a(a), .b_code({b[3:1]}), .prod_a(prod_1_pre), .c0(c[1]));
booth_code u_booth_code_2 (.a(a), .b_code({b[5:3]}), .prod_a(prod_2_pre), .c0(c[2]));
booth_code u_booth_code_3 (.a(a), .b_code({b[7:5]}), .prod_a(prod_3_pre), .c0(c[3]));
booth_code u_booth_code_4 (.a(a), .b_code({b[9:7]}), .prod_a(prod_4_pre), .c0(c[4]));
booth_code u_booth_code_5 (.a(a), .b_code({b[11:9]}), .prod_a(prod_5_pre), .c0(c[5]));
booth_code u_booth_code_6 (.a(a), .b_code({b[13:11]}), .prod_a(prod_6_pre), .c0(c[6]));
booth_code u_booth_code_7 (.a(a), .b_code({b[15:13]}), .prod_a(prod_7_pre), .c0(c[7]));

assign prod_0 = c[0] ? ~(prod_0_pre << 0)  :  (prod_0_pre << 0  )  ;
assign prod_1 = c[1] ? ~(prod_1_pre << 2)  :  (prod_1_pre << 2  ) ;
assign prod_2 = c[2] ? ~(prod_2_pre << 4)  :  (prod_2_pre << 4  ) ;
assign prod_3 = c[3] ? ~(prod_3_pre << 6)  :  (prod_3_pre << 6  ) ;
assign prod_4 = c[4] ? ~(prod_4_pre << 8)  :  (prod_4_pre << 8  ) ; 
assign prod_5 = c[5] ? ~(prod_5_pre << 10) : (prod_5_pre << 10); 
assign prod_6 = c[6] ? ~(prod_6_pre << 12) : (prod_6_pre << 12); 
assign prod_7 = c[7] ? ~(prod_7_pre << 14) : (prod_7_pre << 14); 

// assign prod_0 = c[0] ? ~prod_0 : prod_0;
// assign prod_1 = c[1] ? ~prod_1 : prod_1;
// assign prod_2 = c[2] ? ~prod_2 : prod_2;
// assign prod_3 = c[3] ? ~prod_3 : prod_3;
// assign prod_4 = c[4] ? ~prod_4 : prod_4;
// assign prod_5 = c[5] ? ~prod_5 : prod_5;
// assign prod_6 = c[6] ? ~prod_6 : prod_6;
// assign prod_7 = c[7] ? ~prod_7 : prod_7;

endmodule


