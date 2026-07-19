`timescale 1ns / 1ps

module poly_add #(
    parameter W = 6,
    parameter Q = 17
)(
    input  wire [4*W-1:0] a,
    input  wire [4*W-1:0] b,
    output wire [4*W-1:0] c
);

    // Each coefficient sum: max 16+16 = 32, fits in W+1 = 7 bits
    wire [W:0] s0 = a[0*W +: W] + b[0*W +: W];
    wire [W:0] s1 = a[1*W +: W] + b[1*W +: W];
    wire [W:0] s2 = a[2*W +: W] + b[2*W +: W];
    wire [W:0] s3 = a[3*W +: W] + b[3*W +: W];

    // Reduce mod Q: since inputs < Q, sum < 2Q -> one subtract suffices
    assign c[0*W +: W] = (s0 >= Q) ? s0 - Q : s0[W-1:0];
    assign c[1*W +: W] = (s1 >= Q) ? s1 - Q : s1[W-1:0];
    assign c[2*W +: W] = (s2 >= Q) ? s2 - Q : s2[W-1:0];
    assign c[3*W +: W] = (s3 >= Q) ? s3 - Q : s3[W-1:0];

endmodule
