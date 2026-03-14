module alu (
    input  [3:0] A, B,
    input  [2:0] ALU_SEL,
    output reg [3:0] ALU_OUT
);

    always @(*) begin
        case (ALU_SEL)
            3'b000: ALU_OUT = A + B;      // Addition
            3'b001: ALU_OUT = A - B;      // Subtraction
            3'b010: ALU_OUT = A & B;      // AND
            3'b011: ALU_OUT = A | B;      // OR
            3'b100: ALU_OUT = A ^ B;      // XOR
            default: ALU_OUT = 4'b0000;   // Default case
        endcase
    end

endmodule
