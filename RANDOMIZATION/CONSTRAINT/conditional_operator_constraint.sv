class packet;
  rand bit [7:0]data;
  rand enum {low, high}scale;
  
  constraint scale_c {data == ((scale == low)?20:130);}
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
scale = high , data =130 
# scale = high , data =130 
# scale = low , data =20 
# scale = low , data =20 
# scale = low , data =20 */
