module two_d_unpacked_array;
  logic element [0:7][3];
  initial begin
    foreach (element[i])begin
      $display("element[%0d]",i);
      foreach(element[i][j])begin
        $display("Element[%0d][%0d]",i,j);
      end
    end
  end
endmodule
