class packet;
  rand bit [7:0]data;
  rand enum {low, high}scale;
  
  constraint scale_c {(scale == low) -> data < 70;}
  function void display();
    $display ("scale = %0s , data =%0d ",scale,data);
  endfunction
endclass
module tb;
  packet p;
  initial begin
    p =new();
    repeat(5)begin
      p.randomize();
      p.display();
    end
  end
endmodule

/* OUTPUT
# scale = high , data =37 
# scale = high , data =118 
# scale = low , data =65 
# scale = high , data =180 
# scale = high , data =187 */
