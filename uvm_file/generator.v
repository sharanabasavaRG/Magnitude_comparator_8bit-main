
class mag_comp_seq extends uvm_sequence #(mag_comp_tx);
    `uvm_object_utils(mag_comp_seq)

    function new(string name = "mag_comp_seq");
       super.new(name);
    endfunction

   task body();
        mag_comp_tx tx;
        repeat (10) 
          begin
            tx = mag_comp_tx::type_id::create("tx");  
            start_item(tx);
            assert(tx.randomize());
            finish_item(tx);
        end
    endtask
  
endclass
