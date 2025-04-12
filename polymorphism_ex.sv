class sv_base_class;
  // base class properties
  int id;
  // base class methods
  virtual function void display_id(input int input_id);
    this.id = input_id;
    $display("Inside sv base class - id: %d", id);
  endfunction
endclass

// extended class1
class sv_extended_class1 extends sv_base_class;
  // sv extended class1 properties
  int id;
  // sv extended class1 methods
  virtual function void display_id (input int input_id);
    this.id = input_id + 1;
    $display("Inside sv extended class1 - id: %d", id);
  endfunction
endclass

// extended class2
class sv_extended_class2 extends sv_base_class;
  // sv extended class2 properties
  int id;
  // sv extended class2 methods
  virtual function void display_id(input int input_id);
    this.id = input_id + 2;
    $display("Inside sv extended class2 - id: %d", id);
  endfunction
endclass

// extended class3
class sv_extended_class3 extends sv_base_class;
  // sv extended class3 properties
  int id;
  // sv extended class3 methods
  virtual function void display_id(input int input_id);
    this.id = input_id+3;
    $display("Inside sv extended class3 - id: %d", id);
  endfunction
endclass

// module test
module test_sv_polymorphism;
  initial begin
    int input_id = 5;
    sv_base_class b;
    sv_extended_class1 e1;
    sv_extended_class2 e2;
    sv_extended_class3 e3;
    b = new();
    e1 = new();
    e2 = new();
    e3 = new();
//     b = e1;
//     b = e2;
//     b = e3;
    b.display_id(input_id);
    e1.display_id(input_id);
    e2.display_id(input_id);
    e3.display_id(input_id);
  end
endmodule
