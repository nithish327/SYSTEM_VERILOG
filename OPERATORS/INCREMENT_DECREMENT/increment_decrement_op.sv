module increment_decrement;
  int a,b;
  initial begin
    a = 5;
    b = 4;
    $display("a = %0d b = %0d",a,b);
    a++;
    $display("a = %0d ",a);
    a+=b;
    ++a;
    $display("a = %0d ",a);
    --a;
    $display("a = %0d ",a);
    a--;
    a -=b;
    $display("a = %0d ",a);
    
  end
endmodule
