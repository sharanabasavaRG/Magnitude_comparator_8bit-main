
class mag_comp_driver extends uvm_driver #(mag_comp_tx);
  `uvm_component_utils(mag_comp_driver)
  
  
    virtual mag_comp_if vif;
    mag_comp_tx tx;
     
    function new(string name="mag_comp_driver", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
      tx=mag_comp_tx::type_id::create("tx",this);
        if (!uvm_config_db#(virtual mag_comp_if)::get(this, "", "vif",vif)) 
            `uvm_fatal("DRIVER", "Could not get interface handle")
    endfunction

    virtual task run_phase(uvm_phase phase);
        forever begin  
            seq_item_port.get_next_item(tx);
            vif.A <= tx.A;
            vif.B <= tx.B;
            #10;
            seq_item_port.item_done();
        end
    endtask  
      
endclass
