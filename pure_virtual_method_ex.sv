virtual class sv_base_class;
  // sv base class properties
  int id;
  // sv base class methods
  pure virtual function void display_id(input int input_id);
endclass

// extended class    
    class sv_extended_class extends sv_base_class;
      // sv extended class properties
      int id;
      // sv extended class methods
      virtual function void display_id(input int input_id);
        this.id = input_id;
        $display("Inside sv extended class - id: %d", id);
      endfunction
    endclass
    
    // module test
    module test_sv_pure_virtual_method;
      initial begin
      int input_id = 5;
       sv_base_class b;
        sv_extended_class e;
//         b = new();
        e = new();
        b = e;
        b.display_id(input_id);
        //e.display_id(input_id);
      end
    endmodule
