`timescale 1ns / 1ns
// AND module
module My_AND(p, x, y);
    input [31:0] x, y;
    output [31:0] p;

    assign p = x & y;  
endmodule
