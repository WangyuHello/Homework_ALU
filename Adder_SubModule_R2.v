module Adder_SubModule_R2 (Ci_inverse,M_inverse,p,g,o);
  input Ci_inverse,M_inverse;
  input [3:0] p;
  input [3:0] g;
  output [3:0] o;

  wire w31,w32,w33;
  wire w21,w22,w23,w24;
  wire w11,w12,w13;
  wire w01,w02;

  assign o[3] = ~(g[3]|(g[2]&p[3])|(g[1]&p[3]&p[2])|(g[0]&p[3]&p[2]&p[1]));
  assign o[2] = ~((p[2]&p[1]&p[0]&Ci_inverse&M_inverse)|(g[2]&M_inverse)|(p[2]&g[1]&M_inverse)|(p[2]&p[1]&g[0]&M_inverse));
  assign o[1] = ~((p[1]&p[0]&Ci_inverse&M_inverse)|(g[1]&M_inverse)|(p[1]&g[0]&M_inverse));
  assign o[0] = ~((p[0]&Ci_inverse&M_inverse)|(g[0]&M_inverse));

endmodule // Adder_SubModule_R2
//Another part of adder
