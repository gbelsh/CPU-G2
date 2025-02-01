module MAR_Reg(
    output reg [31:0] out,  // Memory Address output
    input [31:0] bus,       // Bus to receive address from
    input wr,               // Write enable for loading the address into MAR
    input clr,              // Clear signal to reset the MAR
    input clk               // Clock signal
);

    always @(posedge clk) begin
        if (clr) begin
            out <= 0; // Clear the MAR
        end else if (wr) begin
            out <= bus; // Load the bus value into MAR on write enable
        end
        // No need for 'rd' signal as MAR typically doesn't read data but only holds addresses
    end

endmodule