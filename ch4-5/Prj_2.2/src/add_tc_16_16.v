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

module add_tc_16_16 (
    input   [15:0]      a, 
    input   [15:0]      b,
    output [16:0]      sum
);

wire [15:0] p,g,c,out;
wire [3:0]   P,G;
wire P_out,G_out, sign, cout, overflow;

assign p = a | b;
assign g = a & b;
assign c[0] = 1'b0;

carry4 u0_carry(    .p(p[3:0]),      .g(g[3:0]),    .cin(c[0]),   .P(P[0]),   .G(G[0]),   .cout(c[3:1]));
carry4 u1_carry(    .p(p[7:4]),      .g(g[7:4]),    .cin(c[4]),   .P(P[1]),   .G(G[1]),   .cout(c[7:5]));
carry4 u2_carry(    .p(p[11:8]),    .g(g[11:8]),  .cin(c[8]),   .P(P[2]),   .G(G[2]),   .cout(c[11:9]));
carry4 u3_carry(    .p(p[15:12]),  .g(g[15:12]),.cin(c[12]), .P(P[3]),   .G(G[3]),   .cout(c[15:13]));
carry4 u4_carry(    .p(P),             .g(G),           .cin(c[0]),   .P(P_out),.G(G_out), .cout({c[12],c[8],c[4]}));

assign cout = G_out | (P_out & c[0]);
assign out = (~a & ~b & c) | (~a & b & ~c) | (a & ~b & ~c) | (a & b & c);
assign overflow = (out[15] & ~a[15] & ~b[15]) | (~out[15] & a[15] & b[15]);
assign sign = (overflow & cout) | (~overflow & out[15]);
assign sum = {sign, out};

endmodule


