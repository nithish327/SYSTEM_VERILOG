class packet;
  randc bit [7:0]data1;
  randc bit [7:0]data2;
  constraint data1_c {data1 dist {3:= 4,  [5:8]:=7};}
  constraint data2_c {data2 dist {3:/ 4,  [5:8]:/7};}
  
  function void display();
    $display("data1 = %0d data2 = %0d",data1,data2);
  endfunction
  
endclass
module  tb;
  packet p;
  initial begin
    p = new();
    repeat (10) begin
      p.randomize();
      
      p.display();
    end
  end
endmodule
