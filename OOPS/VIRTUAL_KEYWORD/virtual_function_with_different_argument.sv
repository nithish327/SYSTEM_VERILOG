class parent;
  string name;
  int id;
  virtual function display(string s,string name, int id);
    $display(" %0s Name = %0s ID = %0d",s,name,id);
  endfunction
endclass

class child extends parent;
  string name;
  int id ;
  function display(string n, string name,int id);
    $display("%0s Name = %0s ID = %0d",n,name,id);
  endfunction
endclass

module tb;
  parent p;
  child c;
  initial begin
    c = new();
    
    c.display("Child_class","ROHIT",45);
    p = c;
    
    p.display("parent_class","DHONI",7);
    
  end
endmodule

/* OUTPUT ERROR DENOTED
vlog -timescale 1ns/1ns -mfcu design.sv testbench.sv -work qrun.out/work -statslog qrun.out/stats_log -csession=incr 
** Note: (vlog-220) 'modelsim.ini' is used as the ini file.
-- Compiling package design_sv_unit
** Error (suppressible): testbench.sv(12): (vlog-2911) Argument name 'n' for virtual method 'display' in sub class 'child' does not match the argument name 's' in superclass 'parent'.
-- Compiling module tb
** Error: testbench.sv(18): 'parent' is an unknown type.
Or did you omit the '()' for an instantiation?
** Error: testbench.sv(19): 'child' is an unknown type.
Or did you omit the '()' for an instantiation?
** Error: testbench.sv(21): 'c' is not a variable
** Error: testbench.sv(21): (vlog-13514) Illegal LHS of assignment.
** Error: testbench.sv(21): (vlog-14466) 'new' must be used to assign to a class or covergroup handle.
** Error: testbench.sv(24): 'p' is not a variable
** Error: testbench.sv(24): (vlog-13514) Illegal LHS of assignment.
** Error: testbench.sv(24): (vlog-13216) Illegal assignment to type 'interface parent' from type 'interface child': Virtual interface type 'parent' cannot be assigned type 'child'.
End time: 08:13:35 on Apr 10,2026, Elapsed time: 0:00:00
Errors: 9, Warnings: 0*/
