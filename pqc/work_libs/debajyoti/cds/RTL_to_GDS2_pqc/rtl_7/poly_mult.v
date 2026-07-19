`timescale 1ns / 1ps

module poly_mult #(
    parameter W  = 6,   
    parameter CW = 12    
)(
    input  wire [4*W-1:0] a,
    input  wire [4*W-1:0] b,
    output wire [4*W-1:0] p  
);

    // -------------------------------------------------------------------------
    // Unpack input coefficients
    // -------------------------------------------------------------------------
    wire [W-1:0] a0 = a[0*W +: W];
    wire [W-1:0] a1 = a[1*W +: W];
    wire [W-1:0] a2 = a[2*W +: W];
    wire [W-1:0] a3 = a[3*W +: W];

    wire [W-1:0] b0 = b[0*W +: W];
    wire [W-1:0] b1 = b[1*W +: W];
    wire [W-1:0] b2 = b[2*W +: W];
    wire [W-1:0] b3 = b[3*W +: W];

    // -------------------------------------------------------------------------
    // Schoolbook polynomial multiplication
    // Max single product: 16*16 = 256 -> 9 bits
    // -------------------------------------------------------------------------
    wire [CW-1:0] c0, c1, c2, c3, c4, c5, c6;

    assign c0 = a0 * b0;
    assign c1 = a0 * b1 + a1 * b0;
    assign c2 = a0 * b2 + a1 * b1 + a2 * b0;
    assign c3 = a0 * b3 + a1 * b2 + a2 * b1 + a3 * b0;
    assign c4 = a1 * b3 + a2 * b2 + a3 * b1;
    assign c5 = a2 * b3 + a3 * b2;
    assign c6 = a3 * b3;

    // -------------------------------------------------------------------------
    // Reduce mod (x^4 + 1):  x^4 ≡ -1 → x^(4+k) ≡ -x^k
    //   r0 = c0 - c4
    //   r1 = c1 - c5
    //   r2 = c2 - c6
    //   r3 = c3
    // -------------------------------------------------------------------------
    wire signed [CW:0] r0_s = $signed({1'b0, c0}) - $signed({1'b0, c4});
    wire signed [CW:0] r1_s = $signed({1'b0, c1}) - $signed({1'b0, c5});
    wire signed [CW:0] r2_s = $signed({1'b0, c2}) - $signed({1'b0, c6});
    wire signed [CW:0] r3_s = $signed({1'b0, c3});

    // -------------------------------------------------------------------------
    // 
    // -------------------------------------------------------------------------

    // Function: fast mod17 for unsigned values up to ~1840
    function [W-1:0] modQ17;
        input [11:0] x;
        reg  [11:0]  t;
        begin
            t = x;
            //carry-chain structure
            if (t >= 12'd1683) t = t - 12'd1683; // 99*17
            if (t >= 12'd1088) t = t - 12'd1088; // 64*17
            if (t >= 12'd544)  t = t - 12'd544;  // 32*17
            if (t >= 12'd272)  t = t - 12'd272;  // 16*17
            if (t >= 12'd136)  t = t - 12'd136;  //  8*17
            if (t >= 12'd68)   t = t - 12'd68;   //  4*17
            if (t >= 12'd34)   t = t - 12'd34;   //  2*17
            if (t >= 12'd17)   t = t - 12'd17;   //  1*17
            modQ17 = t[W-1:0];
        end
    endfunction

    //We use 48*17 = 816 as a safe offset
    localparam [11:0] OFFSET = 12'd816;  //48 * 17

    wire [11:0] r0_u = $signed(r0_s[CW:0]) + $signed(OFFSET);
    wire [11:0] r1_u = $signed(r1_s[CW:0]) + $signed(OFFSET);
    wire [11:0] r2_u = $signed(r2_s[CW:0]) + $signed(OFFSET);
    wire [11:0] r3_u = $signed(r3_s[CW:0]) + $signed(OFFSET);

    assign p[0*W +: W] = modQ17(r0_u);
    assign p[1*W +: W] = modQ17(r1_u);
    assign p[2*W +: W] = modQ17(r2_u);
    assign p[3*W +: W] = modQ17(r3_u);

endmodule
