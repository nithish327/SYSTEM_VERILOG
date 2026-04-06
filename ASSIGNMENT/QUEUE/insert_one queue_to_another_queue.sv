//Concatenating one queue to another queue
module tb;
  int q1[$];
  int q2[$];
  initial begin 
    q1 ='{0,1,2,3};
    q2 ='{7,8,9};
    q1 = {q1[0:2],q2,q1[3]};
    $display("q1 = %0p",q1);
  end
endmodule

// Direct concatenating one queue to another queue
module tb;
  int q1[$];
  int q2[$];
  initial begin 
    q1 ='{0,1,2,3};
    q2 ='{7,8,9};
    q1 = {q1,q2};
    $display("q1 = %0p",q1);
  end
endmodule

//push_back queue instead of insert queue
module tb;
  int q1[$];
  int q2[$];
  initial begin 
    q1 ='{0,1,2,3};
    q2 ='{7,8,9};
    foreach(q2[i])begin
      q1.push_back(q2[i]);
      end
    $display("q1 = %0p",q1);
    
  end
endmodule
