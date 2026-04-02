module tb;
  string players[$] ='{"DHONI","KHOLI","PANDIYA","ROHIT","BUMRAH","JADEJA"};
  initial begin
    $display("CAPTAIN =%0s",players[0]);
    $display("ALL ROUNDERS =%0s,%0s",players[2],players[$]);
    players[$+1] = "RAHUL";
    $display("BATSMANS =%0s,%0s,%0s",players[1],players[3],players[$]);
    players[4+1] = "ASHWIN";
    $display("BOWLERs =%0p",players[4:5]);
    players[4-1] = "";
    $display("PLAYERS = %0s",players);
    
  end
endmodule
