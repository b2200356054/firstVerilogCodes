`timescale 1ns/1ns

`include "practice1.v"

module practice1_tb;

wire D, E;
reg A, B, C;

practice1 uut(A, B, C, D, E);

initial begin
    $dumpfile("practice1_tb.vcd");
    $dumpvars(0, practice1_tb);

    A = 1'b0; 
    B = 1'b0; 
    C = 1'b0;

    #100;

    A = 1'b1; 
    B = 1'b1; 
    C = 1'b1;

    #100;
end

endmodule

