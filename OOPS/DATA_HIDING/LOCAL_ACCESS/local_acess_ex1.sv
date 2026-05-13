class parent_class;
  int data;
  int id;
  function new();
    data = 12;
    id ='hf;
    display();
  endfunction
  
  local function void display();
    $display("data = %0d id = %0d",data,id);
  endfunction
endclass
module tb;
  parent_class p;
  initial begin
    p=new();
  end
endmodule
