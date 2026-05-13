module mailbox;
  mailbox #(string)mbx = new(7);
  
  task automatic send ();
    string name = "LENOVA";
    mbx.put(name);
    $display("send word = %0s",name);
    name = "DELL";
    mbx.put(name);
    $display("send word = %0s",name);
    if(mbx.try_put(name))
      $display("successfully try_put value = %0d", name);
    else
      $display("failed try_put value = %0d", name);
    $display("------------------");
  endtask
  
  task automatic recieve();
    string name; 
    mbx.get(name);
    $display("recieve word = %0s",name);
    mbx.get(name);
    $display("recieve word = %0s",name);
    if(mbx.try_get(name))
      $display("successfully try_get value = %0d",name);
    else
      $display("failed try_get value = %0d",name);
  endtask
  
  initial begin
    fork
      send();
      recieve();
    join
  end
endmodule
    
  
