module foreach_loop;
  bit [4][0:7]arr;
  initial begin
    arr[2]=32'haf;
    foreach(arr[i])begin 
      foreach(arr[i][j])
        $display("array [%0d][%0d]=%0d",i,j,arr[i][j]);
    
      end
  end
endmodule
