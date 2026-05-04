// ============================================================
// Project   : 2:1 and 4:1 Multiplexer
// Author    : Yash Ganesh Bachhav
// College   : LGNSCOE, Nashik (SPPU)
// Domain    : VLSI Design | Verilog HDL
// ============================================================

// 2:1 MUX
module mux_2to1 (
    input  I0, I1,   // Inputs
    input  S,        // Select
    output Y         // Output
);
    assign Y = S ? I1 : I0;
endmodule

// 4:1 MUX using three 2:1 MUXes (structural)
module mux_4to1 (
    input  I0, I1, I2, I3,  // 4 data inputs
    input  [1:0] S,          // 2-bit select
    output Y                 // Output
);
    wire w1, w2;

    // Level 1: Two 2:1 MUXes
    mux_2to1 M1 (.I0(I0), .I1(I1), .S(S[0]), .Y(w1));
    mux_2to1 M2 (.I0(I2), .I1(I3), .S(S[0]), .Y(w2));

    // Level 2: One 2:1 MUX
    mux_2to1 M3 (.I0(w1), .I1(w2), .S(S[1]), .Y(Y));

endmodule
