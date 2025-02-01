
module bus(input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
				HIout, LOout, Zhighout, zlowout, Pout, MDRout, In_Portout, Cout, 
				R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in, 
				HIin, LOin, Zhighin, zlowin
				Pin, MDRin, In_Portin, Cin, output wire[31:0] BusMuxOut);
				
	wire [4:0] select;
	wire muxin = {{8{1'b0}}, R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
						HIout, LOout, Zhighout, zlowout, Pout, MDRout, In_portOut, Cout};
						
	ThirtyTwoToFiveEncoder encoder(select, muxin);
	
	ThirtyTwoToOneMultiplexer mux(R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in,
											HIin, LOin, Zhighin, zlowin, Pin, MDRin, In_Portin, Cin, select, BusMuxOut);

											
endmodule	
	
						