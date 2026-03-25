module typedef_array;
  typedef int array[5];
  array arr;
initial begin
    foreach(arr[i]) begin
      arr[i] = i * 2;
      $display("arr[%0d] = %0d", i, arr[i]);
    end
  end
endmodule
