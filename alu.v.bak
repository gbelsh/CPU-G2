module alu(
			input [3:0] select,
			input clk,
			input signed [31:0] A,
			input signed [31:0] B,
			output [63:0] Z,
			output carry
);

wire[63:0] multi_res;
wire[31:0] ror_res, rol_res;
reg [31:0] RLo, RHi;
assign Z = {RHi, RLo};
initial RHi = 0;

Multiplicaion multi(multi_res,A,B);
rotate_right ror(ror_res,A,B);
rotate_left rol(rol_res,A,B);


always @ (posedge clk)
begin
		case(select)
				4'b0001:
                        RLo <= A + B;    //Addition
				4'b0010:
						RLo <= A - B;    //Subtraction
				4'b0011:
						begin
							RLo <= multi[31:0];                 //Multiplicaion
							RHi <= multi[63:32]
						end
				4'b0101:
						begin
					        RHi <= A % B;            //Mod
							RLo <= (A-RHi) / B;           //Division
						end
				4'b0110:
                    	RLo <= A & B;    //And
				4'b0111:
                        RLo <=  A | B;   //Or
				4'b1000:
                        RLo <= ~B+1    //2s complement
				4'b1010:
                        RLo <= ~B    //Not
				4'b1100:
                        RLo <= A<<B;    //Shift Left
				4'b1101:
                        RLo <= A>>B;    //Shift Right
				4'b1110:
						RLo <= rol_res;         //Rotate left
				4'b1111:
						RLo <= ror_res;         //Rotate right
				default:
						RLo <= RLo;             //Default RLo remains unchanged
			endcase
		end
endmodule
