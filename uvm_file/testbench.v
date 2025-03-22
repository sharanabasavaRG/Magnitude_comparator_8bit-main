// Code your testbench here
// or browse Examples

import uvm_pkg::*;
`include "uvm_macros.svh"

`include "package.sv"

module tb_top;
  
    mag_comp_if vif();
  
    magnitude_comparator_8bit dut (
        .A(vif.A), .B(vif.B),
        .A_greater(vif.A_greater), .A_less(vif.A_less), .A_equal(vif.A_equal)
    );

    initial 
      begin
       uvm_config_db#(virtual mag_comp_if)::set(null, "*", "vif", vif);
       run_test("mag_comp_test");
     end
  

endmodule
