class ha_1;
  int a,b;
  int sum,carry;
  function new(int x,y);
    a=x;
    b=y;
    sum = a^b;
    carry = a&b;
  endfunction
  
endclass

class ha_2;
  int a,b,cin;
  int sum,carry;
  task full_adder(int x,y,z);
    ha_1 h1,h2;
    a=x;
    b=y;
    cin=z;
    
    h1 = new(a,b);
    h2 = new(h1.sum,cin);
    
    sum = h2.sum;
    carry = h1.carry | h2.carry;
    $display("sum = %0d carry = %0d",sum,carry);
    
  endtask
endclass

module tb;
  ha_2 fa;
  initial begin
    fa = new();
    fa.full_adder(1,1,1);
    fa.full_adder(0,0,0);
    fa.full_adder(1,0,1);
    fa.full_adder(1,0,0);
  end
endmodule
  
    
    
