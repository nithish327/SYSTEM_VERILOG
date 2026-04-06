module tb; 
  string a1="racecar";
  string a2= "";
  initial begin
    for(int i= a1.len()-1; i>=0;i--)
      begin
        a2 = {a2,a1[i]};
      end
    if(a1==a2)
      $display("%0s is palindrome",a2);
    else
      $display("%0s is not palindrome",a2);

  end
endmodule
    
