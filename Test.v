'timescale 1ns / 10ps
module test ();

  reg [3:0] a_in;
  reg [3:0] b_in;
  reg [3:0] s_in;
  reg M_in,Ci_inverse_in;

  wire [3:0] Y_out;
  wire P_out,Q_out,Co_inverse_out,AequalsB_out;

  ALU alu(a_in,b_in,s_in,M_in,Ci_inverse_in,P_out,Q_out,Co_inverse_out,Y,AequalsB_out);

  integer i,j,k,l,m,n;

  initial begin
    a_in = 4'b0000;
    b_in = 4'b0000;
    s_in = 4'b0000;
    M_in = 1'b0;
    Ci_inverse_in = 1'b0;
  end


  always begin
    for (i=0;i<2;i++)
      begin
        for(j=0;j<2;j++)
          begin
            for(k=0;k<16;k++)
              begin
                for(l=0;l<16;l++)
                begin
                  for(m=0;m<16;m++)
                    begin
                      a_in <= m;
                      b_in <= l;
                      s_in <= k;
                      M_in <= j;
                      Ci_inverse_in <= i;
                      $display($time,,"a_in=%b,b_in=%b,s_in=%b,M_in=%b,Ci_inverse_in=%b    Y_out=%b,P_out=%b,Q_out=%b,Co_inverse_out=%b,AequalsB_out=%b",a_in,b_in,s_in,M_in,Ci_inverse_in,Y_out,P_out,Q_out,Co_inverse_out,AequalsB_out);
                    end
                end
              end
          end
      end
  end





endmodule // test
