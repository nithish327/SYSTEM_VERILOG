module array_order;
  int arr [7:0];
  initial begin
    arr = '{4,7,5,3,9,8,7,3};
    arr.reverse();
    $display("reverse order = %0p",arr);
    arr.sort();
    $display("acending order = %0p",arr);
    arr.rsort();
    $display("decending order = %0p",arr);
    arr.shuffle();
    $display("shuffle = %0p",arr);
  end
endmodule
