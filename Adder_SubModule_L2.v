module Adder_SubModuel_L2 (a,b,s,o1,o2);
  input a,b;
  input [3:0] s;
  output o1,o2;
  wire b_inverse;
  wire temp1,temp2,temp3,temp4;


  assign b_inverse = ~b;

  assign temp1 = (b&s[3]&a);
  assign temp2 = (a&s[2]&b_inverse);
  assign temp3 = (b_inverse&s[1]);
  assign temp4 = (s[0]&b);


  assign o1 = ~(temp1|temp2);
  assign o2 = ~(temp3|temp4|a);



endmodule // Adder_SubModuel
