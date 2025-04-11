module dynamic_array_example;
  int dyn_arr[]; // Declare empty dynamic array
  
  initial begin
    dyn_arr=new[7]; //Allocate the memory size of 7
    $display("Array size after allocation: %d", $size(dyn_arr));
    
    foreach(dyn_arr[i]) begin
      dyn_arr[i] = $random; // Randomize array elements
      $display("dyn_arr[%d] = %d", i, dyn_arr[i]);
    end
    
    #2;
    dyn_arr[2] = 11; // modify the value of one element
    $display("dyn_arr[2] = %d", dyn_arr[2]);
    
    dyn_arr.delete;
    $display("Array size after deleting array: %d", $size(dyn_arr));
  end
  
endmodule
