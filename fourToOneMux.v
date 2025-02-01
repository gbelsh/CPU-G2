module fourToOneMux(output [31:0] out, input [31:0] a, b, c, d, input s0, s1);

	assign out = s1 ? (s0 ? d : c) : (s0 ? b: a);
	
	
	
endmodule