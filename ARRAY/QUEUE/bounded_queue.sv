module bounded_queue;
  string q[$:5];
  initial begin
    q = '{"A","B","C","D","E","F","G"};
    foreach(q[i])
      $display("q [%0d] = %s",i,q[i]);
    $display("----------------------");
    q.delete(1);
    foreach(q[i])
      $display("q [%0d] = %s",i,q[i]);
    $display("----------------------");
    q.pop_back();
    q.insert(1,"E");
    q.insert(2,"I");
    q.pop_back();
    q.pop_back();
    q.push_back("U");
    q.delete(3);
    q.insert(3,"O");
    foreach(q[i])
      $display("q [%0d] = %0s",i,q[i]);
    
    
  end
endmodule
