module tb;
  int a =7;
  initial begin
    priority case(a)
      7: $display("a is %0d",a);
      7: $display("a is %0d",a);
      5: $display("a is %0d",a);
      2: $display("a is %0d",a);
    endcase
    
  end
endmodule
      
    
//WARNING STATEMENT

module tb;
  int a =7;
  initial begin
    priority case(a)
      1: $display("a is %0d",a);
      3: $display("a is %0d",a);
      5: $display("a is %0d",a);
      2: $display("a is %0d",a);
    endcase
    
  end
endmodule
      
    
