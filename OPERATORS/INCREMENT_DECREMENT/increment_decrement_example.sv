module tb;
  int a,b;
  initial begin
    a= 3;
    b=7;
    b=++a;
    $display("a=%0d",a);
    $display("b=%0d",b);
    a= 3;
    b=7;
    b=a++;
    $display("a=%0d",a);
    $display("b=%0d",b);
    
    b=--a;
    $display("a=%0d",a);
    $display("b=%0d",b);
    
    b=a--;
    $display("a=%0d",a);
    $display("b=%0d",b);
    
    
  end
endmodule
