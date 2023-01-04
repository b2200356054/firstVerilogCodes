`timescale 1ns/1ns

`include "ripple_carry_adder.v"

module ripple_carry_adder_tb;
    reg Cin;
    reg[3:0] A, B;
    wire[3:0] Sum, Cout;

    ripple_carry_adder uut (.A(A), .B(B), .Cin(Cin), .Cout(Cout), .Sum(Sum));

    initial begin
        A[0] = 0; B[0] = 0; Cin = 0;





    end





endmodule