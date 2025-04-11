module array_reduction_methods;
  int reduction_arr[]='{1, 3};
  int arr_sum;
  int arr_product;
  int arr_and;
  int arr_or;
  int arr_xor;
  
  initial begin;
    arr_sum = reduction_arr.sum();
    arr_product = reduction_arr.product();
    arr_and = reduction_arr.and();
    arr_or = reduction_arr.or();
    arr_xor = reduction_arr.xor();
    
    $display("Sum: %d", arr_sum);
    $display("Product: %d", arr_product);
    $display("AND: %d", arr_and);
    $display("OR: %d", arr_or);
    $display("XOR: %d", arr_xor);
  end
endmodule
