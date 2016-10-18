module ALU (a,b,s,M,Ci_inverse,P,Q,Co_inverse,Y,AequalsB);

  input [3:0] a;
  input [3:0] b;
  input [3:0] s;
  input M,Ci_inverse;

  output P,Q,Co_inverse,AequalsB;
  output [3:0] Y;

  wire [3:0] p;
  wire [3:0] g;

  Adder_SubModuel2 left(.a(a),.b(b),.s(s),.p(p),.g(g));
  Adder_SubModule_R right(.p(p),.g(g),.M(M),.Ci_inverse(Ci_inverse),.Co_inverse(Co_inverse),.P(P),.Q(Q),.Y(Y),.AequalsB(AequalsB));

endmodule // Adder
