module two_d_packed_array;
  logic [3:0][7:0]data;
  initial begin
    data[0] = 8'b10001101;
    data[1] = 8'ha;
    data[2] = 8'd3;
    data[3] = 8'h7;
    foreach(data[i])
      $display("DATA[%0d] = %0d",i,data[i]);
  end
endmodule

//Another method

module two_d_packed_array;
  logic [3:0][7:0]data;
  initial begin
    data = 32'haaaa_bbbb;
    
    foreach(data[i])
      $display("DATA[%0d] = %0b",i,data[i]);
  end
endmodule
