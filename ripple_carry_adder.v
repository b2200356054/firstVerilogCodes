`include "full_adder.v"

module ripple_carry_adder(A, B, Cin, Cout, Sum);
    reg Cin;
    reg[3:0] A, B;
    wire[3:0] Sum, Cout;

    full_adder FA1 (A[0], B[0], Cin, Cout[0], Sum[0]);
    full_adder FA1 (A[1], B[1], Cout[0], Cout[1], Sum[1]);
    full_adder FA1 (A[2], B[2], Cout[1], Cout[2], Sum[2]);
    full_adder FA1 (A[3], B[3], Cout[2], Cout[3], Sum[3]);

endmodule