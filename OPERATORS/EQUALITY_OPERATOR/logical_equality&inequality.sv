module equality_operators;
  integer a,b;
  integer c,d;
  initial begin
    // Logical equality
    
    a='b1x00;
    b='b1xx0;
    
    if(a==b)begin
      $display("True");
      $display("(a==b) = %0b",a==b);
    end
    else begin
      $display("False");
      $display("(a==b) = %0b",a==b);
    end
    
    // Logical equality
    c='b1x10;
    d='b1x10;
    
    if(c==d)begin
      $display("True");
      $display("(a==b) = %0b",c==d);
    end
    else begin
      $display("False");
      $display("(a==b) = %0b",c==d);
    end
    
    // Logical equality
    c='b1010;
    d='b1010;
    
    if(c==d)begin
      $display("True");
      $display("(a==b) = %0b",c==d);
    end
    else begin
      $display("False");
      $display("(a==b) = %0b",c==d);
    end
    
    // Logical inequality
    c='b1010;
    d='b1000;
    
    if(c!=d)begin
      $display("True");
      $display("(a!=b) = %0b",c!=d);
    end
    else begin
      $display("False");
      $display("(a!=b) = %0b",c!=d);
    end
    
   end
endmodule
