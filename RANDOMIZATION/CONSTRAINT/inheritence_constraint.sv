class parent;
  rand bit [7:0] data;
  
  constraint data_c {data < 50;}
  function void display();
    $display("parent data = %0d",data);
   
  endfunction
endclass

class child extends parent;
  rand bit [7:0] data;
   
  constraint data_c {data inside {[30:50]};}
  function void display();
    $display("child data = %0d",data);
  endfunction
endclass

module tb;
  parent p;
  child c;
  initial begin
    p= new();
    c = new();
    repeat(10)begin
      p.randomize();
      p.display();
    end
     $display("----------------------");
    repeat(10)begin
      c.randomize();
      c.display();
    end
  end
endmodule
    
    /* OUTPUT
# parent data = 32
# parent data = 33
# parent data = 25
# parent data = 15
# parent data = 34
# parent data = 49
# parent data = 10
# parent data = 5
# parent data = 15
# parent data = 4
# ----------------------
# child data = 48
# child data = 49
# child data = 32
# child data = 35
# child data = 48
# child data = 42
# child data = 49
# child data = 39
# child data = 48
# child data = 41
*/
