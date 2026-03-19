module tb_two_states;
  int a;
  shortint b;
  longint c;
  bit d;
  byte e;
  
  initial begin
    $display("Default values of int = %0d",a);
    $display("Default values of shortint = %0d",b);
    $display("Default values of longint = %0d",c);
    $display("Default values of bit = %0d",d);
    $display("Default values of byte = %0d",e);
    
    a= 8'd128;
    b= a+a;
    c= 16'hc;
    d= 1'b1;
    e= a;
    $display("a=%0b b=%0d c=%0h d=%0b e=%0d",a,b,c,d,e);
  end
endmodule
    
  
