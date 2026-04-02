module reduction_operator;
  int a,b,c;
  initial begin;
    a= 3;
    b= 4;
    //Reduction AND
    c = &a;
    $display("c=%0b",c);
    
    //Reduction OR
    c = |b;
    $display("c=%0b",c);
    
    //Reduction XOR
    c = ^a;
    $display("c=%0b",c);
    
    //Reduction NAND
    c = ~&a;
    $display("c=%0b",c);
    
    //Reduction NOR
    c = ~|b;
    $display("c=%0b",c);
    
    //Reduction XNOR
    c = ~^a;
    $display("c=%0b",c);
  
  end
endmodule
    
