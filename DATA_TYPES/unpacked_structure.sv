module structure;
  typedef struct{
  string name ;
    bit [31:0]marks;
  }st;
  
  st student[int];
  initial begin
    student[0] = '{"NITHISH",100};
    student[1] = '{"M_VIGNESH",96};
    student[2] = '{"SWATHI",99};
    student[3] = '{"KAILASH",91};
    student[4] = '{"DHANUSIYA",98};
    
    foreach(student[i])
      $display("Name = %0s marks = %0d",student[i].name,student[i].marks);
  end
endmodule
