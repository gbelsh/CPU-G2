`timescale 1ns / 1ns
// NOT Module
module My_NOT(x, xNOT);
    input [31:0] x;
    output [31:0] xNOT;

    assign xNOT = ~x;
endmodule