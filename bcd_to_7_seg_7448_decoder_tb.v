`timescale 1ns/1ns

`include "bcd_to_7_seg_7448_decoder.v"

module bcd_to_7_seg_7448_decoder_tb;

    reg A, B, C, D;

    wire A_output, B_output, C_output, D_output, E_output, F_output, G_output;

    bcd_to_7_seg_7448_decoder uut(A,B,C,D, A_output, B_output, C_output, D_output, E_output, F_output, G_output);

    initial begin
        $dumpfile("bcd_to_7_seg_7448_decoder_tb.vcd");
        $dumpvars(0, bcd_to_7_seg_7448_decoder_tb);

        #20;

        A = 0; B = 0; C = 0; D = 0; //0

    
        
        #20;

        A = 0; B = 0; C = 0; D = 1; //1

        

        #20;

        A = 0; B = 0; C = 1; D = 0; //2

        

        #20;

        A = 0; B = 0; C = 1; D = 1; //3

        

        #20;

        A = 0; B = 1; C = 0; D = 0; //4

        

        #20;

        A = 0; B = 1; C = 0; D = 1; // 5

        

        #20;

        A = 0; B = 1; C = 1; D = 0; //6

        

        #20;

        A = 0; B = 1; C = 1; D = 1; //7

        
        
        #20;

        A = 1; B = 0; C = 0; D = 0; //8

        

        #20;

        A = 1; B = 0; C = 0; D = 1; //9


        #20

        
        $display("Test is completed.");



    end 

endmodule