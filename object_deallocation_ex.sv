class Trans;
  bit [31:0] data;
  bit [7:0] addr;
  
  // custom constructor to assign class variables
  function new(bit [31:0] in_data, bit [7:0] in_addr);
    data = in_data;
    addr = in_addr;
  endfunction
  
  // task to print class variables
  task print;
    $display("Data:%h Addr:%h", data, addr);
  endtask
endclass

module Trans_test;
  
  initial begin
    Trans t; // declare handle to trans class objects
    t = new(32'hF0F0_A5A5, 8'h10); // allocate first object to handle t
    t.print();
    t = new(32'hB0B0_0500, 8'h11); // allocate second object to handle t
    t.print();
    t = null; // deallocate 2nd object
    t.print();
  end
endmodule
