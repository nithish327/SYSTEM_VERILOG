/*Declare two static arrays of type int:
int A[5] = '{1,2,3,4,5};
int B[5];
Copy all elements from array A to array B using direct assignment and display the contents of B.*/

module static_array;
  int A[5] = '{1,2,3,4,5};
  int B[5];
  initial begin
    B = A;
    $display("A[%0d]=%0p",$size(A),A);
    $display("B[%0d]=%0p",$size(B),B);
  end
endmodule
