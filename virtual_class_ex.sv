virtual class virtual_packet;
  bit [31:0] addr;
  bit [63:0] data;
endclass

class extended_packet extends virtual_packet;
  function void display_packet;
    $display("Addr: %0h Data: %0h", addr, data);
  endfunction
endclass

module virtual_packet_test;
  initial begin
    extended_packet p;
    p = new();
    p.addr = 32'h1;
    p.data = 64'h01234567890ABCDEF;
    p.display_packet();
  end
endmodule
