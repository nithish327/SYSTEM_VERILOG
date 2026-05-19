class transaction;
  rand int a;
  randc int b;
  
  constraint ca {a inside {[10:35]};
                }
  constraint cb {b inside {[35:50]};
                }
endclass

module tb;
  transaction t;
  initial begin
    t =new();
    repeat (10)begin
      t.randomize();
      $display ("before disable : a = %0d b = %0d",t.a,t.b);
      t.rand_mode(0);
      t.rand_mode(1);
      t.randomize();
      $display ("after enable : a = %0d b = %0d",t.a,t.b);
      t.b.rand_mode(0);
      t.randomize();
      $display ("before disable valueb: a = %0d b = %0d",t.a,t.b);
      t.b.rand_mode(1);
      t.randomize();
      $display ("after enable valueb: a = %0d b = %0d",t.a,t.b);
      $display("=========================================");
    end
  end
endmodule
      
      
      
    
    
