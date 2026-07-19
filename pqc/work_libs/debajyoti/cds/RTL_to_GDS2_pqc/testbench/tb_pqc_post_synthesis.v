`timescale 1ns / 1ps

module tb_pqc_post_synthesis;

    // ============================================================
    // DUT Inputs
    // ============================================================

    reg        clk;
    reg        rst_n;
    reg        start;
    reg  [3:0] sw;
    wire [3:0] led;
    wire       done_led;
    integer out_count;

    // ============================================================
    // 5 MHz CLOCK (200 ns PERIOD)
    // ============================================================

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // ============================================================
    // DUT
    // ============================================================

     pqc_top_wrapper uut (
        .clk     (clk),
        .rst_n   (rst_n),
        .start   (start),
        .sw      (sw),
        .led     (led),
        .done_led(done_led)
    );
    task test_switches(input [3:0] switch_val);
        begin
            @(negedge clk);
            sw = switch_val;
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
            repeat(4) @(posedge clk); // Allow time for post-syn delays
        end
    endtask

    // ============================================================
    // MAIN STIMULUS
    // ============================================================
initial begin
	out_count=0;
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

    // ============================================================
    // OUTPUT MONITOR
    // ============================================================

    initial begin

        $display("==============================================================");
        $display(" Time(ns)\trst\tenable\ta\tb\tmac_out");
        $display("==============================================================");

        forever @(posedge clk) begin

            out_count = out_count + 1;

            $display(
                "%0t\t%b\t%b\t%0d\t%0d\t%0d",
                $time,
                rst_n,
                start,
                sw,
                led,
                done_led
             );
 
        end

    end

    // ============================================================
    // OPTIONAL CONTINUOUS MONITOR
    // ============================================================

    always @(posedge clk) begin

        $display(
            "T=%0t rst=%b start=%b sw=%0d led=%0d done_led=%0d",
            $time,
            rst_n,
            start,
            sw,
            led,
            done_led
        );

    end

    // ============================================================
    // SDF ANNOTATION
    // Replace path with generated SDF file
    // ============================================================

    initial begin

        $sdf_annotate(
            "../2_Synthesis_wrapper_6M1L/delays.sdf",
            uut,
            ,
            "sdf.log"
        );

    end

    // ============================================================
    // DUMP WAVES
    // ============================================================

    initial begin

        $dumpfile("pqc_chip_post_synthesis.vcd");
        $dumpvars(0, tb_pqc_post_synthesis);

    end

endmodule
