class packet;
  semaphore sem;
  function new();
    sem =  new(3);
  endfunction
  
  task employee1();
    sem.get(1);
    $display("Time = %0t Employee1 : Enter",$time);
    #5;
    $display("Time = %0t Employee1 : Exit",$time);
    sem.put(4);
  endtask
  
  task employee2();
    sem.get(2);
    $display("Time = %0t Employee2 : Enter",$time);
    #10;
    $display("Time = %0t Employee2 : Exit",$time);
    sem.put(1);
  endtask
  
  task employee3();
    sem.get(4);
    $display("Time = %0t Employee3 : Enter",$time);
    #5;
    $display("Time = %0t Employee3 : Exit",$time);
    sem.put(1);
  endtask
endclass

module tb;
  packet p;
  initial begin
    p =new();
      fork
        p.employee1();
        p.employee2();
        p.employee3();
      join
  end
endmodule

/* OUTPUT
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Time = 0 Employee1 : Enter
Time = 0 Employee2 : Enter
Time = 5 Employee1 : Exit
Time = 5 Employee3 : Enter
Time = 10 Employee2 : Exit
Time = 10 Employee3 : Exit
xmsim: *W,RNQUIE: Simulation is complete.*/
