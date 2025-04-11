module logic_ex;
  
  // declare logic data type variables
  logic [31:0] data;
  logic [15:0] addr;
  logic wr;
  logic en;
  
  // continous assignment
  assign addr = 16'hFFFF;
  
  // procedural block
  initial begin
    wr = 1;
    
    // multiple drivers
    en = 0;
    en = 1;
    
    $display("data = %h addr = %h wr = %b en = %b", data, addr, wr, en);
  end
endmodule
