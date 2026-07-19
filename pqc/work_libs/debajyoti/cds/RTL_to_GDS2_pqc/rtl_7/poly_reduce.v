`timescale 1ns / 1ps

module poly_reduce #(
    parameter W  = 6,
    parameter CW = 12,   
    parameter Q  = 17   
)(
    input  wire [4*W-1:0] p,   
    output wire [4*W-1:0] r
);
    // Direct wire assignment
    assign r = p;

endmodule
