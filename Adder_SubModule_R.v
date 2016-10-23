module Adder_SubModule_R (p,g,M,Ci_inverse,Co_inverse,P,Q,Y,AequalsB);
  input [3:0] p;
  input [3:0] g;
  input Ci_inverse,M;

  output P,Q,AequalsB,Co_inverse;
  output [3:0] Y;

  wire M_inverse;
  wire [3:0] t;
  wire temp,temp_co_inverse;

  assign M_inverse = ~M;

  assign P = ~(p[3]&p[2]&p[1]&p[0]);
  assign temp = ~(M_inverse&Ci_inverse);

  Adder_SubModule_R2 adder_submodule_r2(.Ci_inverse(Ci_inverse),.M_inverse(M_inverse),.p(p),.g(g),.o(t));
  Adder_SubModule_R1 r3(.i1(p[3]),.i2(g[3]),.i3(t[2]),.o(Y[3]));
  Adder_SubModule_R1 r2(.i1(p[2]),.i2(g[2]),.i3(t[1]),.o(Y[2]));
  Adder_SubModule_R1 r1(.i1(p[1]),.i2(g[1]),.i3(t[0]),.o(Y[1]));
  Adder_SubModule_R1 r0(.i1(p[0]),.i2(g[0]),.i3(temp),.o(Y[0]));

  assign Q = t[3];
  assign temp_co_inverse = ~(p[3]&p[2]&p[1]&p[0]&Ci_inverse);
  assign Co_inverse = (~temp_co_inverse)|(~t[3]);

  assign AequalsB = Y[2]&Y[3]&Y[1]&Y[0];


endmodule // Adder_SubModule_R
