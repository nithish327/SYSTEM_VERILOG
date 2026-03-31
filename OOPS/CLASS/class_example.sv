class arithmatic;
  int a=5;
  int b=3;
  int c;
  function new();
    c=a+b;
  endfunction
  
  function display();
    $display("sum =%0d",c);
  endfunction
  endclass
module tb;
  arithmatic a1,a2;
  initial begin
    a1 = new();
    a2=a1;
    a2.display();
    a1.a = 3;
    a1.b = 4;
    a2.display();
    
    
  end
endmodule
    
