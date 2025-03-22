
class mag_comp_agent extends uvm_agent;
  `uvm_component_utils(mag_comp_agent) 
 
    mag_comp_driver drv;
    mag_comp_monitor mon;
    uvm_sequencer#(mag_comp_tx) seqr;
  

   function new(string name="mag_comp_agent", uvm_component parent=null);
       super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        drv = mag_comp_driver::type_id::create("drv", this);
        mon = mag_comp_monitor::type_id::create("mon", this);
        seqr = uvm_sequencer#
      
(mag_comp_tx)::type_id::create("seqr", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(seqr.seq_item_export);
    endfunction
  
endclass
