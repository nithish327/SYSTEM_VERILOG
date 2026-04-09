class parent_class;
  int batch;
  int roll_no ;
  function new();
    batch = 11;
  endfunction
  function display();
    $display("Roll number : %0d",roll_no);
  endfunction
endclass

class child_class_1 extends parent_class;
  string name;
  int roll_no ;
  function new( string name);
    
    roll_no = 539;
    this.name = name;
  endfunction
  function display();
    super.roll_no = 231;
    $display("Name : %0s",name);
    $display("Batch : %0d",batch);
    super.display();
    $display("New Roll number : %0d",roll_no);
    
  endfunction
endclass

module tb;
  child_class_1 c1;
  
  initial begin
    c1 = new("MESSI");
    c1.display();
  end
endmodule
    
