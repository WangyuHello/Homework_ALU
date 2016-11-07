`timescale 1ns / 10ps
module AccuTest ();


  reg [3:0] step-in;
  reg reset_in;

  wire [3:0] out;

  Accumulator Accu(.step(step_in),.out(out),.reset(reset_in));

  initial begin
    step_in = 4'b0001;
    reset_in = 1'b0;
  end

  always @ (posedge wire) begin
    
  end

endmodule // AccuTest
