class parent;
  string name;
  int id;
  virtual function display();
    $display("Parent_class: Name = %0s ID = %0d",name,id);
  endfunction
endclass

class child extends parent;
  string name;
  int id ;
  function display();
    $display("Child_class: Name = %0s ID = %0d",name,id);
  endfunction
endclass

module tb;
  parent p;
  child c;
  initial begin
    c = new();
    
    p = c;
    c.name = "KHOLI";
    c.id = 18;
    
    p.name = "GILL";
    p.id = 21;
    p.display();
    
  end
endmodule

/* OUTPUT 
# run -all
# Child_class: Name = KHOLI ID = 18
# exit
*/
