// ============================================================
// Testbench : 2:1 and 4:1 MUX
// ============================================================

`timescale 1ns/1ps

module mux_tb;

    // 2:1 MUX signals
    reg  I0_2, I1_2, S_2;
    wire Y_2;

    // 4:1 MUX signals
    reg  I0_4, I1_4, I2_4, I3_4;
    reg  [1:0] S_4;
    wire Y_4;

    mux_2to1 uut2 (.I0(I0_2), .I1(I1_2), .S(S_2), .Y(Y_2));
    mux_4to1 uut4 (.I0(I0_4), .I1(I1_4), .I2(I2_4), .I3(I3_4), .S(S_4), .Y(Y_4));

    initial begin
        $display("====================================================");
        $display(" MUX Simulation ");
        $display("====================================================");

        // --- 2:1 MUX ---
        $display("\n--- 2:1 MUX Truth Table ---");
        $display(" I0 | I1 | S | Y (Output)");
        $display("----|----|----|----------");
        I0_2=0; I1_2=1; S_2=0; #10;
        $display("  %b  |  %b |  %b |  %b   // Select I0", I0_2, I1_2, S_2, Y_2);
        I0_2=0; I1_2=1; S_2=1; #10;
        $display("  %b  |  %b |  %b |  %b   // Select I1", I0_2, I1_2, S_2, Y_2);
        I0_2=1; I1_2=0; S_2=0; #10;
        $display("  %b  |  %b |  %b |  %b   // Select I0", I0_2, I1_2, S_2, Y_2);
        I0_2=1; I1_2=0; S_2=1; #10;
        $display("  %b  |  %b |  %b |  %b   // Select I1", I0_2, I1_2, S_2, Y_2);

        // --- 4:1 MUX ---
        $display("\n--- 4:1 MUX Truth Table ---");
        $display(" I0 | I1 | I2 | I3 | S[1:0] | Y");
        $display("----|----|----|----|---------|-");
        I0_4=0; I1_4=1; I2_4=0; I3_4=1;

        S_4=2'b00; #10;
        $display("  %b  |  %b |  %b  |  %b |   %b   | %b  // Select I0", I0_4,I1_4,I2_4,I3_4,S_4,Y_4);
        S_4=2'b01; #10;
        $display("  %b  |  %b |  %b  |  %b |   %b   | %b  // Select I1", I0_4,I1_4,I2_4,I3_4,S_4,Y_4);
        S_4=2'b10; #10;
        $display("  %b  |  %b |  %b  |  %b |   %b   | %b  // Select I2", I0_4,I1_4,I2_4,I3_4,S_4,Y_4);
        S_4=2'b11; #10;
        $display("  %b  |  %b |  %b  |  %b |   %b   | %b  // Select I3", I0_4,I1_4,I2_4,I3_4,S_4,Y_4);

        $display("\n====================================================");
        $display(" Simulation Complete!");
        $display("====================================================");
        $finish;
    end

endmodule
