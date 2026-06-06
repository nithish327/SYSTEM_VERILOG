module function_example;
  int a, b;
  int out;
  
  function automatic int multiply(ref int a, b);
    a = a*b; 
    return a;
  endfunction
  
  initial begin
    a = 12;
    b = 7;
    out = multiply(a,b);
    $display(" out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule

/* Output 
# 
# run -all
#  out = 84 for a = 84 and b = 7
# exit*/
