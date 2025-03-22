export DESIGN_NICKNAME = magnitude_comparator_8bit
export DESIGN_NAME = magnitude_comparator_8bit
export PLATFORM    = sky130hd

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/magnitude_comparator_8bit.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# Adders degrade GCD
 
export ADDER_MAP_FILE:=

export PLACE_DENSITY=0.25
export CORE_UTILIZATION = 15
export TNS_END_PERCENT = 100
export EQUIVALENCE_CHECK   ?=   1
export REMOVE_CELLS_FOR_EQY = sky130_fd_sc_hd__tapvpwrvgnd*
