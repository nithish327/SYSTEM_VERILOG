// Access outside of the class scope
class parent_class;
  local int data;
  int id;
  
  function void display();
    $display("data = %0d id = %0d",data,id);
  endfunction
endclass
module tb;
  parent_class p;
  initial begin
    p=new();
    p.data = 23;
    p.id = 7;
    p.display();
  end
endmodule

//OUTPUT ERROR
//Error (suppressible): (vlog-8688) testbench.sv(13): Illegal access to local member data.

//Access within the class scope
class parent_class;
  local int data;
  int id;
  function new();
    data = 12;
    id ='hf;
  endfunction
  
  function void display();
    $display("data = %0d id = %0d",data,id);
  endfunction
endclass
module tb;
  parent_class p;
  initial begin
    p=new();
    p.display();
  end
endmodule
//OUTPUT
//data = 12 id = 15
//# exit
