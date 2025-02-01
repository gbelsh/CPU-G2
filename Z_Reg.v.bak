module Z_Reg(ZOut, ZDataIn, ZLowOut, ZHighOut, ZInput, clr, clk);
    output reg [31:0] ZOut,
    input [63:0] ZDataIn,
    input ZLowOut, ZHighOut, ZInput, clr, clk

    reg [63:0] ZTemp;
// on each pos edge and when input ZDataIn changes
    always @(clk, ZDataIn)      
        begin
            if(clr)
                ZOut <=64'h0000000000000000;
            // write operation signal
            else if(ZInput)
                ZTemp <= ZDataIn;
            //read operation of lower 32 bits
            else if(ZLowOut)
                ZOut <= ZTemp[31:0];
            //read operation of higher 32 bits
            else if(ZHighOut)
                ZOut <= ZTemp[63:32];
        end
endmodule            
