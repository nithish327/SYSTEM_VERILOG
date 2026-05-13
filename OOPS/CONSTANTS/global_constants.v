class transaction;
  int id;
  const int data = 23;// Global constant
  function void display();
    $display("id = %0d data = %0d",id,data);
  endfunction
endclass
    
    
module tb;
   transaction t;
  initial begin
    t=new();
    t.id = 47;
    t.data = 21; 
    t.display();
  end
endmodule

// OUTPUT ERROR
//Error: testbench.sv(15): Variable 'data' is const
//** Error: testbench.sv(15): (vlog-13514) Illegal LHS of assignment


class transaction;
  int id;
  const int data = 23;// Global constaant
  function void display();
    $display("id = %0d data = %0d",id,data);
  endfunction
endclass
    
    
module tb;
   transaction t;
  initial begin
    t=new();
    t.id = 47;
    //t.data = 21; can't chnage
    t.display();
  end
endmodule
// OUTPUT 
// id = 47 data = 23
//# exit
