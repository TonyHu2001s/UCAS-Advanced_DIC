/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Dec  5 21:53:21 2023
/////////////////////////////////////////////////////////////


module carry4_4 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_3 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_2 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_1 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_0 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module add_tc_16_16 ( a, b, sum );
  input [15:0] a;
  input [15:0] b;
  output [16:0] sum;
  wire   n135, G_out, n3, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134;
  wire   [15:0] p;
  wire   [15:0] g;
  wire   [15:1] c;
  wire   [3:0] P;
  wire   [3:0] G;

  XOR2X1 U101 ( .A(n133), .B(a[0]), .Y(n52) );
  CLKMX2X2 U102 ( .A(n109), .B(n110), .S0(c[1]), .Y(n53) );
  CLKMX2X2 U103 ( .A(n106), .B(n107), .S0(c[2]), .Y(n54) );
  CLKMX2X2 U104 ( .A(n103), .B(n104), .S0(c[3]), .Y(n55) );
  CLKMX2X2 U105 ( .A(n100), .B(n101), .S0(c[4]), .Y(n56) );
  CLKMX2X2 U106 ( .A(n97), .B(n98), .S0(c[5]), .Y(n57) );
  CLKMX2X2 U107 ( .A(n94), .B(n95), .S0(c[6]), .Y(n58) );
  CLKMX2X2 U108 ( .A(n91), .B(n92), .S0(c[7]), .Y(n59) );
  CLKMX2X2 U109 ( .A(n88), .B(n89), .S0(c[8]), .Y(n60) );
  CLKMX2X2 U110 ( .A(n85), .B(n86), .S0(c[9]), .Y(n61) );
  CLKMX2X2 U111 ( .A(n130), .B(n131), .S0(c[10]), .Y(n62) );
  CLKMX2X2 U112 ( .A(n127), .B(n128), .S0(c[11]), .Y(n63) );
  CLKMX2X2 U113 ( .A(n124), .B(n125), .S0(c[12]), .Y(n64) );
  CLKMX2X2 U114 ( .A(n121), .B(n122), .S0(c[13]), .Y(n65) );
  CLKMX2X2 U115 ( .A(n118), .B(n119), .S0(c[14]), .Y(n66) );
  XOR2X1 U116 ( .A(c[15]), .B(n117), .Y(n67) );
  INVX20 U117 ( .A(n61), .Y(sum[9]) );
  INVX20 U118 ( .A(n60), .Y(sum[8]) );
  INVX20 U119 ( .A(n59), .Y(sum[7]) );
  INVX20 U120 ( .A(n58), .Y(sum[6]) );
  INVX20 U121 ( .A(n57), .Y(sum[5]) );
  INVX20 U122 ( .A(n56), .Y(sum[4]) );
  INVX20 U123 ( .A(n55), .Y(sum[3]) );
  INVX20 U124 ( .A(n54), .Y(sum[2]) );
  INVX20 U125 ( .A(n53), .Y(sum[1]) );
  INVX20 U126 ( .A(n66), .Y(sum[14]) );
  INVX20 U127 ( .A(n65), .Y(sum[13]) );
  INVX20 U128 ( .A(n64), .Y(sum[12]) );
  INVX20 U129 ( .A(n63), .Y(sum[11]) );
  INVX20 U130 ( .A(n62), .Y(sum[10]) );
  INVX20 U131 ( .A(n67), .Y(sum[15]) );
  INVX20 U132 ( .A(n52), .Y(sum[0]) );
  OA21X2 U133 ( .A0(n112), .A1(n113), .B0(n114), .Y(n135) );
  INVX20 U134 ( .A(n135), .Y(sum[16]) );
  NOR2X1 U135 ( .A(g[9]), .B(n87), .Y(n86) );
  XNOR2X1 U136 ( .A(a[9]), .B(b[9]), .Y(n85) );
  NOR2X1 U137 ( .A(g[8]), .B(n90), .Y(n89) );
  XNOR2X1 U138 ( .A(a[8]), .B(b[8]), .Y(n88) );
  NOR2X1 U139 ( .A(g[7]), .B(n93), .Y(n92) );
  XNOR2X1 U140 ( .A(a[7]), .B(b[7]), .Y(n91) );
  NOR2X1 U141 ( .A(g[6]), .B(n96), .Y(n95) );
  XNOR2X1 U142 ( .A(a[6]), .B(b[6]), .Y(n94) );
  NOR2X1 U143 ( .A(g[5]), .B(n99), .Y(n98) );
  XNOR2X1 U144 ( .A(a[5]), .B(b[5]), .Y(n97) );
  NOR2X1 U145 ( .A(g[4]), .B(n102), .Y(n101) );
  XNOR2X1 U146 ( .A(a[4]), .B(b[4]), .Y(n100) );
  NOR2X1 U147 ( .A(g[3]), .B(n105), .Y(n104) );
  XNOR2X1 U148 ( .A(a[3]), .B(b[3]), .Y(n103) );
  NOR2X1 U149 ( .A(g[2]), .B(n108), .Y(n107) );
  XNOR2X1 U150 ( .A(a[2]), .B(b[2]), .Y(n106) );
  NOR2X1 U151 ( .A(g[1]), .B(n111), .Y(n110) );
  XNOR2X1 U152 ( .A(a[1]), .B(b[1]), .Y(n109) );
  MXI2X1 U153 ( .A(n115), .B(n116), .S0(c[15]), .Y(n114) );
  OAI21XL U154 ( .A0(n113), .A1(n115), .B0(n112), .Y(n116) );
  CLKINVX1 U155 ( .A(G_out), .Y(n113) );
  NOR2X1 U156 ( .A(g[14]), .B(n120), .Y(n119) );
  XNOR2X1 U157 ( .A(a[14]), .B(b[14]), .Y(n118) );
  NOR2X1 U158 ( .A(g[13]), .B(n123), .Y(n122) );
  XNOR2X1 U159 ( .A(a[13]), .B(b[13]), .Y(n121) );
  NOR2X1 U160 ( .A(g[12]), .B(n126), .Y(n125) );
  XNOR2X1 U161 ( .A(a[12]), .B(b[12]), .Y(n124) );
  NOR2X1 U162 ( .A(g[11]), .B(n129), .Y(n128) );
  XNOR2X1 U163 ( .A(a[11]), .B(b[11]), .Y(n127) );
  NOR2X1 U164 ( .A(g[10]), .B(n132), .Y(n131) );
  XNOR2X1 U165 ( .A(a[10]), .B(b[10]), .Y(n130) );
  CLKINVX1 U166 ( .A(n87), .Y(p[9]) );
  NOR2X1 U167 ( .A(b[9]), .B(a[9]), .Y(n87) );
  CLKINVX1 U168 ( .A(n90), .Y(p[8]) );
  NOR2X1 U169 ( .A(b[8]), .B(a[8]), .Y(n90) );
  CLKINVX1 U170 ( .A(n93), .Y(p[7]) );
  NOR2X1 U171 ( .A(b[7]), .B(a[7]), .Y(n93) );
  CLKINVX1 U172 ( .A(n96), .Y(p[6]) );
  NOR2X1 U173 ( .A(b[6]), .B(a[6]), .Y(n96) );
  CLKINVX1 U174 ( .A(n99), .Y(p[5]) );
  NOR2X1 U175 ( .A(b[5]), .B(a[5]), .Y(n99) );
  CLKINVX1 U176 ( .A(n102), .Y(p[4]) );
  NOR2X1 U177 ( .A(b[4]), .B(a[4]), .Y(n102) );
  CLKINVX1 U178 ( .A(n105), .Y(p[3]) );
  NOR2X1 U179 ( .A(b[3]), .B(a[3]), .Y(n105) );
  CLKINVX1 U180 ( .A(n108), .Y(p[2]) );
  NOR2X1 U181 ( .A(b[2]), .B(a[2]), .Y(n108) );
  CLKINVX1 U182 ( .A(n111), .Y(p[1]) );
  NOR2X1 U183 ( .A(b[1]), .B(a[1]), .Y(n111) );
  NAND2X1 U184 ( .A(n117), .B(n112), .Y(p[15]) );
  CLKINVX1 U185 ( .A(n115), .Y(n117) );
  XOR2X1 U186 ( .A(a[15]), .B(b[15]), .Y(n115) );
  CLKINVX1 U187 ( .A(n120), .Y(p[14]) );
  NOR2X1 U188 ( .A(b[14]), .B(a[14]), .Y(n120) );
  CLKINVX1 U189 ( .A(n123), .Y(p[13]) );
  NOR2X1 U190 ( .A(b[13]), .B(a[13]), .Y(n123) );
  CLKINVX1 U191 ( .A(n126), .Y(p[12]) );
  NOR2X1 U192 ( .A(b[12]), .B(a[12]), .Y(n126) );
  CLKINVX1 U193 ( .A(n129), .Y(p[11]) );
  NOR2X1 U194 ( .A(b[11]), .B(a[11]), .Y(n129) );
  CLKINVX1 U195 ( .A(n132), .Y(p[10]) );
  NOR2X1 U196 ( .A(b[10]), .B(a[10]), .Y(n132) );
  NAND2X1 U197 ( .A(n133), .B(n134), .Y(p[0]) );
  CLKINVX1 U198 ( .A(n112), .Y(n3) );
  NAND2X1 U199 ( .A(b[15]), .B(a[15]), .Y(n112) );
  AND2X1 U200 ( .A(a[9]), .B(b[9]), .Y(g[9]) );
  AND2X1 U201 ( .A(a[8]), .B(b[8]), .Y(g[8]) );
  AND2X1 U202 ( .A(a[7]), .B(b[7]), .Y(g[7]) );
  AND2X1 U203 ( .A(a[6]), .B(b[6]), .Y(g[6]) );
  AND2X1 U204 ( .A(a[5]), .B(b[5]), .Y(g[5]) );
  AND2X1 U205 ( .A(a[4]), .B(b[4]), .Y(g[4]) );
  AND2X1 U206 ( .A(a[3]), .B(b[3]), .Y(g[3]) );
  AND2X1 U207 ( .A(a[2]), .B(b[2]), .Y(g[2]) );
  AND2X1 U208 ( .A(a[1]), .B(b[1]), .Y(g[1]) );
  AND2X1 U209 ( .A(a[14]), .B(b[14]), .Y(g[14]) );
  AND2X1 U210 ( .A(a[13]), .B(b[13]), .Y(g[13]) );
  AND2X1 U211 ( .A(a[12]), .B(b[12]), .Y(g[12]) );
  AND2X1 U212 ( .A(a[11]), .B(b[11]), .Y(g[11]) );
  AND2X1 U213 ( .A(a[10]), .B(b[10]), .Y(g[10]) );
  NOR2X1 U214 ( .A(n134), .B(n133), .Y(g[0]) );
  CLKINVX1 U215 ( .A(a[0]), .Y(n134) );
  CLKINVX1 U216 ( .A(b[0]), .Y(n133) );
  carry4_4 u0_carry ( .p(p[3:0]), .g(g[3:0]), .cin(1'b0), .P(P[0]), .G(G[0]), 
        .cout(c[3:1]) );
  carry4_3 u1_carry ( .p(p[7:4]), .g(g[7:4]), .cin(c[4]), .P(P[1]), .G(G[1]), 
        .cout(c[7:5]) );
  carry4_2 u2_carry ( .p(p[11:8]), .g(g[11:8]), .cin(c[8]), .P(P[2]), .G(G[2]), 
        .cout(c[11:9]) );
  carry4_1 u3_carry ( .p(p[15:12]), .g({n3, g[14:12]}), .cin(c[12]), .P(P[3]), 
        .G(G[3]), .cout(c[15:13]) );
  carry4_0 u4_carry ( .p(P), .g(G), .cin(1'b0), .G(G_out), .cout({c[12], c[8], 
        c[4]}) );
endmodule

