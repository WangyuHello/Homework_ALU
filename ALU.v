module ALU (a,b,M,Ci_inverse,P,Q,Co_inverse,Y,AequalsB);

  input [3:0] a;
  input [3:0] b;
  input M,Ci_inverse;

  output P,Q,Co_inverse,AequalsB;
  output [3:0] Y;

  Adder_SubModule_R alu = Adder_SubModule_R();
endmodule // Adder
