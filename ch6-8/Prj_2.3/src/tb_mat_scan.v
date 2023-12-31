module testbench ();
    reg clk, rst_n, vld_in;
    reg [9:0] din;
    wire vld_out;
    wire [9:0] dout;

    initial begin
        $vcdpluson;
        clk <= 1'b0;
        rst_n <= 1'b0;
        din <= 10'b00_0000_0000;
        vld_in <= 1'b0;
        #20
        rst_n <= 1'b1;
        vld_in <= 1'b1;
        #1290
        vld_in <= 1'b0;
        #1300;
        vld_in = 1'b1;
        $finish;
    end

    always #10 clk <= ~clk;

    always @(posedge clk) begin
        if (vld_in == 1'b1) begin
           din <= din + 1'b1;
        end
    end

    mat_scan u_mat_scan(
        .clk(clk),
        .rst_n(rst_n),
        .vld_in(vld_in),
        .din(din),
        .vld_out(vld_out),
        .dout(dout)
    );

endmodule
