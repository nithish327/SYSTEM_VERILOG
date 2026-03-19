module three_d_packed_array;
  logic [2:0][3:0][7:0]data;
  initial begin
    data[0] = 32'haaaa_bbbb;
    data[1] = 32'h12345678;
    data[2] = 32'h9abcdef0;
    
    foreach(data[i])begin
      $display("DATA[%0d] = %0h",i,data[i]);
    foreach(data[i][j])begin
      $display("DATA[%0d][%0d] = %0h",i,j,data[i][j]);
    end
    end
  end
endmodule
