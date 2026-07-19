`timescale 1ns / 1ps

module coeff_sanitize #(
    parameter W = 6
)(
    input  wire [W-1:0] in_val,
    output wire [W-1:0] out_val
);
    wire [6:0] shifted = $signed(in_val) + $signed(7'd34);

    reg [6:0] temp;
    always @(*) begin
        temp = shifted;
        if (temp >= 7'd51)      temp = temp - 7'd51;
        else if (temp >= 7'd34) temp = temp - 7'd34;
        else if (temp >= 7'd17) temp = temp - 7'd17;
    end

    assign out_val = temp[W-1:0];
endmodule

module array_sanitize #(
    parameter NUM_COEFFS = 4,
    parameter BUS_WIDTH  = 6
)(
    input  wire [NUM_COEFFS*BUS_WIDTH-1:0] in_array,
    output wire [NUM_COEFFS*BUS_WIDTH-1:0] out_array
);
    genvar i;
    generate
        for (i = 0; i < NUM_COEFFS; i = i + 1) begin : gen_san
            coeff_sanitize #(.W(BUS_WIDTH)) sanitize_inst (
                .in_val (in_array[i*BUS_WIDTH +: BUS_WIDTH]),
                .out_val(out_array[i*BUS_WIDTH +: BUS_WIDTH])
            );
        end
    endgenerate
endmodule