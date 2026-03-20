/*Declare a static array of type byte with 6 elements.
Initialize the array with different values and display each element using a foreach loop.*/

module static_array;
  byte a[6];
  initial begin
    for(int i=0;i<$size(a);i++)begin
      a[i] = i*2;
      $display("a[%0d] = %0d",i,a[i]);
    end
  end
endmodule
      
