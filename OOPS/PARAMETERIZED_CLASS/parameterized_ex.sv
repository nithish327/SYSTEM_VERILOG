class transaction #(parameter WIDTH = 3, type D_TYPE = string);
  bit [WIDTH-1:0] no;
  D_TYPE name;
  
  function void display();
    $display("FRUIT = %0d Nos = %0d", name,no);
  endfunction
endclass

module class_example;
  transaction tr1;
  transaction #(2,string)tr2;
  initial begin
    tr1 = new();
    tr2 = new();
    tr1.no = 7;
    tr1.name = "APPLES";
    tr1.display();
    tr2.no= 7;
    tr2.name = "GRAPES";
    tr2.display();
    
   
  end
endmodule
