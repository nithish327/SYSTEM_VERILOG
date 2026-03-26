module union_tb;
  typedef union{
    int batch_no;
    int total_students;
    int placed_students;
  }inst;
  real placed_percent;
  inst students [];
  initial begin
    students = new[3];
    students[0].batch_no = 5;
    students[1].total_students = 55;
    students[2].placed_students =23;
    placed_percent = ((students[2].placed_students*1.0)/(students[1].total_students ))*100;
    
    
    
    $display("total batch = %0d ",students[0].batch_no);
    $display("total students = %0d ",students[1].total_students);
    $display("placed students = %0d ",students[2].placed_students);
    $display("placed percentage = %.2f ",placed_percent);
   
  end
endmodule
