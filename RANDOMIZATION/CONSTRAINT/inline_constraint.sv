class packet;
  rand bit [5:0]data;
  rand bit [7:0] addr;
  
  constraint c1 {
    data < 50 ;
    addr inside {[20:100]};
  }
  
  function void display();
    $display("Before in_line constraint");
    $display("data = %0d",data);
    $display("address = %0d",addr);
    $display("------------------");
  endfunction
  
endclass
  
module tb;
  packet p;
  initial begin 
    repeat (50) begin
      p = new();
      assert(p.randomize());
      p.display();
      assert(p.randomize() with {data > 25;
                                 addr > 60;
                                });
      $display("After in_line constraint");
      $display("data = %0d",p.data);
      $display("address = %0d",p.addr);
      $display("------------------");
    end
  end
endmodule

// OUTPUT 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Before in_line constraint
data = 16
address = 28
------------------
After in_line constraint
data = 34
address = 96
------------------
Before in_line constraint
data = 17
address = 72
------------------
After in_line constraint
data = 36
address = 98
------------------
Before in_line constraint
data = 16
address = 64
------------------
After in_line constraint
data = 28
address = 64
------------------
Before in_line constraint
data = 3
address = 51
------------------
After in_line constraint
data = 33
address = 89
------------------
Before in_line constraint
data = 8
address = 45
------------------
After in_line constraint
data = 46
address = 66
------------------
Before in_line constraint
data = 5
address = 42
------------------
After in_line constraint
data = 30
address = 76
------------------
Before in_line constraint
data = 44
address = 83
------------------
After in_line constraint
data = 47
address = 99
------------------
Before in_line constraint
data = 28
address = 97
------------------
After in_line constraint
data = 45
address = 66
------------------
Before in_line constraint
data = 37
address = 76
------------------
After in_line constraint
data = 47
address = 68
------------------
Before in_line constraint
data = 35
address = 90
------------------
After in_line constraint
data = 32
address = 84
------------------
Before in_line constraint
data = 4
address = 28
------------------
After in_line constraint
data = 30
address = 73
------------------
Before in_line constraint
data = 7
address = 32
------------------
After in_line constraint
data = 44
address = 84
------------------
Before in_line constraint
data = 37
address = 30
------------------
After in_line constraint
data = 43
address = 62
------------------
Before in_line constraint
data = 1
address = 55
------------------
After in_line constraint
data = 40
address = 71
------------------
Before in_line constraint
data = 12
address = 52
------------------
After in_line constraint
data = 30
address = 71
------------------
Before in_line constraint
data = 40
address = 31
------------------
After in_line constraint
data = 37
address = 95
------------------
Before in_line constraint
data = 18
address = 100
------------------
After in_line constraint
data = 35
address = 63
------------------
Before in_line constraint
data = 13
address = 69
------------------
After in_line constraint
data = 32
address = 87
------------------
Before in_line constraint
data = 36
address = 36
------------------
After in_line constraint
data = 38
address = 71
------------------
Before in_line constraint
data = 20
address = 24
------------------
After in_line constraint
data = 36
address = 70
------------------
Before in_line constraint
data = 19
address = 81
------------------
After in_line constraint
data = 40
address = 87
------------------
Before in_line constraint
data = 42
address = 85
------------------
After in_line constraint
data = 42
address = 75
------------------
Before in_line constraint
data = 6
address = 41
------------------
After in_line constraint
data = 45
address = 94
------------------
Before in_line constraint
data = 14
address = 41
------------------
After in_line constraint
data = 38
address = 92
------------------
Before in_line constraint
data = 24
address = 59
------------------
After in_line constraint
data = 44
address = 90
------------------
Before in_line constraint
data = 31
address = 59
------------------
After in_line constraint
data = 32
address = 74
------------------
Before in_line constraint
data = 47
address = 24
------------------
After in_line constraint
data = 33
address = 82
------------------
Before in_line constraint
data = 24
address = 60
------------------
After in_line constraint
data = 32
address = 78
------------------
Before in_line constraint
data = 4
address = 73
------------------
After in_line constraint
data = 47
address = 83
------------------
Before in_line constraint
data = 23
address = 95
------------------
After in_line constraint
data = 44
address = 73
------------------
Before in_line constraint
data = 8
address = 48
------------------
After in_line constraint
data = 40
address = 74
------------------
Before in_line constraint
data = 26
address = 57
------------------
After in_line constraint
data = 27
address = 82
------------------
Before in_line constraint
data = 1
address = 29
------------------
After in_line constraint
data = 36
address = 71
------------------
Before in_line constraint
data = 36
address = 30
------------------
After in_line constraint
data = 39
address = 97
------------------
Before in_line constraint
data = 43
address = 53
------------------
After in_line constraint
data = 49
address = 67
------------------
Before in_line constraint
data = 38
address = 47
------------------
After in_line constraint
data = 42
address = 94
------------------
Before in_line constraint
data = 34
address = 73
------------------
After in_line constraint
data = 37
address = 82
------------------
Before in_line constraint
data = 4
address = 52
------------------
After in_line constraint
data = 31
address = 72
------------------
Before in_line constraint
data = 3
address = 86
------------------
After in_line constraint
data = 27
address = 61
------------------
Before in_line constraint
data = 33
address = 42
------------------
After in_line constraint
data = 31
address = 73
------------------
Before in_line constraint
data = 20
address = 21
------------------
After in_line constraint
data = 44
address = 91
------------------
Before in_line constraint
data = 6
address = 66
------------------
After in_line constraint
data = 28
address = 86
------------------
Before in_line constraint
data = 45
address = 50
------------------
After in_line constraint
data = 26
address = 83
------------------
Before in_line constraint
data = 13
address = 50
------------------
After in_line constraint
data = 29
address = 81
------------------
Before in_line constraint
data = 45
address = 82
------------------
After in_line constraint
data = 28
address = 77
------------------
Before in_line constraint
data = 49
address = 93
------------------
After in_line constraint
data = 30
address = 64
------------------
Before in_line constraint
data = 24
address = 59
------------------
After in_line constraint
data = 38
address = 94
------------------
Before in_line constraint
data = 3
address = 86
------------------
After in_line constraint
data = 46
address = 98
------------------
Before in_line constraint
data = 45
address = 41
------------------
After in_line constraint
data = 32
address = 87
------------------
Before in_line constraint
data = 8
address = 37
------------------
After in_line constraint
data = 29
address = 94
------------------
xmsim: *W,RNQUIE: Simulation is complete.
