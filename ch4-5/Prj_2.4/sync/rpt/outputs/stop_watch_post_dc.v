/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Dec  5 14:03:58 2023
/////////////////////////////////////////////////////////////


module stop_watch_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module stop_watch ( clk, rst_n, clear, start_stop, hr_h, hr_l, min_h, min_l, 
        sec_h, sec_l );
  output [3:0] hr_h;
  output [3:0] hr_l;
  output [3:0] min_h;
  output [3:0] min_l;
  output [3:0] sec_h;
  output [3:0] sec_l;
  input clk, rst_n, clear, start_stop;
  wire   state, full_sec, N15, N16, N17, N18, N19, N20, N21, N22, N23, N24,
         N25, N26, N27, N28, N29, N30, n1, n2, n3, n4, n5, n6;
  wire   [7:0] count_sec;
  tri   rst_n;
  tri   clear;
  tri   [3:0] hr_h;
  tri   [3:0] hr_l;
  tri   [3:0] min_h;
  tri   [3:0] min_l;
  tri   [3:0] sec_h;
  tri   [3:0] sec_l;
  tri   clk_gated;
  tri   full_sec_l;
  tri   full_sec_h;
  tri   full_min_l;
  tri   full_min_h;
  tri   full_hr_l;

  DFFRX1 full_sec_reg ( .D(n5), .CK(clk), .RN(rst_n), .Q(full_sec) );
  DFFRX1 state_reg ( .D(n4), .CK(clk), .RN(rst_n), .Q(state) );
  DFFRX1 \count_sec_reg[1]  ( .D(N24), .CK(clk), .RN(rst_n), .Q(count_sec[1]), 
        .QN(n6) );
  DFFRX1 \count_sec_reg[7]  ( .D(N30), .CK(clk), .RN(rst_n), .Q(count_sec[7])
         );
  DFFRX1 \count_sec_reg[5]  ( .D(N28), .CK(clk), .RN(rst_n), .Q(count_sec[5])
         );
  DFFRX1 \count_sec_reg[6]  ( .D(N29), .CK(clk), .RN(rst_n), .Q(count_sec[6])
         );
  DFFRX1 \count_sec_reg[0]  ( .D(N23), .CK(clk), .RN(rst_n), .Q(count_sec[0])
         );
  DFFRX1 \count_sec_reg[4]  ( .D(N27), .CK(clk), .RN(rst_n), .Q(count_sec[4])
         );
  DFFRX1 \count_sec_reg[3]  ( .D(N26), .CK(clk), .RN(rst_n), .Q(count_sec[3])
         );
  DFFRX1 \count_sec_reg[2]  ( .D(N25), .CK(clk), .RN(rst_n), .Q(count_sec[2])
         );
  AND2X2 C94 ( .A(full_sec), .B(state), .Y(clk_gated) );
  NOR2BX1 U16 ( .AN(N21), .B(n5), .Y(N29) );
  NOR2BX1 U17 ( .AN(N20), .B(n5), .Y(N28) );
  NOR2BX1 U18 ( .AN(N19), .B(n5), .Y(N27) );
  NOR2BX1 U19 ( .AN(N18), .B(n5), .Y(N26) );
  NOR2BX1 U20 ( .AN(N17), .B(n5), .Y(N25) );
  NOR2BX1 U21 ( .AN(N16), .B(n5), .Y(N24) );
  AND4X1 U22 ( .A(count_sec[6]), .B(count_sec[5]), .C(n2), .D(n3), .Y(n5) );
  NOR4X1 U24 ( .A(count_sec[7]), .B(count_sec[4]), .C(count_sec[3]), .D(
        count_sec[2]), .Y(n3) );
  NOR2BX1 U25 ( .AN(N22), .B(n5), .Y(N30) );
  NOR2BX1 U26 ( .AN(N15), .B(n5), .Y(N23) );
  NOR2X1 U27 ( .A(clear), .B(n1), .Y(n4) );
  XNOR2X1 U28 ( .A(state), .B(start_stop), .Y(n1) );
  counter u_counter_sec_l ( .clk(clk_gated), .rst_n(rst_n), .clear(clear), 
        .count(sec_l), .full(full_sec_l) );
  counter u_counter_sec_h ( .clk(full_sec_l), .rst_n(rst_n), .clear(clear), 
        .count(sec_h), .full(full_sec_h) );
  counter u_counter_min_l ( .clk(full_sec_h), .rst_n(rst_n), .clear(clear), 
        .count(min_l), .full(full_min_l) );
  counter u_counter_min_h ( .clk(full_min_l), .rst_n(rst_n), .clear(clear), 
        .count(min_h), .full(full_min_h) );
  counter u_counter_hr_l ( .clk(full_min_h), .rst_n(rst_n), .clear(clear), 
        .count(hr_l), .full(full_hr_l) );
  counter u_counter_hr_h ( .clk(full_hr_l), .rst_n(rst_n), .clear(clear), 
        .count(hr_h) );
  stop_watch_DW01_inc_0 add_62 ( .A(count_sec), .SUM({N22, N21, N20, N19, N18, 
        N17, N16, N15}) );
  NOR2X1 U23 ( .A(n6), .B(count_sec[0]), .Y(n2) );
endmodule

