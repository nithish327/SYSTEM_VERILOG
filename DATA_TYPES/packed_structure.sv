module packed_structure;
  typedef struct packed{
    int id;
    int actual_salary,hiked_salary;
  }salary;
  salary e1,e2,e3;
  initial begin
    e1.id = 2'd1;
    e1.actual_salary = 'd30000;
    e1.hiked_salary = e1.actual_salary + (e1.actual_salary/100)*12;
    $display("EMPLOYEE ID = %0d",e1.id);
    $display("ACTUAL SALARY = %0d",e1.actual_salary);
    $display("SALARY HIKE = %0d",e1.hiked_salary);
    $display("_________________________________");
    e2.id = 2'd2;
    e2.actual_salary = 'd45000;
    e2.hiked_salary = e2.actual_salary + (e2.actual_salary/100)*12;
    $display("EMPLOYEE ID = %0d",e2.id);
    $display("ACTUAL SALARY = %0d",e2.actual_salary);
    $display("SALARY HIKE = %0d",e2.hiked_salary);
    $display("_________________________________");
    e3.id = 2'd3;
    e3.actual_salary = 'd73000;
    e3.hiked_salary = e3.actual_salary + (e3.actual_salary/100)*12;
    $display("EMPLOYEE ID = %0d",e3.id);
    $display("ACTUAL SALARY = %0d",e3.actual_salary);
    $display("SALARY HIKE = %0d",e3.hiked_salary);
    $display("_________________________________");
  end
endmodule
             
