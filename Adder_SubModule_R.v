module Adder_SubModule_R (p,g,M,Ci,Co_inverse,P,Q,Y,AequalsB);
  input [3:0] p;
  input [3:0] g;
  input Ci,M,Co_inverse;

  output P,Q,AequalsB;
  output [3:0] Y;

  wire M_inverse = ~M;
  wire t1,t2,t3,t4;

  assign P = ~(p[3]&p[2]&p[1]&p[1]);

  assign t1 = ~(g[3]|(g[2]&p[3])|(g[1]&p[3]&p[2])|(g[0]&p[3]&p[2]&p[1]));
  assign t2 = 

endmodule // Adder_SubModule_R
