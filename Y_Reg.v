module Y_Reg(
    input wire clk,
    input wire clr,
    input wire load,
    input wire [31:0] yIn, 
    output reg [31:0] yOut
);

    always @(posedge clk) begin
        if (clr) begin
            yOut <= 32'b0;
        end else if (load) begin
            yOut <= yIn;
        end
    end
endmodule