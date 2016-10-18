module ALU (a,b,M,Ci_inverse,P,Q,Co_inverse,Y,AequalsB);

  input [3:0] a;
  input [3:0] b;
  input M,Ci_inverse;

  output P,Q,Co_inverse,AequalsB;
  output [3:0] Y;

  Adder_SubModuel2 left = Adder_SubModuel2();
  Adder_SubModule_R right = Adder_SubModule_R();
endmodule // Adder
