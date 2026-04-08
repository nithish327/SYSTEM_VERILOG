class packet_1;
  string name;
  function new(string name);
    this.name = name;
  endfunction
  function display();
    $display("Name = %0s",name);
  endfunction
  
    
endclass

class packet_2;
  int id;
  int data;
  packet_1 name1;
  function new(string name,int id, int data);
    name1 = new(name);
    this.data = data;
    this.id = id;
  endfunction
  function copy(packet_2 p1);
    this.name1 = new(p1.name1.name);
    this.id = p1.id;
    this.data = p1.data;
  endfunction
    
  function display(string s);
    $display(" %0s Name = %0s",s,name1.name);
    $display(" %0s id = %0d",s,id);
    $display(" %0s data = %0h",s,data);
    $display("------------------------");
  endfunction
endclass
    

module tb;
  packet_2 pkt_1,pkt_2;
  initial begin
    pkt_1 = new("PREETHI",23,16'hFACE);
    pkt_1.display("pkt_1");
    
    pkt_2 = new("",1,2);
    pkt_2.copy(pkt_1);
    pkt_2.display("pkt_2");
    
    pkt_2.name1.name = "NITHISH";
    pkt_2.id = 26;
    pkt_2.data = 'hCAFE;
    pkt_2.display("pkt_2");
    
    pkt_1.display("pkt_1");
  end
endmodule
    
