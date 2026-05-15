class parent;
  rand bit [7:0] data1;
  rand int data2;
  
  constraint data_c {data1 inside {[50:70]};}
endclass

class child extends parent;
  
  function int calc(int x);
    return (x * 2);
  endfunction
   
  constraint data2_c {data2 == calc(data1);}
  
  
  function void display();
    $display("data1 = %0d",data1);
    $display("data2= %0d",data2);
    $display("----------------");
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
      c.randomize();
      c.display();
    end
  end
endmodule


/* OUTPUT
# data1 = 69
# data2= 138
# ----------------
# data1 = 54
# data2= 108
# ----------------
# data1 = 53
# data2= 106
# ----------------
# data1 = 61
# data2= 122
# ----------------
# data1 = 60
# data2= 120
# ----------------
# data1 = 60
# data2= 120
# ----------------
# data1 = 61
# data2= 122
# ----------------
# data1 = 50
# data2= 100
# ----------------
# data1 = 65
# data2= 130
# ----------------
# data1 = 53
# data2= 106
# ----------------*/
    
