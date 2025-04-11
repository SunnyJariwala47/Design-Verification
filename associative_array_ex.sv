module ass_arr_ex;
  int fruits [string];
  string my_fruit;
  
  initial begin
    fruits["Kiwi"] = 1;
    fruits["Banana"] = 2;
    fruits["Orange"] = 3;
    fruits["Dragonfruit"] = 4;
    fruits["Apple"] = 5;
    
    $display("No. of Fruits: %d", fruits.num());
    
    if(fruits.exists("Dragonfruit"))
      $display("We have dragonfruit");
    else
      $display("No Dragonfruit");
    
    if(fruits.first(my_fruit))
      $display("First Fruit [%s]: %d", my_fruit, fruits[my_fruit]);
    if(fruits.last(my_fruit))
      $display("Last Fruit [%s]: %d", my_fruit, fruits[my_fruit]);
               
    my_fruit = "Dragonfruit";
    if(fruits.prev(my_fruit))
      $display("Before Dragonfruit [%s]: %d", my_fruit, fruits[my_fruit]);
               
    fruits.delete("Orange");
      $display("No. of Fruits after deleting Orange is: %d", fruits.num());
    
   end
endmodule
