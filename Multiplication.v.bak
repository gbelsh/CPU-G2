module Multiplicaion(
    input signed [31:0] multiplicand,
    input signed [31:0] multiplier,
    output reg signed [63:0] product
);

reg signed [63:0] accumulator;
reg [1:0] state;
reg signed [31:0] A, S;
reg signed [63:0] M;
integer i;

always @(posedge clk) begin
    case(state)
        2'b00: begin // Initial state
            A = multiplicand;
            S = -multiplicand; // 2's complement of A
            M = {32'b0, multiplier}; // Pad multiplier with 32'b0
            accumulator = 64'b0;
            state = 2'b01;
        end
        2'b01: begin // Booth encoding
            if (M[1] == 1 && M[0] == 0) begin
                accumulator = accumulator + A;
                M = M + S;
            end else if (M[1] == 0 && M[0] == 1) begin
                accumulator = accumulator + S;
                M = M + A;
            end
            state = 2'b10;
        end
        2'b10: begin // Right shift M and accumulator
            accumulator = accumulator >> 1;
            M = M >> 1;
            state = (i < 31) ? 2'b01 : 2'b11;
        end
        2'b11: begin // Final state
            product = accumulator;
            state = 2'b00; // Reset to initial state for next operation
        end
        default: state = 2'b00;
    endcase
end

endmodule
