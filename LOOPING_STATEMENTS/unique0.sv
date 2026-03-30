module tb;
  int a =5;
  initial begin
    unique0 if(a<3)
      $display("a is %0d",a);
    else if (a>6)
      $display("a is %0d",a);
  end
endmodule
