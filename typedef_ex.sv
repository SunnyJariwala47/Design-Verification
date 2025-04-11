module typedef_ex;
  typedef word;
  word w = 16'hABCD;
  typedef bit[16:0] word;
  
  initial begin
    $display("word is: %h", w);
  end
endmodule
