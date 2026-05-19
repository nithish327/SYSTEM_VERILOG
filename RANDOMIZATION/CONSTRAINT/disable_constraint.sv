class transaction;
  rand bit [7:0]a;
  randc bit [7:0]b;
  
  constraint ca {a inside {[10:35]};
                }
  constraint cb {b inside {[35:50]};
                }
endclass

module tb;
  transaction t;
  initial begin
    
    t =new();
    repeat(3) begin
    t.randomize();
    $display ("before disable constraint : a = %0d b = %0d",t.a,t.b);
    t.cb.constraint_mode(0);
    t.randomize();
    $display ("after disable constraint : a = %0d b = %0d",t.a,t.b);
      $display("=========================================");
    end
  end
endmodule

/*OUTPUT
# before disable constraint : a = 22 b = 45
# after disable constraint : a = 26 b = 86
# =========================================
# before disable constraint : a = 17 b = 158
# after disable constraint : a = 16 b = 71
# =========================================
# before disable constraint : a = 34 b = 4
# after disable constraint : a = 16 b = 121
# =========================================      
      
      
    
    
