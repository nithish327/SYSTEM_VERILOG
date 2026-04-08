
class packet;
  int addr;
  int id;
  int data;
  function new(int addr, int id, int data);
    this.data = data;
    this.addr = addr;
    this.id = id;
  endfunction
  function display(string name);
    $display(" %0s address = %0h",name,addr);
    $display(" %0s id = %0b",name,id);
    $display(" %0s data = %0h",name,data);
    $display("------------------------");
  endfunction
endclass
    

module tb;
  packet pkt_1,pkt_2;
  initial begin
    pkt_1 = new(16'hffff,2'b10,16'hfade);
    pkt_1.display("pkt_1");
    
    pkt_2 = new pkt_1;
    pkt_2.display("pkt_2");
    pkt_2.addr = 'habcd;
    pkt_2.id = 'b11;
    pkt_2.data = 'hdada;
    pkt_2.display("pkt_2");
    
    pkt_1.display("pkt_1");
  end
endmodule
    
