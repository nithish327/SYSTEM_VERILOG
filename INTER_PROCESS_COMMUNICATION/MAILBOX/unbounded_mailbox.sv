module mailbox;
  mailbox mbx = new();
  
  task send ();
    int value;
    repeat (7) begin
    value = $urandom_range(1,20);
    mbx.put(value);
    $display("value = %0d",value);
    end
    $display("------------------");
  endtask
  
  task recieve();
    repeat (7) begin
    int value;
    mbx.get(value);
    $display("value = %0d",value);
    end
  endtask
  
  initial begin
    fork
      send();
      recieve();
    join
  end
endmodule
    
  
