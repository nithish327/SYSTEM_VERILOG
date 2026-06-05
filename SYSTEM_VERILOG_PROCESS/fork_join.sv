class packet;
  string name;
  int id;
  
  task team1 ();
    name = "Ajith";
    id = 01;
    $display(" Time = %0t Name = %0s id = %0b",$time,name,id);
    #15;
    name = "Neymar";
    id = 11;
    $display(" Time = %0t Name = %0s id = %0d",$time,name,id);
  endtask
  
  task team2 ();
    name = "Ram";
    id = 02;
    $display(" Time = %0t Name = %0s id = %0d",$time,name,id);
    #5;
    name = "Santhosh";
    id = 22;
    $display(" Time = %0t Name = %0s id = %0d",$time,name,id);
  endtask
  
  task team3 ();
    name = "Siva";
    id = 03;
    $display(" Time = %0t Name = %0s id = %0d",$time,name,id);
    #7;
    name = "Karthik";
    id = 33;
    $display(" Time = %0t Name = %0s id = %0d",$time,name,id);
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
    join
    $display("------------------------------");
    $display("Fork join excuted Succesfully");
    $display("------------------------------");
  end
endmodule

/* Output
celium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
 Time = 0 Name = Ajith id = 1
 Time = 0 Name = Ram id = 2
 Time = 0 Name = Siva id = 3
 Time = 5 Name = Santhosh id = 22
 Time = 7 Name = Karthik id = 33
 Time = 15 Name = Neymar id = 11
------------------------------
Fork join excuted Succesfully
------------------------------
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit */
