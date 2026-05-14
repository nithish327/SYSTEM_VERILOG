class packet;
  rand bit [7:0]data;
  rand enum {low, high}scale;
  
  constraint scale_c {if(scale == low) data <50;
                     else data>50;}
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

/*OUTPUT
scale = high , data =88 
# scale = high , data =64 
# scale = low , data =15 
# scale = high , data =70 
# scale = low , data =18 */
