module arithmtic_operator;
  logic [4:0] a,b;
  int x;
  initial begin;
    a= 15;
    b= 9;
    x= a+b;
    $display("x = %0d",x);
    x= a-b;
    $display("x = %0d",x);
    x= a*b;
    $display("x = %0d",x);
    x= a/b;
    $display("x = %0f",x);
    x= a%b;
    $display("x = %0f",x);
    b=3;
    x= a**b;
    $display("x = %0d",x);
    x= +a;
    $display("x = %0d",x);

    x= -b;
    $display("x = %0d",x);
 
  end
endmodule
    
