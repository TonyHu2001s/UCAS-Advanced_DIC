
`timescale 1ns/1ns

module tb_seq_detector ();

    reg      clk;
    reg     rst_n;
    reg     din_vld;
    reg     din;
    wire    result;

always #1 clk = ~clk;

    initial begin
        $vcdpluson;
        clk = 1'b0;
        rst_n = 1'b0;
        din_vld = 1'b1;
        #5;
        rst_n = 1'b1;
        #36;
        din_vld = 1'b0;
        #36;
        din_vld = 1'b1;
        #10;
        $finish;
    end

    seq_detector u_seq_detector(
        .clk    (clk),
        .rst_n  (rst_n),
        .din_vld(din_vld),
        .din    (din),
        .result (result)
    );

    integer i;
    reg mem[35:0];

    initial $readmemb("input.txt",mem);

    always@(posedge clk or negedge rst_n) begin
        if(!rst_n)begin
            i <= 0;
            din <= 1'b0;
        end else begin
            din <= mem[i];
            i <= i+1;
        end
    end

endmodule
