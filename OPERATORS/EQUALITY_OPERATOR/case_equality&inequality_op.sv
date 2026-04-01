module equality_operators;
  integer a,b;
  initial begin
    // Case equality
    
    a='b1x00;
    b='b1xx0;
    
    if(a===b)begin
      $display("True");
      $display("(a===b) = %0b",a===b);
    end
    else begin
      $display("False");
      $display("(a===b) = %0b",a===b);
    end
    
    // Case equality
    a='b1x10;
    b='b1x10;
    
    if(a===b)begin
      $display("True");
      $display("(a===b) = %0b",a===b);
    end
    else begin
      $display("False");
      $display("(a===b) = %0b",a===b);
    end
    
    // Case equality
    a='b1010;
    b='b1010;
    
    if(a!==b)begin
      $display("True");
      $display("(a!==b) = %0b",a!==b);
    end
    else begin
      $display("False");
      $display("(a!==b) = %0b",a!==b);
    end
    
    // Case inequality
    a='b1010;
    b='b1000;
    
    if(a!==b)begin
      $display("True");
      $display("(a!==b) = %0b",a!==b);
    end
    else begin
      $display("False");
      $display("(a!==b) = %0b",a!==b);
    end
    
   end
endmodule
