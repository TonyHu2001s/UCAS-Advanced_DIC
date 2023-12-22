/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Dec  9 23:19:35 2023
/////////////////////////////////////////////////////////////


module booth_code_7 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI22XL U2 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U3 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U4 ( .A(a[8]), .Y(n4) );
  OAI22XL U5 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U6 ( .A(a[7]), .Y(n5) );
  OAI22XL U7 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U8 ( .A(a[6]), .Y(n6) );
  OAI22XL U9 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U10 ( .A(a[5]), .Y(n7) );
  OAI22XL U11 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U12 ( .A(a[4]), .Y(n8) );
  OAI22XL U13 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U14 ( .A(a[3]), .Y(n9) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U17 ( .A(a[2]), .Y(n10) );
  OAI22XL U18 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U19 ( .A(a[1]), .Y(n12) );
  OAI22XL U20 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U21 ( .A(a[15]), .Y(n11) );
  OAI22XL U22 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U23 ( .A(a[14]), .Y(n14) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U25 ( .A(a[13]), .Y(n15) );
  OAI22XL U26 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U27 ( .A(a[12]), .Y(n16) );
  OAI22XL U28 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U29 ( .A(a[11]), .Y(n17) );
  OAI22XL U30 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U31 ( .A(a[9]), .Y(n2) );
  OAI21XL U32 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
  AOI21X1 U15 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
endmodule


module booth_code_6 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI21X1 U2 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  AOI21X1 U16 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
  OAI22XL U17 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U18 ( .A(a[2]), .Y(n10) );
  OAI22XL U19 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U20 ( .A(a[1]), .Y(n12) );
  OAI22XL U21 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U22 ( .A(a[15]), .Y(n11) );
  OAI22XL U23 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U24 ( .A(a[14]), .Y(n14) );
  OAI22XL U25 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U26 ( .A(a[13]), .Y(n15) );
  OAI22XL U27 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U28 ( .A(a[12]), .Y(n16) );
  OAI22XL U29 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U30 ( .A(a[11]), .Y(n17) );
  OAI22XL U31 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U32 ( .A(a[9]), .Y(n2) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
endmodule


module booth_code_5 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI21X1 U2 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  AOI21X1 U16 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
  OAI22XL U17 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U18 ( .A(a[2]), .Y(n10) );
  OAI22XL U19 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U20 ( .A(a[1]), .Y(n12) );
  OAI22XL U21 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U22 ( .A(a[15]), .Y(n11) );
  OAI22XL U23 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U24 ( .A(a[14]), .Y(n14) );
  OAI22XL U25 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U26 ( .A(a[13]), .Y(n15) );
  OAI22XL U27 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U28 ( .A(a[12]), .Y(n16) );
  OAI22XL U29 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U30 ( .A(a[11]), .Y(n17) );
  OAI22XL U31 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U32 ( .A(a[9]), .Y(n2) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
endmodule


module booth_code_4 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U17 ( .A(a[2]), .Y(n10) );
  OAI22XL U18 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U19 ( .A(a[1]), .Y(n12) );
  OAI22XL U20 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U21 ( .A(a[15]), .Y(n11) );
  OAI22XL U22 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U23 ( .A(a[14]), .Y(n14) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U25 ( .A(a[13]), .Y(n15) );
  OAI22XL U26 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U27 ( .A(a[12]), .Y(n16) );
  OAI22XL U28 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U29 ( .A(a[11]), .Y(n17) );
  OAI22XL U30 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U31 ( .A(a[9]), .Y(n2) );
  OAI21XL U32 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
  AOI21XL U2 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
endmodule


module booth_code_3 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U17 ( .A(a[2]), .Y(n10) );
  OAI22XL U18 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U19 ( .A(a[1]), .Y(n12) );
  OAI22XL U20 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U21 ( .A(a[15]), .Y(n11) );
  OAI22XL U22 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U23 ( .A(a[14]), .Y(n14) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U25 ( .A(a[13]), .Y(n15) );
  OAI22XL U26 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U27 ( .A(a[12]), .Y(n16) );
  OAI22XL U28 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U29 ( .A(a[11]), .Y(n17) );
  OAI22XL U30 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U31 ( .A(a[9]), .Y(n2) );
  OAI21XL U32 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
  AOI21XL U2 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
endmodule


module booth_code_2 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U17 ( .A(a[2]), .Y(n10) );
  OAI22XL U18 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U19 ( .A(a[1]), .Y(n12) );
  OAI22XL U20 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U21 ( .A(a[15]), .Y(n11) );
  OAI22XL U22 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U23 ( .A(a[14]), .Y(n14) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U25 ( .A(a[13]), .Y(n15) );
  OAI22XL U26 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U27 ( .A(a[12]), .Y(n16) );
  OAI22XL U28 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U29 ( .A(a[11]), .Y(n17) );
  OAI22XL U30 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U31 ( .A(a[9]), .Y(n2) );
  OAI21XL U32 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
  AOI21XL U2 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
endmodule


module booth_code_1 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U17 ( .A(a[2]), .Y(n10) );
  OAI22XL U18 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U19 ( .A(a[1]), .Y(n12) );
  OAI22XL U20 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U21 ( .A(a[15]), .Y(n11) );
  OAI22XL U22 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U23 ( .A(a[14]), .Y(n14) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U25 ( .A(a[13]), .Y(n15) );
  OAI22XL U26 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U27 ( .A(a[12]), .Y(n16) );
  OAI22XL U28 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U29 ( .A(a[11]), .Y(n17) );
  OAI22XL U30 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U31 ( .A(a[9]), .Y(n2) );
  OAI21XL U32 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
  AOI21XL U2 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
endmodule


module booth_code_0 ( a, b_code, prod_a, c0 );
  input [15:0] a;
  input [2:0] b_code;
  output [31:0] prod_a;
  output c0;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21;
  assign prod_a[16] = prod_a[31];
  assign prod_a[17] = prod_a[31];
  assign prod_a[18] = prod_a[31];
  assign prod_a[19] = prod_a[31];
  assign prod_a[20] = prod_a[31];
  assign prod_a[21] = prod_a[31];
  assign prod_a[22] = prod_a[31];
  assign prod_a[23] = prod_a[31];
  assign prod_a[24] = prod_a[31];
  assign prod_a[25] = prod_a[31];
  assign prod_a[26] = prod_a[31];
  assign prod_a[27] = prod_a[31];
  assign prod_a[28] = prod_a[31];
  assign prod_a[29] = prod_a[31];
  assign prod_a[30] = prod_a[31];

  INVX3 U1 ( .A(n21), .Y(c0) );
  OAI22XL U3 ( .A0(n1), .A1(n2), .B0(n3), .B1(n4), .Y(prod_a[9]) );
  OAI22XL U4 ( .A0(n1), .A1(n4), .B0(n3), .B1(n5), .Y(prod_a[8]) );
  CLKINVX1 U5 ( .A(a[8]), .Y(n4) );
  OAI22XL U6 ( .A0(n1), .A1(n5), .B0(n3), .B1(n6), .Y(prod_a[7]) );
  CLKINVX1 U7 ( .A(a[7]), .Y(n5) );
  OAI22XL U8 ( .A0(n1), .A1(n6), .B0(n3), .B1(n7), .Y(prod_a[6]) );
  CLKINVX1 U9 ( .A(a[6]), .Y(n6) );
  OAI22XL U10 ( .A0(n1), .A1(n7), .B0(n3), .B1(n8), .Y(prod_a[5]) );
  CLKINVX1 U11 ( .A(a[5]), .Y(n7) );
  OAI22XL U12 ( .A0(n1), .A1(n8), .B0(n3), .B1(n9), .Y(prod_a[4]) );
  CLKINVX1 U13 ( .A(a[4]), .Y(n8) );
  OAI22XL U14 ( .A0(n1), .A1(n9), .B0(n3), .B1(n10), .Y(prod_a[3]) );
  CLKINVX1 U15 ( .A(a[3]), .Y(n9) );
  OAI22XL U16 ( .A0(n1), .A1(n10), .B0(n3), .B1(n12), .Y(prod_a[2]) );
  CLKINVX1 U17 ( .A(a[2]), .Y(n10) );
  OAI22XL U18 ( .A0(n1), .A1(n12), .B0(n3), .B1(n13), .Y(prod_a[1]) );
  CLKINVX1 U19 ( .A(a[1]), .Y(n12) );
  OAI22XL U20 ( .A0(n1), .A1(n11), .B0(n3), .B1(n14), .Y(prod_a[15]) );
  CLKINVX1 U21 ( .A(a[15]), .Y(n11) );
  OAI22XL U22 ( .A0(n1), .A1(n14), .B0(n3), .B1(n15), .Y(prod_a[14]) );
  CLKINVX1 U23 ( .A(a[14]), .Y(n14) );
  OAI22XL U24 ( .A0(n1), .A1(n15), .B0(n3), .B1(n16), .Y(prod_a[13]) );
  CLKINVX1 U25 ( .A(a[13]), .Y(n15) );
  OAI22XL U26 ( .A0(n1), .A1(n16), .B0(n3), .B1(n17), .Y(prod_a[12]) );
  CLKINVX1 U27 ( .A(a[12]), .Y(n16) );
  OAI22XL U28 ( .A0(n1), .A1(n17), .B0(n3), .B1(n18), .Y(prod_a[11]) );
  CLKINVX1 U29 ( .A(a[11]), .Y(n17) );
  OAI22XL U30 ( .A0(n1), .A1(n18), .B0(n3), .B1(n2), .Y(prod_a[10]) );
  CLKINVX1 U31 ( .A(a[9]), .Y(n2) );
  OAI21XL U32 ( .A0(b_code[1]), .A1(n19), .B0(n20), .Y(n3) );
  MXI2X1 U33 ( .A(n19), .B(b_code[1]), .S0(b_code[2]), .Y(n20) );
  CLKINVX1 U34 ( .A(b_code[0]), .Y(n19) );
  CLKINVX1 U35 ( .A(a[10]), .Y(n18) );
  NOR2X1 U36 ( .A(n1), .B(n13), .Y(prod_a[0]) );
  CLKINVX1 U37 ( .A(a[0]), .Y(n13) );
  XNOR2X1 U38 ( .A(b_code[0]), .B(b_code[1]), .Y(n1) );
  OAI2BB1X1 U39 ( .A0N(b_code[0]), .A1N(b_code[1]), .B0(b_code[2]), .Y(n21) );
  AOI21XL U2 ( .A0(n3), .A1(n1), .B0(n11), .Y(prod_a[31]) );
endmodule


module booth ( a, b, prod_0, prod_1, prod_2, prod_3, prod_4, prod_5, prod_6, 
        prod_7, c );
  input [15:0] a;
  input [15:0] b;
  output [31:0] prod_0;
  output [31:0] prod_1;
  output [31:0] prod_2;
  output [31:0] prod_3;
  output [31:0] prod_4;
  output [31:0] prod_5;
  output [31:0] prod_6;
  output [31:0] prod_7;
  output [7:0] c;
  wire   \prod_7[13] , \prod_6[11] , \prod_5[9] , \prod_4[7] , \prod_3[5] ,
         \prod_2[3] , \prod_1[1] ;
  wire   [31:0] prod_0_pre;
  wire   [31:0] prod_1_pre;
  wire   [31:0] prod_2_pre;
  wire   [31:0] prod_3_pre;
  wire   [31:0] prod_4_pre;
  wire   [31:0] prod_5_pre;
  wire   [31:0] prod_6_pre;
  wire   [31:0] prod_7_pre;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55;
  assign c[7] = \prod_7[13] ;
  assign prod_7[0] = \prod_7[13] ;
  assign prod_7[1] = \prod_7[13] ;
  assign prod_7[2] = \prod_7[13] ;
  assign prod_7[3] = \prod_7[13] ;
  assign prod_7[4] = \prod_7[13] ;
  assign prod_7[5] = \prod_7[13] ;
  assign prod_7[6] = \prod_7[13] ;
  assign prod_7[7] = \prod_7[13] ;
  assign prod_7[8] = \prod_7[13] ;
  assign prod_7[9] = \prod_7[13] ;
  assign prod_7[10] = \prod_7[13] ;
  assign prod_7[11] = \prod_7[13] ;
  assign prod_7[12] = \prod_7[13] ;
  assign prod_7[13] = \prod_7[13] ;
  assign c[6] = \prod_6[11] ;
  assign prod_6[0] = \prod_6[11] ;
  assign prod_6[1] = \prod_6[11] ;
  assign prod_6[2] = \prod_6[11] ;
  assign prod_6[3] = \prod_6[11] ;
  assign prod_6[4] = \prod_6[11] ;
  assign prod_6[5] = \prod_6[11] ;
  assign prod_6[6] = \prod_6[11] ;
  assign prod_6[7] = \prod_6[11] ;
  assign prod_6[8] = \prod_6[11] ;
  assign prod_6[9] = \prod_6[11] ;
  assign prod_6[10] = \prod_6[11] ;
  assign prod_6[11] = \prod_6[11] ;
  assign c[5] = \prod_5[9] ;
  assign prod_5[0] = \prod_5[9] ;
  assign prod_5[1] = \prod_5[9] ;
  assign prod_5[2] = \prod_5[9] ;
  assign prod_5[3] = \prod_5[9] ;
  assign prod_5[4] = \prod_5[9] ;
  assign prod_5[5] = \prod_5[9] ;
  assign prod_5[6] = \prod_5[9] ;
  assign prod_5[7] = \prod_5[9] ;
  assign prod_5[8] = \prod_5[9] ;
  assign prod_5[9] = \prod_5[9] ;
  assign c[4] = \prod_4[7] ;
  assign prod_4[0] = \prod_4[7] ;
  assign prod_4[1] = \prod_4[7] ;
  assign prod_4[2] = \prod_4[7] ;
  assign prod_4[3] = \prod_4[7] ;
  assign prod_4[4] = \prod_4[7] ;
  assign prod_4[5] = \prod_4[7] ;
  assign prod_4[6] = \prod_4[7] ;
  assign prod_4[7] = \prod_4[7] ;
  assign c[3] = \prod_3[5] ;
  assign prod_3[0] = \prod_3[5] ;
  assign prod_3[1] = \prod_3[5] ;
  assign prod_3[2] = \prod_3[5] ;
  assign prod_3[3] = \prod_3[5] ;
  assign prod_3[4] = \prod_3[5] ;
  assign prod_3[5] = \prod_3[5] ;
  assign c[2] = \prod_2[3] ;
  assign prod_2[0] = \prod_2[3] ;
  assign prod_2[1] = \prod_2[3] ;
  assign prod_2[2] = \prod_2[3] ;
  assign prod_2[3] = \prod_2[3] ;
  assign c[1] = \prod_1[1] ;
  assign prod_1[0] = \prod_1[1] ;
  assign prod_1[1] = \prod_1[1] ;

  XOR2X1 U2 ( .A(prod_7_pre[17]), .B(\prod_7[13] ), .Y(prod_7[31]) );
  XOR2X1 U3 ( .A(prod_7_pre[16]), .B(\prod_7[13] ), .Y(prod_7[30]) );
  XOR2X1 U4 ( .A(prod_7_pre[15]), .B(\prod_7[13] ), .Y(prod_7[29]) );
  XOR2X1 U5 ( .A(prod_7_pre[14]), .B(\prod_7[13] ), .Y(prod_7[28]) );
  XOR2X1 U6 ( .A(prod_7_pre[13]), .B(\prod_7[13] ), .Y(prod_7[27]) );
  XOR2X1 U7 ( .A(prod_7_pre[12]), .B(\prod_7[13] ), .Y(prod_7[26]) );
  XOR2X1 U8 ( .A(prod_7_pre[11]), .B(\prod_7[13] ), .Y(prod_7[25]) );
  XOR2X1 U9 ( .A(prod_7_pre[10]), .B(\prod_7[13] ), .Y(prod_7[24]) );
  XOR2X1 U10 ( .A(prod_7_pre[9]), .B(\prod_7[13] ), .Y(prod_7[23]) );
  XOR2X1 U11 ( .A(prod_7_pre[8]), .B(\prod_7[13] ), .Y(prod_7[22]) );
  XOR2X1 U12 ( .A(prod_7_pre[7]), .B(\prod_7[13] ), .Y(prod_7[21]) );
  XOR2X1 U13 ( .A(prod_7_pre[6]), .B(\prod_7[13] ), .Y(prod_7[20]) );
  XOR2X1 U14 ( .A(prod_7_pre[5]), .B(\prod_7[13] ), .Y(prod_7[19]) );
  XOR2X1 U15 ( .A(prod_7_pre[4]), .B(\prod_7[13] ), .Y(prod_7[18]) );
  XOR2X1 U16 ( .A(prod_7_pre[3]), .B(\prod_7[13] ), .Y(prod_7[17]) );
  XOR2X1 U17 ( .A(prod_7_pre[2]), .B(\prod_7[13] ), .Y(prod_7[16]) );
  XOR2X1 U18 ( .A(prod_7_pre[1]), .B(\prod_7[13] ), .Y(prod_7[15]) );
  XOR2X1 U19 ( .A(prod_7_pre[0]), .B(\prod_7[13] ), .Y(prod_7[14]) );
  XOR2X1 U20 ( .A(prod_6_pre[19]), .B(\prod_6[11] ), .Y(prod_6[31]) );
  XOR2X1 U21 ( .A(prod_6_pre[18]), .B(\prod_6[11] ), .Y(prod_6[30]) );
  XOR2X1 U22 ( .A(prod_6_pre[17]), .B(\prod_6[11] ), .Y(prod_6[29]) );
  XOR2X1 U23 ( .A(prod_6_pre[16]), .B(\prod_6[11] ), .Y(prod_6[28]) );
  XOR2X1 U24 ( .A(prod_6_pre[15]), .B(\prod_6[11] ), .Y(prod_6[27]) );
  XOR2X1 U25 ( .A(prod_6_pre[14]), .B(\prod_6[11] ), .Y(prod_6[26]) );
  XOR2X1 U26 ( .A(prod_6_pre[13]), .B(\prod_6[11] ), .Y(prod_6[25]) );
  XOR2X1 U27 ( .A(prod_6_pre[12]), .B(\prod_6[11] ), .Y(prod_6[24]) );
  XOR2X1 U28 ( .A(prod_6_pre[11]), .B(\prod_6[11] ), .Y(prod_6[23]) );
  XOR2X1 U29 ( .A(prod_6_pre[10]), .B(\prod_6[11] ), .Y(prod_6[22]) );
  XOR2X1 U30 ( .A(prod_6_pre[9]), .B(\prod_6[11] ), .Y(prod_6[21]) );
  XOR2X1 U31 ( .A(prod_6_pre[8]), .B(\prod_6[11] ), .Y(prod_6[20]) );
  XOR2X1 U32 ( .A(prod_6_pre[7]), .B(\prod_6[11] ), .Y(prod_6[19]) );
  XOR2X1 U33 ( .A(prod_6_pre[6]), .B(\prod_6[11] ), .Y(prod_6[18]) );
  XOR2X1 U34 ( .A(prod_6_pre[5]), .B(\prod_6[11] ), .Y(prod_6[17]) );
  XOR2X1 U35 ( .A(prod_6_pre[4]), .B(\prod_6[11] ), .Y(prod_6[16]) );
  XOR2X1 U36 ( .A(prod_6_pre[3]), .B(\prod_6[11] ), .Y(prod_6[15]) );
  XOR2X1 U37 ( .A(prod_6_pre[2]), .B(\prod_6[11] ), .Y(prod_6[14]) );
  XOR2X1 U38 ( .A(prod_6_pre[1]), .B(\prod_6[11] ), .Y(prod_6[13]) );
  XOR2X1 U39 ( .A(prod_6_pre[0]), .B(\prod_6[11] ), .Y(prod_6[12]) );
  XOR2X1 U40 ( .A(prod_5_pre[21]), .B(\prod_5[9] ), .Y(prod_5[31]) );
  XOR2X1 U41 ( .A(prod_5_pre[20]), .B(\prod_5[9] ), .Y(prod_5[30]) );
  XOR2X1 U42 ( .A(prod_5_pre[19]), .B(\prod_5[9] ), .Y(prod_5[29]) );
  XOR2X1 U43 ( .A(prod_5_pre[18]), .B(\prod_5[9] ), .Y(prod_5[28]) );
  XOR2X1 U44 ( .A(prod_5_pre[17]), .B(\prod_5[9] ), .Y(prod_5[27]) );
  XOR2X1 U45 ( .A(prod_5_pre[16]), .B(\prod_5[9] ), .Y(prod_5[26]) );
  XOR2X1 U46 ( .A(prod_5_pre[15]), .B(\prod_5[9] ), .Y(prod_5[25]) );
  XOR2X1 U47 ( .A(prod_5_pre[14]), .B(\prod_5[9] ), .Y(prod_5[24]) );
  XOR2X1 U48 ( .A(prod_5_pre[13]), .B(\prod_5[9] ), .Y(prod_5[23]) );
  XOR2X1 U49 ( .A(prod_5_pre[12]), .B(\prod_5[9] ), .Y(prod_5[22]) );
  XOR2X1 U50 ( .A(prod_5_pre[11]), .B(\prod_5[9] ), .Y(prod_5[21]) );
  XOR2X1 U51 ( .A(prod_5_pre[10]), .B(\prod_5[9] ), .Y(prod_5[20]) );
  XOR2X1 U52 ( .A(prod_5_pre[9]), .B(\prod_5[9] ), .Y(prod_5[19]) );
  XOR2X1 U53 ( .A(prod_5_pre[8]), .B(\prod_5[9] ), .Y(prod_5[18]) );
  XOR2X1 U54 ( .A(prod_5_pre[7]), .B(\prod_5[9] ), .Y(prod_5[17]) );
  XOR2X1 U55 ( .A(prod_5_pre[6]), .B(\prod_5[9] ), .Y(prod_5[16]) );
  XOR2X1 U56 ( .A(prod_5_pre[5]), .B(\prod_5[9] ), .Y(prod_5[15]) );
  XOR2X1 U57 ( .A(prod_5_pre[4]), .B(\prod_5[9] ), .Y(prod_5[14]) );
  XOR2X1 U58 ( .A(prod_5_pre[3]), .B(\prod_5[9] ), .Y(prod_5[13]) );
  XOR2X1 U59 ( .A(prod_5_pre[2]), .B(\prod_5[9] ), .Y(prod_5[12]) );
  XOR2X1 U60 ( .A(prod_5_pre[1]), .B(\prod_5[9] ), .Y(prod_5[11]) );
  XOR2X1 U61 ( .A(prod_5_pre[0]), .B(\prod_5[9] ), .Y(prod_5[10]) );
  XOR2X1 U62 ( .A(prod_4_pre[1]), .B(\prod_4[7] ), .Y(prod_4[9]) );
  XOR2X1 U63 ( .A(prod_4_pre[0]), .B(\prod_4[7] ), .Y(prod_4[8]) );
  XOR2X1 U64 ( .A(prod_4_pre[23]), .B(\prod_4[7] ), .Y(prod_4[31]) );
  XOR2X1 U65 ( .A(prod_4_pre[22]), .B(\prod_4[7] ), .Y(prod_4[30]) );
  XOR2X1 U66 ( .A(prod_4_pre[21]), .B(\prod_4[7] ), .Y(prod_4[29]) );
  XOR2X1 U67 ( .A(prod_4_pre[20]), .B(\prod_4[7] ), .Y(prod_4[28]) );
  XOR2X1 U68 ( .A(prod_4_pre[19]), .B(\prod_4[7] ), .Y(prod_4[27]) );
  XOR2X1 U69 ( .A(prod_4_pre[18]), .B(\prod_4[7] ), .Y(prod_4[26]) );
  XOR2X1 U70 ( .A(prod_4_pre[17]), .B(\prod_4[7] ), .Y(prod_4[25]) );
  XOR2X1 U71 ( .A(prod_4_pre[16]), .B(\prod_4[7] ), .Y(prod_4[24]) );
  XOR2X1 U72 ( .A(prod_4_pre[15]), .B(\prod_4[7] ), .Y(prod_4[23]) );
  XOR2X1 U73 ( .A(prod_4_pre[14]), .B(\prod_4[7] ), .Y(prod_4[22]) );
  XOR2X1 U74 ( .A(prod_4_pre[13]), .B(\prod_4[7] ), .Y(prod_4[21]) );
  XOR2X1 U75 ( .A(prod_4_pre[12]), .B(\prod_4[7] ), .Y(prod_4[20]) );
  XOR2X1 U76 ( .A(prod_4_pre[11]), .B(\prod_4[7] ), .Y(prod_4[19]) );
  XOR2X1 U77 ( .A(prod_4_pre[10]), .B(\prod_4[7] ), .Y(prod_4[18]) );
  XOR2X1 U78 ( .A(prod_4_pre[9]), .B(\prod_4[7] ), .Y(prod_4[17]) );
  XOR2X1 U79 ( .A(prod_4_pre[8]), .B(\prod_4[7] ), .Y(prod_4[16]) );
  XOR2X1 U80 ( .A(prod_4_pre[7]), .B(\prod_4[7] ), .Y(prod_4[15]) );
  XOR2X1 U81 ( .A(prod_4_pre[6]), .B(\prod_4[7] ), .Y(prod_4[14]) );
  XOR2X1 U82 ( .A(prod_4_pre[5]), .B(\prod_4[7] ), .Y(prod_4[13]) );
  XOR2X1 U83 ( .A(prod_4_pre[4]), .B(\prod_4[7] ), .Y(prod_4[12]) );
  XOR2X1 U84 ( .A(prod_4_pre[3]), .B(\prod_4[7] ), .Y(prod_4[11]) );
  XOR2X1 U85 ( .A(prod_4_pre[2]), .B(\prod_4[7] ), .Y(prod_4[10]) );
  XOR2X1 U86 ( .A(prod_3_pre[3]), .B(\prod_3[5] ), .Y(prod_3[9]) );
  XOR2X1 U87 ( .A(prod_3_pre[2]), .B(\prod_3[5] ), .Y(prod_3[8]) );
  XOR2X1 U88 ( .A(prod_3_pre[1]), .B(\prod_3[5] ), .Y(prod_3[7]) );
  XOR2X1 U89 ( .A(prod_3_pre[0]), .B(\prod_3[5] ), .Y(prod_3[6]) );
  XOR2X1 U90 ( .A(prod_3_pre[25]), .B(\prod_3[5] ), .Y(prod_3[31]) );
  XOR2X1 U91 ( .A(prod_3_pre[24]), .B(\prod_3[5] ), .Y(prod_3[30]) );
  XOR2X1 U92 ( .A(prod_3_pre[23]), .B(\prod_3[5] ), .Y(prod_3[29]) );
  XOR2X1 U93 ( .A(prod_3_pre[22]), .B(\prod_3[5] ), .Y(prod_3[28]) );
  XOR2X1 U94 ( .A(prod_3_pre[21]), .B(\prod_3[5] ), .Y(prod_3[27]) );
  XOR2X1 U95 ( .A(prod_3_pre[20]), .B(\prod_3[5] ), .Y(prod_3[26]) );
  XOR2X1 U96 ( .A(prod_3_pre[19]), .B(\prod_3[5] ), .Y(prod_3[25]) );
  XOR2X1 U97 ( .A(prod_3_pre[18]), .B(\prod_3[5] ), .Y(prod_3[24]) );
  XOR2X1 U98 ( .A(prod_3_pre[17]), .B(\prod_3[5] ), .Y(prod_3[23]) );
  XOR2X1 U99 ( .A(prod_3_pre[16]), .B(\prod_3[5] ), .Y(prod_3[22]) );
  XOR2X1 U100 ( .A(prod_3_pre[15]), .B(\prod_3[5] ), .Y(prod_3[21]) );
  XOR2X1 U101 ( .A(prod_3_pre[14]), .B(\prod_3[5] ), .Y(prod_3[20]) );
  XOR2X1 U102 ( .A(prod_3_pre[13]), .B(\prod_3[5] ), .Y(prod_3[19]) );
  XOR2X1 U103 ( .A(prod_3_pre[12]), .B(\prod_3[5] ), .Y(prod_3[18]) );
  XOR2X1 U104 ( .A(prod_3_pre[11]), .B(\prod_3[5] ), .Y(prod_3[17]) );
  XOR2X1 U105 ( .A(prod_3_pre[10]), .B(\prod_3[5] ), .Y(prod_3[16]) );
  XOR2X1 U106 ( .A(prod_3_pre[9]), .B(\prod_3[5] ), .Y(prod_3[15]) );
  XOR2X1 U107 ( .A(prod_3_pre[8]), .B(\prod_3[5] ), .Y(prod_3[14]) );
  XOR2X1 U108 ( .A(prod_3_pre[7]), .B(\prod_3[5] ), .Y(prod_3[13]) );
  XOR2X1 U109 ( .A(prod_3_pre[6]), .B(\prod_3[5] ), .Y(prod_3[12]) );
  XOR2X1 U110 ( .A(prod_3_pre[5]), .B(\prod_3[5] ), .Y(prod_3[11]) );
  XOR2X1 U111 ( .A(prod_3_pre[4]), .B(\prod_3[5] ), .Y(prod_3[10]) );
  XOR2X1 U112 ( .A(prod_2_pre[5]), .B(\prod_2[3] ), .Y(prod_2[9]) );
  XOR2X1 U113 ( .A(prod_2_pre[4]), .B(\prod_2[3] ), .Y(prod_2[8]) );
  XOR2X1 U114 ( .A(prod_2_pre[3]), .B(\prod_2[3] ), .Y(prod_2[7]) );
  XOR2X1 U115 ( .A(prod_2_pre[2]), .B(\prod_2[3] ), .Y(prod_2[6]) );
  XOR2X1 U116 ( .A(prod_2_pre[1]), .B(\prod_2[3] ), .Y(prod_2[5]) );
  XOR2X1 U117 ( .A(prod_2_pre[0]), .B(\prod_2[3] ), .Y(prod_2[4]) );
  XOR2X1 U118 ( .A(prod_2_pre[27]), .B(\prod_2[3] ), .Y(prod_2[31]) );
  XOR2X1 U119 ( .A(prod_2_pre[26]), .B(\prod_2[3] ), .Y(prod_2[30]) );
  XOR2X1 U120 ( .A(prod_2_pre[25]), .B(\prod_2[3] ), .Y(prod_2[29]) );
  XOR2X1 U121 ( .A(prod_2_pre[24]), .B(\prod_2[3] ), .Y(prod_2[28]) );
  XOR2X1 U122 ( .A(prod_2_pre[23]), .B(\prod_2[3] ), .Y(prod_2[27]) );
  XOR2X1 U123 ( .A(prod_2_pre[22]), .B(\prod_2[3] ), .Y(prod_2[26]) );
  XOR2X1 U124 ( .A(prod_2_pre[21]), .B(\prod_2[3] ), .Y(prod_2[25]) );
  XOR2X1 U125 ( .A(prod_2_pre[20]), .B(\prod_2[3] ), .Y(prod_2[24]) );
  XOR2X1 U126 ( .A(prod_2_pre[19]), .B(\prod_2[3] ), .Y(prod_2[23]) );
  XOR2X1 U127 ( .A(prod_2_pre[18]), .B(\prod_2[3] ), .Y(prod_2[22]) );
  XOR2X1 U128 ( .A(prod_2_pre[17]), .B(\prod_2[3] ), .Y(prod_2[21]) );
  XOR2X1 U129 ( .A(prod_2_pre[16]), .B(\prod_2[3] ), .Y(prod_2[20]) );
  XOR2X1 U130 ( .A(prod_2_pre[15]), .B(\prod_2[3] ), .Y(prod_2[19]) );
  XOR2X1 U131 ( .A(prod_2_pre[14]), .B(\prod_2[3] ), .Y(prod_2[18]) );
  XOR2X1 U132 ( .A(prod_2_pre[13]), .B(\prod_2[3] ), .Y(prod_2[17]) );
  XOR2X1 U133 ( .A(prod_2_pre[12]), .B(\prod_2[3] ), .Y(prod_2[16]) );
  XOR2X1 U134 ( .A(prod_2_pre[11]), .B(\prod_2[3] ), .Y(prod_2[15]) );
  XOR2X1 U135 ( .A(prod_2_pre[10]), .B(\prod_2[3] ), .Y(prod_2[14]) );
  XOR2X1 U136 ( .A(prod_2_pre[9]), .B(\prod_2[3] ), .Y(prod_2[13]) );
  XOR2X1 U137 ( .A(prod_2_pre[8]), .B(\prod_2[3] ), .Y(prod_2[12]) );
  XOR2X1 U138 ( .A(prod_2_pre[7]), .B(\prod_2[3] ), .Y(prod_2[11]) );
  XOR2X1 U139 ( .A(prod_2_pre[6]), .B(\prod_2[3] ), .Y(prod_2[10]) );
  XOR2X1 U140 ( .A(prod_1_pre[7]), .B(\prod_1[1] ), .Y(prod_1[9]) );
  XOR2X1 U141 ( .A(prod_1_pre[6]), .B(\prod_1[1] ), .Y(prod_1[8]) );
  XOR2X1 U142 ( .A(prod_1_pre[5]), .B(\prod_1[1] ), .Y(prod_1[7]) );
  XOR2X1 U143 ( .A(prod_1_pre[4]), .B(\prod_1[1] ), .Y(prod_1[6]) );
  XOR2X1 U144 ( .A(prod_1_pre[3]), .B(\prod_1[1] ), .Y(prod_1[5]) );
  XOR2X1 U145 ( .A(prod_1_pre[2]), .B(\prod_1[1] ), .Y(prod_1[4]) );
  XOR2X1 U146 ( .A(prod_1_pre[1]), .B(\prod_1[1] ), .Y(prod_1[3]) );
  XOR2X1 U147 ( .A(prod_1_pre[29]), .B(\prod_1[1] ), .Y(prod_1[31]) );
  XOR2X1 U148 ( .A(prod_1_pre[28]), .B(\prod_1[1] ), .Y(prod_1[30]) );
  XOR2X1 U149 ( .A(prod_1_pre[0]), .B(\prod_1[1] ), .Y(prod_1[2]) );
  XOR2X1 U150 ( .A(prod_1_pre[27]), .B(\prod_1[1] ), .Y(prod_1[29]) );
  XOR2X1 U151 ( .A(prod_1_pre[26]), .B(\prod_1[1] ), .Y(prod_1[28]) );
  XOR2X1 U152 ( .A(prod_1_pre[25]), .B(\prod_1[1] ), .Y(prod_1[27]) );
  XOR2X1 U153 ( .A(prod_1_pre[24]), .B(\prod_1[1] ), .Y(prod_1[26]) );
  XOR2X1 U154 ( .A(prod_1_pre[23]), .B(\prod_1[1] ), .Y(prod_1[25]) );
  XOR2X1 U155 ( .A(prod_1_pre[22]), .B(\prod_1[1] ), .Y(prod_1[24]) );
  XOR2X1 U156 ( .A(prod_1_pre[21]), .B(\prod_1[1] ), .Y(prod_1[23]) );
  XOR2X1 U157 ( .A(prod_1_pre[20]), .B(\prod_1[1] ), .Y(prod_1[22]) );
  XOR2X1 U158 ( .A(prod_1_pre[19]), .B(\prod_1[1] ), .Y(prod_1[21]) );
  XOR2X1 U159 ( .A(prod_1_pre[18]), .B(\prod_1[1] ), .Y(prod_1[20]) );
  XOR2X1 U160 ( .A(prod_1_pre[17]), .B(\prod_1[1] ), .Y(prod_1[19]) );
  XOR2X1 U161 ( .A(prod_1_pre[16]), .B(\prod_1[1] ), .Y(prod_1[18]) );
  XOR2X1 U162 ( .A(prod_1_pre[15]), .B(\prod_1[1] ), .Y(prod_1[17]) );
  XOR2X1 U163 ( .A(prod_1_pre[14]), .B(\prod_1[1] ), .Y(prod_1[16]) );
  XOR2X1 U164 ( .A(prod_1_pre[13]), .B(\prod_1[1] ), .Y(prod_1[15]) );
  XOR2X1 U165 ( .A(prod_1_pre[12]), .B(\prod_1[1] ), .Y(prod_1[14]) );
  XOR2X1 U166 ( .A(prod_1_pre[11]), .B(\prod_1[1] ), .Y(prod_1[13]) );
  XOR2X1 U167 ( .A(prod_1_pre[10]), .B(\prod_1[1] ), .Y(prod_1[12]) );
  XOR2X1 U168 ( .A(prod_1_pre[9]), .B(\prod_1[1] ), .Y(prod_1[11]) );
  XOR2X1 U169 ( .A(prod_1_pre[8]), .B(\prod_1[1] ), .Y(prod_1[10]) );
  XOR2X1 U170 ( .A(prod_0_pre[9]), .B(c[0]), .Y(prod_0[9]) );
  XOR2X1 U171 ( .A(prod_0_pre[8]), .B(c[0]), .Y(prod_0[8]) );
  XOR2X1 U172 ( .A(prod_0_pre[7]), .B(c[0]), .Y(prod_0[7]) );
  XOR2X1 U173 ( .A(prod_0_pre[6]), .B(c[0]), .Y(prod_0[6]) );
  XOR2X1 U174 ( .A(prod_0_pre[5]), .B(c[0]), .Y(prod_0[5]) );
  XOR2X1 U175 ( .A(prod_0_pre[4]), .B(c[0]), .Y(prod_0[4]) );
  XOR2X1 U176 ( .A(prod_0_pre[3]), .B(c[0]), .Y(prod_0[3]) );
  XOR2X1 U177 ( .A(prod_0_pre[31]), .B(c[0]), .Y(prod_0[31]) );
  XOR2X1 U178 ( .A(prod_0_pre[30]), .B(c[0]), .Y(prod_0[30]) );
  XOR2X1 U179 ( .A(prod_0_pre[2]), .B(c[0]), .Y(prod_0[2]) );
  XOR2X1 U180 ( .A(prod_0_pre[29]), .B(c[0]), .Y(prod_0[29]) );
  XOR2X1 U181 ( .A(prod_0_pre[28]), .B(c[0]), .Y(prod_0[28]) );
  XOR2X1 U182 ( .A(prod_0_pre[27]), .B(c[0]), .Y(prod_0[27]) );
  XOR2X1 U183 ( .A(prod_0_pre[26]), .B(c[0]), .Y(prod_0[26]) );
  XOR2X1 U184 ( .A(prod_0_pre[25]), .B(c[0]), .Y(prod_0[25]) );
  XOR2X1 U185 ( .A(prod_0_pre[24]), .B(c[0]), .Y(prod_0[24]) );
  XOR2X1 U186 ( .A(prod_0_pre[23]), .B(c[0]), .Y(prod_0[23]) );
  XOR2X1 U187 ( .A(prod_0_pre[22]), .B(c[0]), .Y(prod_0[22]) );
  XOR2X1 U188 ( .A(prod_0_pre[21]), .B(c[0]), .Y(prod_0[21]) );
  XOR2X1 U189 ( .A(prod_0_pre[20]), .B(c[0]), .Y(prod_0[20]) );
  XOR2X1 U190 ( .A(prod_0_pre[1]), .B(c[0]), .Y(prod_0[1]) );
  XOR2X1 U191 ( .A(prod_0_pre[19]), .B(c[0]), .Y(prod_0[19]) );
  XOR2X1 U192 ( .A(prod_0_pre[18]), .B(c[0]), .Y(prod_0[18]) );
  XOR2X1 U193 ( .A(prod_0_pre[17]), .B(c[0]), .Y(prod_0[17]) );
  XOR2X1 U194 ( .A(prod_0_pre[16]), .B(c[0]), .Y(prod_0[16]) );
  XOR2X1 U195 ( .A(prod_0_pre[15]), .B(c[0]), .Y(prod_0[15]) );
  XOR2X1 U196 ( .A(prod_0_pre[14]), .B(c[0]), .Y(prod_0[14]) );
  XOR2X1 U197 ( .A(prod_0_pre[13]), .B(c[0]), .Y(prod_0[13]) );
  XOR2X1 U198 ( .A(prod_0_pre[12]), .B(c[0]), .Y(prod_0[12]) );
  XOR2X1 U199 ( .A(prod_0_pre[11]), .B(c[0]), .Y(prod_0[11]) );
  XOR2X1 U200 ( .A(prod_0_pre[10]), .B(c[0]), .Y(prod_0[10]) );
  XOR2X1 U201 ( .A(prod_0_pre[0]), .B(c[0]), .Y(prod_0[0]) );
  booth_code_7 u_booth_code_0 ( .a(a), .b_code({b[1:0], 1'b0}), .prod_a(
        prod_0_pre), .c0(c[0]) );
  booth_code_6 u_booth_code_1 ( .a(a), .b_code(b[3:1]), .prod_a({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, prod_1_pre[29:0]}), 
        .c0(\prod_1[1] ) );
  booth_code_5 u_booth_code_2 ( .a(a), .b_code(b[5:3]), .prod_a({
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, prod_2_pre[27:0]}), 
        .c0(\prod_2[3] ) );
  booth_code_4 u_booth_code_3 ( .a(a), .b_code(b[7:5]), .prod_a({
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, prod_3_pre[25:0]}), 
        .c0(\prod_3[5] ) );
  booth_code_3 u_booth_code_4 ( .a(a), .b_code(b[9:7]), .prod_a({
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, prod_4_pre[23:0]}), 
        .c0(\prod_4[7] ) );
  booth_code_2 u_booth_code_5 ( .a(a), .b_code(b[11:9]), .prod_a({
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, prod_5_pre[21:0]}), 
        .c0(\prod_5[9] ) );
  booth_code_1 u_booth_code_6 ( .a(a), .b_code(b[13:11]), .prod_a({
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, prod_6_pre[19:0]}), 
        .c0(\prod_6[11] ) );
  booth_code_0 u_booth_code_7 ( .a(a), .b_code(b[15:13]), .prod_a({
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49, 
        SYNOPSYS_UNCONNECTED__50, SYNOPSYS_UNCONNECTED__51, 
        SYNOPSYS_UNCONNECTED__52, SYNOPSYS_UNCONNECTED__53, 
        SYNOPSYS_UNCONNECTED__54, SYNOPSYS_UNCONNECTED__55, prod_7_pre[17:0]}), 
        .c0(\prod_7[13] ) );
endmodule


module full_adder_191 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_190 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_31 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_189 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_188 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_187 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_186 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_31 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_191 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_190 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_31 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_189 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_188 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_187 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_186 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_185 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_184 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_30 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_183 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_182 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_181 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_180 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_30 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_185 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_184 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_30 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_183 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_182 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_181 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_180 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_179 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_178 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_29 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_177 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_176 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_175 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_174 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_29 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_179 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_178 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_29 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_177 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_176 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_175 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_174 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_173 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_172 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_28 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_171 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_170 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_169 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_168 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_28 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_173 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_172 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_28 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_171 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_170 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_169 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_168 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_167 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_166 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_27 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_165 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_164 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_163 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_162 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_27 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_167 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_166 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_27 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_165 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_164 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_163 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_162 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_161 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_160 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_26 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_159 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_158 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_157 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_156 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_26 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_161 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_160 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_26 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_159 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_158 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_157 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_156 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_155 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_154 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_25 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_153 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_152 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_151 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_150 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_25 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_155 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_154 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_25 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_153 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_152 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_151 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_150 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_149 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_148 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_24 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_147 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_146 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_145 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_144 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_24 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_149 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_148 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_24 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_147 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_146 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_145 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_144 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_143 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_142 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_23 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_141 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_140 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_139 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_138 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_23 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_143 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_142 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_23 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_141 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_140 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_139 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_138 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_137 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_136 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_22 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_135 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_134 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_133 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_132 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_22 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_137 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_136 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_22 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_135 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_134 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_133 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_132 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_131 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_130 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_21 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_129 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_128 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_127 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_126 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_21 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_131 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_130 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_21 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_129 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_128 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_127 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_126 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_125 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_124 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_20 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_123 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_122 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_121 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_120 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_20 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_125 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_124 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_20 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_123 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_122 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_121 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_120 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_119 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_118 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_19 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_117 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_116 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_115 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_114 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_19 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_119 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_118 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_19 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_117 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_116 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_115 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_114 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_113 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_112 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_18 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_111 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_110 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_109 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_108 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_18 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_113 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_112 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_18 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_111 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_110 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_109 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_108 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_107 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_106 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_17 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_105 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_104 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_103 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_102 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_17 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_107 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_106 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_17 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_105 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_104 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(
        s2_2), .cout(cout[4]) );
  full_adder_103 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_102 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_101 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_100 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_16 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_99 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_98 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_97 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_96 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_16 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_101 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_100 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_16 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_99 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_98 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_97 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_96 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_95 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_94 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_15 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_93 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_92 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_91 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_90 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_15 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_95 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_94 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_15 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_93 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_92 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_91 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_90 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_89 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_88 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_14 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_87 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_86 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_85 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_84 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_14 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_89 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_88 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_14 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_87 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_86 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_85 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_84 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_83 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_82 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_13 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_81 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_80 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_79 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_78 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_13 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_83 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_82 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_13 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_81 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_80 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_79 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_78 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_77 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_76 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_12 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_75 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_74 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_73 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_72 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_12 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_77 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_76 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_12 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_75 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_74 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_73 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_72 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_71 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_70 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_11 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_69 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_68 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_67 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_66 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_11 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_71 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_70 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_11 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_69 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_68 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_67 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_66 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_65 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_64 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_10 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_63 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_62 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_61 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_60 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_10 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_65 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_64 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_10 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_63 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_62 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_61 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_60 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_59 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_58 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_9 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_57 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_56 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_55 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_54 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_9 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_59 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_58 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_9 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_57 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_56 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_55 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_54 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_53 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_52 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_8 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_51 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_50 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_49 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_48 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_8 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_53 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_52 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_8 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_51 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_50 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_49 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_48 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_47 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_46 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_7 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_45 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_44 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_43 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_42 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_7 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_47 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_46 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_7 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_45 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_44 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_43 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_42 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_41 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_40 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_6 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_39 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_38 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_37 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_36 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_6 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_41 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_40 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_6 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_39 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_38 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_37 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_36 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_35 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_34 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_5 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_33 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_32 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_31 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_30 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_5 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_35 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_34 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_5 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_33 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_32 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_31 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_30 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_29 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_28 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_4 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_27 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_26 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_25 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_24 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_4 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_29 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_28 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_4 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_27 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_26 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_25 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_24 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_23 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_22 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_3 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_21 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_20 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_19 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_18 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_3 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_23 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_22 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_3 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_21 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_20 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_19 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_18 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_17 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_16 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_2 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_15 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_14 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_13 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_12 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_2 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_17 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_16 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_2 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_15 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_14 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), .cout(cout[4]) );
  full_adder_13 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_12 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_11 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_10 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_1 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_9 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_8 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_7 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_6 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_1 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_11 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_10 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_1 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_9 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_8 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), 
        .cout(cout[4]) );
  full_adder_7 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_6 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module full_adder_5 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_4 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module half_adder_0 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U1 ( .A(b), .B(a), .Y(s) );
  AND2X1 U2 ( .A(b), .B(a), .Y(c) );
endmodule


module full_adder_3 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_2 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_1 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module full_adder_0 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2X1 U1 ( .A(a), .B(n1), .Y(s) );
  AO22X1 U2 ( .A0(cin), .A1(b), .B0(n1), .B1(a), .Y(cout) );
  XOR2X1 U3 ( .A(b), .B(cin), .Y(n1) );
endmodule


module wallace_tree_1bit_0 ( N, cin, cout, S, C );
  input [7:0] N;
  input [5:0] cin;
  output [5:0] cout;
  output S, C;
  wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

  full_adder_5 u_full_adder_0 ( .a(N[0]), .b(N[1]), .cin(N[2]), .s(s1_1), 
        .cout(cout[0]) );
  full_adder_4 u_full_adder_1 ( .a(N[3]), .b(N[4]), .cin(N[5]), .s(s1_2), 
        .cout(cout[1]) );
  half_adder_0 u_half_adder_0 ( .a(N[6]), .b(N[7]), .s(s1_3), .c(cout[2]) );
  full_adder_3 u_full_adder_2 ( .a(s1_1), .b(s1_2), .cin(s1_3), .s(s2_1), 
        .cout(cout[3]) );
  full_adder_2 u_full_adder_3 ( .a(cin[0]), .b(cin[1]), .cin(cin[2]), .s(s2_2), 
        .cout(cout[4]) );
  full_adder_1 u_full_adder_4 ( .a(s2_1), .b(s2_2), .cin(cin[3]), .s(s3_1), 
        .cout(cout[5]) );
  full_adder_0 u_full_adder_5 ( .a(s3_1), .b(cin[4]), .cin(cin[5]), .s(S), 
        .cout(C) );
endmodule


module wallace_tree ( prod_0, prod_1, prod_2, prod_3, prod_4, prod_5, prod_6, 
        prod_7, cin, cout, s );
  input [31:0] prod_0;
  input [31:0] prod_1;
  input [31:0] prod_2;
  input [31:0] prod_3;
  input [31:0] prod_4;
  input [31:0] prod_5;
  input [31:0] prod_6;
  input [31:0] prod_7;
  input [5:0] cin;
  output [31:0] cout;
  output [31:0] s;

  wire   [5:0] cout_0;
  wire   [5:0] cout_1;
  wire   [5:0] cout_2;
  wire   [5:0] cout_3;
  wire   [5:0] cout_4;
  wire   [5:0] cout_5;
  wire   [5:0] cout_6;
  wire   [5:0] cout_7;
  wire   [5:0] cout_8;
  wire   [5:0] cout_9;
  wire   [5:0] cout_10;
  wire   [5:0] cout_11;
  wire   [5:0] cout_12;
  wire   [5:0] cout_13;
  wire   [5:0] cout_14;
  wire   [5:0] cout_15;
  wire   [5:0] cout_16;
  wire   [5:0] cout_17;
  wire   [5:0] cout_18;
  wire   [5:0] cout_19;
  wire   [5:0] cout_20;
  wire   [5:0] cout_21;
  wire   [5:0] cout_22;
  wire   [5:0] cout_23;
  wire   [5:0] cout_24;
  wire   [5:0] cout_25;
  wire   [5:0] cout_26;
  wire   [5:0] cout_27;
  wire   [5:0] cout_28;
  wire   [5:0] cout_29;
  wire   [5:0] cout_30;

  wallace_tree_1bit_31 u_wallace_1_bit_0 ( .N({prod_7[0], prod_6[0], prod_5[0], 
        prod_4[0], prod_3[0], prod_2[0], prod_1[0], prod_0[0]}), .cin(cin), 
        .cout(cout_0), .S(s[0]), .C(cout[0]) );
  wallace_tree_1bit_30 u_wallace_1_bit_1 ( .N({prod_7[1], prod_6[1], prod_5[1], 
        prod_4[1], prod_3[1], prod_2[1], prod_1[1], prod_0[1]}), .cin(cout_0), 
        .cout(cout_1), .S(s[1]), .C(cout[1]) );
  wallace_tree_1bit_29 u_wallace_1_bit_2 ( .N({prod_7[2], prod_6[2], prod_5[2], 
        prod_4[2], prod_3[2], prod_2[2], prod_1[2], prod_0[2]}), .cin(cout_1), 
        .cout(cout_2), .S(s[2]), .C(cout[2]) );
  wallace_tree_1bit_28 u_wallace_1_bit_3 ( .N({prod_7[3], prod_6[3], prod_5[3], 
        prod_4[3], prod_3[3], prod_2[3], prod_1[3], prod_0[3]}), .cin(cout_2), 
        .cout(cout_3), .S(s[3]), .C(cout[3]) );
  wallace_tree_1bit_27 u_wallace_1_bit_4 ( .N({prod_7[4], prod_6[4], prod_5[4], 
        prod_4[4], prod_3[4], prod_2[4], prod_1[4], prod_0[4]}), .cin(cout_3), 
        .cout(cout_4), .S(s[4]), .C(cout[4]) );
  wallace_tree_1bit_26 u_wallace_1_bit_5 ( .N({prod_7[5], prod_6[5], prod_5[5], 
        prod_4[5], prod_3[5], prod_2[5], prod_1[5], prod_0[5]}), .cin(cout_4), 
        .cout(cout_5), .S(s[5]), .C(cout[5]) );
  wallace_tree_1bit_25 u_wallace_1_bit_6 ( .N({prod_7[6], prod_6[6], prod_5[6], 
        prod_4[6], prod_3[6], prod_2[6], prod_1[6], prod_0[6]}), .cin(cout_5), 
        .cout(cout_6), .S(s[6]), .C(cout[6]) );
  wallace_tree_1bit_24 u_wallace_1_bit_7 ( .N({prod_7[7], prod_6[7], prod_5[7], 
        prod_4[7], prod_3[7], prod_2[7], prod_1[7], prod_0[7]}), .cin(cout_6), 
        .cout(cout_7), .S(s[7]), .C(cout[7]) );
  wallace_tree_1bit_23 u_wallace_1_bit_8 ( .N({prod_7[8], prod_6[8], prod_5[8], 
        prod_4[8], prod_3[8], prod_2[8], prod_1[8], prod_0[8]}), .cin(cout_7), 
        .cout(cout_8), .S(s[8]), .C(cout[8]) );
  wallace_tree_1bit_22 u_wallace_1_bit_9 ( .N({prod_7[9], prod_6[9], prod_5[9], 
        prod_4[9], prod_3[9], prod_2[9], prod_1[9], prod_0[9]}), .cin(cout_8), 
        .cout(cout_9), .S(s[9]), .C(cout[9]) );
  wallace_tree_1bit_21 u_wallace_1_bit_10 ( .N({prod_7[10], prod_6[10], 
        prod_5[10], prod_4[10], prod_3[10], prod_2[10], prod_1[10], prod_0[10]}), .cin(cout_9), .cout(cout_10), .S(s[10]), .C(cout[10]) );
  wallace_tree_1bit_20 u_wallace_1_bit_11 ( .N({prod_7[11], prod_6[11], 
        prod_5[11], prod_4[11], prod_3[11], prod_2[11], prod_1[11], prod_0[11]}), .cin(cout_10), .cout(cout_11), .S(s[11]), .C(cout[11]) );
  wallace_tree_1bit_19 u_wallace_1_bit_12 ( .N({prod_7[12], prod_6[12], 
        prod_5[12], prod_4[12], prod_3[12], prod_2[12], prod_1[12], prod_0[12]}), .cin(cout_11), .cout(cout_12), .S(s[12]), .C(cout[12]) );
  wallace_tree_1bit_18 u_wallace_1_bit_13 ( .N({prod_7[13], prod_6[13], 
        prod_5[13], prod_4[13], prod_3[13], prod_2[13], prod_1[13], prod_0[13]}), .cin(cout_12), .cout(cout_13), .S(s[13]), .C(cout[13]) );
  wallace_tree_1bit_17 u_wallace_1_bit_14 ( .N({prod_7[14], prod_6[14], 
        prod_5[14], prod_4[14], prod_3[14], prod_2[14], prod_1[14], prod_0[14]}), .cin(cout_13), .cout(cout_14), .S(s[14]), .C(cout[14]) );
  wallace_tree_1bit_16 u_wallace_1_bit_15 ( .N({prod_7[15], prod_6[15], 
        prod_5[15], prod_4[15], prod_3[15], prod_2[15], prod_1[15], prod_0[15]}), .cin(cout_14), .cout(cout_15), .S(s[15]), .C(cout[15]) );
  wallace_tree_1bit_15 u_wallace_1_bit_16 ( .N({prod_7[16], prod_6[16], 
        prod_5[16], prod_4[16], prod_3[16], prod_2[16], prod_1[16], prod_0[16]}), .cin(cout_15), .cout(cout_16), .S(s[16]), .C(cout[16]) );
  wallace_tree_1bit_14 u_wallace_1_bit_17 ( .N({prod_7[17], prod_6[17], 
        prod_5[17], prod_4[17], prod_3[17], prod_2[17], prod_1[17], prod_0[17]}), .cin(cout_16), .cout(cout_17), .S(s[17]), .C(cout[17]) );
  wallace_tree_1bit_13 u_wallace_1_bit_18 ( .N({prod_7[18], prod_6[18], 
        prod_5[18], prod_4[18], prod_3[18], prod_2[18], prod_1[18], prod_0[18]}), .cin(cout_17), .cout(cout_18), .S(s[18]), .C(cout[18]) );
  wallace_tree_1bit_12 u_wallace_1_bit_19 ( .N({prod_7[19], prod_6[19], 
        prod_5[19], prod_4[19], prod_3[19], prod_2[19], prod_1[19], prod_0[19]}), .cin(cout_18), .cout(cout_19), .S(s[19]), .C(cout[19]) );
  wallace_tree_1bit_11 u_wallace_1_bit_20 ( .N({prod_7[20], prod_6[20], 
        prod_5[20], prod_4[20], prod_3[20], prod_2[20], prod_1[20], prod_0[20]}), .cin(cout_19), .cout(cout_20), .S(s[20]), .C(cout[20]) );
  wallace_tree_1bit_10 u_wallace_1_bit_21 ( .N({prod_7[21], prod_6[21], 
        prod_5[21], prod_4[21], prod_3[21], prod_2[21], prod_1[21], prod_0[21]}), .cin(cout_20), .cout(cout_21), .S(s[21]), .C(cout[21]) );
  wallace_tree_1bit_9 u_wallace_1_bit_22 ( .N({prod_7[22], prod_6[22], 
        prod_5[22], prod_4[22], prod_3[22], prod_2[22], prod_1[22], prod_0[22]}), .cin(cout_21), .cout(cout_22), .S(s[22]), .C(cout[22]) );
  wallace_tree_1bit_8 u_wallace_1_bit_23 ( .N({prod_7[23], prod_6[23], 
        prod_5[23], prod_4[23], prod_3[23], prod_2[23], prod_1[23], prod_0[23]}), .cin(cout_22), .cout(cout_23), .S(s[23]), .C(cout[23]) );
  wallace_tree_1bit_7 u_wallace_1_bit_24 ( .N({prod_7[24], prod_6[24], 
        prod_5[24], prod_4[24], prod_3[24], prod_2[24], prod_1[24], prod_0[24]}), .cin(cout_23), .cout(cout_24), .S(s[24]), .C(cout[24]) );
  wallace_tree_1bit_6 u_wallace_1_bit_25 ( .N({prod_7[25], prod_6[25], 
        prod_5[25], prod_4[25], prod_3[25], prod_2[25], prod_1[25], prod_0[25]}), .cin(cout_24), .cout(cout_25), .S(s[25]), .C(cout[25]) );
  wallace_tree_1bit_5 u_wallace_1_bit_26 ( .N({prod_7[26], prod_6[26], 
        prod_5[26], prod_4[26], prod_3[26], prod_2[26], prod_1[26], prod_0[26]}), .cin(cout_25), .cout(cout_26), .S(s[26]), .C(cout[26]) );
  wallace_tree_1bit_4 u_wallace_1_bit_27 ( .N({prod_7[27], prod_6[27], 
        prod_5[27], prod_4[27], prod_3[27], prod_2[27], prod_1[27], prod_0[27]}), .cin(cout_26), .cout(cout_27), .S(s[27]), .C(cout[27]) );
  wallace_tree_1bit_3 u_wallace_1_bit_28 ( .N({prod_7[28], prod_6[28], 
        prod_5[28], prod_4[28], prod_3[28], prod_2[28], prod_1[28], prod_0[28]}), .cin(cout_27), .cout(cout_28), .S(s[28]), .C(cout[28]) );
  wallace_tree_1bit_2 u_wallace_1_bit_29 ( .N({prod_7[29], prod_6[29], 
        prod_5[29], prod_4[29], prod_3[29], prod_2[29], prod_1[29], prod_0[29]}), .cin(cout_28), .cout(cout_29), .S(s[29]), .C(cout[29]) );
  wallace_tree_1bit_1 u_wallace_1_bit_30 ( .N({prod_7[30], prod_6[30], 
        prod_5[30], prod_4[30], prod_3[30], prod_2[30], prod_1[30], prod_0[30]}), .cin(cout_29), .cout(cout_30), .S(s[30]), .C(cout[30]) );
  wallace_tree_1bit_0 u_wallace_1_bit_31 ( .N({prod_7[31], prod_6[31], 
        prod_5[31], prod_4[31], prod_3[31], prod_2[31], prod_1[31], prod_0[31]}), .cin(cout_30), .S(s[31]), .C(cout[31]) );
endmodule


module carry4_9 ( p, g, cin, P, G, cout );
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


module carry4_8 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_7 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_6 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_5 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module carry4_4 ( p, g, cin, P, G, cout );
  input [3:0] p;
  input [3:0] g;
  output [2:0] cout;
  input cin;
  output P, G;
  wire   n1, n2;

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
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

  AO21X1 U1 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U2 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
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

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
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

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
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

  AO21X1 U1 ( .A0(p[0]), .A1(cin), .B0(g[0]), .Y(cout[0]) );
  AO21X1 U2 ( .A0(cout[0]), .A1(p[1]), .B0(g[1]), .Y(cout[1]) );
  AO21X1 U3 ( .A0(cout[1]), .A1(p[2]), .B0(g[2]), .Y(cout[2]) );
  AND4X1 U4 ( .A(p[0]), .B(p[1]), .C(p[2]), .D(p[3]), .Y(P) );
  AO21X1 U5 ( .A0(p[3]), .A1(n1), .B0(g[3]), .Y(G) );
  AO21X1 U6 ( .A0(n2), .A1(p[2]), .B0(g[2]), .Y(n1) );
  AO21X1 U7 ( .A0(g[0]), .A1(p[1]), .B0(g[1]), .Y(n2) );
endmodule


module wallace_adder ( a, b, cin, sum );
  input [31:0] a;
  input [31:0] b;
  output [31:0] sum;
  input cin;
  wire   n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, P0_out, G0_out,
         n16, n32, n1, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131;
  wire   [31:0] p;
  wire   [31:0] g;
  wire   [31:1] c;
  wire   [3:0] P0;
  wire   [3:0] G0;
  wire   [3:0] P1;
  wire   [3:0] G1;

  AO21X1 U1 ( .A0(cin), .A1(P0_out), .B0(G0_out), .Y(c[16]) );
  CLKMX2X2 U2 ( .A(n129), .B(n130), .S0(cin), .Y(n1) );
  INVX20 U3 ( .A(n1), .Y(sum[0]) );
  CLKMX2X2 U4 ( .A(n60), .B(n61), .S0(c[30]), .Y(n133) );
  INVX20 U5 ( .A(n133), .Y(sum[30]) );
  CLKMX2X2 U6 ( .A(n75), .B(n76), .S0(c[26]), .Y(n137) );
  INVX20 U7 ( .A(n137), .Y(sum[26]) );
  CLKMX2X2 U8 ( .A(n87), .B(n88), .S0(c[22]), .Y(n141) );
  INVX20 U9 ( .A(n141), .Y(sum[22]) );
  CLKMX2X2 U10 ( .A(n102), .B(n103), .S0(c[18]), .Y(n145) );
  INVX20 U11 ( .A(n145), .Y(sum[18]) );
  CLKMX2X2 U12 ( .A(n108), .B(n109), .S0(c[16]), .Y(n147) );
  INVX20 U13 ( .A(n147), .Y(sum[16]) );
  CLKMX2X2 U14 ( .A(n114), .B(n115), .S0(c[14]), .Y(n149) );
  INVX20 U15 ( .A(n149), .Y(sum[14]) );
  CLKMX2X2 U16 ( .A(n126), .B(n127), .S0(c[10]), .Y(n153) );
  INVX20 U17 ( .A(n153), .Y(sum[10]) );
  CLKMX2X2 U18 ( .A(n45), .B(n46), .S0(c[6]), .Y(n157) );
  INVX20 U19 ( .A(n157), .Y(sum[6]) );
  CLKMX2X2 U20 ( .A(n51), .B(n52), .S0(c[4]), .Y(n159) );
  INVX20 U21 ( .A(n159), .Y(sum[4]) );
  CLKMX2X2 U22 ( .A(n63), .B(n64), .S0(c[2]), .Y(n161) );
  INVX20 U23 ( .A(n161), .Y(sum[2]) );
  CLKMX2X2 U24 ( .A(n96), .B(n97), .S0(c[1]), .Y(n162) );
  INVX20 U25 ( .A(n162), .Y(sum[1]) );
  CLKMX2X2 U26 ( .A(n66), .B(n67), .S0(c[29]), .Y(n134) );
  INVX20 U27 ( .A(n134), .Y(sum[29]) );
  CLKMX2X2 U28 ( .A(n69), .B(n70), .S0(c[28]), .Y(n135) );
  INVX20 U29 ( .A(n135), .Y(sum[28]) );
  CLKMX2X2 U30 ( .A(n78), .B(n79), .S0(c[25]), .Y(n138) );
  INVX20 U31 ( .A(n138), .Y(sum[25]) );
  CLKMX2X2 U32 ( .A(n81), .B(n82), .S0(c[24]), .Y(n139) );
  INVX20 U33 ( .A(n139), .Y(sum[24]) );
  CLKMX2X2 U34 ( .A(n90), .B(n91), .S0(c[21]), .Y(n142) );
  INVX20 U35 ( .A(n142), .Y(sum[21]) );
  CLKMX2X2 U36 ( .A(n93), .B(n94), .S0(c[20]), .Y(n143) );
  INVX20 U37 ( .A(n143), .Y(sum[20]) );
  CLKMX2X2 U38 ( .A(n105), .B(n106), .S0(c[17]), .Y(n146) );
  INVX20 U39 ( .A(n146), .Y(sum[17]) );
  CLKMX2X2 U40 ( .A(n117), .B(n118), .S0(c[13]), .Y(n150) );
  INVX20 U41 ( .A(n150), .Y(sum[13]) );
  CLKMX2X2 U42 ( .A(n120), .B(n121), .S0(c[12]), .Y(n151) );
  INVX20 U43 ( .A(n151), .Y(sum[12]) );
  CLKMX2X2 U44 ( .A(n36), .B(n37), .S0(c[9]), .Y(n154) );
  INVX20 U45 ( .A(n154), .Y(sum[9]) );
  CLKMX2X2 U46 ( .A(n39), .B(n40), .S0(c[8]), .Y(n155) );
  INVX20 U47 ( .A(n155), .Y(sum[8]) );
  CLKMX2X2 U48 ( .A(n48), .B(n49), .S0(c[5]), .Y(n158) );
  INVX20 U49 ( .A(n158), .Y(sum[5]) );
  CLKMX2X2 U50 ( .A(n57), .B(n58), .S0(c[31]), .Y(n132) );
  INVX20 U51 ( .A(n132), .Y(sum[31]) );
  CLKMX2X2 U52 ( .A(n72), .B(n73), .S0(c[27]), .Y(n136) );
  INVX20 U53 ( .A(n136), .Y(sum[27]) );
  CLKMX2X2 U54 ( .A(n84), .B(n85), .S0(c[23]), .Y(n140) );
  INVX20 U55 ( .A(n140), .Y(sum[23]) );
  CLKMX2X2 U56 ( .A(n99), .B(n100), .S0(c[19]), .Y(n144) );
  INVX20 U57 ( .A(n144), .Y(sum[19]) );
  CLKMX2X2 U58 ( .A(n111), .B(n112), .S0(c[15]), .Y(n148) );
  INVX20 U59 ( .A(n148), .Y(sum[15]) );
  CLKMX2X2 U60 ( .A(n123), .B(n124), .S0(c[11]), .Y(n152) );
  INVX20 U61 ( .A(n152), .Y(sum[11]) );
  CLKMX2X2 U62 ( .A(n42), .B(n43), .S0(c[7]), .Y(n156) );
  INVX20 U63 ( .A(n156), .Y(sum[7]) );
  CLKMX2X2 U64 ( .A(n54), .B(n55), .S0(c[3]), .Y(n160) );
  INVX20 U65 ( .A(n160), .Y(sum[3]) );
  NOR2X1 U66 ( .A(g[9]), .B(n38), .Y(n37) );
  XNOR2X1 U67 ( .A(a[9]), .B(b[9]), .Y(n36) );
  NOR2X1 U68 ( .A(g[8]), .B(n41), .Y(n40) );
  XNOR2X1 U69 ( .A(a[8]), .B(b[8]), .Y(n39) );
  NOR2X1 U70 ( .A(g[7]), .B(n44), .Y(n43) );
  XNOR2X1 U71 ( .A(a[7]), .B(b[7]), .Y(n42) );
  NOR2X1 U72 ( .A(g[6]), .B(n47), .Y(n46) );
  XNOR2X1 U73 ( .A(a[6]), .B(b[6]), .Y(n45) );
  NOR2X1 U74 ( .A(g[5]), .B(n50), .Y(n49) );
  XNOR2X1 U75 ( .A(a[5]), .B(b[5]), .Y(n48) );
  NOR2X1 U76 ( .A(g[4]), .B(n53), .Y(n52) );
  XNOR2X1 U77 ( .A(a[4]), .B(b[4]), .Y(n51) );
  NOR2X1 U78 ( .A(g[3]), .B(n56), .Y(n55) );
  XNOR2X1 U79 ( .A(a[3]), .B(b[3]), .Y(n54) );
  NOR2X1 U80 ( .A(g[31]), .B(n59), .Y(n58) );
  XNOR2X1 U81 ( .A(a[31]), .B(b[31]), .Y(n57) );
  NOR2X1 U82 ( .A(g[30]), .B(n62), .Y(n61) );
  XNOR2X1 U83 ( .A(a[30]), .B(b[30]), .Y(n60) );
  NOR2X1 U84 ( .A(g[2]), .B(n65), .Y(n64) );
  XNOR2X1 U85 ( .A(a[2]), .B(b[2]), .Y(n63) );
  NOR2X1 U86 ( .A(g[29]), .B(n68), .Y(n67) );
  XNOR2X1 U87 ( .A(a[29]), .B(b[29]), .Y(n66) );
  NOR2X1 U88 ( .A(g[28]), .B(n71), .Y(n70) );
  XNOR2X1 U89 ( .A(a[28]), .B(b[28]), .Y(n69) );
  NOR2X1 U90 ( .A(g[27]), .B(n74), .Y(n73) );
  XNOR2X1 U91 ( .A(a[27]), .B(b[27]), .Y(n72) );
  NOR2X1 U92 ( .A(g[26]), .B(n77), .Y(n76) );
  XNOR2X1 U93 ( .A(a[26]), .B(b[26]), .Y(n75) );
  NOR2X1 U94 ( .A(g[25]), .B(n80), .Y(n79) );
  XNOR2X1 U95 ( .A(a[25]), .B(b[25]), .Y(n78) );
  NOR2X1 U96 ( .A(g[24]), .B(n83), .Y(n82) );
  XNOR2X1 U97 ( .A(a[24]), .B(b[24]), .Y(n81) );
  NOR2X1 U98 ( .A(g[23]), .B(n86), .Y(n85) );
  XNOR2X1 U99 ( .A(a[23]), .B(b[23]), .Y(n84) );
  NOR2X1 U100 ( .A(g[22]), .B(n89), .Y(n88) );
  XNOR2X1 U101 ( .A(a[22]), .B(b[22]), .Y(n87) );
  NOR2X1 U102 ( .A(g[21]), .B(n92), .Y(n91) );
  XNOR2X1 U103 ( .A(a[21]), .B(b[21]), .Y(n90) );
  NOR2X1 U104 ( .A(g[20]), .B(n95), .Y(n94) );
  XNOR2X1 U105 ( .A(a[20]), .B(b[20]), .Y(n93) );
  NOR2X1 U106 ( .A(g[1]), .B(n98), .Y(n97) );
  XNOR2X1 U107 ( .A(a[1]), .B(b[1]), .Y(n96) );
  NOR2X1 U108 ( .A(g[19]), .B(n101), .Y(n100) );
  XNOR2X1 U109 ( .A(a[19]), .B(b[19]), .Y(n99) );
  NOR2X1 U110 ( .A(g[18]), .B(n104), .Y(n103) );
  XNOR2X1 U111 ( .A(a[18]), .B(b[18]), .Y(n102) );
  NOR2X1 U112 ( .A(g[17]), .B(n107), .Y(n106) );
  XNOR2X1 U113 ( .A(a[17]), .B(b[17]), .Y(n105) );
  NOR2X1 U114 ( .A(g[16]), .B(n110), .Y(n109) );
  XNOR2X1 U115 ( .A(a[16]), .B(b[16]), .Y(n108) );
  NOR2X1 U116 ( .A(g[15]), .B(n113), .Y(n112) );
  XNOR2X1 U117 ( .A(a[15]), .B(b[15]), .Y(n111) );
  NOR2X1 U118 ( .A(g[14]), .B(n116), .Y(n115) );
  XNOR2X1 U119 ( .A(a[14]), .B(b[14]), .Y(n114) );
  NOR2X1 U120 ( .A(g[13]), .B(n119), .Y(n118) );
  XNOR2X1 U121 ( .A(a[13]), .B(b[13]), .Y(n117) );
  NOR2X1 U122 ( .A(g[12]), .B(n122), .Y(n121) );
  XNOR2X1 U123 ( .A(a[12]), .B(b[12]), .Y(n120) );
  NOR2X1 U124 ( .A(g[11]), .B(n125), .Y(n124) );
  XNOR2X1 U125 ( .A(a[11]), .B(b[11]), .Y(n123) );
  NOR2X1 U126 ( .A(g[10]), .B(n128), .Y(n127) );
  XNOR2X1 U127 ( .A(a[10]), .B(b[10]), .Y(n126) );
  NOR2X1 U128 ( .A(g[0]), .B(n131), .Y(n130) );
  XNOR2X1 U129 ( .A(a[0]), .B(b[0]), .Y(n129) );
  CLKINVX1 U130 ( .A(n38), .Y(p[9]) );
  NOR2X1 U131 ( .A(b[9]), .B(a[9]), .Y(n38) );
  CLKINVX1 U132 ( .A(n41), .Y(p[8]) );
  NOR2X1 U133 ( .A(b[8]), .B(a[8]), .Y(n41) );
  CLKINVX1 U134 ( .A(n44), .Y(p[7]) );
  NOR2X1 U135 ( .A(b[7]), .B(a[7]), .Y(n44) );
  CLKINVX1 U136 ( .A(n47), .Y(p[6]) );
  NOR2X1 U137 ( .A(b[6]), .B(a[6]), .Y(n47) );
  CLKINVX1 U138 ( .A(n50), .Y(p[5]) );
  NOR2X1 U139 ( .A(b[5]), .B(a[5]), .Y(n50) );
  CLKINVX1 U140 ( .A(n53), .Y(p[4]) );
  NOR2X1 U141 ( .A(b[4]), .B(a[4]), .Y(n53) );
  CLKINVX1 U142 ( .A(n56), .Y(p[3]) );
  NOR2X1 U143 ( .A(b[3]), .B(a[3]), .Y(n56) );
  CLKINVX1 U144 ( .A(n59), .Y(p[31]) );
  NOR2X1 U145 ( .A(b[31]), .B(a[31]), .Y(n59) );
  CLKINVX1 U146 ( .A(n62), .Y(p[30]) );
  NOR2X1 U147 ( .A(b[30]), .B(a[30]), .Y(n62) );
  CLKINVX1 U148 ( .A(n65), .Y(p[2]) );
  NOR2X1 U149 ( .A(b[2]), .B(a[2]), .Y(n65) );
  CLKINVX1 U150 ( .A(n68), .Y(p[29]) );
  NOR2X1 U151 ( .A(b[29]), .B(a[29]), .Y(n68) );
  CLKINVX1 U152 ( .A(n71), .Y(p[28]) );
  NOR2X1 U153 ( .A(b[28]), .B(a[28]), .Y(n71) );
  CLKINVX1 U154 ( .A(n74), .Y(p[27]) );
  NOR2X1 U155 ( .A(b[27]), .B(a[27]), .Y(n74) );
  CLKINVX1 U156 ( .A(n77), .Y(p[26]) );
  NOR2X1 U157 ( .A(b[26]), .B(a[26]), .Y(n77) );
  CLKINVX1 U158 ( .A(n80), .Y(p[25]) );
  NOR2X1 U159 ( .A(b[25]), .B(a[25]), .Y(n80) );
  CLKINVX1 U160 ( .A(n83), .Y(p[24]) );
  NOR2X1 U161 ( .A(b[24]), .B(a[24]), .Y(n83) );
  CLKINVX1 U162 ( .A(n86), .Y(p[23]) );
  NOR2X1 U163 ( .A(b[23]), .B(a[23]), .Y(n86) );
  CLKINVX1 U164 ( .A(n89), .Y(p[22]) );
  NOR2X1 U165 ( .A(b[22]), .B(a[22]), .Y(n89) );
  CLKINVX1 U166 ( .A(n92), .Y(p[21]) );
  NOR2X1 U167 ( .A(b[21]), .B(a[21]), .Y(n92) );
  CLKINVX1 U168 ( .A(n95), .Y(p[20]) );
  NOR2X1 U169 ( .A(b[20]), .B(a[20]), .Y(n95) );
  CLKINVX1 U170 ( .A(n98), .Y(p[1]) );
  NOR2X1 U171 ( .A(b[1]), .B(a[1]), .Y(n98) );
  CLKINVX1 U172 ( .A(n101), .Y(p[19]) );
  NOR2X1 U173 ( .A(b[19]), .B(a[19]), .Y(n101) );
  CLKINVX1 U174 ( .A(n104), .Y(p[18]) );
  NOR2X1 U175 ( .A(b[18]), .B(a[18]), .Y(n104) );
  CLKINVX1 U176 ( .A(n107), .Y(p[17]) );
  NOR2X1 U177 ( .A(b[17]), .B(a[17]), .Y(n107) );
  CLKINVX1 U178 ( .A(n113), .Y(p[15]) );
  NOR2X1 U179 ( .A(b[15]), .B(a[15]), .Y(n113) );
  CLKINVX1 U180 ( .A(n116), .Y(p[14]) );
  NOR2X1 U181 ( .A(b[14]), .B(a[14]), .Y(n116) );
  CLKINVX1 U182 ( .A(n119), .Y(p[13]) );
  NOR2X1 U183 ( .A(b[13]), .B(a[13]), .Y(n119) );
  CLKINVX1 U184 ( .A(n122), .Y(p[12]) );
  NOR2X1 U185 ( .A(b[12]), .B(a[12]), .Y(n122) );
  CLKINVX1 U186 ( .A(n125), .Y(p[11]) );
  NOR2X1 U187 ( .A(b[11]), .B(a[11]), .Y(n125) );
  CLKINVX1 U188 ( .A(n128), .Y(p[10]) );
  NOR2X1 U189 ( .A(b[10]), .B(a[10]), .Y(n128) );
  CLKINVX1 U190 ( .A(n131), .Y(n32) );
  NOR2X1 U191 ( .A(b[0]), .B(a[0]), .Y(n131) );
  CLKINVX1 U192 ( .A(n110), .Y(n16) );
  NOR2X1 U193 ( .A(b[16]), .B(a[16]), .Y(n110) );
  AND2X1 U194 ( .A(a[9]), .B(b[9]), .Y(g[9]) );
  AND2X1 U195 ( .A(a[8]), .B(b[8]), .Y(g[8]) );
  AND2X1 U196 ( .A(a[7]), .B(b[7]), .Y(g[7]) );
  AND2X1 U197 ( .A(a[6]), .B(b[6]), .Y(g[6]) );
  AND2X1 U198 ( .A(a[5]), .B(b[5]), .Y(g[5]) );
  AND2X1 U199 ( .A(a[4]), .B(b[4]), .Y(g[4]) );
  AND2X1 U200 ( .A(a[3]), .B(b[3]), .Y(g[3]) );
  AND2X1 U201 ( .A(a[31]), .B(b[31]), .Y(g[31]) );
  AND2X1 U202 ( .A(a[30]), .B(b[30]), .Y(g[30]) );
  AND2X1 U203 ( .A(a[2]), .B(b[2]), .Y(g[2]) );
  AND2X1 U204 ( .A(a[29]), .B(b[29]), .Y(g[29]) );
  AND2X1 U205 ( .A(a[28]), .B(b[28]), .Y(g[28]) );
  AND2X1 U206 ( .A(a[27]), .B(b[27]), .Y(g[27]) );
  AND2X1 U207 ( .A(a[26]), .B(b[26]), .Y(g[26]) );
  AND2X1 U208 ( .A(a[25]), .B(b[25]), .Y(g[25]) );
  AND2X1 U209 ( .A(a[24]), .B(b[24]), .Y(g[24]) );
  AND2X1 U210 ( .A(a[23]), .B(b[23]), .Y(g[23]) );
  AND2X1 U211 ( .A(a[22]), .B(b[22]), .Y(g[22]) );
  AND2X1 U212 ( .A(a[21]), .B(b[21]), .Y(g[21]) );
  AND2X1 U213 ( .A(a[20]), .B(b[20]), .Y(g[20]) );
  AND2X1 U214 ( .A(a[1]), .B(b[1]), .Y(g[1]) );
  AND2X1 U215 ( .A(a[19]), .B(b[19]), .Y(g[19]) );
  AND2X1 U216 ( .A(a[18]), .B(b[18]), .Y(g[18]) );
  AND2X1 U217 ( .A(a[17]), .B(b[17]), .Y(g[17]) );
  AND2X1 U218 ( .A(a[16]), .B(b[16]), .Y(g[16]) );
  AND2X1 U219 ( .A(a[15]), .B(b[15]), .Y(g[15]) );
  AND2X1 U220 ( .A(a[14]), .B(b[14]), .Y(g[14]) );
  AND2X1 U221 ( .A(a[13]), .B(b[13]), .Y(g[13]) );
  AND2X1 U222 ( .A(a[12]), .B(b[12]), .Y(g[12]) );
  AND2X1 U223 ( .A(a[11]), .B(b[11]), .Y(g[11]) );
  AND2X1 U224 ( .A(a[10]), .B(b[10]), .Y(g[10]) );
  AND2X1 U225 ( .A(a[0]), .B(b[0]), .Y(g[0]) );
  carry4_9 u1_1_carry ( .p({p[3:1], n32}), .g(g[3:0]), .cin(cin), .P(P0[0]), 
        .G(G0[0]), .cout(c[3:1]) );
  carry4_8 u1_2_carry ( .p(p[7:4]), .g(g[7:4]), .cin(c[4]), .P(P0[1]), .G(
        G0[1]), .cout(c[7:5]) );
  carry4_7 u1_3_carry ( .p(p[11:8]), .g(g[11:8]), .cin(c[8]), .P(P0[2]), .G(
        G0[2]), .cout(c[11:9]) );
  carry4_6 u1_4_carry ( .p(p[15:12]), .g(g[15:12]), .cin(c[12]), .P(P0[3]), 
        .G(G0[3]), .cout(c[15:13]) );
  carry4_5 u2_1_carry ( .p(P0), .g(G0), .cin(cin), .P(P0_out), .G(G0_out), 
        .cout({c[12], c[8], c[4]}) );
  carry4_4 u1_5_carry ( .p({p[19:17], n16}), .g(g[19:16]), .cin(c[16]), .P(
        P1[0]), .G(G1[0]), .cout(c[19:17]) );
  carry4_3 u1_6_carry ( .p(p[23:20]), .g(g[23:20]), .cin(c[20]), .P(P1[1]), 
        .G(G1[1]), .cout(c[23:21]) );
  carry4_2 u1_7_carry ( .p(p[27:24]), .g(g[27:24]), .cin(c[24]), .P(P1[2]), 
        .G(G1[2]), .cout(c[27:25]) );
  carry4_1 u1_8_carry ( .p(p[31:28]), .g(g[31:28]), .cin(c[28]), .P(P1[3]), 
        .G(G1[3]), .cout(c[31:29]) );
  carry4_0 u2_2_carry ( .p(P1), .g(G1), .cin(c[16]), .cout({c[28], c[24], 
        c[20]}) );
endmodule


module wallace ( prod_0, prod_1, prod_2, prod_3, prod_4, prod_5, prod_6, 
        prod_7, cin, product );
  input [31:0] prod_0;
  input [31:0] prod_1;
  input [31:0] prod_2;
  input [31:0] prod_3;
  input [31:0] prod_4;
  input [31:0] prod_5;
  input [31:0] prod_6;
  input [31:0] prod_7;
  input [7:0] cin;
  output [31:0] product;

  wire   [31:0] a;
  wire   [31:0] b;
  wire   SYNOPSYS_UNCONNECTED__0;

  wallace_tree u_wallace_tree ( .prod_0(prod_0), .prod_1(prod_1), .prod_2(
        prod_2), .prod_3(prod_3), .prod_4(prod_4), .prod_5(prod_5), .prod_6(
        prod_6), .prod_7(prod_7), .cin(cin[5:0]), .cout({
        SYNOPSYS_UNCONNECTED__0, b[30:0]}), .s(a) );
  wallace_adder u_wallace_adder ( .a(a), .b({b[30:0], cin[6]}), .cin(cin[7]), 
        .sum(product) );
endmodule


module mul_tc_16_16 ( a, b, product );
  input [15:0] a;
  input [15:0] b;
  output [31:0] product;

  wire   [31:0] prod_0;
  wire   [31:0] prod_1;
  wire   [31:0] prod_2;
  wire   [31:0] prod_3;
  wire   [31:0] prod_4;
  wire   [31:0] prod_5;
  wire   [31:0] prod_6;
  wire   [31:0] prod_7;
  wire   [7:0] c;

  booth u_booth ( .a(a), .b(b), .prod_0(prod_0), .prod_1(prod_1), .prod_2(
        prod_2), .prod_3(prod_3), .prod_4(prod_4), .prod_5(prod_5), .prod_6(
        prod_6), .prod_7(prod_7), .c(c) );
  wallace u_wallace ( .prod_0(prod_0), .prod_1(prod_1), .prod_2(prod_2), 
        .prod_3(prod_3), .prod_4(prod_4), .prod_5(prod_5), .prod_6(prod_6), 
        .prod_7(prod_7), .cin(c), .product(product) );
endmodule

