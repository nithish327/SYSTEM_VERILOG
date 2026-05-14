`define start_range 29
`define end_range 37
class randomiz #(parameter n=20 ,p=30);
  rand bit [7:0]a;
  rand bit [7:0]b;
  rand bit [7:0]c;
  rand bit [7:0]d;
  rand bit [7:0]e;
  rand bit [7:0]f;
  rand bit [7:0]g;
  
  constraint const_a {a inside {[10:20]};}
  constraint const_b {b inside {55,75,80};}
  constraint const_c {c inside {7,[10:20],30,55};}
  constraint const_d {d inside {[a:b]};}
  constraint const_e {e inside {[n:p]};}
  constraint const_f {!(f inside {[10:20]});}
  constraint const_g {g inside {[`start_range:`end_range]};}
  
endclass
module ran_ex ;
  randomiz #(10,30) item;
  initial begin
    item = new();
    repeat(5)begin
      item.randomize();
      $display("a=%0d b=%0d c=%0d d=%0d e=%0d f=%0d g=%0d ",item.a,item.b,item.c,item.d,item.e,item.f,item.g);
    end
  end
endmodule
