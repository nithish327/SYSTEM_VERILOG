class student;
  string name;
  int mark;
  real gpa;
  function new(string name,int mark);
    this.name = name;
    this.mark = mark;
    gpa = (mark / 10.0);
  endfunction
  
  function display();
    $display("Name = %0s Mark = %0d ",name,mark);
    $display("GPA = %0.2f",gpa);
    if(mark > 50)
      $display("PASS");
    else
      $display("FAIL");
  endfunction
  
  
endclass

module marks;
  student s1,s2,s3;
  initial begin
    s1 =new("NITHISH",96);
    s1.display();
    s2 =new("PREETHI",99);
    s2.display();
    s3 =new("VIGNESH",49);
    s3.display(); 
  end
endmodule
    
