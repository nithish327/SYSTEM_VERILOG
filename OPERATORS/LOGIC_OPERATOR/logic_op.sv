module logical_operator;
  logic [3:0] a,b,c;
  int x,y,z;
  initial begin;
    a= 15;
    b= 9;
    c= 'b001;
    x = a||b;
    $display("Logic OR = %0b",x);
    
    y = a&&b;
    $display("Logic AND = %0b",y);
    
    z = !c;
    $display("Logic Negation = %0b",z);
    
    x = (!a||b);
    $display("Logic OR = %0b",x);
    
    y = (a&&!b);
    $display("Logic AND = %0b",y);
  
  end
endmodule
    
