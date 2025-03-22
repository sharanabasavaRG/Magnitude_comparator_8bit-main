class mag_comp_env extends uvm_env;
  `uvm_component_utils(mag_comp_env)
  
  
    mag_comp_agent agent;
    mag_comp_scoreboard sb;
    

  function new(string name="mag_comp_env", uvm_component parent=null);
        super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        agent = mag_comp_agent::type_id::create("agent", this);
        sb = mag_comp_scoreboard::type_id::create("sb", this);
    endfunction

    virtual function void connect_phase(uvm_phase phase);
        agent.mon.mon_ap.connect(sb.sb_port);
    endfunction
  
endclass
