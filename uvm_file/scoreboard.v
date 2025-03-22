class mag_comp_scoreboard extends uvm_scoreboard;
  `uvm_component_utils(mag_comp_scoreboard)
  
    uvm_analysis_imp#(mag_comp_tx, mag_comp_scoreboard) sb_port;
    

    function new(string name="mag_comp_scoreboard", uvm_component parent=null);
       super.new(name, parent);
    endfunction

    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        sb_port = new("sb_port", this);
    endfunction
  
  function void write(mag_comp_tx tx);
    bit exp_A_greater = (tx.A > tx.B);
    bit exp_A_less = (tx.A < tx.B);
    bit exp_A_equal = (tx.A == tx.B);

    if (tx.A_greater !== exp_A_greater || tx.A_less !== exp_A_less || tx.A_equal !== exp_A_equal) 
      begin
       `uvm_error(get_type_name(), $sformatf("FAIL: Mismatch detected! A=%0d B=%0d Expected (G,L,E)=(%b,%b,%b) Got (%b,%b,%b)",
            tx.A, tx.B, exp_A_greater, exp_A_less, exp_A_equal, tx.A_greater, tx.A_less, tx.A_equal))
      end 
    else 
      begin
      `uvm_info(get_type_name(), $sformatf("PASS: A=%0d B=%0d Expected (G,L,E)=(%b,%b,%b) Matched (G,L,E)=(%b,%b,%b)",
            tx.A, tx.B, exp_A_greater, exp_A_less, exp_A_equal, tx.A_greater, tx.A_less, tx.A_equal), UVM_MEDIUM)
     end
  endfunction

endclass
