module repeat_loop;
  int a,b;
  initial begin
    a = 23;
    b = 17;
    a += b;
    repeat(10) begin
      $display("a = %0d",a);
    end
  end
endmodule
      
