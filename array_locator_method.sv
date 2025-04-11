module array_locator_methods;
  int locator_arr[] = '{1, 3, 4, 9, 1, 0, 4, 1, 8, 2, 9, 7}; // Dynamic Array
  int locator_result[$]; // Queue of results
  
  function void print_results;
    foreach (locator_result[i])
      $display ("Result[%d] = %d", i, locator_result[i]);
  endfunction
  
  initial begin
    // mandatory 'with' clause
    // find
    locator_result = locator_arr.find with (item > 4);
    $display("Items greater than 4 are:");
    print_results;
    
    // find_index()
    locator_result = locator_arr.find_index with (item > 4);
    $display("Index of items greater than 4 are:");
    print_results;
    
    // find_first()
    locator_result = locator_arr.find_first with (item > 4);
    $display("First items greater than 4 is:");
    print_results;
    
    // find_first_index()
    locator_result = locator_arr.find_first_index with (item > 4);
    $display("Index of first item greater than 4 is:");
    print_results;
    
    // find_last()
    locator_result = locator_arr.find_last with (item > 4);
    $display("last items greater than 4 are:");
    print_results;
    
    // find_last_index()
    locator_result = locator_arr.find_last_index with (item > 4);
    $display("Index of last items greater than 4 is:");
    print_results;
    
    // optional 'with' clause
    //min
    locator_result = locator_arr.min();
    $display("Minimum elements are:");
    print_results;
    
    //max
    locator_result = locator_arr.max();
    $display("Maximum elements are:");
    print_results;
    
    //unique
    locator_result = locator_arr.unique();
    $display("Unique elements are:");
    print_results;
    
    //unique_index
    locator_result = locator_arr.unique_index();
    $display("Index of unique elements are:");
    print_results;
    
  end
endmodule
