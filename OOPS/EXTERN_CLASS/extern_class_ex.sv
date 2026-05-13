class transaction;
  int data;
  bit [15:0]id;
  
  extern task delay();
  
  extern function void display();
endclass

    task transaction::delay();
      
      $display("data =%0d id=%0h",data,id);
      #100;
    endtask

    function void transaction::display();
      $display("Time = %0t data = %0d id = %0h ",$time,data,id);
    endfunction

module tb;
  transaction t1;
  initial begin
    t1 = new();
    t1.data = 99;
    t1.id = 16'hE;
    t1.delay();
    t1.data = 100;
    t1.id = 16'hF;
    t1.delay();
    t1.display();
  end
endmodule
      
      
  
