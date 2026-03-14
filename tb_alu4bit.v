module tb_alu;
reg [3:0] A, B;
reg [2:0] ALU_SEL;
wire [3:0] ALU_OUT;

alu uut (.A(A), .B(B), .ALU_SEL(ALU_SEL), .ALU_OUT(ALU_OUT));

initial begin
   $dumpfile("alu.vcd");
   $dumpvars(0, tb_alu);
   A = 4'b0011; B = 4'b0001; ALU_SEL = 3'b000; #10; // Add 
   A = 4'b0100; B = 4'b0010; ALU_SEL = 3'b001; #10; // Sub
   A = 4'b1010; B = 4'b1100; ALU_SEL = 3'b010; #10; // AND
   A = 4'b1010; B = 4'b1100; ALU_SEL = 3'b011; #10; // OR
   A = 4'b1010; B = 4'b1100; ALU_SEL = 3'b100; #10; // XOR

   $finish;
end
endmodule
