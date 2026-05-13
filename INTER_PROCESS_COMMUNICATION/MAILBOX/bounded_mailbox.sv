module mailbox;
  mailbox mbx = new(7);
  
  task automatic send ();
    int value =23;
    string word = "YES";
    mbx.put(value);
    $display("send value = %0d",value);
    mbx.put(word);
    $display("send word = %0s",word);
    if(mbx.try_put(value))
      $display("successfully try_put value = %0d", value);
    else
      $display("failed try_put value = %0d", value);
    $display("------------------");
  endtask
  
  task automatic recieve();
    int value;
    string word; 
    mbx.get(value);
    $display("receive value = %0d",value);
    mbx.get(word);
    $display("recieve word = %0s",word);
    if(mbx.try_peek(word))
    $display("peek word = %0s",word);
    if(mbx.try_get(value))
      $display("successfully try_get value = %0d", value);
    else
      $display("failed try_get value = %0d", value);
  endtask
  
  initial begin
    fork
      send();
      recieve();
    join
  end
endmodule
    
  
