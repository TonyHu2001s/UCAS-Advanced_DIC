module half_adder(
    input    a,
    input    b,
    output  s,
    output  c
);

assign {c,s} = a+b;

endmodule