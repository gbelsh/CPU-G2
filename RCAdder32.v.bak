`timescale 1ns / 1ns
// 32 bit RCA

module RCAdder32(Sum, cOut, A, B, cIn);
    input [31:0] A, B;
    input cIn;
    output [31:0] Sum;
    output cOut;

    // Carries between Full Adders
    wire [30:0] carry;

    // First Full Adder Bit 0
    FullAdder FA0(.a(A[0]), .b(B[0]), .cIn(cIn), .s(Sum[0]), .cOut(carry[0]));
    
    // Full Adders Bits 1 to 30
    FullAdder FA1(.a(A[1]), .b(B[1]), .cIn(carry[0]), .s(Sum[1]), .cOut(carry[1]));
    FullAdder FA2(.a(A[2]), .b(B[2]), .cIn(carry[1]), .s(Sum[2]), .cOut(carry[2]));
    FullAdder FA3(.a(A[3]), .b(B[3]), .cIn(carry[2]), .s(Sum[3]), .cOut(carry[3]));
    FullAdder FA4(.a(A[4]), .b(B[4]), .cIn(carry[3]), .s(Sum[4]), .cOut(carry[4]));
    FullAdder FA5(.a(A[5]), .b(B[5]), .cIn(carry[4]), .s(Sum[5]), .cOut(carry[5]));
    FullAdder FA6(.a(A[6]), .b(B[6]), .cIn(carry[5]), .s(Sum[6]), .cOut(carry[6]));
    FullAdder FA7(.a(A[7]), .b(B[7]), .cIn(carry[6]), .s(Sum[7]), .cOut(carry[7]));
    FullAdder FA8(.a(A[8]), .b(B[8]), .cIn(carry[7]), .s(Sum[8]), .cOut(carry[8]));
    FullAdder FA9(.a(A[9]), .b(B[9]), .cIn(carry[8]), .s(Sum[9]), .cOut(carry[9]));
    FullAdder FA10(.a(A[10]), .b(B[10]), .cIn(carry[9]), .s(Sum[10]), .cOut(carry[10]));
    FullAdder FA11(.a(A[11]), .b(B[11]), .cIn(carry[10]), .s(Sum[11]), .cOut(carry[11]));
    FullAdder FA12(.a(A[12]), .b(B[12]), .cIn(carry[11]), .s(Sum[12]), .cOut(carry[12]));
    FullAdder FA13(.a(A[13]), .b(B[13]), .cIn(carry[12]), .s(Sum[13]), .cOut(carry[13]));
    FullAdder FA14(.a(A[14]), .b(B[14]), .cIn(carry[13]), .s(Sum[14]), .cOut(carry[14]));
    FullAdder FA15(.a(A[15]), .b(B[15]), .cIn(carry[14]), .s(Sum[15]), .cOut(carry[15]));
    FullAdder FA16(.a(A[16]), .b(B[16]), .cIn(carry[15]), .s(Sum[16]), .cOut(carry[16]));
    FullAdder FA17(.a(A[17]), .b(B[17]), .cIn(carry[16]), .s(Sum[17]), .cOut(carry[17]));
    FullAdder FA18(.a(A[18]), .b(B[18]), .cIn(carry[17]), .s(Sum[18]), .cOut(carry[18]));
    FullAdder FA19(.a(A[19]), .b(B[19]), .cIn(carry[18]), .s(Sum[19]), .cOut(carry[19]));
    FullAdder FA20(.a(A[20]), .b(B[20]), .cIn(carry[19]), .s(Sum[20]), .cOut(carry[20]));
    FullAdder FA21(.a(A[21]), .b(B[21]), .cIn(carry[20]), .s(Sum[21]), .cOut(carry[21]));
    FullAdder FA22(.a(A[22]), .b(B[22]), .cIn(carry[21]), .s(Sum[22]), .cOut(carry[22]));
    FullAdder FA23(.a(A[23]), .b(B[23]), .cIn(carry[22]), .s(Sum[23]), .cOut(carry[23]));
    FullAdder FA24(.a(A[24]), .b(B[24]), .cIn(carry[23]), .s(Sum[24]), .cOut(carry[24]));
    FullAdder FA25(.a(A[25]), .b(B[25]), .cIn(carry[24]), .s(Sum[25]), .cOut(carry[25]));
    FullAdder FA26(.a(A[26]), .b(B[26]), .cIn(carry[25]), .s(Sum[26]), .cOut(carry[26]));
    FullAdder FA27(.a(A[27]), .b(B[27]), .cIn(carry[26]), .s(Sum[27]), .cOut(carry[27]));
    FullAdder FA28(.a(A[28]), .b(B[28]), .cIn(carry[27]), .s(Sum[28]), .cOut(carry[28]));
    FullAdder FA29(.a(A[29]), .b(B[29]), .cIn(carry[28]), .s(Sum[29]), .cOut(carry[29]));
    FullAdder FA30(.a(A[30]), .b(B[30]), .cIn(carry[29]), .s(Sum[30]), .cOut(carry[30]));

    // Last Full Adder bit 31
    FullAdder FA31(.a(A[31]), .b(B[31]), .cIn(carry[30]), .s(Sum[31]), .cOut(cOut));
endmodule