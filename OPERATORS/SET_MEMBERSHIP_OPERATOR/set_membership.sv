module set_membership;
  int a,b;
  initial begin
    a = 23;
    if (a inside {[20:25]})
      $display("a is inside in the set");
    else
      $display("a is not inside in the set");
    
    a = 17;
    if (a inside {[20:25]})
      $display("a is inside in the set");
    else
      $display("a is not inside in the set");
  
    if (a inside {17,19,[20:25]})
      $display("a is inside in the set");
    else
      $display("a is not inside in the set");
    
    a = 11;b=15;
    if (a&&b inside {7,9,11,16,17,19})
      $display("a is inside in the set");
    else
      $display("a is not inside in the set");
    
    if (a||b inside {7,9,15,17,19})
      $display("a is inside in the set");
    else
      $display("a is not inside in the set");
  end
endmodule
