module equality_operators;
  integer a,b;
  initial begin
    // Wildcard equality
    
    a='b1x00;
    b='b1xx0;
    
    if(a==?b)begin
      $display("True");
      $display("(a==?b) = %0b",a==?b);
    end
    else begin
      $display("False");
      $display("(a==?b) = %0b",a==?b);
    end
    
    // Wildcard equality
    a='b1010;
    b='b1110;
    
    if(a==?b)begin
      $display("True");
      $display("(a==?b) = %0b",a==?b);
    end
    else begin
      $display("False");
      $display("(a==?b) = %0b",a==?b);
    end
    
    // Wildcard inequality
    a='b1010;
    b='b10x0;
    
    if(a!=?b)begin
      $display("True");
      $display("(a!=?b) = %0b",a!=?b);
    end
    else begin
      $display("False");
      $display("(a!=?b) = %0b",a!=?b);
    end
    
    // Wildcard inequality
    a='b1010;
    b='b1000;
    
    if(a!=?b)begin
      $display("True");
      $display("(a!=?b) = %0b",a!=?b);
    end
    else begin
      $display("False");
      $display("(a!=?b) = %0b",a!=?b);
    end
    
   end
endmodule
