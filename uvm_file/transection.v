
class mag_comp_tx extends uvm_sequence_item;
  `uvm_object_utils(mag_comp_tx)
  
    rand bit [7:0] A, B;
    bit A_greater, A_less, A_equal;

    function new(string name = "mag_comp_tx");
        super.new(name);
    endfunction
  
endclass
