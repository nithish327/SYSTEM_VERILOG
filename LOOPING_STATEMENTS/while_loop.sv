module while_loop;
  int arr[];
  int i=0;
  initial begin
    arr = new[16];
    arr ='{2,5,7,9,5,3,11,31,23,8,9,10,22,4,1,14};
    while(i <  arr.size())begin
      $display("i = %0d, value = %0d", i, arr[i]);
      if (arr[i] > 10) begin
      $display("greater than 10 in array = %0d",arr[i]);
      end
      i++;
  end
    
  end
endmodule
    
      
