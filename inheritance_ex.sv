class base_class;
  // base class properties
  bit [31:0] addr = 32'h1;
  bit [63:0] data = 64'hA0A0;
  
  // base class methods
  task display_variables;
    $display("Inside base class - Addr: %h Data: %h", addr, data);
  endtask
endclass

// extended class1
class extended_class1 extends base_class;
  // extended class1 properties
  bit rw = 1;
  // extended class1 methods
  task display_variables;
    $display("Inside extended class1 - Read/Write: %h", rw);
  endtask
endclass

// extended class2
class extended_class2 extends extended_class1;
  // extended class2 properties
  bit en = 1;
  // extended class2 methods
  task display_variables;
    super.display_variables();
    $display("Inside extended class2 - Enable: %h", en);
  endtask
endclass

// module test
module test_multi_inheritance;
  initial begin
    base_class b;
    extended_class1 e1;
    extended_class2 e2;
    b = new();
    e1 = new();
    e2 = new();
//     b.display_variables();
//     e1.display_variables();
    e2.display_variables();
  end
endmodule
