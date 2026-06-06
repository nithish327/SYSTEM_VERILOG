module tb;  
  function void compare(input int a, b);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  endfunction
  
  initial begin
    compare(23,10);
    compare(7, 9);
    compare(7, 7);
  end
endmodule

/* Output 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
a is greater than b
a is less than b
a is equal to b
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
*/
