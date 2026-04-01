module assignment_operator;
  int a,b;
  logic signed [3:0]c,d;
  initial begin;
    a = 17;
    b = 6;
    $display("a=%0d b=%0d",a,b);
    a += b;
    $display("a=%0d ",a);
    $display("_______________");
    $display("a=%0d b=%0d",a,b);
    a -= b;
    $display("a=%0d ",a);
    $display("_______________");
    $display("a=%0d b=%0d",a,b);
    
    a *= b;
    $display("a=%0d ",a);
    $display("_______________");
    $display("a=%0d b=%0d",a,b);

    a /= b;
    $display("a=%0d ",a);
    $display("_______________");
    
    a = 4'b0010;
    b = 4'b0110;
    
    $display("a=%0b b=%0b",a,b);
    
    a &= b;
    $display("a=%0b ",a);
    $display("_______________");
    $display("a=%0b b=%0b",a,b);
    
    a |= b;
    $display("a=%0b ",a);
    $display("_______________");
    
    a='b010;
    $display("a=%0b b=%0b",a,b);
    a ^= b;
    $display("a=%0b ",a);
    $display("_______________");
    $display("a=%0b b=%0b",a,b);
    
    a <<= b;
    $display("a=%0b ",a);
    $display("_______________");
    $display("a=%0b b=%0b",a,b);
    
    a >>= b;
    $display("a=%0b ",a);
    $display("_______________");
    
    c = 4'b0011;
    d =2;
    $display("c=%0d d=%0d",c,d);
    
    c <<<= d;
    $display("c=%0d ",c);
    $display("_______________");
    $display("c=%0d d=%0d",c,d);
    
    c >>>= d;
    $display("c=%0d ",c);

  end
endmodule
