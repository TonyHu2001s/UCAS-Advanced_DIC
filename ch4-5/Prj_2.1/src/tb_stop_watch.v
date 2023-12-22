
`timescale 1ns/1ns

module tb_stop_watch ();

    reg      clk;
    reg     rst_n;
    reg     clear;
    reg     start_stop;
    wire    [3:0]   sec_l;
    wire    [3:0]   sec_h;
    wire    [3:0]   min_l;
    wire    [3:0]   min_h;
    wire    [3:0]   hr_l;
    wire    [3:0]   hr_h;

always #5 clk = ~clk;

    initial begin
        $vcdpluson;
        clk = 1'b0;
        rst_n = 1'b0;
        clear = 1'b0;
        start_stop = 1'b0;
        #5000;
        rst_n = 1'b1;
        start_stop = 1'b1;
        #2; start_stop=1'b0;
        #5000;
        clear = 1'b0;
        #5000;
        clear = 1'b0;
        #50000;
        start_stop = 1'b1;
        #2; start_stop=1'b0;
        #5000;
        start_stop = 1'b1;
        #2; start_stop=1'b0;
        #3000;
        start_stop = 1'b1;
        #2; start_stop=1'b0;
        #1000;
        $finish;
    end

    stop_watch u_stop_watch(
        .clk    (clk),
        .rst_n (rst_n),
        .clear (clear),
        .start_stop  (start_stop),
        .sec_l  (sec_l),
        .sec_h (sec_h),
        .min_l  (min_l),
        .min_h (min_h),
        .hr_l  (hr_l),
        .hr_h (hr_h)
    );

endmodule
