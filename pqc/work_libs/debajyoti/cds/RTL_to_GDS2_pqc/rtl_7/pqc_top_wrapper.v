`timescale 1ns / 1ps

module pqc_top_wrapper (
    input  wire       clk,
    input  wire       rst_n, 
    input  wire       start,
    input  wire [3:0] sw,
    output wire [3:0] led,
    output wire       done_led
);
    wire clk_buf;
    wire rst_n_Pad;
    wire start_pad;
    wire [3:0] sw_pad;
    wire [3:0] led_pad;
    wire done_led_pad;
 
    fpga_wrapper uut (
        .clk     (clk_buf),
        .rst_n   (rst_n_pad),
        .start   (start_pad),
        .sw      (sw_pad),
        .led     (led_pad),
        .done_led(done_led_pad)
    );

//Clock 
 pc3d01 pc3d01_clk(
	.PAD(clk),
	.CIN(clk_pad)
);
 pc3c01 pc3c01_clk_buf(
	.CCLK(clk_pad),
	.CP(clk_buf)
);
//Control Inputs
 pc3d01 pc3d01_rst_n(
	.PAD(rst_n),
	.CIN(rst_n_pad)
);
 pc3d01 pc3d01_start(
	.PAD(start),
	.CIN(start_pad)
);

//Inputs
pc3d01 pc3d01_sw0 (.PAD(sw[0]), .CIN(sw_pad[0]));
pc3d01 pc3d01_sw1 (.PAD(sw[1]), .CIN(sw_pad[1]));
pc3d01 pc3d01_sw2 (.PAD(sw[2]), .CIN(sw_pad[2]));
pc3d01 pc3d01_sw3 (.PAD(sw[3]), .CIN(sw_pad[3]));
//Outputs
pc3o01 pc3o01_led0 (.PAD(led[0]), .I(led_pad[0]));
pc3o01 pc3o01_led1 (.PAD(led[1]), .I(led_pad[1]));
pc3o01 pc3o01_led2 (.PAD(led[2]), .I(led_pad[2]));
pc3o01 pc3o01_led3 (.PAD(led[3]), .I(led_pad[3]));

pc3o01 pc3o01_done_led (.PAD(done_led), .I(done_led_pad));
endmodule
