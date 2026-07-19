`timescale 1ns / 1ps

module fpga_wrapper (
    input  wire       clk,
    input  wire       rst_n, 
    input  wire       start,
    input  wire [3:0] sw,
    output wire [3:0] led,
    output wire       done_led
);

    localparam NUM_BUSES = 4;
    localparam BUS_WIDTH = 6;
    localparam K         = 3;                       // K=3
    localparam POLY_BITS = NUM_BUSES * BUS_WIDTH;   // 24

    // -------------------------------------------------------------------------
    // 1. Raw inputs (Contains 2's complement negative numbers)
    // -------------------------------------------------------------------------
    wire [K*K*POLY_BITS-1:0] A_raw = {
        {-6'd0,  6'd2,  6'd0,  6'd1}, { 6'd1,  6'd0,  6'd10, 6'd0}, { 6'd0,  6'd5,  6'd0,  6'd1},
        { 6'd8,  6'd0,  6'd0,  6'd1}, { 6'd0,  6'd10, 6'd0,  6'd1}, {-6'd10, 6'd0,  6'd2,  6'd0},
        { 6'd0, -6'd13, 6'd0,  6'd9}, { 6'd6,  6'd0,  6'd0,  6'd1}, { 6'd11, 6'd0,  6'd0,  6'd1}
    };

    wire [K*POLY_BITS-1:0] S_raw = {
        {6'd2, 6'd0, 6'd0, 6'd1},
        {6'd0, 6'd1, 6'd0, 6'd1},
        {6'd1, 6'd0, 6'd0, 6'd1}
    };

    wire [K*POLY_BITS-1:0] E_raw = {
        {-6'd1,  6'd0,  6'd2,  6'd1},
        { 6'd0, -6'd1,  6'd1,  6'd0},
        {-6'd1,  6'd2,  6'd1,  6'd1}
    };

    wire [K*POLY_BITS-1:0] R_raw = {
        {6'd0, 6'd0, 6'd0, 6'd0},
        {6'd0, 6'd0, 6'd0, 6'd1},
        {6'd0, 6'd0, 6'd0, 6'd1}
    };

    wire [K*POLY_BITS-1:0] E1_raw = {
        {6'd0, 6'd0, 6'd0, 6'd0},
        {6'd0, 6'd0, 6'd0, 6'd1},
        {6'd0, 6'd0, 6'd0, 6'd0}
    };

    wire [POLY_BITS-1:0] E2_raw = {6'd0, 6'd0, 6'd0, 6'd0};

    // -------------------------------------------------------------------------
    // 2. Cleaned wires (Strictly positive modulo-17)
    // -------------------------------------------------------------------------
    wire [K*K*POLY_BITS-1:0] A_clean;
    wire [K*POLY_BITS-1:0]   S_clean, E_clean, R_clean, E1_clean;
    wire [POLY_BITS-1:0]     E2_clean;

    // -------------------------------------------------------------------------
    // 3. Sanitizer Instantiations
    // -------------------------------------------------------------------------
    array_sanitize #(.NUM_COEFFS(K*K*NUM_BUSES), .BUS_WIDTH(BUS_WIDTH)) san_A (
        .in_array(A_raw), .out_array(A_clean)
    );

    array_sanitize #(.NUM_COEFFS(K*NUM_BUSES), .BUS_WIDTH(BUS_WIDTH)) san_S  (.in_array(S_raw),  .out_array(S_clean));
    array_sanitize #(.NUM_COEFFS(K*NUM_BUSES), .BUS_WIDTH(BUS_WIDTH)) san_E  (.in_array(E_raw),  .out_array(E_clean));
    array_sanitize #(.NUM_COEFFS(K*NUM_BUSES), .BUS_WIDTH(BUS_WIDTH)) san_R  (.in_array(R_raw),  .out_array(R_clean));
    array_sanitize #(.NUM_COEFFS(K*NUM_BUSES), .BUS_WIDTH(BUS_WIDTH)) san_E1 (.in_array(E1_raw), .out_array(E1_clean));
    array_sanitize #(.NUM_COEFFS(NUM_BUSES),   .BUS_WIDTH(BUS_WIDTH)) san_E2 (.in_array(E2_raw), .out_array(E2_clean));

    // -------------------------------------------------------------------------
    // 4. Message encoding: sw[i]=1 -> coeff[i] = 9 (~Q/2), sw[i]=0 -> 0
    // -------------------------------------------------------------------------
    wire [POLY_BITS-1:0] M;
    assign M[0*BUS_WIDTH +: BUS_WIDTH] = sw[0] ? 6'd9 : 6'd0;
    assign M[1*BUS_WIDTH +: BUS_WIDTH] = sw[1] ? 6'd9 : 6'd0;
    assign M[2*BUS_WIDTH +: BUS_WIDTH] = sw[2] ? 6'd9 : 6'd0;
    assign M[3*BUS_WIDTH +: BUS_WIDTH] = sw[3] ? 6'd9 : 6'd0;

    // -------------------------------------------------------------------------
    // 5. Kyber Core
    // -------------------------------------------------------------------------
    kyber_top #(
        .NUM_BUSES(NUM_BUSES),
        .BUS_WIDTH(BUS_WIDTH),
        .K(K)
    ) uut (
        .clk       (clk),
        .rst_n     (rst_n),
        .start     (start),
        .A         (A_clean),
        .S         (S_clean),
        .E         (E_clean),
        .R         (R_clean),
        .E1        (E1_clean),
        .E2        (E2_clean),
        .M         (M),
        .M_OUT_REAL(led),
        .valid_out (done_led)
    );

endmodule