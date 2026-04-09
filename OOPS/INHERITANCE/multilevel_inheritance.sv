class parent_class;
  int data;
  function new();
    data = 'h15;
  endfunction
  function display();
    $display("data = %0h",data);
  endfunction
endclass

class child_class_1 extends parent_class;
  string name;
  function new();
    name = "NITHISH";
  endfunction
  function display();
    $display("Name : %0s",name);
    $display("data : %0h",data);
    
  endfunction
endclass

class child_class_2 extends child_class_1;
  int id;
  function new();
    id = 2'b10;
  endfunction
  function display();
    $display("Name : %0s",name);
    $display("id : %0b",id);
    $display("data : %0h",data);
  endfunction
endclass

class child_class_3 extends child_class_2;
  bit [15:0]addr;
  function new();
    addr = 16'h10ff;
  endfunction
  function display();
    $display("Name : %0s",name);
    $display("id : %0b",id);
    $display("data : %0h",data);
    $display("address : %0h",addr);
  endfunction
  
endclass
  
module tb;
  parent_class p1;
  child_class_3 c1;
  child_class_2 c2;
  initial begin
    $display("child_class_3");
    c1 = new();
    c1.display();
    $display("______________");
    $display("child_class_2");
    c2 = new();
    c2.display();
    $display("______________");
    $display("parent_class");
    p1 = new();
    p1.display;
  end
endmodule
    
