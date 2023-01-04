module half_adder(A, B, Carry, Sum);
    input A, B;
    output Carry, Sum;
    
    assign Sum = A ^ B;
    assign Carry = A & B;

endmodule