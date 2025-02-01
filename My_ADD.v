`timescale 1ns / 1ns
// Add Module
module My_ADD(Sum, cOut, A, B);
    input [31:0] A, B;
    output [31:0] Sum;
    output cOut;

    RCAdder32 adderAB(Sum, cOut, A, B, 1'b0);
endmodule