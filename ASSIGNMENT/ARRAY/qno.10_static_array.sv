/*Given the following static array:
int scores[5] = '{10, 20, 30, 40, 50};
Write statements to:
 Access the third element
 Modify the last element to 60
 Display the updated array.*/

module static_array;
  int scores[5] = '{10, 20, 30, 40, 50};
  initial begin
    foreach(scores[i])begin
      $display("scores [%0d] = %0d",i,scores[i]);
    end
    $display(" 3rd Element= %0d",scores[2]);
    scores[4] = 77;
    foreach(scores[i])
      $display("Updated scores[%0d] = [%0d]",i,scores[i]);
  end
endmodule
    
