module wallace_tree(
    input    [31:0]  prod_0,
    input    [31:0]  prod_1,
    input    [31:0]  prod_2,
    input    [31:0]  prod_3,
    input    [31:0]  prod_4,
    input    [31:0]  prod_5,
    input    [31:0]  prod_6,
    input    [31:0]  prod_7,
    input    [5:0]  cin,
    output  [31:0]  cout,
    output  [31:0]  s
);
wire [5:0]  cout_0, cout_1, cout_2, cout_3, cout_4, cout_5, cout_6, cout_7, cout_8, 
                cout_9, cout_10, cout_11, cout_12, cout_13, cout_14, cout_15, cout_16, cout_17, 
                cout_18, cout_19, cout_20, cout_21, cout_22, cout_23, cout_24, cout_25, cout_26, 
                cout_27, cout_28, cout_29, cout_30;

wallace_tree_1bit u_wallace_1_bit_0  (.N({prod_7[0],  prod_6[0],prod_5[0],prod_4[0],prod_3[0],prod_2[0],prod_1[0],prod_0[0]}), .cin(cin), .cout(cout_0), .S(s[0]), .C(cout[0]));
wallace_tree_1bit u_wallace_1_bit_1  (.N({prod_7[1],  prod_6[1],prod_5[1],prod_4[1],prod_3[1],prod_2[1],prod_1[1],prod_0[1]}), .cin(cout_0), .cout(cout_1), .S(s[1]), .C(cout[1]));
wallace_tree_1bit u_wallace_1_bit_2  (.N({prod_7[2],  prod_6[2],prod_5[2],prod_4[2],prod_3[2],prod_2[2],prod_1[2],prod_0[2]}), .cin(cout_1), .cout(cout_2), .S(s[2]), .C(cout[2]));
wallace_tree_1bit u_wallace_1_bit_3  (.N({prod_7[3],  prod_6[3],prod_5[3],prod_4[3],prod_3[3],prod_2[3],prod_1[3],prod_0[3]}), .cin(cout_2), .cout(cout_3), .S(s[3]), .C(cout[3]));
wallace_tree_1bit u_wallace_1_bit_4  (.N({prod_7[4],  prod_6[4],prod_5[4],prod_4[4],prod_3[4],prod_2[4],prod_1[4],prod_0[4]}), .cin(cout_3), .cout(cout_4), .S(s[4]), .C(cout[4]));
wallace_tree_1bit u_wallace_1_bit_5  (.N({prod_7[5],  prod_6[5],prod_5[5],prod_4[5],prod_3[5],prod_2[5],prod_1[5],prod_0[5]}), .cin(cout_4), .cout(cout_5), .S(s[5]), .C(cout[5]));
wallace_tree_1bit u_wallace_1_bit_6  (.N({prod_7[6],  prod_6[6],prod_5[6],prod_4[6],prod_3[6],prod_2[6],prod_1[6],prod_0[6]}), .cin(cout_5), .cout(cout_6), .S(s[6]), .C(cout[6]));
wallace_tree_1bit u_wallace_1_bit_7  (.N({prod_7[7],  prod_6[7],prod_5[7],prod_4[7],prod_3[7],prod_2[7],prod_1[7],prod_0[7]}), .cin(cout_6), .cout(cout_7), .S(s[7]), .C(cout[7]));
wallace_tree_1bit u_wallace_1_bit_8  (.N({prod_7[8],  prod_6[8],prod_5[8],prod_4[8],prod_3[8],prod_2[8],prod_1[8],prod_0[8]}), .cin(cout_7), .cout(cout_8), .S(s[8]), .C(cout[8]));
wallace_tree_1bit u_wallace_1_bit_9  (.N({prod_7[9],  prod_6[9],prod_5[9],prod_4[9],prod_3[9],prod_2[9],prod_1[9],prod_0[9]}), .cin(cout_8), .cout(cout_9), .S(s[9]), .C(cout[9]));
wallace_tree_1bit u_wallace_1_bit_10(.N({prod_7[10],prod_6[10],prod_5[10],prod_4[10],prod_3[10],prod_2[10],prod_1[10],prod_0[10]}), .cin(cout_9), .cout(cout_10), .S(s[10]), .C(cout[10]));
wallace_tree_1bit u_wallace_1_bit_11(.N({prod_7[11],prod_6[11],prod_5[11],prod_4[11],prod_3[11],prod_2[11],prod_1[11],prod_0[11]}), .cin(cout_10), .cout(cout_11), .S(s[11]), .C(cout[11]));
wallace_tree_1bit u_wallace_1_bit_12(.N({prod_7[12],prod_6[12],prod_5[12],prod_4[12],prod_3[12],prod_2[12],prod_1[12],prod_0[12]}), .cin(cout_11), .cout(cout_12), .S(s[12]), .C(cout[12]));
wallace_tree_1bit u_wallace_1_bit_13(.N({prod_7[13],prod_6[13],prod_5[13],prod_4[13],prod_3[13],prod_2[13],prod_1[13],prod_0[13]}), .cin(cout_12), .cout(cout_13), .S(s[13]), .C(cout[13]));
wallace_tree_1bit u_wallace_1_bit_14(.N({prod_7[14],prod_6[14],prod_5[14],prod_4[14],prod_3[14],prod_2[14],prod_1[14],prod_0[14]}), .cin(cout_13), .cout(cout_14), .S(s[14]), .C(cout[14]));
wallace_tree_1bit u_wallace_1_bit_15(.N({prod_7[15],prod_6[15],prod_5[15],prod_4[15],prod_3[15],prod_2[15],prod_1[15],prod_0[15]}), .cin(cout_14), .cout(cout_15), .S(s[15]), .C(cout[15]));
wallace_tree_1bit u_wallace_1_bit_16(.N({prod_7[16],prod_6[16],prod_5[16],prod_4[16],prod_3[16],prod_2[16],prod_1[16],prod_0[16]}), .cin(cout_15), .cout(cout_16), .S(s[16]), .C(cout[16]));
wallace_tree_1bit u_wallace_1_bit_17(.N({prod_7[17],prod_6[17],prod_5[17],prod_4[17],prod_3[17],prod_2[17],prod_1[17],prod_0[17]}), .cin(cout_16), .cout(cout_17), .S(s[17]), .C(cout[17]));
wallace_tree_1bit u_wallace_1_bit_18(.N({prod_7[18],prod_6[18],prod_5[18],prod_4[18],prod_3[18],prod_2[18],prod_1[18],prod_0[18]}), .cin(cout_17), .cout(cout_18), .S(s[18]), .C(cout[18]));
wallace_tree_1bit u_wallace_1_bit_19(.N({prod_7[19],prod_6[19],prod_5[19],prod_4[19],prod_3[19],prod_2[19],prod_1[19],prod_0[19]}), .cin(cout_18), .cout(cout_19), .S(s[19]), .C(cout[19]));
wallace_tree_1bit u_wallace_1_bit_20(.N({prod_7[20],prod_6[20],prod_5[20],prod_4[20],prod_3[20],prod_2[20],prod_1[20],prod_0[20]}), .cin(cout_19), .cout(cout_20), .S(s[20]), .C(cout[20]));
wallace_tree_1bit u_wallace_1_bit_21(.N({prod_7[21],prod_6[21],prod_5[21],prod_4[21],prod_3[21],prod_2[21],prod_1[21],prod_0[21]}), .cin(cout_20), .cout(cout_21), .S(s[21]), .C(cout[21]));
wallace_tree_1bit u_wallace_1_bit_22(.N({prod_7[22],prod_6[22],prod_5[22],prod_4[22],prod_3[22],prod_2[22],prod_1[22],prod_0[22]}), .cin(cout_21), .cout(cout_22), .S(s[22]), .C(cout[22]));
wallace_tree_1bit u_wallace_1_bit_23(.N({prod_7[23],prod_6[23],prod_5[23],prod_4[23],prod_3[23],prod_2[23],prod_1[23],prod_0[23]}), .cin(cout_22), .cout(cout_23), .S(s[23]), .C(cout[23]));
wallace_tree_1bit u_wallace_1_bit_24(.N({prod_7[24],prod_6[24],prod_5[24],prod_4[24],prod_3[24],prod_2[24],prod_1[24],prod_0[24]}), .cin(cout_23), .cout(cout_24), .S(s[24]), .C(cout[24]));
wallace_tree_1bit u_wallace_1_bit_25(.N({prod_7[25],prod_6[25],prod_5[25],prod_4[25],prod_3[25],prod_2[25],prod_1[25],prod_0[25]}), .cin(cout_24), .cout(cout_25), .S(s[25]), .C(cout[25]));
wallace_tree_1bit u_wallace_1_bit_26(.N({prod_7[26],prod_6[26],prod_5[26],prod_4[26],prod_3[26],prod_2[26],prod_1[26],prod_0[26]}), .cin(cout_25), .cout(cout_26), .S(s[26]), .C(cout[26]));
wallace_tree_1bit u_wallace_1_bit_27(.N({prod_7[27],prod_6[27],prod_5[27],prod_4[27],prod_3[27],prod_2[27],prod_1[27],prod_0[27]}), .cin(cout_26), .cout(cout_27), .S(s[27]), .C(cout[27]));
wallace_tree_1bit u_wallace_1_bit_28(.N({prod_7[28],prod_6[28],prod_5[28],prod_4[28],prod_3[28],prod_2[28],prod_1[28],prod_0[28]}), .cin(cout_27), .cout(cout_28), .S(s[28]), .C(cout[28]));
wallace_tree_1bit u_wallace_1_bit_29(.N({prod_7[29],prod_6[29],prod_5[29],prod_4[29],prod_3[29],prod_2[29],prod_1[29],prod_0[29]}), .cin(cout_28), .cout(cout_29), .S(s[29]), .C(cout[29]));
wallace_tree_1bit u_wallace_1_bit_30(.N({prod_7[30],prod_6[30],prod_5[30],prod_4[30],prod_3[30],prod_2[30],prod_1[30],prod_0[30]}), .cin(cout_29), .cout(cout_30), .S(s[30]), .C(cout[30]));
wallace_tree_1bit u_wallace_1_bit_31(.N({prod_7[31],prod_6[31],prod_5[31],prod_4[31],prod_3[31],prod_2[31],prod_1[31],prod_0[31]}), .cin(cout_30), .cout(            ), .S(s[31]), .C(cout[31]));


endmodule