
class mag_comp_monitor extends uvm_monitor;
  `uvm_component_utils(mag_comp_monitor)
 
    virtual mag_comp_if vif;
    mag_comp_tx tx;
    uvm_analysis_port#(mag_comp_tx) mon_ap;
    

    function new(string name="mag_comp_monitor", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        mon_ap = new("mon_ap", this);
        tx = mag_comp_tx::type_id::create("tx");
        if (!uvm_config_db#(virtual mag_comp_if)::get(this, "", "vif", vif))
            `uvm_fatal("MONITOR", "Could not get interface handle")
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            #10;
            tx.A = vif.A;
            tx.B = vif.B;
            tx.A_greater = vif.A_greater;
            tx.A_less = vif.A_less;
            tx.A_equal = vif.A_equal;
            mon_ap.write(tx);
        end
    endtask
endclass
