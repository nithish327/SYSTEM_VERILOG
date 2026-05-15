typedef enum {SMALL , MEDIUM ,LARGE, EXTRA_LARGE}size;
class packet;
  rand bit [7:0]value[size];
  rand bit [3:0]array[];
  
  function new();
    value [SMALL] = 0;
    value [MEDIUM] = 0;
    value [LARGE] = 0;
    value [EXTRA_LARGE] = 0;
  endfunction
    
  constraint array_size_c {array.size() inside {[3:6]};
                          }
  constraint array_c {foreach (array[i]) {array[i] > i*i;}}
  constraint value_c {foreach (value[i])
  {value[i] < 150;
     (i== SMALL) -> value[i] < 30;
     (i== MEDIUM) -> value[i] inside {[40:70]};
     (i== LARGE) -> value[i] inside {[70:100]};
     (i== EXTRA_LARGE) -> value[i] > 100;
    }}
    endclass
    
    module tb;
      packet p;
      initial begin
        p =new();
        repeat(7)begin
          p.randomize();
          
          foreach(p.value[i])
            $display("value[%s] = %0d", i.name(), p.value[i]);
          foreach(p.array[i])
            $display("array[%0d] = %0d", i, p.array[i]);
        $display("-------------------------");
        end
      end
    endmodule
          
