module forever_loop;
  int a=2;
  initial begin
    forever begin
      #10 a = a*2;
      $display("a = %0d",a);
      if(a>100)
      $finish;
    end
  end
endmodule
      
