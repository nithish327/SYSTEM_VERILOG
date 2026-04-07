class packet_1;
  int data;
  function new(int a);
    data = a;
  endfunction
  function display();
    $display("packet data = %0d ",data);
  endfunction
  
endclass

module tb;
  packet_1 pkt_1,pkt_2;
  initial begin
    pkt_1 = new(23);
    pkt_1.display;
    pkt_2 = pkt_1;
    pkt_2.display;
  end
endmodule
    
