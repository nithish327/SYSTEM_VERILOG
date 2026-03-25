module enumeration;
  typedef enum{monday=1,tuesday,wednesday,thursday,friday,saturday}month;
  month date;
  initial begin
    for(int i = 1; i< 7; i++)begin
      date=month'(i);
      $display("day=%0d %0s",date,date.name);
    end
    end
endmodule
