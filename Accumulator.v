module Accumulator (step,out,reset);

  input [3:0] step;
  input reset;

  output [3:0] out;

  wire Co_inverse,AequalsB;
  wire [3:0] Yo;

  reg [3:0] temp;

  ALU alu(.a(step),.b(temp),.s(0110),.Ci_inverse(0),.P(0),.Q(0),.Co_inverse(Co_inverse),.Y(Yo),.AequalsB(AequalsB));

  temp[0] = Yo[0]&reset;
  temp[1] = Yo[1]&reset;
  temp[2] = Yo[2]&reset;
  temp[3] = Yo[3]&reset;


  out = temp;


endmodule // Accumulator
