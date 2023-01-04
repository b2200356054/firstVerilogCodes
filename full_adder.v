`include "half_adder.v"

module full_adder(A, B, Cin, Cout, Sum);

    input A, B, Cin;
    wire w1, w2, w3;

    output Cout, Sum;

    half_adder HA1 (A, B, w2, w1);
    half_adder HA2 (w1, Cin, w3, Sum);
    assign Cout = w3 | w2;

endmodule