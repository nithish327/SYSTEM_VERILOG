class packet;
  rand bit [5:0]data;
  rand bit [7:0] addr;
  
  constraint c1 {
    data < 50 ;
    addr inside {[20:100]};
  }
  
endclass
  
module tb;
  packet p;
  initial begin 
    repeat (50) begin
      p = new();
      assert(p.randomize() with {data > 25;
                                 addr inside{[120:140]};
                                })
      begin
        $display("data = %0d",p.data);
        $display("address = %0d",p.addr);
        $display("------------------");
      end
      else begin
        $display("Randomization Failed");
      end
    end
  end
endmodule

/*OUTPUT 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
xmsim: *W,RNDOCS: These constraints and variables contribute to the set of conflicting constraints (view the extended help for this message using 'xmhelp xmsim RNDOCS' for guidelines on how debug the issue):

In ./testbench.sv
line  7:  addr inside { [ 32'h14 : 32'h64 ] }
line 18:  ( addr > 8'h78 )


Variable  Type         Status        Current Value          Source                   
-------------------------------------------------------------------------------------
addr      (bit [7:0])  RANDOM        <unassigned>           ./testbench.sv ; line 3


      assert(p.randomize() with {data > 25;
                       |
xmsim: *W,SVRNDF (./testbench.sv,17|23): The randomize method call failed. The unique id of the failed randomize call is 0.
Observed simulation time : 0 FS + 0.
xmsim: *E,ASRTST (./testbench.sv,17): (time 0 FS) Assertion tb.__assert_1 has failed 
Randomization Failed*/

// Using Soft Constraint 

class packet;
  rand bit [5:0]data;
  rand bit [7:0] addr;
  
  constraint c1 {
    data < 50 ;
    soft addr inside {[20:100]};// If a conflict occurs, the soft constraint is automatically ignored.
  }
  
endclass
  
module tb;
  packet p;
  initial begin 
    repeat (50) begin
      p = new();
      assert(p.randomize() with {data > 25;
                                 addr inside{[120:140]};
                                })
      begin
        $display("data = %0d",p.data);
        $display("address = %0d",p.addr);
        $display("------------------");
      end
      else begin
        $display("Randomization Failed");
      end
    end
  end
endmodule

/*Output
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
data = 42
address = 134
------------------
data = 43
address = 126
------------------
data = 42
address = 139
------------------
data = 29
address = 129
------------------
data = 34
address = 140
------------------
data = 31
address = 125
------------------
data = 38
address = 128
------------------
data = 37
address = 128
------------------
data = 31
address = 131
------------------
data = 29
address = 135
------------------
data = 30
address = 131
------------------
data = 33
address = 138
------------------
data = 31
address = 138
------------------
data = 27
address = 125
------------------
data = 38
address = 124
------------------
data = 34
address = 122
------------------
data = 44
address = 133
------------------
data = 39
address = 120
------------------
data = 30
address = 124
------------------
data = 46
address = 123
------------------
data = 45
address = 123
------------------
data = 46
address = 124
------------------
data = 32
address = 127
------------------
data = 40
address = 140
------------------
data = 33
address = 123
------------------
data = 33
address = 126
------------------
data = 41
address = 139
------------------
data = 45
address = 132
------------------
data = 30
address = 130
------------------
data = 49
address = 122
------------------
data = 34
address = 130
------------------
data = 31
address = 123
------------------
data = 27
address = 127
------------------
data = 30
address = 129
------------------
data = 48
address = 138
------------------
data = 32
address = 121
------------------
data = 28
address = 139
------------------
data = 44
address = 133
------------------
data = 29
address = 134
------------------
data = 27
address = 137
------------------
data = 46
address = 127
------------------
data = 32
address = 124
------------------
data = 39
address = 128
------------------
data = 39
address = 139
------------------
data = 39
address = 133
------------------
data = 45
address = 121
------------------
data = 32
address = 122
------------------
data = 29
address = 134
------------------
data = 39
address = 133
------------------
data = 34
address = 127
------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
