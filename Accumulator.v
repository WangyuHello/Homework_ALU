module Accumulator (step,reset,clk,Yo);
  input [3:0] step;
  input clk,reset;
  reg [3:0] temp,mode;
  reg Ci_inverse_in,M_in;
  wire AequalsB_o,P_o,Q_o,Co_inverse_o;
  wire [3:0] Y_o;
  reg [3:0] YY;

  output [3:0] Yo;

  ALU alu(.a(step),.b(temp),.s(mode),.M(M_in),.Ci_inverse(Ci_inverse_in),.P(P_o),.Q(Q_o),.Co_inverse(Co_inverse_o),.Y(Y_o),.AequalsB(AequalsB_o));

  initial begin
    temp = 4'b0000;
    mode = 4'b1001;
    M_in = 0;
    Ci_inverse_in = 1;
  end


  always @ (posedge clk or reset) begin

    temp[0] = Y_o[0]&(~reset);
    temp[1] = Y_o[1]&(~reset);
    temp[2] = Y_o[2]&(~reset);
    temp[3] = Y_o[3]&(~reset);

    YY = temp;
    Yo = temp;
  end


endmodule // Accumulator
