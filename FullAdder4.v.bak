`timescale 1ns / 1ns
// Full Adders combined first stage Ripple Carry module

module FullAdder4(s, cOut, x, y, cIn);
    input [3:0] x, y;
    input cIn;
    output [3:0] s;

    wire [2:0] carry;

    FullAdder FA0(.x(x[0]), .y(y[0]), .cIn(cIn), .s(s[0]), .cOut(carry[0]));
    FullAdder FA1(.x(x[1]), .y(y[1]), .cIn(carry[0]), .s(s[1]), .cOut(carry[1]));
    FullAdder FA2(.x(x[2]), .y(y[2]), .cIn(carry[1]), .s(s[2]), .cOut(carry[2]));
    FullAdder FA3(.x(x[3]), .y(y[3]), .cIn(carry[2]), .s(s[3]), .cOut(cOut));
endmodule