-gui
../testbench/tb_pqc_post_synthesis.v
-v ../2_Synthesis_wrapper_6M1L/top_streamed_wrapper_chip_pqc_netlist.v
-v ../testbench/ss_verilog.v
-v ../testbench/ss_verilog_udp.v
-v /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/verilog/vcs_sim_model/tsl18fs120_scl.v
-v /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/verilog/tsl18cio150/zero/pc3o01.v 
-v /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/verilog/tsl18cio150/zero/pc3d01.v 
-v /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/verilog/tsl18cio150/zero/pc3c01.v
-relax
-timescale 1ns/1ps
+sdf_verbose 
+maxdelays
-mess
-access +rwc
