module Gen_Reg(out, bus, clr, clk, wr);
    output reg [31:0] out;
    input [31:0] bus;
    input rd, clr, clk, wr;
    wire [31:0] in;

    always @(posedge clk)
        begin
            if(clr)
                out = 0;
            else if(wr)
                out = bus;
        end
endmodule 

