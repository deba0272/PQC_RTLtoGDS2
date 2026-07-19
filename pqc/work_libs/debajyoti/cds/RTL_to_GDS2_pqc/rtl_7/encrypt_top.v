`timescale 1ns / 1ps

module encrypt_top #(
    parameter W  = 6,
    parameter CW = 12
)(
    // K=3 port widths
    input  wire [9*4*W-1:0]  A,    // 3x3 matrix = 9 polynomials = 9*24 = 216 bits
    input  wire [3*4*W-1:0]  t,    // t[0..2]
    input  wire [3*4*W-1:0]  r,    // r[0..2]
    input  wire [3*4*W-1:0]  e1,   // e1[0..2]
    input  wire [4*W-1:0]    e2,
    input  wire [4*W-1:0]    m,
    output wire [3*4*W-1:0]  u,    // u[0..2]
    output wire [4*W-1:0]    v
);

    localparam Q       = 17;
    localparam PBITS   = 4*W;   // 24 bits per polynomial

    // ------------------------------------------------------------------
    // Unpack A[i,j] — stored row-major: A[i*3+j] at index (i*3+j)
    // In the flat wire: poly j is at PBITS*j from LSB
    // A[0,0]=A[0], A[0,1]=A[1], A[0,2]=A[2]
    // A[1,0]=A[3], A[1,1]=A[4], A[1,2]=A[5]
    // A[2,0]=A[6], A[2,1]=A[7], A[2,2]=A[8]
    // ------------------------------------------------------------------
    wire [PBITS-1:0] A00 = A[PBITS*0 +: PBITS];
    wire [PBITS-1:0] A01 = A[PBITS*1 +: PBITS];
    wire [PBITS-1:0] A02 = A[PBITS*2 +: PBITS];
    wire [PBITS-1:0] A10 = A[PBITS*3 +: PBITS];
    wire [PBITS-1:0] A11 = A[PBITS*4 +: PBITS];
    wire [PBITS-1:0] A12 = A[PBITS*5 +: PBITS];
    wire [PBITS-1:0] A20 = A[PBITS*6 +: PBITS];
    wire [PBITS-1:0] A21 = A[PBITS*7 +: PBITS];
    wire [PBITS-1:0] A22 = A[PBITS*8 +: PBITS];

    wire [PBITS-1:0] t0 = t[PBITS*0 +: PBITS];
    wire [PBITS-1:0] t1 = t[PBITS*1 +: PBITS];
    wire [PBITS-1:0] t2 = t[PBITS*2 +: PBITS];

    wire [PBITS-1:0] r0 = r[PBITS*0 +: PBITS];
    wire [PBITS-1:0] r1 = r[PBITS*1 +: PBITS];
    wire [PBITS-1:0] r2 = r[PBITS*2 +: PBITS];

    wire [PBITS-1:0] e10 = e1[PBITS*0 +: PBITS];
    wire [PBITS-1:0] e11 = e1[PBITS*1 +: PBITS];
    wire [PBITS-1:0] e12 = e1[PBITS*2 +: PBITS];

    // ------------------------------------------------------------------
    // u[0] = A[0,0]*r[0] + A[1,0]*r[1] + A[2,0]*r[2] + e1[0]
    //        (column 0 of A^T = column 0 of A^T, i.e. row 0 of A transposed)
    // ------------------------------------------------------------------
    wire [PBITS-1:0] p00r0, p10r1, p20r2;
    wire [PBITS-1:0] r00r0, r10r1, r20r2;
    wire [PBITS-1:0] u0_01, u0_012;

    poly_mult   #(.W(W),.CW(CW)) mu0a (.a(A00),.b(r0),.p(p00r0));
    poly_mult   #(.W(W),.CW(CW)) mu0b (.a(A10),.b(r1),.p(p10r1));
    poly_mult   #(.W(W),.CW(CW)) mu0c (.a(A20),.b(r2),.p(p20r2));
    poly_reduce #(.W(W),.CW(CW)) rdu0a(.p(p00r0),.r(r00r0));
    poly_reduce #(.W(W),.CW(CW)) rdu0b(.p(p10r1),.r(r10r1));
    poly_reduce #(.W(W),.CW(CW)) rdu0c(.p(p20r2),.r(r20r2));
    poly_add    #(.W(W),.Q(Q))   au0a (.a(r00r0), .b(r10r1),  .c(u0_01));
    poly_add    #(.W(W),.Q(Q))   au0b (.a(u0_01), .b(r20r2),  .c(u0_012));
    poly_add    #(.W(W),.Q(Q))   au0c (.a(u0_012),.b(e10),    .c(u[PBITS*0 +: PBITS]));

    // ------------------------------------------------------------------
    // u[1] = A[0,1]*r[0] + A[1,1]*r[1] + A[2,1]*r[2] + e1[1]
    // ------------------------------------------------------------------
    wire [PBITS-1:0] p01r0, p11r1, p21r2;
    wire [PBITS-1:0] r01r0, r11r1, r21r2;
    wire [PBITS-1:0] u1_01, u1_012;

    poly_mult   #(.W(W),.CW(CW)) mu1a (.a(A01),.b(r0),.p(p01r0));
    poly_mult   #(.W(W),.CW(CW)) mu1b (.a(A11),.b(r1),.p(p11r1));
    poly_mult   #(.W(W),.CW(CW)) mu1c (.a(A21),.b(r2),.p(p21r2));
    poly_reduce #(.W(W),.CW(CW)) rdu1a(.p(p01r0),.r(r01r0));
    poly_reduce #(.W(W),.CW(CW)) rdu1b(.p(p11r1),.r(r11r1));
    poly_reduce #(.W(W),.CW(CW)) rdu1c(.p(p21r2),.r(r21r2));
    poly_add    #(.W(W),.Q(Q))   au1a (.a(r01r0), .b(r11r1),  .c(u1_01));
    poly_add    #(.W(W),.Q(Q))   au1b (.a(u1_01), .b(r21r2),  .c(u1_012));
    poly_add    #(.W(W),.Q(Q))   au1c (.a(u1_012),.b(e11),    .c(u[PBITS*1 +: PBITS]));

    // ------------------------------------------------------------------
    // u[2] = A[0,2]*r[0] + A[1,2]*r[1] + A[2,2]*r[2] + e1[2]
    // ------------------------------------------------------------------
    wire [PBITS-1:0] p02r0, p12r1, p22r2;
    wire [PBITS-1:0] r02r0, r12r1, r22r2;
    wire [PBITS-1:0] u2_01, u2_012;

    poly_mult   #(.W(W),.CW(CW)) mu2a (.a(A02),.b(r0),.p(p02r0));
    poly_mult   #(.W(W),.CW(CW)) mu2b (.a(A12),.b(r1),.p(p12r1));
    poly_mult   #(.W(W),.CW(CW)) mu2c (.a(A22),.b(r2),.p(p22r2));
    poly_reduce #(.W(W),.CW(CW)) rdu2a(.p(p02r0),.r(r02r0));
    poly_reduce #(.W(W),.CW(CW)) rdu2b(.p(p12r1),.r(r12r1));
    poly_reduce #(.W(W),.CW(CW)) rdu2c(.p(p22r2),.r(r22r2));
    poly_add    #(.W(W),.Q(Q))   au2a (.a(r02r0), .b(r12r1),  .c(u2_01));
    poly_add    #(.W(W),.Q(Q))   au2b (.a(u2_01), .b(r22r2),  .c(u2_012));
    poly_add    #(.W(W),.Q(Q))   au2c (.a(u2_012),.b(e12),    .c(u[PBITS*2 +: PBITS]));

    // ------------------------------------------------------------------
    // v = t[0]*r[0] + t[1]*r[1] + t[2]*r[2] + e2 + m
    // ------------------------------------------------------------------
    wire [PBITS-1:0] pt0r0, pt1r1, pt2r2;
    wire [PBITS-1:0] rt0r0, rt1r1, rt2r2;
    wire [PBITS-1:0] v_01, v_012, v_e2;

    poly_mult   #(.W(W),.CW(CW)) mvt0 (.a(t0),.b(r0),.p(pt0r0));
    poly_mult   #(.W(W),.CW(CW)) mvt1 (.a(t1),.b(r1),.p(pt1r1));
    poly_mult   #(.W(W),.CW(CW)) mvt2 (.a(t2),.b(r2),.p(pt2r2));
    poly_reduce #(.W(W),.CW(CW)) rdvt0(.p(pt0r0),.r(rt0r0));
    poly_reduce #(.W(W),.CW(CW)) rdvt1(.p(pt1r1),.r(rt1r1));
    poly_reduce #(.W(W),.CW(CW)) rdvt2(.p(pt2r2),.r(rt2r2));
    poly_add    #(.W(W),.Q(Q))   avt01(.a(rt0r0), .b(rt1r1), .c(v_01));
    poly_add    #(.W(W),.Q(Q))   avt012(.a(v_01), .b(rt2r2), .c(v_012));
    poly_add    #(.W(W),.Q(Q))   ave2 (.a(v_012), .b(e2),    .c(v_e2));
    poly_add    #(.W(W),.Q(Q))   avm  (.a(v_e2),  .b(m),     .c(v));

endmodule
