//Declare a static array of type int with 5 elements named arr.Initialize it with the values {10, 20, 30, 40, 50} and display all elements using a for loop.

module tb_static_array;
  int arr[5] = '{10, 20, 30, 40, 50};
  initial begin
    foreach(arr[i])begin
      $display("Array[%0d] = %0d",i,arr[i]);
    end
  end
endmodule

//Another method

module tb_static_array;
  int arr[5]; 
  initial begin
    arr='{10,20,30,40,50};
    for(int i=0;i<=4;i++)begin
      $display("Array[%0d] = %0d",i,arr[i]);
    end
  end
endmodule
