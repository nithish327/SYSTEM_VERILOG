virtual class square;
  int a;
  int a_sq;
  pure virtual function void calculate();
    
  virtual function void display();
    $display("area = %0d",a_sq);
  endfunction
endclass

class formula extends square;

  function new(int a);
    this.a = a;
  endfunction
  function void calculate();
    a_sq = a*a;
  endfunction
endclass

class rectangle extends square;
  int b;
  function new(int a,b);
    this.a =a;javascript:void(0)
    this.b= b;
  endfunction
  function void calculate();
    a_sq = a*b;
  endfunction
  
endclass

module tb;
  formula a0;
  rectangle a1;
  initial begin   
    a0 =new(15);
    a0.calculate();
    a0.display();
    a1 =new(10,15);
    a1.calculate();
    a1.display();
    
  end
endmodule

    
