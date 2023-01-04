module bcd_to_7_seg_7448_decoder(A,B,C,D, A_output, B_output, C_output, D_output, E_output, F_output, G_output);
    input A, B, C, D;

    output A_output, B_output, C_output, D_output, E_output, F_output, G_output;

    assign A_output = (A) | (C) | (B & D) | (~B & ~D);
    assign B_output = (~B) | (~C & ~D) | (C & D);
    assign C_output = (B) | (~C) | (D);
    assign D_output = (~B & ~D) | (C & ~D) | (B & ~C & D) | (~B & C) | (A);
    assign E_output = (~B  & ~D) | (C & ~D);
    assign F_output = (A) | (~C & ~D) | (B & ~C) | (B & ~D);
    assign G_output = (~B & C) | (C & ~D) | (B & ~C) | (A);

endmodule