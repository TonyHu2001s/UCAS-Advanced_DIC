
`timescale 1ns/1ns

module tb_bin2bcd ();

    reg  [7:0]   bin_in;
    wire  [9:0]   bcd_out;

    initial begin
        $vcdpluson;
        bin_in = 8'b1010_0101;
        #10;
        bin_in = 8'b1111_0000;
        #10;
        bin_in = 8'b1111_1111;
        #10;
        bin_in = 8'b0000_0000;
        #10;
        $finish;
    end

    bin2bcd u_bin2bcd(
        .bin_in      (bin_in),
        .bcd_out     (bcd_out)
    );


endmodule
