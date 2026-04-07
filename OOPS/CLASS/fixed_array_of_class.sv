class fixed_array;
  int count;
  function new (int count);
    this.count = count;
  endfunction
  
  function display(int i);
    
    $display("array [%0d] = %0d",i,count);
  endfunction
endclass

module tb;
  fixed_array a[5];
  initial begin
  for(int i = 0; i<5; i++)begin
  a[i] = new(i*2);
  end
  for(int i = 0; i<5; i++) 
  a[i].display(i);
  end
endmodule
