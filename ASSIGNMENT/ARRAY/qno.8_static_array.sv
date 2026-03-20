/*Declare a 2D static array of type bit with size [4][8].Initialize all elements in row index 1 to 8'hFF
using a loop and display each element using $display.*/

module static_array;
  bit [8] data [4];
  initial begin
    data[1] = 8'hFF;
    foreach(data[i])begin
      $display("DATA [%0d] = %0h",i,data[i]);
    end
  end
endmodule
  
