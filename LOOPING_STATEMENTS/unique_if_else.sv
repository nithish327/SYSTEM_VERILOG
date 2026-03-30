module tb;
  int a =5;
  initial begin
    unique if(a>3)
      $display("a is %0d",a);
    else if (a==5)
      $display("a is %0d",a);
    else
      $display("a is %0d",a);
  end
endmodule
