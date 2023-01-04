module practice2(A, B, C, D, E, F);
    input A, B, C, D;
    output E, F;

    assign E = (A) || (B && C) || (~B && D);
    assign F = (~B && C) || (B && ~C && ~D);

endmodule