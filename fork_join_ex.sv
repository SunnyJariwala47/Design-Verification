/*
module fork_join_ex;
  initial begin
    $display("%t: Before fork-join statement1", $time);
    #10 $display ("%t: Before fork-join with delay of #10",  $time);
    
    fork
      #10 $display("%t: Thread1 inside fork-join", $time);
      
      begin
        $display("%t: Thread2 inside fork-join", $time);
        #20 $display("%t: Thread2 inside fork-join after delay #20", $time);
      end
    join_none
    
    //disable fork;
    $display("%t: After fork-join", $time);
    #10 $display("%t: After fork-join with delay #10", $time);
  end
endmodule
*/

// nested fork join example
module fork_join_ex;
  initial begin
    $display("%t: Before fork-join statement1", $time);
    #10 $display ("%t: Before fork-join with delay of #10",  $time);
    
    fork
      #10 $display("%t: Thread1 inside fork-join", $time);
      
      fork
        $display("%t: Thread2 inside fork-join", $time);
        #20 $display("%t: Thread2 inside fork-join after delay #20", $time);
      join_any
      
      #10 $display("%t: Thread3 inside fork-join", $time);
    join
    
    disable fork;
    $display("%t: After fork-join", $time);
    #10 $display("%t: After fork-join with delay #10", $time);
  end
endmodule
