module Adder_SubModule_R (p,g,M,Ci_inverse,Co_inverse,P,Q,Y,AequalsB);
  input [3:0] p;
  input [3:0] g;
  input Ci_inverse,M,Co_inverse;

  output P,Q,AequalsB;
  output [3:0] Y;

  wire M_inverse;
  wire [3:0] t;

  assign M_inverse = ~M;

  assign P = ~(p[3]&p[2]&p[1]&p[1]);

  Adder_SubModule_R2 adder_submodule_r2(.Ci_inverse(Ci_inverse),.M_inverse(M_inverse),.p(p),.g(g),.o(t));
  Adder_SubModule_R1 r1();
  Adder_SubModule_R1 r2();
  

endmodule // Adder_SubModule_R
