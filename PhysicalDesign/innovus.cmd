#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Mar  4 17:02:44 2021                
#                                                     
#######################################################

#@(#)CDS: Innovus v18.10-p002_1 (64bit) 05/29/2018 19:19 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 18.10-p002_1 NR180522-1057/18_10-UB (database version 2.30, 418.7.1) {superthreading v1.46}
#@(#)CDS: AAE 18.10-p004 (64bit) 05/29/2018 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 18.10-p003_1 () May 15 2018 10:23:07 ( )
#@(#)CDS: SYNTECH 18.10-a012_1 () Apr 19 2018 01:27:21 ( )
#@(#)CDS: CPE v18.10-p005
#@(#)CDS: IQRC/TQRC 18.1.1-s118 (64bit) Fri Mar 23 17:23:45 PDT 2018 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
save_global Default.globals
set init_gnd_net VSS
set init_lef_file lef/gsclib090_tech.lef
set init_verilog PDout/ADC_SAR1_m.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
save_global Default.globals
set init_gnd_net VSS
set init_lef_file lef/gsclib090_translated.lef
set init_verilog PDout/ADC_SAR1_m.v
set init_mmmc_file Default.view
set init_pwr_net VDD
init_design
save_global ADC_SAR1.globals
set init_lef_file lef/gsclib090_macro.lef
init_design
save_global ADC_SAR1.globals
set init_lef_file lef/gsclib090_macro.lef
init_design
set init_lef_file lef/gsclib090_macro.lef
init_design
zoomBox 5.277 27.198 14.146 18.198
fit
fit
fit
gui_select -next -point {0.188 35.5765}
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site gsclib090site -r 0.885291396855 0.699941 10 10 10 10
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 2 bottom 2 left 2 right 2} -spacing {top 2 bottom 2 left 2 right 2} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 2 -spacing 2 -number_of_sets 4 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 2 -spacing 2 -number_of_sets 4 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 2 -spacing 2 -number_of_sets 4 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 2.3500 21.7200 50.4300 23.7200 9 VSS
setAddStripeMode -reset
setAddStripeMode -reset
panPage -1 0
panPage 1 0
fit
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal9 -direction horizontal -width 1.8 -spacing 1.8 -set_to_set_distance 100 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
deselectAll
selectWire 2.3500 14.1500 50.4300 16.1500 9 VSS
deleteSelectedFromFPlan
selectWire 2.3500 13.7500 50.4300 15.5500 9 VSS
deleteSelectedFromFPlan
selectWire 6.3500 10.1500 46.4300 12.1500 9 VDD
deleteSelectedFromFPlan
selectWire 6.3500 6.3500 46.4300 8.3500 9 VDD
deleteSelectedFromFPlan
selectWire 6.3500 10.1500 46.4300 11.9500 9 VDD
deleteSelectedFromFPlan
selectWire 6.3500 17.7200 46.4300 19.7200 9 VDD
deleteSelectedFromFPlan
selectWire 2.3500 21.7200 50.4300 23.7200 9 VSS
deleteSelectedFromFPlan
selectWire 6.3500 25.2900 46.4300 27.2900 9 VDD
deleteSelectedFromFPlan
selectWire 2.3500 29.2900 50.4300 31.2900 9 VSS
deleteSelectedFromFPlan
selectWire 6.3500 32.8600 46.4300 34.8600 9 VDD
deleteSelectedFromFPlan
selectWire 2.3500 36.8600 50.4300 38.8600 9 VSS
deleteSelectedFromFPlan
selectWire 6.3500 40.6600 46.4300 42.6600 9 VDD
deleteSelectedFromFPlan
selectWire 2.3500 44.6600 50.4300 46.6600 9 VSS
gui_select -rect {1.248 48.941 59.895 -0.435}
deleteSelectedFromFPlan
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal9 bottom Metal9 left Metal8 right Metal8} -width {top 2 bottom 2 left 2 right 2} -spacing {top 2 bottom 2 left 2 right 2} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 2 -spacing 2 -number_of_sets 3 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer Metal9 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {VDD VSS} -layer Metal8 -direction vertical -width 2 -spacing 2 -number_of_sets 3 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal9 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal9 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None
selectWire 10.1500 6.3500 12.1500 42.6600 8 VDD
deleteSelectedFromFPlan
undo
selectWire 44.4300 6.3500 46.4300 42.6600 8 VDD
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal9(9) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal9(9) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal9(9) }
setPlaceMode -fp false
place_design
setLayerPreference stdCell -isVisible 0
setLayerPreference stdCell -isVisible 1
fit
fit
panPage 1 0
panPage 1 0
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 0 -1
panPage -1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage -1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
fit
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
fit
getIoFlowFlag
fit
gui_select -rect {-3.690 1.580 2.155 -2.349}
gui_select -rect {-4.899 2.185 2.458 -2.047}
gui_select -rect {1.853 -1.443 -7.821 3.696}
fit
deselectAll
panPage 1 0
fit
gui_select -rect {-4.193 1.580 1.248 -1.947}
gui_select -rect {-3.690 2.487 1.853 -1.745}
zoomIn
zoomIn
zoomIn
fit
deselectAll
zoomIn
fit
zoomIn
zoomIn
fit
zoomIn
fit
zoomIn
zoomIn
zoomIn
fit
fit
selectWire 10.1500 25.6300 42.6300 25.9900 1 VDD
panPage 0 1
panPage 0 1
fit
deselectAll
checkPlace ADC_SAR1.checkPlace
setDrawView place
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix ADC_SAR1_preCTS -outDir timingReports
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
gui_select -next -point {14.7515 38.0585}
panPage -1 0
panPage -1 0
gui_select -next -point {-18.039 32.617}
fit
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -preCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix ADC_SAR1_preCTS -outDir timingReports
get_power_analysis_mode -leakage_power_view -quiet
get_power_analysis_mode -analysis_view -quiet
get_power_analysis_mode -state_dependent_leakage -quiet
get_power_analysis_mode -dynamic_power_view -quiet
get_power_analysis_mode -analysis_view -quiet
selectObject IO_Pin {digital_out[0]}
selectObject IO_Pin {digital_out[1]}
selectObject IO_Pin {digital_out[2]}
selectObject IO_Pin {digital_out[3]}
selectObject IO_Pin {digital_out[4]}
selectObject IO_Pin {digital_out[5]}
selectObject IO_Pin {digital_out[6]}
selectObject IO_Pin {digital_out[7]}
selectObject IO_Pin {value[0]}
selectObject IO_Pin {value[1]}
selectObject IO_Pin {value[2]}
selectObject IO_Pin {value[3]}
selectObject IO_Pin {value[4]}
selectObject IO_Pin {value[5]}
selectObject IO_Pin {value[6]}
selectObject IO_Pin {value[7]}
deselectObject IO_Pin {digital_out[0]}
deselectObject IO_Pin {digital_out[1]}
deselectObject IO_Pin {digital_out[2]}
deselectObject IO_Pin {digital_out[3]}
deselectObject IO_Pin {digital_out[4]}
deselectObject IO_Pin {digital_out[5]}
deselectObject IO_Pin {digital_out[6]}
deselectObject IO_Pin {digital_out[7]}
deselectObject IO_Pin {value[0]}
deselectObject IO_Pin {value[1]}
deselectObject IO_Pin {value[2]}
deselectObject IO_Pin {value[3]}
deselectObject IO_Pin {value[4]}
deselectObject IO_Pin {value[5]}
deselectObject IO_Pin {value[6]}
deselectObject IO_Pin {value[7]}
selectObject IO_Pin {digital_out[0]}
selectObject IO_Pin {digital_out[1]}
selectObject IO_Pin {digital_out[2]}
selectObject IO_Pin {digital_out[3]}
selectObject IO_Pin {digital_out[4]}
selectObject IO_Pin {digital_out[5]}
selectObject IO_Pin {digital_out[6]}
selectObject IO_Pin {digital_out[7]}
selectObject IO_Pin {value[0]}
selectObject IO_Pin {value[1]}
selectObject IO_Pin {value[2]}
selectObject IO_Pin {value[3]}
selectObject IO_Pin {value[4]}
selectObject IO_Pin {value[5]}
selectObject IO_Pin {value[6]}
selectObject IO_Pin {value[7]}
deselectObject IO_Pin {digital_out[0]}
deselectObject IO_Pin {digital_out[1]}
deselectObject IO_Pin {digital_out[2]}
deselectObject IO_Pin {digital_out[3]}
deselectObject IO_Pin {digital_out[4]}
deselectObject IO_Pin {digital_out[5]}
deselectObject IO_Pin {digital_out[6]}
deselectObject IO_Pin {digital_out[7]}
deselectObject IO_Pin {value[0]}
deselectObject IO_Pin {value[1]}
deselectObject IO_Pin {value[2]}
deselectObject IO_Pin {value[3]}
deselectObject IO_Pin {value[4]}
deselectObject IO_Pin {value[5]}
deselectObject IO_Pin {value[6]}
deselectObject IO_Pin {value[7]}
selectObject IO_Pin {digital_out[0]}
selectObject IO_Pin {digital_out[1]}
selectObject IO_Pin {digital_out[2]}
selectObject IO_Pin {digital_out[3]}
selectObject IO_Pin {digital_out[4]}
selectObject IO_Pin {digital_out[5]}
selectObject IO_Pin {digital_out[6]}
selectObject IO_Pin {digital_out[7]}
deselectObject IO_Pin {digital_out[0]}
deselectObject IO_Pin {digital_out[1]}
deselectObject IO_Pin {digital_out[2]}
deselectObject IO_Pin {digital_out[3]}
deselectObject IO_Pin {digital_out[4]}
deselectObject IO_Pin {digital_out[5]}
deselectObject IO_Pin {digital_out[6]}
deselectObject IO_Pin {digital_out[7]}
selectInst g1219__1857
selectInst g1228__5019
selectInst g1220__1840
selectInst g1224__7344
selectInst g1221__5795
selectInst {digital_out_reg[7]}
selectInst {digital_out_reg[6]}
selectInst {digital_out_reg[2]}
selectObject IO_Pin {digital_out[0]}
selectObject IO_Pin {digital_out[1]}
selectObject IO_Pin {digital_out[2]}
selectObject IO_Pin {digital_out[3]}
selectObject IO_Pin {digital_out[4]}
selectObject IO_Pin {digital_out[5]}
selectObject IO_Pin {digital_out[6]}
selectObject IO_Pin {digital_out[7]}
selectObject IO_Pin {value[0]}
selectObject IO_Pin {value[1]}
selectObject IO_Pin {value[2]}
selectObject IO_Pin {value[3]}
selectObject IO_Pin {value[4]}
selectObject IO_Pin {value[5]}
selectObject IO_Pin {value[6]}
selectObject IO_Pin {value[7]}
deselectAll
gui_select -next -point {-13.777 63.6705}
selectObject IO_Pin {digital_out[0]}
selectObject IO_Pin {digital_out[1]}
selectObject IO_Pin {digital_out[2]}
selectObject IO_Pin {digital_out[3]}
selectObject IO_Pin {digital_out[4]}
selectObject IO_Pin {digital_out[5]}
selectObject IO_Pin {digital_out[6]}
selectObject IO_Pin {digital_out[7]}
deselectAll
selectWire 20.9550 11.3850 21.0950 13.8450 2 clk
gui_select -rect {-0.150 -0.002 -0.136 -0.004}
gui_select -rect {-0.189 0.011 -0.087 -0.017}
deselectAll
selectObject IO_Pin {digital_out[7]}
deselectAll
selectObject IO_Pin cmp
deselectAll
selectObject IO_Pin {digital_out[7]}
deselectAll
selectObject IO_Pin cmp
deselectAll
selectObject IO_Pin {digital_out[7]}
gui_select -rect {-0.095 -0.013 -0.112 0.166}
deselectAll
selectObject IO_Pin cmp
gui_select -rect {-0.276 0.031 -0.270 0.279}
gui_select -rect {-0.206 -0.022 0.031 -0.022}
fit
deselectObject IO_Pin cmp
selectObject IO_Pin sample
deselectObject IO_Pin sample
selectObject IO_Pin enable
fit
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
gui_select -rect {5.380 43.702 42.866 9.340}
deselectAll
selectWire 14.1500 2.3500 16.1500 46.6600 8 VSS
panPage 0 1
panPage 0 1
panPage 0 -1
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
setLayerPreference node_cell -isVisible 1
setLayerPreference node_cell -isVisible 0
write_flow_template -template_file myfile
write_flow_template -template_file myfile.tcl
fit
fit
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeTdrEffort 2
setNanoRouteMode -quiet -routeTopRoutingLayer 9
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
fit
fit
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
verifyConnectivity -type all -error 1000 -warning 50
panPage 0 1
panPage 0 1
panPage 1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage -1 0
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
selectObject IO_Pin {digital_out[0]}
selectObject IO_Pin {digital_out[1]}
selectObject IO_Pin {digital_out[2]}
selectObject IO_Pin {digital_out[3]}
selectObject IO_Pin {digital_out[4]}
selectObject IO_Pin {digital_out[5]}
selectObject IO_Pin {digital_out[6]}
selectObject IO_Pin {digital_out[7]}
selectObject IO_Pin {value[0]}
selectObject IO_Pin {value[1]}
selectObject IO_Pin {value[2]}
selectObject IO_Pin {value[3]}
selectObject IO_Pin {value[4]}
selectObject IO_Pin {value[5]}
selectObject IO_Pin {value[6]}
selectObject IO_Pin {value[7]}
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
violationBrowserClose
fit
zoomBox -4.394 38.864 21.402 26.773
ui_view_box
ui_view_box
dbquery -area {-4.394 23.727 21.402 41.91} -objType inst
dbquery -area {-4.394 23.727 21.402 41.91} -objType regular
dbquery -area {-4.394 23.727 21.402 41.91} -objType special
gui_select -rect {0.778 46.959 30.806 10.880}
ui_view_box
win
uiSetTool select
dbquery -area {-1.1365 45.886 34.2525 11.7225} -objType inst
dbquery -area {-1.1365 45.886 34.2525 11.7225} -objType regular
dbquery -area {-1.1365 45.886 34.2525 11.7225} -objType special
fit
create_ccopt_clock_tree_spec
ctd_win -id ctd_window
ctd_win -id ctd_window
deselectAll
fit
gui_select -rect {-2.365 7.757 9.425 -3.328}
panPage -1 0
panPage -1 0
gui_select -rect {-0.673 6.636 7.306 -1.796}
panPage -1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 0 1
panPage 1 0
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 1 0
panPage 1 0
panPage 0 1
panPage 0 1
panPage 1 0
panPage -1 0
panPage 0 1
panPage 1 0
panPage 0 -1
panPage 0 -1
win off
