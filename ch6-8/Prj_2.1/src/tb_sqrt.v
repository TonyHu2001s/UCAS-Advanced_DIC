
`timescale 1ns/1ns

module tb_sqrt ();

    reg      clk;
    reg     rst_n;
    reg     vld_in;
    reg [31:0] x;
    wire    vld_out;
    wire [15:0] y;

always #50 clk = ~clk;

    initial begin
        $vcdpluson;
        clk = 1'b0;
        rst_n = 1'b0;
        vld_in = 1'b0;
        #20;
        rst_n = 1'b1;
        vld_in = 1'b1;
        x = 32'h0000_0100;
        #100;
        x = 32'h0000_00FF;
        #100;
        x = 32'h8000_0000;
        #100;
        x = 32'hFFFF_FFFF;
        #100;
        vld_in = 1'b0;
        #2500;
        $finish;
    end

    sqrt u_sqrt(
        .clk    (clk),
        .rst_n (rst_n),
        .vld_in(vld_in),
        .x       (x),
        .vld_out(vld_out),
        .y       (y)
    );

endmodule
