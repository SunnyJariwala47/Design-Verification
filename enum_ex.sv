module enum_ex;
  typedef enum {port1=7, port2, port3, port4=0, port5} port_id;
  
  initial begin
    port_id my_port_id;
    my_port_id = port3;
    $display("my_port_id.first()=%d", my_port_id.first());
    $display("my_port_id.last()=%d", my_port_id.last());
    $display("my_port_id.next()=%d", my_port_id.next());
    $display("my_port_id.prev()=%d", my_port_id.prev());
    $display("my_port_id.num()=%d", my_port_id.num());
    $display("my_port_id.name()=%s",my_port_id.name());
  end
endmodule
