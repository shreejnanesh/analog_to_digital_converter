####create clock




set_units -time 1ps
set_units -capacitance 1000.0fF

create_clock -add -name clk -period 900  [get_ports clk]
create_clock -add -name VCLK -period 900 


set_clock_uncertainty -setup 28 [get_clocks clk]
set_clock_uncertainty -hold 28 [get_clocks clk]

set_input_delay -clock VCLK -max 168 [all_inputs]
set_output_delay -clock VCLK -max 112 [all_outputs]
set_input_delay -clock VCLK -min  168 [all_inputs]
set_output_delay -clock VCLK -min 112 [all_outputs]

####set_dont_use *X1


set_input_transition 0.05 [get_ports cmp]
set_input_transition 0.05 [get_ports enable]

set_load -max 0.05 -pin_load [get_ports out_flag]
set_load -min 0.05 -pin_load [get_ports out_flag]

set_load -max 0.05 -pin_load [get_ports sample]
set_load -min 0.05 -pin_load [get_ports sample]

set_load -max 0.05 -pin_load [get_ports digital_out]
set_load -min 0.05 -pin_load [get_ports digital_out]


set_load -max 0.05 -pin_load [get_ports value]
set_load -min 0.05 -pin_load [get_ports value]

set_max_fanout 10.000 [current_design]
#set_max_transition 1 [current_design]

