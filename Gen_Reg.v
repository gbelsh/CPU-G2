module Gen_Reg(out, bus, clr, clk, wr);
    output reg [31:0] out;
    input [31:0] bus;
    input clr, clk, wr;
    wire [31:0] in;
//on rising edge
    always @(posedge clk)
        begin
		  //when clear is high reset output to 0
            if(clr)
                out = 0;
            else if(wr)
                out = bus;		//when write signal high, write the value of bus to output
        end
endmodule