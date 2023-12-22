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

module wallace_adder (
    input   [31:0]      a, 
    input   [31:0]      b,
    input                  cin,
    output [31:0]      sum
);

wire [31:0] p,g,c,out;
wire [3:0]   P0,G0,P1,G1;
wire P0_out,G0_out, P1_out,G1_out;

assign p = a | b;
assign g = a & b;
assign c[0] = cin;

carry4 u1_1_carry(    .p(p[3:0]),      .g(g[3:0]),    .cin(c[0]),   .P(P0[0]),   .G(G0[0]),   .cout(c[3:1]));
carry4 u1_2_carry(    .p(p[7:4]),      .g(g[7:4]),    .cin(c[4]),   .P(P0[1]),   .G(G0[1]),   .cout(c[7:5]));
carry4 u1_3_carry(    .p(p[11:8]),    .g(g[11:8]),  .cin(c[8]),   .P(P0[2]),   .G(G0[2]),   .cout(c[11:9]));
carry4 u1_4_carry(    .p(p[15:12]),  .g(g[15:12]),.cin(c[12]), .P(P0[3]),   .G(G0[3]),   .cout(c[15:13]));
carry4 u2_1_carry(    .p(P0),           .g(G0),         .cin(c[0]),   .P(P0_out),  .G(G0_out), .cout({c[12],c[8],c[4]}));
carry4 u1_5_carry(    .p(p[19:16]),      .g(g[19:16]),    .cin(c[16]),   .P(P1[0]),   .G(G1[0]),   .cout(c[19:17]));
carry4 u1_6_carry(    .p(p[23:20]),      .g(g[23:20]),    .cin(c[20]),     .P(P1[1]),   .G(G1[1]),   .cout(c[23:21]));
carry4 u1_7_carry(    .p(p[27:24]),      .g(g[27:24]),    .cin(c[24]),     .P(P1[2]),   .G(G1[2]),   .cout(c[27:25]));
carry4 u1_8_carry(    .p(p[31:28]),      .g(g[31:28]),    .cin(c[28]),     .P(P1[3]),   .G(G1[3]),   .cout(c[31:29]));
carry4 u2_2_carry(    .p(P1),               .g(G1),            .cin(c[16]),     .P(P1_out), .G(G1_out), .cout({c[28],c[24],c[20]}));

assign c[16] = G0_out | (P0_out & c[0]);


// assign cout = G_out | (P_out & c[0]);
assign out = (~a & ~b & c) | (~a & b & ~c) | (a & ~b & ~c) | (a & b & c);
// assign overflow = (out[15] & ~a[15] & ~b[15]) | (~out[15] & a[15] & b[15]);
// assign sign = (overflow & cout) | (~overflow & out[15]);
// assign sum = {sign, out};
assign sum = out;

endmodule


