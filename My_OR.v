`timescale 1ns / 1ns
// OR module

module My_OR(m, x, y);
    input x, y;
    output m;

    assign m = x | y;  
endmodule