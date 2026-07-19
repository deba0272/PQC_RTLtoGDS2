`timescale 1ns / 1ps

// uncomment to make it completely combinational
//`define COMB_ONLY

module kyber_top #(
    parameter NUM_BUSES = 4,
    parameter BUS_WIDTH = 6,
    parameter K         = 3,                        // K=3
    parameter POLY_BITS = NUM_BUSES * BUS_WIDTH     // 24
)(
    input  wire clk,
    input  wire rst_n,
    input  wire start,

    // K=3 port  widths:
    input  wire [K*K*POLY_BITS-1:0] A,   // 9*24 = 216 bits
    input  wire [K*POLY_BITS-1:0]   S,   // 3*24 =  72 bits
    input  wire [K*POLY_BITS-1:0]   E,   // 72 bits
    input  wire [K*POLY_BITS-1:0]   R,   // 72 bits
    input  wire [K*POLY_BITS-1:0]   E1,  // 72 bits
    input  wire [POLY_BITS-1:0]     E2,  // 24 bits
    input  wire [POLY_BITS-1:0]     M,   // 24 bits

    output reg  [3:0] M_OUT_REAL,
    output reg        valid_out
);

    // =========================================================================
    // Combinational datapath
    // =========================================================================
    wire [K*POLY_BITS-1:0] t_wire;
    wire [K*POLY_BITS-1:0] u_wire;
    wire [POLY_BITS-1:0]   v_wire;
    wire [POLY_BITS-1:0]   mn_wire;
    wire [POLY_BITS-1:0]   M_OUT_wire;

    key_generation #(
        .NUM_BUSES(NUM_BUSES), .BUS_WIDTH(BUS_WIDTH), .K(K)
    ) key_gen_inst (
        .A(A), .S(S), .E(E), .t(t_wire)
    );

    encrypt_top #(
        .W(BUS_WIDTH), .CW(12)
    ) encrypt_inst (
        .A(A), .t(t_wire), .r(R), .e1(E1), .e2(E2), .m(M),
        .u(u_wire), .v(v_wire)
    );

    decryption_mn #(
        .NUM_BUSES(NUM_BUSES), .BUS_WIDTH(BUS_WIDTH), .K(K)
    ) decrypt_inst (
        .S(S), .U(u_wire), .V(v_wire), .MN(mn_wire)
    );

    rounding #(
        .NUM_BUSES(NUM_BUSES), .BUS_WIDTH(BUS_WIDTH), .K(K)
    ) rounding_inst (
        .C_Flat(mn_wire), .C_Out(M_OUT_wire)
    );

`ifdef COMB_ONLY
    always @(posedge clk or posedge rst_n) begin
        if (rst_n) begin
            M_OUT_REAL <= 4'b0000;
            valid_out  <= 1'b0;
        end else begin
            valid_out  <= start;
            if (start) begin
                M_OUT_REAL <= {
                    M_OUT_wire[3*BUS_WIDTH],
                    M_OUT_wire[2*BUS_WIDTH],
                    M_OUT_wire[1*BUS_WIDTH],
                    M_OUT_wire[0*BUS_WIDTH]
                };
            end
        end
    end

`else
    localparam IDLE    = 3'd0;
    localparam KEYGEN  = 3'd1;
    localparam ENCRYPT = 3'd2;
    localparam DECRYPT = 3'd3;
    localparam DONE    = 3'd4;

    reg [2:0] state;

    reg [K*POLY_BITS-1:0] t_reg;
    reg [K*POLY_BITS-1:0] u_reg;
    reg [POLY_BITS-1:0]   v_reg;
    reg [POLY_BITS-1:0]   mn_reg;

    always @(posedge clk or posedge rst_n) begin
        if (rst_n) begin
            state      <= IDLE;
            t_reg      <= 0; u_reg <= 0; v_reg <= 0; mn_reg <= 0;
            M_OUT_REAL <= 4'b0000;
            valid_out  <= 1'b0;
        end else begin
            case (state)

                IDLE: begin
                    valid_out <= 1'b0;
                    if (start) state <= KEYGEN;
                end

                KEYGEN: begin
                    t_reg <= t_wire;
                    state <= ENCRYPT;
                end

                ENCRYPT: begin
                    u_reg <= u_wire;
                    v_reg <= v_wire;
                    state <= DECRYPT;
                end

                DECRYPT: begin
                    mn_reg <= mn_wire;
                    state  <= DONE;
                end

                DONE: begin
                    M_OUT_REAL <= {
                        M_OUT_wire[3*BUS_WIDTH],
                        M_OUT_wire[2*BUS_WIDTH],
                        M_OUT_wire[1*BUS_WIDTH],
                        M_OUT_wire[0*BUS_WIDTH]
                    };
                    valid_out <= 1'b1;
                    state     <= IDLE;
                end

                default: state <= IDLE;
            endcase
        end
    end
`endif

endmodule
