module PC_Reg(out, bus, clr, clk, load, inc);
    output reg [31:0] out,
    input [31:0] bus,
    input clr, clk, load, inc

    initial out = 0;
    always @(posedge clk)
        begin   
            if(clr)
                out = 0;
            else if(load)
                out = bus;
            else if(inc)
                out = out + 1;
            else 
                out = out;
        end
endmodule