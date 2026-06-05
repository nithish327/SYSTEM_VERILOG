class packet;
  string name;
  int id;
  
  task team1 ();
    name = "Ajith";
    id = 01;
    $display(" Time = %0t team = 1 Name = %0s id = %0b",$time,name,id);
    #15;
    name = "Neymar";
    id = 11;
    $display(" Time = %0t team = 1 Name = %0s id = %0d",$time,name,id);
  endtask
  
  task team2 ();
    name = "Ram";
    id = 02;
    $display(" Time = %0t team = 2 Name = %0s id = %0d",$time,name,id);
    #5;
    name = "Santhosh";
    id = 22;
    $display(" Time = %0t team = 2 Name = %0s id = %0d",$time,name,id);
  endtask
  
  task team3 ();
    name = "Siva";
    id = 03;
    $display(" Time = %0t team = 3 Name = %0s id = %0d",$time,name,id);
    #7;
    name = "Karthik";
    id = 33;
    $display(" Time = %0t team = 3 Name = %0s id = %0d",$time,name,id);
  endtask
endclass

module tb ;
  initial begin
    packet p;
    p = new();
    fork 
      p.team1();
      p.team2();
      p.team3();
    join_any
    $display("----------------------------------");
    $display("Fork join_any excuted Succesfully");
    $display("----------------------------------");
      
  end
endmodule

/* OUTPUT 

xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
 Time = 0 team = 1 Name = Ajith id = 1
 Time = 0 team = 2 Name = Ram id = 2
 Time = 0 team = 3 Name = Siva id = 3
 Time = 5 team = 2 Name = Santhosh id = 22
----------------------------------
Fork join_any excuted Succesfully
----------------------------------
 Time = 7 team = 3 Name = Karthik id = 33
 Time = 15 team = 1 Name = Neymar id = 11
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit*/
