class Trans;
  
  extern function void display();
endclass

    function void Trans::display();
      $display("Display method for Transaction");
    endfunction
    
module test;
  initial begin
    Trans t = new();
    t.display();
  end
endmodule
