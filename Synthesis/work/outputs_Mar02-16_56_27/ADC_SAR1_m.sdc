# ####################################################################

#  Created by Genus(TM) Synthesis Solution 18.10-p003_1 on Tue Mar 02 16:56:36 IST 2021

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design ADC_SAR1

create_clock -name "clk" -period 0.9 -waveform {0.0 0.45} [get_ports clk]
create_clock -name "VCLK" -period 0.9 -waveform {0.0 0.45} 
set_load -pin_load 0.05 [get_ports {digital_out[7]}]
set_load -pin_load 0.05 [get_ports {digital_out[6]}]
set_load -pin_load 0.05 [get_ports {digital_out[5]}]
set_load -pin_load 0.05 [get_ports {digital_out[4]}]
set_load -pin_load 0.05 [get_ports {digital_out[3]}]
set_load -pin_load 0.05 [get_ports {digital_out[2]}]
set_load -pin_load 0.05 [get_ports {digital_out[1]}]
set_load -pin_load 0.05 [get_ports {digital_out[0]}]
set_load -pin_load 0.05 [get_ports out_flag]
set_load -pin_load 0.05 [get_ports sample]
set_load -pin_load 0.05 [get_ports {value[7]}]
set_load -pin_load 0.05 [get_ports {value[6]}]
set_load -pin_load 0.05 [get_ports {value[5]}]
set_load -pin_load 0.05 [get_ports {value[4]}]
set_load -pin_load 0.05 [get_ports {value[3]}]
set_load -pin_load 0.05 [get_ports {value[2]}]
set_load -pin_load 0.05 [get_ports {value[1]}]
set_load -pin_load 0.05 [get_ports {value[0]}]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.168 [get_ports cmp]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.168 [get_ports clk]
set_input_delay -clock [get_clocks VCLK] -add_delay -max 0.168 [get_ports enable]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {digital_out[0]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports out_flag]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports sample]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -max 0.112 [get_ports {value[0]}]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.168 [get_ports cmp]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.168 [get_ports clk]
set_input_delay -clock [get_clocks VCLK] -add_delay -min 0.168 [get_ports enable]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {digital_out[0]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports out_flag]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports sample]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[7]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[6]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[5]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[4]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[3]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[2]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[1]}]
set_output_delay -clock [get_clocks VCLK] -add_delay -min 0.112 [get_ports {value[0]}]
set_max_fanout 10.000 [current_design]
set_input_transition 0.0 [get_ports cmp]
set_input_transition 0.0 [get_ports enable]
set_wire_load_mode "enclosed"
set_dont_use [get_lib_cells slow/HOLDX1]
set_clock_uncertainty -setup 0.028 [get_clocks clk]
set_clock_uncertainty -hold 0.028 [get_clocks clk]
