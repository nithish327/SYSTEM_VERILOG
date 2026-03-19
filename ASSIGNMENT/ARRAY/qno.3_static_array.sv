// Declare an unpacked static array of type logic [7:0] with 4 elements.Assign the following values: 8'hA1, 8'hB2, 8'hC3, 8'hD4 Print all elements using a loop.

module unpacked_array;
  logic [7:0]data[4];
  initial begin
    data = '{8'hA1, 8'hB2, 8'hC3, 8'hD4};
    foreach(data[i])begin
      $display("DATA[%0d]=%0h",i,data[i]);
    end
  end
endmodule
