
`timescale 1ns / 1ps

module rounding #(
    parameter NUM_BUSES = 4,
    parameter BUS_WIDTH = 6,
    parameter K         = 2,
    parameter POLY_BITS = NUM_BUSES * BUS_WIDTH
)(
    input  wire [POLY_BITS-1:0] C_Flat,
    output wire [POLY_BITS-1:0] C_Out
);

    localparam Q    = 17;
    localparam T_LO = 5;   //ceil(Q/4)
    localparam T_HI = 12;  //floor(3*Q/4)

    genvar k;
    generate
        for (k = 0; k < NUM_BUSES; k = k + 1) begin : gen_decode
            wire [BUS_WIDTH-1:0] coeff = C_Flat[k*BUS_WIDTH +: BUS_WIDTH];  

            //checking if coeff >= 5 and coeff <= 12
            assign C_Out[k*BUS_WIDTH +: BUS_WIDTH] = ((coeff >= T_LO) && (coeff <= T_HI)) ? 
                                                        {{(BUS_WIDTH-1){1'b0}}, 1'b1} : {BUS_WIDTH{1'b0}};
        end
    endgenerate

endmodule
