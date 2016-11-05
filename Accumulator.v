module Accumulator (step,out);

  input [3:0] step;

  output [3:0] out;

  wire Co_inverse,AequalsB;

  reg [3:0] temp;

  ALU alu(.a(step),.b(temp),.s(0110),.Ci_inverse(0),.P(0),.Q(0),.Co_inverse(Co_inverse),.Y(temp),.AequalsB(AequalsB));

endmodule // Accumulator
