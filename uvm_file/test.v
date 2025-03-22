class mag_comp_test extends uvm_test;
  `uvm_component_utils(mag_comp_test)
  
    mag_comp_env env;
    mag_comp_seq seq;
    

  function new(string name="mag_comp_test", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        env = mag_comp_env::type_id::create("env", this);
        seq = mag_comp_seq::type_id::create("seq",this);
    endfunction

    task run_phase(uvm_phase phase);
       // mag_comp_seq seq = mag_comp_seq::type_id::create("seq");
        phase.raise_objection(this);
        seq.start(env.agent.seqr);
        #100;
        phase.drop_objection(this);
    endtask
  
endclass
