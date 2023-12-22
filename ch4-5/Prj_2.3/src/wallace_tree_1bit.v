module wallace_tree_1bit(
    input    [7:0]  N,
    input    [5:0]  cin,
    output  [5:0]  cout,
    output  S,
    output  C
);

wire   s1_1, s1_2, s1_3, s2_1, s2_2, s3_1;

full_adder u_full_adder_0 (.a(N[0]), .b(N[1]), .cin(N[2]), .cout(cout[0]), .s(s1_1));
full_adder u_full_adder_1 (.a(N[3]), .b(N[4]), .cin(N[5]), .cout(cout[1]), .s(s1_2));
half_adder u_half_adder_0 (.a(N[6]), .b(N[7]), .c(cout[2]), .s(s1_3));
full_adder u_full_adder_2 (.a(s1_1), .b(s1_2), .cin(s1_3), .cout(cout[3]), .s(s2_1));
full_adder u_full_adder_3 (.a(cin[0]), .b(cin[1]), .cin(cin[2]), .cout(cout[4]), .s(s2_2));
full_adder u_full_adder_4 (.a(s2_1), .b(s2_2), .cin(cin[3]), .cout(cout[5]), .s(s3_1));
full_adder u_full_adder_5 (.a(s3_1), .b(cin[4]), .cin(cin[5]), .cout(C), .s(S));


endmodule