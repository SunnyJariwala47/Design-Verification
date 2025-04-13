module mailbox_ex;
  // parameterized mailbox having data type of string
  mailbox#(string) mail = new();
  
  initial begin
    mail.put("Let's learn VLSI");
    #5;
    mail.put("Design Verification");
  end
  
  initial begin
    string message1, message2;
    mail.peek(message1);
    $display("First message in mailbox is: %s", message1);
    #5;
    mail.peek(message2);
    $display("Second message in mailbox is: %s", message2);
  end
endmodule
