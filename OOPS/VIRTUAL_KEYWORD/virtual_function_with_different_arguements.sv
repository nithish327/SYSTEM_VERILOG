class parent;
  string name;
  int id;
  virtual function display(string n,string name, int id);
    $display(" %0s Name = %0s ID = %0d",n,name,id);
  endfunction
endclass

class child extends parent;

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

/* OUTPUT 

run -all
# Child_class Name = ROHIT ID = 45
# parent_class Name = DHONI ID = 7
# exit*/
