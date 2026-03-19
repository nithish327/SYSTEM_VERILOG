/*Given the following static array:
int numbers[6] = '{5, 10, 15, 20, 25, 30};
Write a program to:
 Print all elements
 Calculate the sum of the elements*/

module array;
  int numbers[6] = '{5, 10, 15, 20, 25, 30};
  int sum;
  initial begin
    for(int i=0;i<=5;i++)begin
      $display("DATA[%0d]=%0d",i,numbers[i]);
      sum=sum + numbers[i];
      $display("sum = %0d",sum);
    end
  end
endmodule
