// DUT
module dut(output bit [7:0] addr);
  initial begin
    addr <= 11;
  end
endmodule

// TB
program tb(input bit[7:0] addr);
  initial begin
    $display("\t Addr = %0d", addr);
  end
endprogram

// TB TOP
module tb_top;
  wire [7:0] addr;
  
  //dut instance
  dut dut_inst (addr);
  
  //tb instance
  tb tb_inst (addr);
  
endmodule
