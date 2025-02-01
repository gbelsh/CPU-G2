module MDR_Reg(out, MdataIn, bus, wr, rd, clr, clk);
    output reg [31:0] out;
    input [31:0] MdataIn, bus;
    input rd, clr, clk, wr;
    wire [31:0] in;
    always @(posedge clk)
                if(clr)
                    out=0;
                else if(wr)
                    if(rd)
                        out = MdataIn;
                else
                        out = bus;
endmodule