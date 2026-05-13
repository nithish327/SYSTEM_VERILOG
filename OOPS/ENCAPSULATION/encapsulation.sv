class calculation;
  int a;
  int b;
  int sum,sub;
  function void add();
    sum = a+b;
  endfunction
  
  function void subtraction();
    sub = a-b;
  endfunction
  
  function void display();
    $display("sum = %0d sub = %0d",sum,sub);
  endfunction
endclass
module tb;
  calculation c;
  initial begin
    c=new();
    c.a = 23;
    c.b = 7;
    c.add();
    c.subtraction();
    c.display();
  end
endmodule
