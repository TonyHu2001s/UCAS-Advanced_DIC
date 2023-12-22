`timescale 1ns/1ps
module tb_dut;

reg A, B, clk;
wire X, Z;

always #1 clk = ~clk;

initial begin
$vcdpluson;
clk = 1'b1;
A = 1'b0;
B = 1'b0;
#0.5;
B=1'b1;
#1;
A=1'b1;
#1;
A=1'b0;
#2.6;
B=1'b0;
#5.9;
$finish;
end


dut u_dut(
    .clk(clk),
    .A  (A),
    .B  (B),
    .X  (X),
    .Z  (Z)
);

endmodule
