module sd_packed_array;
  logic [7:0]data;
  initial begin
    data = 8'b10001101;
    foreach(data[i])
      $display("DATA[%0d] = %0d",i,data[i]);
  end
endmodule
