class arithmatic;
  int a,b,c;
  function new();
    a=2; b=3;
    c=a+b;
  endfunction
  
  function display();
    $display("sum =%0d",c);
  endfunction
  endclass

class sum; 
  task addition();
    arithmatic sum_1;
    arithmatic sum_2;
    
    sum_1 = new();
    sum_1.display();
  endtask
endclass

module tb;
  sum a1,a2;
  initial begin
    a1 = new();
    a1.addition();
    
  end
endmodule
    
