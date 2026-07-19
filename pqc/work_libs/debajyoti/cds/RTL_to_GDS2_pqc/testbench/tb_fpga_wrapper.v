// =============================================================================
// tb_fpga_wrapper.v  --  Testbench for K=3 combinational build
// =============================================================================
`timescale 1ns / 1ps

module tb_fpga_wrapper();

    reg        clk;
    reg        rst_n;
    reg        start;
    reg  [3:0] sw;
    wire [3:0] led;
    wire       done_led;

    pqc_top_wrapper uut (
        .clk     (clk),
        .rst_n   (rst_n),
        .start   (start),
        .sw      (sw),
        .led     (led),
        .done_led(done_led)
    );

    initial clk = 0;
    always #5 clk = ~clk;

    task test_switches;
        input [3:0] test_sw;
        begin
            sw    = test_sw;
            @(negedge clk);
            start = 1;
            @(negedge clk);
            start = 0;
            @(posedge done_led);
            #1;

            if (sw === led)
                $display("   %b   |    %b    | PASS", sw, led);
            else
                $display("   %b   |    %b    | FAIL  (expected %b)", sw, led, sw);

            repeat(4) @(posedge clk);
        end
    endtask

    initial begin
        start = 0;
        sw    = 4'b0000;
        rst_n = 1;          // Assert reset (active HIGH)
        repeat(4) @(posedge clk);
        rst_n = 0;          // Release reset → running
        repeat(2) @(posedge clk);

        $display("===============================================================");
        $display("     K=3 FPGA WRAPPER SIMULATION (Combinational Build)         ");
        $display("===============================================================");
        $display(" SW Input  | LED Output | Status");
        $display("---------------------------------------------------------------");

        test_switches(4'b0000);
        test_switches(4'b0001);
        test_switches(4'b0010);
        test_switches(4'b0011);
        test_switches(4'b0100);
        test_switches(4'b0101);
        test_switches(4'b0110);
        test_switches(4'b0111);
        test_switches(4'b1000);
        test_switches(4'b1001);
        test_switches(4'b1010);
        test_switches(4'b1011);
        test_switches(4'b1100);
        test_switches(4'b1101);
        test_switches(4'b1110);
        test_switches(4'b1111);

        $display("===============================================================");
        $finish;
    end
	initial 
	begin
	    $dumpfile("pqc_top_wrapper.vcd");
            $dumpvars(0, tb_fpga_wrapper);
        end

endmodule
