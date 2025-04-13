module event_ex;
  event a, b, c;
  task trigger_a;
    #10;
    ->> a;
    $display ("%t: Event a triggered", $time);
  endtask
  
  task assign_b;
    b = a;
  endtask
  
  task trigger_c;
    #15;
    -> c;
    $display("$t: Event c triggered", $time);
  endtask
  
  task waiting;
    #9;
    //@(c);
    //wait(c.triggered);
    //$display("%t: event c observed", $time);
    wait_order(a,c);
    $display ("a & c events have occured");
    //if (a != c) $display (" a & c are unequal");
  endtask
  
  initial begin
    fork
      trigger_a;
      assign_b;
      trigger_c;
      waiting;
    join
  end
endmodule
