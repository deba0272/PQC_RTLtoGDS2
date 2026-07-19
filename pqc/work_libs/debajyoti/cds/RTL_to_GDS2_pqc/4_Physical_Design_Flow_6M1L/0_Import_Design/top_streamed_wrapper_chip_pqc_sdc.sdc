# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.14-s082_1 on Fri Jul 17 07:38:40 EDT 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design pqc_top_wrapper

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
group_path -weight 1.000000 -name I2R -from [list \
  [get_ports clk]  \
  [get_ports rst_n]  \
  [get_ports start]  \
  [get_ports {sw[3]}]  \
  [get_ports {sw[2]}]  \
  [get_ports {sw[1]}]  \
  [get_ports {sw[0]}] ] -to [list \
  [get_cells uut/uut_valid_out_reg]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[3]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[0]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[1]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[2]}]  \
  [get_cells {uut/uut_state_reg[2]}]  \
  [get_cells {uut/uut_state_reg[1]}]  \
  [get_cells {uut/uut_state_reg[0]}] ]
group_path -weight 1.000000 -name R2O -from [list \
  [get_cells uut/uut_valid_out_reg]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[3]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[0]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[1]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[2]}]  \
  [get_cells {uut/uut_state_reg[2]}]  \
  [get_cells {uut/uut_state_reg[1]}]  \
  [get_cells {uut/uut_state_reg[0]}] ] -to [list \
  [get_ports {led[3]}]  \
  [get_ports {led[2]}]  \
  [get_ports {led[1]}]  \
  [get_ports {led[0]}]  \
  [get_ports done_led] ]
group_path -weight 1.000000 -name R2R -from [list \
  [get_cells uut/uut_valid_out_reg]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[3]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[0]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[1]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[2]}]  \
  [get_cells {uut/uut_state_reg[2]}]  \
  [get_cells {uut/uut_state_reg[1]}]  \
  [get_cells {uut/uut_state_reg[0]}] ] -to [list \
  [get_cells uut/uut_valid_out_reg]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[3]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[0]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[1]}]  \
  [get_cells {uut/uut_M_OUT_REAL_reg[2]}]  \
  [get_cells {uut/uut_state_reg[2]}]  \
  [get_cells {uut/uut_state_reg[1]}]  \
  [get_cells {uut/uut_state_reg[0]}] ]
set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb2]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb1]
set_dont_use true [get_lib_cells tsl18fs120_scl_ss/slbhb4]
set_clock_uncertainty -setup 1.0 [get_clocks clk]
set_clock_uncertainty -hold 1.0 [get_clocks clk]
