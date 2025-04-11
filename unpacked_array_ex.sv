module array_example;
  int array1 [2][2] = '{'{1,3},
                        '{2,4}}; //initialize
  int array2 [2][2];
  
  initial begin
    array2 = array1; //copy
    
    foreach(array1[i,j]) begin
      $display("array1[%0d][%0d]= %0d", i, j, array1[i][j]);
    end
    foreach(array2[i,j]) begin
      $display("array2[%0d][%0d]= %0d", i, j, array2[i][j]);
    end
    
    // Slicing
    array2[1][1] = array1[0][1];
    
    // Comparison
    if(array1[1][1]==array2[1][1])
      $display("EQUAL ARRAYS");
    else
      $display("UNEQUAL ARRAYS");
    
    $display("COMPARED ARRAYS ARE: %d, %d", array1[1][1], array2[1][1]);
  end
endmodule
