`timescale 1ns / 1ns
// XOR module

module My_XOR(m, x, y);
    input x, y;
    output m;

    assign m = x ^ y;  
endmodule