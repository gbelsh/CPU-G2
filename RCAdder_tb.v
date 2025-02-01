`timescale 1ns / 1ns

module RCAdder_tb;

  // Signal declarations
  reg [31:0] A_tb;
  reg [31:0] B_tb;
  reg [31:0] Sum_tb;
  wire [30:0] carry_tb;
  reg cOut_tb, cIn_tb;

  // Design Under Test (DUT) instantiation
  RCAdder32 DUT (
    .Sum(Sum_tb),
    .cOut(cOut_tb),
    .A(A_tb),
    .B(B_tb),
    .cIn(cIn_tb)
  );

  // Test logic
  initial begin
    A_tb <= 32'b00000000;
    B_tb <= 32'b00000000;
    #20; // Wait for 20 time units
    A_tb <= 32'b00101010; // decimal 42
    B_tb <= 32'b00111010; // decimal 58
    #200; // Wait for 200 time units
    A_tb <= 32'b01101001; // decimal 105
    B_tb <= 32'b00010101; // decimal 21
    $finish; // End simulation
  end

endmodule

