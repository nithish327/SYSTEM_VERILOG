module tb;
  int a =5;
  initial begin
    unique case(a)
      2'b00 : a =5;
      2'b00 : a =5;
      2'b10 : a =2;
      2'b11 : a =1;
    endcase
    $display("a is %0d",a);
  end
endmodule
      
    
