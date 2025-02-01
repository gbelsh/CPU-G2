//`include "RCAdder.v"
`timescale 1ns / 1ns

module RCAdder_tb;

  // Signal declarations
  reg [7:0] A_tb;
  reg [7:0] B_tb;
  wire [7:0] Result_tb;

  // Design Under Test (DUT) instantiation
  RCAdder DUT (
    .A(A_tb),
    .B(B_tb),
    .Result(Result_tb)
  );

  // Test logic
  initial begin
    A_tb <= 8'b00000000;
    B_tb <= 8'b00000000;
    #20; // Wait for 20 time units
    A_tb <= 8'b00101010; // decimal 42
    B_tb <= 8'b00111010; // decimal 58
    #200; // Wait for 200 time units
    A_tb <= 8'b01101001; // decimal 105
    B_tb <= 8'b00010101; // decimal 21
    $finish; // End simulation
  end

endmodule

