class rotten_fruit;
  int r_fruits;
endclass

class fruits #(parameter WIDTH = 4, type D_TYPE = string,type F_TYPE = rotten_fruit);
  bit [WIDTH-1:0] no;
  D_TYPE name;
  F_TYPE rf;
  function void display();
    $display("FRUIT = %0d Nos = %0d Rotten fruits = %0d", name,no,rf.r_fruits);
  endfunction
endclass

module class_example;
  fruits f1,f2;
  initial begin
    f1 = new();
    f1.rf=new();
    f1.no = 7;
    f1.name = "APPLES";
    f1.rf.r_fruits =3;
    f1.display();
    f2 = new();
    f2.rf = new();
    f2.no= 15;
    f2.name = "Goava";
    f2.rf.r_fruits =5;
    f2.display();
    
   
  end
endmodule
