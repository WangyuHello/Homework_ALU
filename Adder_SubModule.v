module Adder_SubModuel (a,b,s0,s1,s2,s3,o1,o2);
  input a,b,s0,s1,s2,s3;
  output o1,o2;
  wire b_inverse;
  wire temp1,temp2,temp3,temp4;
  wire w1,w2,w3;


  assign b_inverse = ~b;

  assign temp1 = (b&s3&a);


  







endmodule // Adder_SubModuel
