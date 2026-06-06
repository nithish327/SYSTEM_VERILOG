module function_example;
  int a, b;
  int out;
  
  function int fn_multiply(int a, b);
    a = a*b; //value of a is updated, it won't update global variables a and b
    return a;
  endfunction
  
  initial begin
    a = 12;
    b = 7;
    out = fn_multiply(a,b);
    $display(" out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule


/* Output
# run -all
#  out = 84 for a = 12 and b = 7
# exit*/
