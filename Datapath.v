module Datapath(	 input R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in,
							 input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
							 input wire PCin, PCout, IRin, Yin, Zin, MARin, MDRin, MDRout, HIin, HIout, LOin, LOout, IncPC, Zhighout, zlowout, Read,
							 input [1:0] AND, DIV, MUL, ADD, SUB, OR, NEG, NOT, SHR, SHRA, SHL, ROR, ROL,
							 input [31:0] MDatain,
							 input wire clock, clear
							
							);
							
							
							 wire [7:0] IRout;
			
			
							wire [31:0]busInR0, busInR1, busInR2, busInR3, busInR4, busInR5, busInR6, busInR7, busInR8, busInR9, busInR10, busInR11,
										  busInR12, busInR13, busInR14, busInR15, busInHI, busInLO, Zhighin, zlowinPin, In_Portin, Cin;

							//Instantiate all the modules
							Gen_Reg R0(busInR0, bus, R0in, clear, clock);
							Gen_Reg R1(busInR1, bus, R1in, clear, clock);
							Gen_Reg R2(busInR2, bus, R2in, clear, clock);
							Gen_Reg R3(busInR3, bus, R3in, clear, clock);
							Gen_Reg R4(busInR4, bus, R4in, clear, clock);
							Gen_Reg R5(busInR5, bus, R5in, clear, clock);
							Gen_Reg R6(busInR6, bus, R6in, clear, clock);
							Gen_Reg R7(busInR7, bus, R7in, clear, clock);
							Gen_Reg R8(busInR8, bus, R8in, clear, clock);
							Gen_Reg R9(busInR9, bus, R9in, clear, clock);
							Gen_Reg R10(busInR10, bus, R10in, clear, clock);
							Gen_Reg R11(busInR11, bus, R11in, clear, clock);
							Gen_Reg R12(busInR12, bus, R12in, clear, clock);
							Gen_Reg R13(busInR13, bus, R13in, clear, clock);
							Gen_Reg R14(busInR14, bus, R14in, clear, clock);
							Gen_Reg R15(busInR15, bus, R15in, clear, clock);
							
							Gen_Reg IR(IRout, bus, IRin, clock, clear);
							PC_Reg PC(busInPC, bus, PCin, IncPC, clock, clear);
		
							MAR_Reg MAR(busInMAR, bus, MARin, clear, clock);
							MDR_Reg MDR(busInMDR, Mdatain, bus, MDRin, MDRread, clock, clear);
							
							Gen_Reg HI(busInHI, bus, HIin, clock, clear);
							Gen_Reg LO(busInLO, bus, LOin, clock, clear);
							Y_Reg Y(clock, clear, Mdatain, Yin,YData);
							Z_Reg Z(busOutZ, ZReg, Zin, ZLowout, ZHighout, clear, clock);
							

							//Gen_Reg RZ(clear, clock, Rzin, zregIn, BusMuxInRz);
							//Gen_Reg RZ(zRegIn, BusMuxInRz, Rzin, clear, clock);
										
				

							bus buss(R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
										HIout, LOout, Zhighout, zlowout, Pout, MDRout, In_Portout, Cout, 
										R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in, 
										HIin, LOin, Zhighin, zlowin,
										Pin, MDRin, In_Portin, Cin, BusMuxOut);
										
							
							alu aluu(AND, DIV, MUL, ADD, SUB, OR, NEG, NOT, SHR, SHRA, SHL, ROR, ROL, clock, YData, BusMuxOut, Yin, ZReg, carry);
							
							RCAdder32 add(A, BusMuxOut, Cin);

endmodule