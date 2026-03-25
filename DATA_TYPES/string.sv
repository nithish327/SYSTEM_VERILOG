module string_type;
  string name1,name2;
  int result;
  initial begin
    name1 = "nithish";
    name2 = "NITHISH";
    $display("Length of the string = %0d",name1.len());
    $display("Upper case = %0s",name1.toupper());
    $display("lower case = %0s",name1.tolower());
    name1.putc(0,"N");
    $display("Putc  = %0s",name1);
    $display("substring  = %0s",name1.substr(3,6));
    result = name1.compare(name2);
    if(result==0)
      $display("Strings are equal");
    else
      $display("Strings are not equal");
    
    
  end
endmodule
