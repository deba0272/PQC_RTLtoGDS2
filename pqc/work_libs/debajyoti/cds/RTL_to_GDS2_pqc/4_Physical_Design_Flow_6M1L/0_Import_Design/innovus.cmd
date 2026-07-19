#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Jul 17 11:01:32 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v21.14-s109_1 (64bit) 06/29/2022 09:53 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: NanoRoute 21.14-s109_1 NR220628-1629/21_14-UB (database version 18.20.582) {superthreading v2.17}
#@(#)CDS: AAE 21.14-s031 (64bit) 06/29/2022 (Linux 3.10.0-693.el7.x86_64)
#@(#)CDS: CTE 21.14-s031_1 () Jun 22 2022 10:32:17 ( )
#@(#)CDS: SYNTECH 21.14-s014_1 () May 29 2022 20:47:50 ( )
#@(#)CDS: CPE v21.14-s062
#@(#)CDS: IQuantus/TQuantus 21.1.1-w001 (64bit) Wed Jun 1 22:42:35 PDT 2022 (Linux 3.10.0-693.el7.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_design_netlisttype Verilog
set init_verilog ./top_streamed_wrapper_chip_pqc_netlist.v
set init_top_cell pqc_top_wrapper
set init_lef_file {/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/lef/tsl180l6.lef /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/lef/tsl18cio150_6lm.lef /opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/memory/dpram/6M1L/DP_SRAM_rd3_1024x8/rd3_1024x8.lef}
set init_io_file ./final.io
set init_mmmc_file ./Default.view
set init_gnd_net {VSS_CORE VSSO_CORE}
set init_pwr_net {VDD_CORE VDDO_CORE}
set floorplan_default_site CoreSite
save_global Default.globals
set_message -no_limit
setDesignMode -process 180
init_design
add_tracks -honor_pitch
checkUnique -verbose
check_timing -verbose
checkDesign -all > ./Import_Design/pqc_top_wrapper_design.rpt
reportGateCount -hinst pqc_top_wrapper -level 10 -outfile ./Import_Design/pqc_top_wrapper_gatecount.rpt
reportNetStat > ./Import_Design/pqc_top_wrapper_netcount.rpt
saveDesign ./Import_Design/pqc_top_wrapper_importdesign.enc
floorPlan -site CoreSite -s 600 600 200 200 200 200
add_tracks -honor_pitch
checkFPlan -outFile ./FloorPlanning/pqc_top_wrapper_floorplan.rpt
saveDesign ./FloorPlanning/pqc_top_wrapper_floorplan.enc
addIoFiller -prefix FILLER -cell {pfeed30000 pfeed10000 pfeed02000 pfeed01000 pfeed00540 pfeed00120 pfeed00040 pfeed00010}
addIoFiller -fillAnyGap -prefix FILLER -cell pfeed00010
verify_drc > ./FloorPlanning/pqc_top_wrapper_drc.rpt
verifyConnectivity -type all -connLoop -error 10000 -warning 5000
timeDesign -prePlace -outDir ./FloorPlanning/pqc_top_wrapper_timing.rpt
saveDesign ./FloorPlanning/pqc_top_wrapper_fp_filler.enc
fit
globalNetConnect VDD_CORE -type pgpin -pin VDD -all
globalNetConnect VSS_CORE -type pgpin -pin VSS -all
globalNetConnect VDDO_CORE -type pgpin -pin VDDO -all
globalNetConnect VSSO_CORE -type pgpin -pin VSSO -all
globalNetConnect VDD_CORE -type tiehi
globalNetConnect VSS_CORE -type tielo
setAddRingMode -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin { standardcell } -skip_via_on_wire_shape { noshape }
addRing -nets {VDD_CORE VSS_CORE} -type core_rings -follow core -layer {top M5 bottom M5 left TOP_M right TOP_M} -width {top 30 bottom 30 left 30 right 30} -spacing {top 30 bottom 30 left 30 right 30} -offset {top 10 bottom 10 left 10 right 10} -snap_wire_center_to_grid None
setAddStripeMode -spacing_type edge_to_edge -stacked_via_top_layer TOP_M -stacked_via_bottom_layer M1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring block_ring} -skip_via_on_wire_shape { noshape }
addStripe -nets {VDD_CORE VSS_CORE} -layer TOP_M -direction vertical -width 11.2 -spacing 11.2 -set_to_set_distance 112 -start_from left -start_offset 84.28 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell }
addStripe -nets {VDD_CORE VSS_CORE} -layer M5 -direction horizontal -width 5.6 -spacing 11.2 -set_to_set_distance 224 -start_from bottom -start_offset 120.4 -switch_layer_over_obs true -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit TOP_M -padcore_ring_bottom_layer_limit M1 -block_ring_top_layer_limit TOP_M -block_ring_bottom_layer_limit M1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin { standardcell }
setSrouteMode -viaConnectToShape { ring stripe followpin }
sroute -connect { padPin corePin } -layerChangeRange { M1(1) TOP_M(6) } -padPinPortConnect { allPort oneGeom} -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -allowJogging 1 -crossoverViaLayerRange { M1(1) TOP_M(6) } -nets {VDD_CORE VSS_CORE} -allowLayerChange 1 -targetViaLayerRange { M1(1) TOP_M(6)}
verifyConnectivity -type all -connLoop -error 10000 -warning 5000 > ./PowerPlanning/pqc_top_wrapper_connectivity.rpt
checkDesign -all > ./PowerPlanning/pqc_top_wrapper_PP_design.rpt
timeDesign -prePlace > ./PowerPlanning/pqc_top_wrapper_timing_prePlace.rpt
saveDesign ./PowerPlanning/pqc_top_wrapper_fp_powerplan.enc
setDesignMode -process 180 -flowEffort standard
setRouteMode -earlyGlobalMinRouteLayer 1 -earlyGlobalMaxRouteLayer 6 -earlyGlobalEffortLevel standard
setPlaceMode -place_design_floorplan_mode false -place_design_refine_place true -place_global_cong_effort high -place_global_max_density 0.65 -place_global_place_io_pins false -place_global_clock_gate_aware false -place_global_reorder_scan false
setOptMode -fixFanoutLoad true -reclaimArea true -simplifyNetlist true -setupTargetSlack 0.2
getPlaceMode -place_hierarchical_flow -quiet
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -place_global_place_io_pins -quiet
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -quiet -place_global_exp_enable_3d
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -place_check_library -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -quiet -NMPsuppressInfo
getPlaceMode -quiet -place_global_exp_wns_focus_v2
getPlaceMode -quiet -place_incr_exp_isolation_flow
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -clusterMode
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_buffer_chain
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_pipeline
getPlaceMode -place_global_exp_balance_buffer_chain -quiet
getPlaceMode -place_global_exp_balance_pipeline -quiet
getPlaceMode -tdgpMemFlow -quiet
getPlaceMode -user -resetCombineRFLevel
getPlaceMode -quiet -resetCombineRFLevel
setPlaceMode -resetCombineRFLevel 1000
setvar spgSpeedupBuildVSM 1
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -place_global_replace_QP -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -reset -ignoreScan
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
colorizeGeometry
getPlaceMode -quiet -IOSlackAdjust
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.38469 -from {0x14 0x17} -to 0x18 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.38469 -from {0x1b 0x1e} -to 0x1f -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.38469 -from 0x21 -to 0x22
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.38469 -from 0x25 -to 0x26
setPathGroupOptions reg2reg_tmp.38469 -effortLevel high
reset_path_group -name reg2out_tmp.38469
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.38469
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.38469
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.38469
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -ignoreUnproperPowerInit -quiet
getPlaceMode -quiet -expSkipGP
setDelayCalMode -engine feDc
createBasicPathGroups -quiet
psp::embedded_egr_init_
psp::embedded_egr_term_
reset_path_group
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -engine aae
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -timingEffort
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.38469 -from {0x2f 0x32} -to 0x33 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.38469 -from {0x36 0x39} -to 0x3a -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.38469 -from 0x3c -to 0x3d
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.38469 -from 0x40 -to 0x41
setPathGroupOptions reg2reg_tmp.38469 -effortLevel high
reset_path_group -name reg2out_tmp.38469
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.38469
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.38469
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.38469
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -expCongRepairPDOneLoop
setPlaceMode -congRepairMaxIter 1
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
::goMC::is_advanced_metrics_collection_running
congRepair
::goMC::is_advanced_metrics_collection_running
::goMC::is_advanced_metrics_collection_running
::goMC::is_advanced_metrics_collection_running
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -timingEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
spInternalUse tdgp clearSkpData
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -reset -ignoreScan
setPlaceMode -reset -repairPlace
getPlaceMode -quiet -NMPsuppressInfo
setvar spgSpeedupBuildVSM 0
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -place_global_replace_QP -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -tdgpMemFlow -quiet
setPlaceMode -reset -resetCombineRFLevel
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -clusterMode
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -enableDistPlace -quiet
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
spInternalUse TDGP resetIgnoreNetLoad
getPlaceMode -place_global_exp_balance_pipeline -quiet
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
setPlaceMode -place_design_floorplan_mode false -congEffort high
place_opt_design
checkPlace > ./Placement/pqc_top_wrapper_place_summary.rpt
setDensityMapMode -gridInRow 20 -threshold 0.8 -displayStep 0.1
reportDensityMap > ./Placement/pqc_top_wrapper_cellDensity.rpt
setPinDensityMapMode -gridInRow 20 -threshold 0.50 -displayStep 0.1
reportPinDensityMap > ./Placement/pqc_top_wrapper_pinDensity.rpt
reportCongestion -overflow -hotSpot > ./Placement/pqc_top_wrapper_congestion.rpt
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
saveDesign ./Placement/pqc_top_wrapper_place_timing.enc
checkPlace > ./Placement/pqc_top_wrapper_placeOpt_summary.rpt
timeDesign -preCTS -expandedViews > ./Placement/pqc_top_wrapper_timing_preCTS.rpt
saveNetlist ./Placement/pqc_top_wrapper_preCTS.v
saveNetlist -includePowerGround ./Placement/pqc_top_wrapper_preCTS_withPG.v
saveDesign ./Placement/pqc_top_wrapper_place.enc
set_global report_timing_format {instance arc net cell slew delay arrival required}
set_analysis_view -setup {worst} -hold {best}
setAnalysisMode -analysisType onChipVariation -cppr both
setNanoRouteMode -drouteUseMultiCutViaEffort high
set_ccopt_property buffer_cells {bufbd1 bufbd2 bufbd3 bufbd4 bufbd7 bufbda bufbdf bufbdk}
set_ccopt_property inverter_cells {invbd2 invbd4 invbd7 invbda invbdf invbdk}
setRouteMode -earlyGlobalMaxRouteLayer 4
create_route_type -name leaf_rule -top_preferred_layer 2 -bottom_preferred_layer 1 -preferred_routing_layer_effort high
create_route_type -name trunk_rule -top_preferred_layer 3 -bottom_preferred_layer 2 -preferred_routing_layer_effort high
set_ccopt_property -net_type leaf route_type leaf_rule
set_ccopt_property -net_type trunk route_type trunk_rule
set_ccopt_property -net_type top route_type trunk_rule
set_ccopt_property primary_delay_corner max_delay
set_ccopt_property route_type_autotrim false
create_ccopt_clock_tree_spec -file ./ClockTreeSynthesis/pqc_top_wrapper_ccopt.spec
get_ccopt_clock_trees
ccopt_check_and_flatten_ilms_no_restore
set_ccopt_property cts_is_sdc_clock_root -pin clk true
create_ccopt_clock_tree -name clk -source clk -no_skew_group
set_ccopt_property clock_period -pin clk 10
set_ccopt_property timing_connectivity_info {}
create_ccopt_skew_group -name clk/all -sources clk -auto_sinks
set_ccopt_property include_source_latency -skew_group clk/all true
set_ccopt_property extracted_from_clock_name -skew_group clk/all clk
set_ccopt_property extracted_from_constraint_mode_name -skew_group clk/all all
set_ccopt_property extracted_from_delay_corners -skew_group clk/all {max_delay min_delay}
check_ccopt_clock_tree_convergence
get_ccopt_property auto_design_state_for_ilms
ctd_win -id before_ccopt
set_ccopt_property -delay_corner max_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type top target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type trunk target_max_trans 2
set_ccopt_property -delay_corner max_delay -net_type leaf target_max_trans 2
set_ccopt_property -delay_corner min_delay -net_type leaf target_max_trans 2
set_ccopt_property -skew_group clk/all -delay_corner min_delay target_skew 0.5
set_ccopt_property -delay_corner min_delay target_skew 0.5
set_ccopt_property source_driver pc3d01/CIN -clock_tree clk
set_ccopt_property balance_mode cluster
ccopt_design -cts
ctd_win -id cluster_mode
set_ccopt_property balance_mode trial
ccopt_design -cts
ctd_win -id trial_mode
set_ccopt_property balance_mode full
ccopt_design -cts
ctd_win -id full_mode
report_ccopt_clock_trees -summary -file ./ClockTreeSynthesis/pqc_top_wrapper_clock_trees.rpt
report_ccopt_skew_groups -summary -file ./ClockTreeSynthesis/pqc_top_wrapper_skew_group.rpt
reportCongestion -overflow -hotspot > ./ClockTreeSynthesis/pqc_top_wrapper_congestion.rpt
saveDesign ./ClockTreeSynthesis/pqc_top_wrapper_CTS_ccopt.enc
setUsefulSkewMode -delayPreCTS false -macroOnly false -maxAllowedDelay 1 -minAllowedDelay 0 -noBoundary false
setOptMode -powerEffort NONE -leakageToDynamicRatio 1 -reclaimArea true -simplifyNetlist true -swapPin true -restruct true -deleteInst true -downsizeInst true -setupTargetSlack 0.2 -holdTargetSlack 0.2 -maxDensity 0.95 -drcMargin 0.1 -usefulSkew true -usefulSkewPreCTS true -usefulSkewPostRoute true
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
report_timing -collection -early
optDesign -postCTS -hold
report_timing -collection -early
report_timing -collection -early
report_timing -collection -early
timeDesign -postCTS > ./ClockTreeSynthesis/pqc_top_wrapper_postCTS_setup.rpt
timeDesign -postCTS -hold > ./ClockTreeSynthesis/pqc_top_wrapper_postCTS_hold.rpt
reportGateCount -hinst ecg_rpeak_top_chip_wrapper -level 10 -outfile ./ClockTreeSynthesis/pqc_top_wrapper_gatecount.rpt
reportCongestion -overflow -hotSpot > ./ClockTreeSynthesis/pqc_top_wrapper_afterOpt_congestion.rpt
ctd_win -id after_opt
saveDesign ./ClockTreeSynthesis/pqc_top_wrapper_CTS_FixTiming.enc
saveNetlist -includePowerGround ./ClockTreeSynthesis/top_chip_wrapper_pqc_postCTS_withPG.v
saveNetlist ./ClockTreeSynthesis/top_chip_wrapper_pqc_postCTS_withoutPG.v
write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired ./ClockTreeSynthesis/top_chip_wrapper_postCTS_sdf.sdf
saveDesign ./ClockTreeSynthesis/pqc_top_wrapper_CTS.enc
setNanoRouteMode -routeWithTimingDriven true -routeTdrEffort 0 -routeWithSiDriven true -routeInsertAntennaDiode true -routeAntennaCellName adiode
routeDesign -globalDetail
clearDrc
is_common_ui_mode
reportCongestion -hotspot > userDrawHotSpots.txt
saveDesign ./Routing/pqc_top_wrapper_detailedRoute.enc
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {dl03d2 buffd1 bufbd2 buffd7 dl01d1 bufbd1 bufbd3 dl01d2 bufbd4 dl02d4 dl04d4 buffd4 bufbdk bufbda buffd3 dl01d4 dl02d1 dl04d2 dl03d4 dl02d2 buffda bufbdf dl03d1 buffd2 bufbd7 dl04d1 inv0d4 invbdf invbd7 inv0d0 invbd2 invbd4 inv0d7 inv0d1 invbdk inv0da invbda inv0d2} -maxAllowedDelay 1 -ecoRoute true -macroOnly false
setOptMode -effort high -powerEffort NONE -leakageToDynamicRatio 1 -reclaimArea true -simplifyNetlist true -swapPin true -restruct true -deleteInst true -downsizeInst true -setupTargetSlack 0.2 -holdTargetSlack 0.2 -maxDensity 0.95 -drcMargin 0.1 -usefulSkew true -usefulSkewPostRoute true
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
report_timing -collection -late
report_timing -collection -early
report_timing -collection -early
report_timing -collection -early
report_timing -collection -early
timeDesign -postRoute > ./Routing/pqc_top_wrapper_postRoute_setup.rpt
timeDesign -postRoute -hold > ./Routing/pqc_top_wrapper_postRoute_hold.rpt
addFiller -doDRC -fitGap -markFixed -cell {feedth feedth3 feedth9} -prefix FILLER
reportCongestion -overflow -hotSpot > ./Routing/pqc_top_wrapper_postFill_congestion.rpt
reportGateCount -hinst test_top_chip -level 10 -outfile ./Routing/pqc_top_wrapper_gatecount.rpt
reportCongestion -overflow -hotSpot > ./Routing/pqc_top_wrapper_postOpt_congestion.rpt
saveDesign ./Routing/pqc_top_wrapper_postRoute_timing.enc
saveNetlist -includePowerGround ./Routing/pqc_top_wrapper_postRoute_withPG.v
saveNetlist ./Routing/pqc_top_wrapper_postRoute_withoutPG.v
write_sdf -version 2.1 -edges noedge -recrem split -setuphold merge_when_paired ./Routing/${init_top_cell}_postRoute_with_pad_delay.sdf
rcOut -spef ./Routing/pqc_top_wrapper_postRoute.spef
streamOut pqc_top_wrapper_route.gds -mapFile /home/debajyoti/projects/pqc/work_libs/debajyoti/cds/RTL_to_GDS2_pqc/4_Physical_Design_Flow_6M1L/5_Routing/gds2_fe_6M1L.map -libName DesignLib -merge {/opt/tools/Cadence/Cadence_lib/scl_pdk_v3/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/gds/scl18fs120.gds /opt/tools/Cadence/Cadence_lib/sclpdk_new/SCLPDK_V3.0_KIT/scl180/iopad/cio150/6M1L/gds/tsl18cio150_6lm.gds} -units 1000 -mode ALL
saveDesign ./Routing/pqc_top_wrapper_Route.enc
