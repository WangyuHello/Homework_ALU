module Adder_SubModuel_L (a,b,s,p,g);
  input [3:0] a;
  input [3:0] b;
  input [3:0] s;
  output [3:0] p;
  output [3:0] g;

  Adder_SubModuel_L2 sm0(.a(a[0]),.b(b[0]),.s(s),.o1(p[0]),.o2(g[0]));
  Adder_SubModuel_L2 sm1(.a(a[1]),.b(b[1]),.s(s),.o1(p[1]),.o2(g[1]));
  Adder_SubModuel_L2 sm2(.a(a[2]),.b(b[2]),.s(s),.o1(p[2]),.o2(g[2]));
  Adder_SubModuel_L2 sm3(.a(a[3]),.b(b[3]),.s(s),.o1(p[3]),.o2(g[3]));

endmodule // Adder_SubModuel2
