class packet;
  rand bit [2:0]data;
  function void display();
    $display("data = %0d",data);
  endfunction
endclass

module tb;
  packet p;
  initial  begin
    p =new();
    repeat(8)begin
      p.randomize();
      p.display();
    end
  end
endmodule

/*OUTPUT
# data = 5
# data = 2
# data = 1
# data = 0
# data = 2
# data = 2
# data = 1
# data = 1*/
  
