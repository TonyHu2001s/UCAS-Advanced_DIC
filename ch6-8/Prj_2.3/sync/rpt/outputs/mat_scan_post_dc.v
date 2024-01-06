/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Wed Jan  3 23:27:57 2024
/////////////////////////////////////////////////////////////


module mat_scan ( clk, rst_n, vld_in, din, vld_out, dout );
  input [9:0] din;
  output [9:0] dout;
  input clk, rst_n, vld_in;
  output vld_out;
  wire   N70, N71, N72, N73, N74, N655, N656, N657, N658, N659, N660, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15, n16, n18, n19, n20,
         n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n40, n41, n42, n43;
  wire   [5:2] \add_39/carry ;
  tri   clk;
  tri   rst_n;
  tri   [9:0] din;
  tri   [9:0] dout;
  tri   [5:0] addr;
  tri   cs_n;
  tri   w_en;
  tri   r_en;

  DFFRX1 w_en_reg ( .D(n36), .CK(clk), .RN(rst_n), .Q(w_en) );
  DFFRX1 r_en_reg ( .D(n37), .CK(clk), .RN(rst_n), .Q(r_en) );
  DFFSX1 cs_n_reg ( .D(n38), .CK(clk), .SN(rst_n), .Q(cs_n) );
  DFFSX1 \addr_reg[5]  ( .D(N660), .CK(clk), .SN(rst_n), .Q(addr[5]) );
  DFFSX1 \addr_reg[4]  ( .D(N659), .CK(clk), .SN(rst_n), .Q(addr[4]) );
  DFFSX1 \addr_reg[2]  ( .D(N657), .CK(clk), .SN(rst_n), .Q(addr[2]) );
  DFFSX1 \addr_reg[0]  ( .D(N655), .CK(clk), .SN(rst_n), .Q(addr[0]) );
  DFFSX1 \addr_reg[1]  ( .D(N656), .CK(clk), .SN(rst_n), .Q(addr[1]) );
  DFFSX1 \addr_reg[3]  ( .D(N658), .CK(clk), .SN(rst_n), .Q(addr[3]) );
  DFFRX1 vld_out_reg ( .D(n35), .CK(clk), .RN(rst_n), .QN(n34) );
  CLKINVX1 U47 ( .A(n24), .Y(n43) );
  NOR2X1 U48 ( .A(n4), .B(n31), .Y(n24) );
  NAND2X1 U49 ( .A(n31), .B(n15), .Y(n6) );
  CLKINVX1 U50 ( .A(n10), .Y(n42) );
  CLKINVX1 U51 ( .A(addr[3]), .Y(n4) );
  OAI2BB2XL U52 ( .B0(vld_in), .B1(n27), .A0N(N70), .A1N(vld_in), .Y(N656) );
  AOI211X1 U53 ( .A0(addr[1]), .A1(n28), .B0(n29), .C0(n30), .Y(n27) );
  NOR3X1 U54 ( .A(n15), .B(addr[1]), .C(n4), .Y(n30) );
  NAND2X1 U55 ( .A(addr[3]), .B(n6), .Y(n28) );
  AND2X2 U56 ( .A(addr[5]), .B(addr[4]), .Y(n31) );
  AOI211X1 U57 ( .A0(addr[1]), .A1(n15), .B0(n43), .C0(n25), .Y(n29) );
  OAI21XL U58 ( .A0(addr[3]), .A1(addr[5]), .B0(n15), .Y(n16) );
  CLKINVX1 U59 ( .A(addr[0]), .Y(n15) );
  AOI22X1 U60 ( .A0(addr[4]), .A1(n8), .B0(addr[5]), .B1(n9), .Y(n3) );
  CLKINVX1 U61 ( .A(addr[4]), .Y(n9) );
  OAI21XL U62 ( .A0(addr[5]), .A1(n10), .B0(addr[0]), .Y(n8) );
  NAND2X1 U63 ( .A(addr[3]), .B(n42), .Y(n7) );
  NAND2X1 U64 ( .A(addr[2]), .B(addr[1]), .Y(n10) );
  OAI2BB2XL U65 ( .B0(vld_in), .B1(n20), .A0N(N71), .A1N(vld_in), .Y(N657) );
  AOI211X1 U66 ( .A0(n42), .A1(n21), .B0(n22), .C0(n23), .Y(n20) );
  AND4X1 U67 ( .A(n25), .B(addr[1]), .C(addr[3]), .D(addr[0]), .Y(n22) );
  NAND3X1 U68 ( .A(n6), .B(n43), .C(addr[3]), .Y(n21) );
  AO22X1 U69 ( .A0(N72), .A1(vld_in), .B0(n18), .B1(n40), .Y(N658) );
  NAND2X1 U70 ( .A(n6), .B(n19), .Y(n18) );
  OAI31XL U71 ( .A0(addr[0]), .A1(addr[5]), .A2(addr[4]), .B0(n4), .Y(n19) );
  ADDHXL U72 ( .A(addr[3]), .B(\add_39/carry [3]), .CO(\add_39/carry [4]), .S(
        N72) );
  ADDHXL U73 ( .A(addr[1]), .B(addr[0]), .CO(\add_39/carry [2]), .S(N70) );
  ADDHXL U74 ( .A(addr[2]), .B(\add_39/carry [2]), .CO(\add_39/carry [3]), .S(
        N71) );
  CLKINVX1 U75 ( .A(addr[2]), .Y(n25) );
  AOI33X1 U76 ( .A0(addr[3]), .A1(n15), .A2(addr[5]), .B0(addr[0]), .B1(n7), 
        .B2(addr[4]), .Y(n14) );
  NAND2X1 U77 ( .A(vld_in), .B(n34), .Y(n35) );
  NAND2BX1 U78 ( .AN(w_en), .B(n40), .Y(n36) );
  OAI2BB1X1 U79 ( .A0N(N73), .A1N(vld_in), .B0(n11), .Y(N659) );
  OAI21XL U80 ( .A0(n12), .A1(n41), .B0(n40), .Y(n11) );
  AOI21X1 U81 ( .A0(n7), .A1(n16), .B0(addr[4]), .Y(n12) );
  CLKINVX1 U82 ( .A(n14), .Y(n41) );
  AO22X1 U83 ( .A0(N74), .A1(vld_in), .B0(n2), .B1(n40), .Y(N660) );
  OAI211X1 U84 ( .A0(n3), .A1(n4), .B0(n5), .C0(n6), .Y(n2) );
  NAND3X1 U85 ( .A(addr[5]), .B(n7), .C(addr[0]), .Y(n5) );
  AO22X1 U86 ( .A0(n15), .A1(vld_in), .B0(n32), .B1(n40), .Y(N655) );
  OAI22XL U87 ( .A0(n10), .A1(n43), .B0(addr[0]), .B1(n33), .Y(n32) );
  NOR3X1 U88 ( .A(n43), .B(addr[2]), .C(addr[1]), .Y(n33) );
  ADDHXL U89 ( .A(addr[4]), .B(\add_39/carry [4]), .CO(\add_39/carry [5]), .S(
        N73) );
  AOI211X1 U90 ( .A0(n24), .A1(n15), .B0(n25), .C0(addr[1]), .Y(n23) );
  AND2X2 U91 ( .A(cs_n), .B(n40), .Y(n38) );
  OR2X1 U92 ( .A(r_en), .B(n40), .Y(n37) );
  CLKINVX1 U93 ( .A(vld_in), .Y(n40) );
  XOR2X1 U94 ( .A(\add_39/carry [5]), .B(addr[5]), .Y(N74) );
  sram u_sram ( .clk(clk), .rst_n(rst_n), .cs_n(cs_n), .w_en(w_en), .r_en(r_en), .addr(addr), .din(din), .dout(dout) );
  INVX20 U46 ( .A(n34), .Y(vld_out) );
endmodule

