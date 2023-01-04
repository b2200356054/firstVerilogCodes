`timescale 1ns/1ns
`include "module1.v"

module module_tb;

reg A;
wire B;

module1 uut(A, B);

initial begin
    $dumpfile("module_tb.vcd");
    $dumpvars(0, module_tb);

    A = 1;
    #20;

    A = 0;
    #20;

    A = 1;
    #20;

    $display("Test is complete.");

end

endmodule