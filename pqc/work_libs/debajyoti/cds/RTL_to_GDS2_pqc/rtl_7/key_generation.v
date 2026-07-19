`timescale 1ns / 1ps

module key_generation #(
    parameter NUM_BUSES = 4,
    parameter BUS_WIDTH = 6,
    parameter K         = 3,
    parameter POLY_BITS = NUM_BUSES * BUS_WIDTH   // 24
)(
    input  wire [K*K*POLY_BITS-1:0] A,   // 3*3*24 = 216 bits
    input  wire [K*POLY_BITS-1:0]   S,   // 3*24   =  72 bits
    input  wire [K*POLY_BITS-1:0]   E,   // 72 bits
    output wire [K*POLY_BITS-1:0]   t    // 72 bits
);

    localparam Q = 17;

    genvar i, chunk;

    generate
        for (i = 0; i < K; i = i + 1) begin : gen_row

            // ------------------------------------------------------------------
            // K=3: 3 products per row — A[i,0]*S[0], A[i,1]*S[1], A[i,2]*S[2]
            // Accumulate with two poly_adds:
            //   sum01 = prod[0] + prod[1]
            //   row_sum = sum01 + prod[2]
            // ------------------------------------------------------------------
            wire [POLY_BITS-1:0] prod0, prod1, prod2;

            poly_mult #(.W(BUS_WIDTH), .CW(12)) mult_i0 (
                .a(A[POLY_BITS*(K*i + 0) +: POLY_BITS]),
                .b(S[POLY_BITS*0         +: POLY_BITS]),
                .p(prod0)
            );
            poly_mult #(.W(BUS_WIDTH), .CW(12)) mult_i1 (
                .a(A[POLY_BITS*(K*i + 1) +: POLY_BITS]),
                .b(S[POLY_BITS*1         +: POLY_BITS]),
                .p(prod1)
            );
            poly_mult #(.W(BUS_WIDTH), .CW(12)) mult_i2 (
                .a(A[POLY_BITS*(K*i + 2) +: POLY_BITS]),
                .b(S[POLY_BITS*2         +: POLY_BITS]),
                .p(prod2)
            );

            wire [POLY_BITS-1:0] sum01;
            poly_add #(.W(BUS_WIDTH), .Q(Q)) padd_01 (
                .a(prod0), .b(prod1), .c(sum01)
            );

            wire [POLY_BITS-1:0] row_sum;
            poly_add #(.W(BUS_WIDTH), .Q(Q)) padd_012 (
                .a(sum01), .b(prod2), .c(row_sum)
            );

            // poly_reduce is a pass-through (zero logic)
            wire [POLY_BITS-1:0] reduced_poly;
            poly_reduce #(.W(BUS_WIDTH), .CW(12), .Q(Q)) pr_inst (
                .p(row_sum), .r(reduced_poly)
            );

            // t[i] = reduced_poly + E[i] mod Q, coefficient by coefficient
            for (chunk = 0; chunk < NUM_BUSES; chunk = chunk + 1) begin : gen_add_e
                wire [BUS_WIDTH:0] sum_e;
                assign sum_e = reduced_poly[chunk*BUS_WIDTH +: BUS_WIDTH]
                             + E[POLY_BITS*i + chunk*BUS_WIDTH +: BUS_WIDTH];
                assign t[POLY_BITS*i + chunk*BUS_WIDTH +: BUS_WIDTH] =
                    (sum_e >= Q) ? (sum_e - Q) : sum_e[BUS_WIDTH-1:0];
            end

        end
    endgenerate

endmodule
