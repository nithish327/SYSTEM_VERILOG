class packet_1;
  int data;
  function new(int a);
    data = a;
  endfunction
  function display(string name);
    $display("%0s = %0d ",name,data);
  endfunction
  
endclass

module tb;
  packet_1 pkt_1,pkt_2;
  initial begin
    pkt_1 = new(23);
    pkt_1.display("pkt_1");
    pkt_2 = pkt_1;
    pkt_2.display("pkt_2");
    pkt_2.data = 26;
    pkt_1.display("pkt_1");
  end
endmodule
    
