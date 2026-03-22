module associative_array;
  bit [7:0]array[int];
  int index;
  initial begin
    array[2] = 5;
    array[4] = 3;
    array[6] = 2;
    array[7] = 7;
    array[9] = 6;
    $display("size = %0d",array.size());
    $display("Entries = %0d",array.num());
    foreach(array[i])
      $display("Array[%0d] = %0d",i,array[i]);
    
    if(array.exists(7)) 
      $display("An element exists at index = 7");
    else $display("An element doesn't exists at index = 7");
    
    if(array.exists(6)) 
      $display("An element exists at index = 8");
    else $display("An element doesn't exists at index = 8");
    
    array.first(index);
    $display("first index of array = %0d",index);
    
    array.last(index);
    $display("last index of array = %0d",index);
    
    array.prev(index);
    $display("previous index of array = %0d",index);
    
    index= 4;
    array.next(index);
    $display("next index of array  4 = %0d",index);
    
    index=6;
    array.delete(index);
    $display("deleted index =%0d",index);
    
    foreach(array[i])
    $display("Array[%0d] = %0d",i,array[i]);
  end
endmodule
