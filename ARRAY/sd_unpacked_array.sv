module sd_unpacked_array;
  logic element [0:7];
  initial begin
    foreach (element[i])begin
      element[i] = $random;
      $display("element[%0d]",i);
    end
    $display("element=%p",element);
  end
endmodule
