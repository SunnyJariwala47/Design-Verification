class Trans;
  bit [31:0] data;
  bit [7:0] addr;
  
  // task to assign class variables
  task assign_values(bit [31:0] in_data, bit [7:0] in_addr);
    data = in_data;
    addr = in_addr;
  endtask
  
  // task to print class variables
  task print;
    $display("Data:%h Addr:%h", data, addr);
  endtask
endclass

module Trans_test;
  
  initial begin
  Trans t1, t2; // declare two handles to Trans class objects
  t1 = new(); // allocate object to first handle b1
  t1.assign_values(32'hF0F0_A5A5, 8'h10);
  t1.print();
  t2 = t1; // t2 points to same object as t1
  t2.print();
  end
endmodule
