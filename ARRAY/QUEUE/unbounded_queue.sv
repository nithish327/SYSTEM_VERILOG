module queue;
  int q [$];
  initial begin
    q ='{55,89,77,49,23};
    foreach(q[i])
      $display("queue [%0d] = %0d",i,q[i]);
    
    $display("size of queue = %0d",q.size());
    
    q.insert(2,98);
    foreach(q[i])
      $display("queue [%0d] = %0d",i,q[i]);
    $display("------------------------");
    
    q.pop_front();
    q.pop_back();
    foreach(q[i])begin
      $display("queue [%0d] = %0d",i,q[i]);
    end
    $display("------------------------");
    
    q.push_front(23);
    q.push_back(55);
    foreach(q[i])begin
      $display("queue [%0d] = %0d",i,q[i]);
    end
    $display("------------------------");
    
    q.delete(2);
    foreach(q[i])begin
      $display("queue [%0d] = %0d",i,q[i]);
    end
    $display("------------------------");
    
    q.shuffle();
    foreach(q[i])begin
      $display("queue [%0d] = %0d",i,q[i]);
    end
    $display("------------------------");
  end
endmodule
 
