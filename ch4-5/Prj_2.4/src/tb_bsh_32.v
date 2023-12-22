
`timescale 1ns/1ns

module tb_bsh_32();

reg [31:0] data_in;
reg dir;
reg [4:0] sh;
wire [31:0] data_out;

initial begin
    $vcdpluson;
    data_in <= 32'b0001_1000_1010_0000_0000_0000_0000_0000;
    dir <= 1'b0;
    sh <= 5'd10;
    #10
    data_in <= 32'b0000_0000_1111_1111_0000_0000_0000_0011;
    dir <= 1'b1;
    sh <= 5'd20;
    #10;
    data_in <= 32'b0001_1000_1010_0000_0000_0000_0000_0000;
    dir <= 1'b0;
    sh <= 5'd10;
end

bsh_32 u_bsh_32(
    .data_in(data_in),
    .dir(dir),
    .sh(sh),
    .data_out(data_out)
);

endmodule
