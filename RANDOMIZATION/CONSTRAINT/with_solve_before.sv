typedef enum {write,read} mode;
class packet;
  rand mode op;
  rand bit [3:0] data;
  
  constraint c1 {solve op before data;
                 if(op == write) data inside {[0:15]};
                 if(op == read) data==0;
                }
  
  function void display();

    $display("op = %0s",op.name);
    $display("data = %0b",data);
  endfunction

  
endclass
module tb;
  packet p;
  int readcount;
  int writecount;
  initial begin
    repeat (100)begin
      p =new();
      p.randomize();
      p.display();
      if (p.op == write)
        writecount++;
      if (p.op == read)
        readcount++;
    end
    $display ("------------------");
    $display ("writecount = %0d",writecount);
    $display ("readcount = %0d",readcount);
  end
endmodule
              

/* OUTPUT 
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
op = write
data = 1000
op = read
data = 0
op = write
data = 1100
op = read
data = 0
op = write
data = 1001
op = read
data = 0
op = write
data = 1000
op = write
data = 1011
op = read
data = 0
op = read
data = 0
op = write
data = 1000
op = read
data = 0
op = read
data = 0
op = read
data = 0
op = write
data = 0
op = write
data = 1011
op = write
data = 0
op = read
data = 0
op = write
data = 0
op = write
data = 1000
op = read
data = 0
op = write
data = 1010
op = write
data = 101
op = write
data = 101
op = write
data = 1010
op = read
data = 0
op = read
data = 0
op = read
data = 0
op = write
data = 101
op = read
data = 0
op = write
data = 1100
op = write
data = 101
op = read
data = 0
op = write
data = 1010
op = write
data = 11
op = read
data = 0
op = write
data = 101
op = write
data = 100
op = read
data = 0
op = read
data = 0
op = write
data = 1100
op = write
data = 1110
op = read
data = 0
op = read
data = 0
op = read
data = 0
op = read
data = 0
op = write
data = 1100
op = read
data = 0
op = read
data = 0
op = write
data = 1
op = read
data = 0
op = read
data = 0
op = write
data = 101
op = write
data = 1110
op = read
data = 0
op = write
data = 100
op = write
data = 10
op = read
data = 0
op = write
data = 1
op = write
data = 1100
op = read
data = 0
op = write
data = 1011
op = write
data = 0
op = read
data = 0
op = write
data = 1101
op = write
data = 100
op = read
data = 0
op = read
data = 0
op = write
data = 1101
op = read
data = 0
op = write
data = 1000
op = read
data = 0
op = write
data = 10
op = write
data = 1111
op = write
data = 1001
op = write
data = 1110
op = read
data = 0
op = write
data = 1110
op = read
data = 0
op = write
data = 111
op = write
data = 1111
op = read
data = 0
op = read
data = 0
op = read
data = 0
op = write
data = 101
op = write
data = 111
op = write
data = 111
op = read
data = 0
op = read
data = 0
op = write
data = 10
op = read
data = 0
op = write
data = 1010
op = read
data = 0
op = write
data = 101
op = read
data = 0
op = write
data = 1000
op = read
data = 0
op = write
data = 1
op = write
data = 10
op = read
data = 0
------------------
writecount = 54
readcount = 46
xmsim: *W,RNQUIE: Simulation is complete.
