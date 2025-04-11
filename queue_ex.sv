module queue_ex;
  int q[$]={0,1,2};
  int element;
  
  task print_queue (input int q[$]);
    foreach(q[i])
      $display("q[%0d] = %0d", i, q[i]);
  endtask
  
  initial begin
    print_queue(q);
    //INSERT
    q.insert(0,-1);
    $display("AFTER INSERTION: ");
    print_queue(q);
    
    // PUSH FRONT
    q.push_front(-2);
    $display("AFTER PUSH FRONT:");
    print_queue(q);
    
    // POP back
    element = q.pop_back();
    $display("AFTER POP BACK:");
    print_queue(q);
    
    // DELETE
    q.delete(2);
    $display("AFTER DELETION:");
    print_queue(q);
  end
endmodule
