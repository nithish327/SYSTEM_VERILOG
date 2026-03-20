/*Declare two static arrays of type int with size [5].
Initialize the first array and copy elements to the second array using a for loop.
Display both arrays.*/

module static_array;
  int A[5];
  int B[5];
  initial begin
    A = '{11,22,33,44,55};
    foreach(A[i])begin
      B[i]=A[i];
      $display("B[%0d]=%0d",i,B[i]);
    end
    
  end
endmodule
    
