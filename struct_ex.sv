module struct_ex;
  
  struct{
    bit wr;
    logic [64:0] data;
    logic [32:0] addr;
    int desk_id;
  } pkt;
  
  initial begin
    pkt = '{1, 64'd32, 32'd48, 32'd11};
    $display("Packet: %p", pkt);
    
    // change addr & data
    pkt.addr = 32'd18;
    pkt.data = 64'd100;
    
    $display("Packet: %p", pkt);
    
  end
endmodule
