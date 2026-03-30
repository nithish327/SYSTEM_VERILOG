module tb;
  logic [3:0]arr [0:9];
  initial begin
    arr ='{9,8,7,6,5,4,3,2,1,0};
    for (int i=0; i < $size(arr);i++)begin
      if(i == 4)
        continue;
      if(i == 6)
        continue;
      $display("array [%0d] = %0d",i,arr[i]);
      if (i==7)
        break;
    end
  end
endmodule
      
