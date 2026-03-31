class array;
  int data [];
  function new();
    data = new[5];
    data = '{3,5,7,2,6};
  endfunction
  
  function display();
    foreach(data[i])begin
      $display("array [%0d]= %0d",i,data[i]);
    end
  endfunction
endclass
  
module tb;
  array arr;
  initial begin
   
      arr = new();
      arr.display();
      
  end
endmodule
      
      
