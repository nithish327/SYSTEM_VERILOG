/*Declare a 3-element unpacked static array of type bit [9:0] named packed_arr.
Write a statement to access bit index 2 of the second element.*/

module static_array;
  bit [9:0] packed_arr [2];
  initial begin
    packed_arr[0] = 8'b10011101;
    packed_arr[1] = 8'b10100101;
    packed_arr[2] = 8'b10000010
    
    $display("Access bit index of 2 = %0b",packed_arr[2][1]);
  end
endmodule
      
