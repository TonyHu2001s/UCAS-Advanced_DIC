
`timescale 1ns/1ns

module tb_add_tc_16_16 ();

    reg   [15:0]   a,b;
    wire  [16:0]   sum;

    initial begin
        $vcdpluson;
        a = 16'b0110_0000_1000_0000;
        b = 16'b1000_0000_0000_0001;
        #10;
        a = 16'b1000_0000_0000_0001;
        b = 16'b1000_0000_0000_0001;
        #10;
        a <= 16'b0111_1111_1111_1111;
        b <= 16'b0111_1111_1111_1111;
        #10;
        $finish;
    end

    add_tc_16_16 u_add_tc_16_16(
        .a  (a),
        .b  (b),
        .sum(sum)
    );

endmodule
