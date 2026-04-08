class parent_class;
  int data;
  int id;
  function display();
    $display("data = %0d id = %0d",data,id);
  endfunction
endclass

class child_class extends parent_class;
  string name;
  bit [15:0]addr;
  function display();
    $display("Name : %0s",name);
    $display("id : %0b",id);
    $display("data : %0h",data);
    $display("address : %0h",addr);
  endfunction
endclass

module tb;
  child_class c1;
  initial begin
    c1 =new();
    c1.name = "NITHISH";
    c1.id = 'b101;
    c1.data = 'h15;
    c1.addr = 'h101F;
    c1.display();
  end
endmodule
    
