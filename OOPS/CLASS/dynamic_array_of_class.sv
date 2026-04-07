class dynamic_array;
  int count;
  function new (int count);
    this.count = count;
  endfunction
  
  function display(int i);
    
    $display("array [%0d] = %0d",i,count);
  endfunction
endclass

module tb;
  dynamic_array a[];
  initial begin
    a = new[4];
    for(int i = 0; i<a.size(); i++)begin
      a[i] = new(i+20);
    end
    foreach(a[i]) 
      a[i].display(i);
  end
endmodule
