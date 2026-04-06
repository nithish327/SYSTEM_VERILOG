module tb;
  int d1_array [];
  int d_array [];
  initial begin
    d1_array =new[5];
    d1_array ='{9,1,3,4,4};
    foreach(d1_array[i])begin
      $display("d1[%0d] = %0d",i,d1_array[i]);
    end
    $display("Size of d1_array %0d",d1_array.size());
    d1_array.delete();
    $display("delete of d1_array %0d",d1_array);
    d_array = new[5] ;
    d_array ='{3,5,9,7,8};
    d_array.reverse();
    $display("Reverse of d_array %0p",d_array);
    d_array.sort();
    $display("Sort of d_array %0p",d_array);
    d_array.shuffle();
    $display("Shuffle of d_array %0p",d_array);
  end
endmodule
    
