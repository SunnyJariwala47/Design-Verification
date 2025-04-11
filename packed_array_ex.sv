module pkd_arr_ex;
  logic [3:0] [7:0] data_mem1 = 32'h0FA5_279B; // initialize
  logic [3:0][7:0] data_mem2;
               
  initial begin
    
          data_mem2 = data_mem1; // copy
          $display("Array sizes: data_mem1 = %d data_mem2 = %d", $size( data_mem1), $size(data_mem2)); // array size
    $display("Arrays: MEM1= %h MEM2 = %h", data_mem1, data_mem2);
    
    for(int i = 0; i<4; i++)
    begin
      $display("Data mem1 element: %d value: %h", i, data_mem1[i]);
      $display("Data mem2 element: %d value: %h", i, data_mem2[i]);
    end
    
    #5;
    
    data_mem1[3] = data_mem2[0]; // slicing
    $display("New arrays: MEM1=%h MEM2=%h",data_mem1, data_mem2);
    
    // array comparison
    if (data_mem1 == data_mem2)
      $display("Both memories are equal");
    else
      $display("Both memories are not equal");
  end
endmodule
