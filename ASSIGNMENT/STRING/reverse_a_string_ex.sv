module  tb;
  string a = "systemverilog";
  string b = "";
  initial begin
    for (int i =a.len();i>=0;i--)begin
      b={b,a[i]};
      
    end
    $display("systemverilog = %0s",b);
  end
endmodule
