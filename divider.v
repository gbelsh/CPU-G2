
//Restoring Division

module divider (
  input wire signed [31:0] a,
  input wire signed [31:0] b,

  output wire signed [31:0] q
);


reg signed [32:0] A;
reg signed [31:0] Q;
integer i;

always @(a, b) begin
  A = 0; 
  Q = a;
    
  for (i = 0; i < 32; i = i + 1) begin
    A = { A[31:0], Q[31] };
    Q = Q << 1;
	
    A = A - b;
	 
    if (A < 0)begin
      A = A + b;
    end else begin
      Q[0] = 1;
    end
  end
end

assign q = Q;

endmodule