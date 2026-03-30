module tb;
  int a =5;
  initial begin
    priority if(a!=6)
      $display("a is %0d",a);
    else if(a==5)
      $display("b is %0d",a);
    else
      $display("c is %0d",a);
  end
endmodule



// WARNING STATEMENT
module tb;
  int a =5;
  initial begin
    priority if(a>6)
      $display("a is %0d",a);
    else if(a!=5)
      $display("b is %0d",a);
    
  end
endmodule
      
    

    
