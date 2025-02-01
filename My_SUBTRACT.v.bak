`timescale 1ns / 1ns
// Subtract Module
module My_SUBTRACT(Diff, cOut, A, B);
    input [31:0] A, B;
    output [31:0] Diff;
    output cOut;

    wire [31:0] twosComplementB;

    // Ignore twos Complement carry as its not needed
    wire carryIgnored;
    
    // Invert B add 1 - to make twos complement
    RCAdder32 twosComplementAdder(~B, 32'b1, 1'b0, twosComplementB, carryIgnored);

    // Add A and inverted B
    RCAdder32 adderAB(A, twosComplementB, 1'b0, Diff, cOut);
endmodule