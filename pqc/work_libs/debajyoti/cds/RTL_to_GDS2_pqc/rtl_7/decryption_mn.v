`timescale 1ns / 1ps

module decryption_mn #(
    parameter NUM_BUSES = 4,
    parameter BUS_WIDTH = 6,
    parameter K         = 3,
    parameter POLY_BITS = NUM_BUSES * BUS_WIDTH   // 24
)(
    input  wire [K*POLY_BITS-1:0] S,   // 3*24 = 72 bits
    input  wire [K*POLY_BITS-1:0] U,   // 72 bits
    input  wire [POLY_BITS-1:0]   V,   // 24 bits
    output wire [POLY_BITS-1:0]   MN   // 24 bits
);

    localparam Q = 17;

    genvar chunk;

    // -------------------------------------------------------------------------
    // Step 1: dot_product = S[0]*U[0] + S[1]*U[1] + S[2]*U[2]
    // Two poly_adds to accumulate three products.
    // -------------------------------------------------------------------------
    wire [POLY_BITS-1:0] prod0, prod1, prod2;
    wire [POLY_BITS-1:0] sum01, dot_product;

    poly_mult #(.W(BUS_WIDTH), .CW(12)) mult_0 (
        .a(S[POLY_BITS*0 +: POLY_BITS]),
        .b(U[POLY_BITS*0 +: POLY_BITS]),
        .p(prod0)
    );
    poly_mult #(.W(BUS_WIDTH), .CW(12)) mult_1 (
        .a(S[POLY_BITS*1 +: POLY_BITS]),
        .b(U[POLY_BITS*1 +: POLY_BITS]),
        .p(prod1)
    );
    poly_mult #(.W(BUS_WIDTH), .CW(12)) mult_2 (
        .a(S[POLY_BITS*2 +: POLY_BITS]),
        .b(U[POLY_BITS*2 +: POLY_BITS]),
        .p(prod2)
    );

    poly_add #(.W(BUS_WIDTH), .Q(Q)) add_01 (
        .a(prod0), .b(prod1), .c(sum01)
    );
    poly_add #(.W(BUS_WIDTH), .Q(Q)) add_012 (
        .a(sum01), .b(prod2), .c(dot_product)
    );

    // -------------------------------------------------------------------------
    // Step 2: MN = V - dot_product  mod Q, coefficient by coefficient
    // -------------------------------------------------------------------------
    generate
        for (chunk = 0; chunk < NUM_BUSES; chunk = chunk + 1) begin : sub_inst
            wire signed [BUS_WIDTH:0] v_val;
            wire signed [BUS_WIDTH:0] d_val;
            wire signed [BUS_WIDTH:0] diff;
            wire [BUS_WIDTH-1:0]      diff_plus_q;

            assign v_val       = $signed({1'b0, V[chunk*BUS_WIDTH +: BUS_WIDTH]});
            assign d_val       = $signed({1'b0, dot_product[chunk*BUS_WIDTH +: BUS_WIDTH]});
            assign diff        = v_val - d_val;
            assign diff_plus_q = diff + Q;

            assign MN[chunk*BUS_WIDTH +: BUS_WIDTH] =
                diff[BUS_WIDTH] ? diff_plus_q : diff[BUS_WIDTH-1:0];
        end
    endgenerate

endmodule
