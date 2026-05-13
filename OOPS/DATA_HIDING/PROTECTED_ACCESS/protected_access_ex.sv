class rectangle;
  int length;
  int breadth;
  function new();
    length = 12;
    breadth = 15;
  endfunction
  
  protected function void display();
    $display("length = %0d breadth = %0d",length,breadth);
  endfunction
endclass
class area extends rectangle;
  int a_rect;
  function area_rect();
    a_rect = length*breadth;
    $display();
    $display("area of rectangle = %0d ",a_rect);
  endfunction
endclass
    
    
module tb;
   area a1;
  initial begin
    a1=new();
    a1.area_rect();
  end
endmodule
