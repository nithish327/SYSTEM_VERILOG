module do_while_loop;
  int count=0;
  initial begin
    do begin
      $display("count = %0d",count);
      count++;
    end
    while(count <10 );
  end
endmodule
      
        
      
