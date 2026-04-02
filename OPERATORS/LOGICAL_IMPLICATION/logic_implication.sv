module logic_implication;
  logic [4:0] a,b;
  int x;
  initial begin;
    a= 0;
    b= 'b00;
    if(a->b)
      $display("True (%0d)",(a->b));
    else
      $display("False (%0d)",(a->b));
    
    a= 'b00;
    b= 'b01;
    if(a->b)
      $display("True (%0d)",(a->b));
    else
      $display("False (%0d)",(a->b));
    
    a= 1;
    b= 0;
    if(a->b)
      $display("True (%0d)",(a->b));
    else
      $display("False (%0d)",(a->b));
    
    a= 1;
    b= 1;
    if(a->b)
      $display("True (%0d)",(a->b));
    else
      $display("False (%0d)",(a->b));
    
    
 
  end
endmodule
    
