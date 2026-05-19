class transaction;
  rand bit [7:0]a;
  rand bit [7:0]b;
  
  constraint ca {a inside {[10:35]};
                }
  static constraint cb {b inside {[35:50]};
                }
endclass

module tb;
  transaction t1;
  transaction t2;
  initial begin
    
    t1 =new();
    t2 =new();
    repeat(3) begin
      t1.randomize();
      t2.randomize();
      $display ("before disable constraint t1 : a = %0d b = %0d",t1.a,t1.b);
      $display ("before disable constraint t2 : a = %0d b = %0d",t2.a,t2.b);
      $display("-----------------------------------------------");
    end
    $display("=================================================");
    repeat (3)begin
      t2.cb.constraint_mode(0);
      t1.randomize();
      t2.randomize();
      $display ("after disable constraint t1 : a = %0d b = %0d",t1.a,t1.b);
      $display ("after disable constraint t2 : a = %0d b = %0d",t2.a,t2.b);
      $display("----------------------------------------------");
    end
      
  end
endmodule

/*OUTPUT
# before disable constraint t1 : a = 22 b = 45
# before disable constraint t2 : a = 31 b = 46
# -----------------------------------------------
# before disable constraint t1 : a = 26 b = 46
# before disable constraint t2 : a = 10 b = 45
# -----------------------------------------------
# before disable constraint t1 : a = 17 b = 35
# before disable constraint t2 : a = 21 b = 44
# -----------------------------------------------
# =================================================
# after disable constraint t1 : a = 16 b = 175
# after disable constraint t2 : a = 13 b = 79
# ----------------------------------------------
# after disable constraint t1 : a = 34 b = 218
# after disable constraint t2 : a = 15 b = 112
# ----------------------------------------------
# after disable constraint t1 : a = 16 b = 153
# after disable constraint t2 : a = 26 b = 228
# ----------------------------------------------
# exit*/
