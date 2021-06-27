# Cadence Genus(TM) Synthesis Solution, Version 18.10-p003_1, built Jun  7 2018 23:53:27

# Date: Wed Jan 20 14:54:47 2021
# Host: vlsi-20 (x86_64 w/Linux 2.6.32-696.20.1.el6.x86_64) (6cores*6cpus*1physical cpu*Intel(R) Core(TM) i5-8400 CPU @ 2.80GHz 9216KB)
# OS:   Red Hat Enterprise Linux Server release 6.9 (Santiago)

set_db init_lib_search_path ../lib
set_db init_hdl_search_path ../rtl
set_db library fast.lib
read_hdl SAR_RTL.v
gui_sho
elaborate
read_vcd ../tb/traces.vcd
report_timing -unconstrained
report_power
report_area
syn_generic
syn_map
syn_opt
report_power
report_area
report_area > area.rpt
report_power > power.rpt
write_hdl >> ../tb/SAR_NL.v
exit
