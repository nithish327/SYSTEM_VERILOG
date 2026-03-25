module union_tb;
  union{
    int i;
    bit [31:0] b;
  }u1;
  initial begin
    u1.b = 32'hFFFF_FFFF;
    $display("Union(b) = %0h",u1.b);
    u1.i = 25;
    $display("Union(i) = %0h",u1.i);
  end 
endmodule
  
