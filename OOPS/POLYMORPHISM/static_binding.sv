class employee;
  int monthly_salary =22000;
  int lpa;
  function new();
    lpa = monthly_salary * 12;
  endfunction
  function void display();
    $display("Employee salary");
    $display("monthly_salary = %0d LPA = %0d",monthly_salary,lpa);
  endfunction
endclass

class manager extends employee;
  int monthly_salary ;
  int lpa = 2400000;
  function new();
    monthly_salary = lpa / 12;
  endfunction
  function void display();
    $display("Manager salary");
    $display("monthly_salary = %0d LPA = %0d",monthly_salary,lpa);
  endfunction
endclass

module salary;
  employee e;
  manager m;
  initial begin
    m = new();
    e=m;
    e.display();
  end
endmodule
