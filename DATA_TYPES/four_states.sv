module tb_four_state;
  logic [7:0]a;
  integer b;
  real c;
  time [1:0]d;
  
  initial begin
    $display("default values logic = %0d ",a);
    $display("default values integer = %0d ",b);
    $display("default values real = %0d ",c);
    $display("default values time = %0d ",d);
    
    a= 8'b10001111;
    b= a;
    c= 1.1;
    d= 5;
    $display("a=%b b=%d c=%f d=%0t",a,b,c,d);
    
  end 
endmodule
