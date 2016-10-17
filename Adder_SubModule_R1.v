module Adder_SubModule_R1 (i1,i2,i3,o);
  input i1,i2,i3;
  output o;

  wire temp;

  assign temp = (i1&(~i2));

  assign o = temp ^ i3;
  
endmodule // Adder_SubModule_R1
