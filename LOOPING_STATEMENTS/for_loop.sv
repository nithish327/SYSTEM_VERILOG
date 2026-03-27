module for_loop;
  string a[0:3] = '{"apple","cricket","monkey","sun"};
  initial begin 
    for (int i=0;i<$size(a);i++)begin
      for(int j=0; j<a[i].len();j++)
        
        $display("a[%0d][%0d]=%0s",i,j,a[i][j]);
      $display("______________________________");
      
    end
  end
endmodule
