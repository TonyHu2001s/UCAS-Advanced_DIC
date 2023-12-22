
`timescale 1ns/1ns

module tb_vec_1_detector ();

    reg [31:0] data_in;
    wire [5:0] pos_out;

    initial begin
        $vcdpluson;
        data_in = 32'b00011000_10000000_00000000_00000000;
        #10
        data_in = 32'b00000000_11111111_00000000_00000000;
        #10
        data_in = 32'b00000000_00000000_00000000_00001010;
        #10
        data_in = 32'b00000000_00000000_00000000_00000000;
        #10;
        data_in = 32'b00000000_00000000_00000000_00000000;
    end

    vec_1_detector u_vec_1_detector(
        .data_in(data_in),
        .pos_out(pos_out)
    );

endmodule
