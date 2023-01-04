`timescale 1ns/1ns

`include "practice2.v"

module practice2_tb;
    reg A, B, C, D;
    wire E, F;

    practice2 uut(A, B, C, D, E, F);

    initial begin
        $dumpfile("practice2_tb.vcd");
        $dumpvars(0, practice2_tb);

        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
    
        #20;

        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;

        #20;

        $display("Test is completed.");
    end


endmodule