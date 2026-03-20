module dynamic_array;
  int arr[];
  initial begin
    arr = new[4];
    arr ='{2,3,1,2};
    foreach(arr[i])begin
      $display("arr[%0d] = %0d",i,arr[i]);
    end
    arr = new[9](arr);
    $display("new array size = %0d",arr.size());
    foreach(arr[i])begin
      $display("arr[%0d] = %0d",i,arr[i]);
    end
    arr = new[7];
    $display("new array size = %0d",arr.size());
    foreach(arr[i])begin
      $display("arr[%0d] = %0d",i,arr[i]);
    end
    arr.delete();
    $display("arr = %0d",arr.size());
  end
endmodule
