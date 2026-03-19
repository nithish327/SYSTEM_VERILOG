module mixed_array;
  logic [3:0] data [2:0][1:0];
  initial begin
    data='{'{4'd3,4'd7},
           '{4'd1,4'd5},
           '{4'd1,4'd9} 
           };
    foreach(data[i,j])
        $display("DATA[%0d][%0d]=%0d",i,j,data[i][j]);
    end
endmodule
