module array_locator;
  int array[7] = '{3,2,5,7,1,6,1};
  int a [$];
  initial begin
    a= array.find(x)with(x<3);
    $display("find(x) = %0p",a);
    a= array.find_index()with(item == 7); 
    $display("findindex = %0d",a);
    a= array.find_first()with(item <= 5 & item >3); 
    $display("findfirst = %0d",a);
    a= array.find_first_index(x)with(x>3); 
    $display("find first index = %0d",a);
    a= array.find_last()with(item < 5); 
    $display("find last = %0d",a);
    a= array.find_last_index(x)with(x>3); 
    $display("find last index = %0d",a);
  end
endmodule
