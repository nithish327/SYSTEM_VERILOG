class transaction;
  int id;
  const int data;// instance constant but value not declared
  
  function new();
    data = 27; // Assign a value in runtime in only in class methods
  endfunction
  function void display();
    $display("id = %0d data = %0d",id,data);
  endfunction
endclass
    
    
module tb;
   transaction t;
  initial begin
    t=new();
    t.id = 47;
    //data = 21;
    t.display();
  end
endmodule
