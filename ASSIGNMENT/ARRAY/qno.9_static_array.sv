/*Declare a static array:
logic [7:0] arr[8];
Use a for loop to initialize each element with the value i + 8'h10. Display all elements.*/

module static_array;
  logic [7:0] arr[8];
  initial begin
    for(int i=0;i<8;i++)begin
      arr[i] = i+8'h10;
    end
    
    foreach(arr[i])begin
      $display("ARRAY [%0d] = %0h",i,arr[i]);
    end
  end
endmodule
