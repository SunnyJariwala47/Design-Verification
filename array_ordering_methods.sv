module array_ordering_methods;
  int ordering_arr[] = '{ 3, 2, 0, -1, -7, 9, 11};
  
  function void print_ordering_array;
    foreach(ordering_arr[i])
      $display("Result[%d] = %d", i, ordering_arr[i]);
  endfunction
  
  initial begin
    // without 'with' clause
    // reverse
    ordering_arr.reverse();
    $display("After reversing:");
    print_ordering_array;
    
    // shuffle
    ordering_arr.shuffle();
    $display("After shuffling:");
    print_ordering_array;
    
    // optional 'with' clause
    // sort
    ordering_arr.sort;
    $display("After sorting:");
    print_ordering_array;
    
    // rsort
    ordering_arr.rsort;
    $display("After reverse sorting:");
    print_ordering_array;
    
  end
  
endmodule
