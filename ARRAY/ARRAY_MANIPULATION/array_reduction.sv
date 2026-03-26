module array_reduction;
  int a[4];
  initial begin
    a='{1,3,6,5};
    $display("sum = %0d",a.sum());
    $display("product = %0d",a.product());
    $display("and = %0h",a.and());
    $display("or = %0h",a.or());
    $display("xor = %0h",a.xor());
  end
endmodule
