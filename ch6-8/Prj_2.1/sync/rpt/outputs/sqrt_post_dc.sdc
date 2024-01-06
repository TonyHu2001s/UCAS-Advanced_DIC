###################################################################

# Created by write_sdc on Mon Jan  1 20:41:49 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_area 0
set_load -pin_load 2 [get_ports vld_out]
set_load -pin_load 2 [get_ports {y[15]}]
set_load -pin_load 2 [get_ports {y[14]}]
set_load -pin_load 2 [get_ports {y[13]}]
set_load -pin_load 2 [get_ports {y[12]}]
set_load -pin_load 2 [get_ports {y[11]}]
set_load -pin_load 2 [get_ports {y[10]}]
set_load -pin_load 2 [get_ports {y[9]}]
set_load -pin_load 2 [get_ports {y[8]}]
set_load -pin_load 2 [get_ports {y[7]}]
set_load -pin_load 2 [get_ports {y[6]}]
set_load -pin_load 2 [get_ports {y[5]}]
set_load -pin_load 2 [get_ports {y[4]}]
set_load -pin_load 2 [get_ports {y[3]}]
set_load -pin_load 2 [get_ports {y[2]}]
set_load -pin_load 2 [get_ports {y[1]}]
set_load -pin_load 2 [get_ports {y[0]}]
create_clock [get_ports clk]  -period 100  -waveform {0 50}
set_clock_latency 2.5  [get_clocks clk]
set_clock_uncertainty -setup 1.5  [get_clocks clk]
set_clock_uncertainty -hold 0.3  [get_clocks clk]
set_clock_transition -min -fall 0.3 [get_clocks clk]
set_clock_transition -min -rise 0.3 [get_clocks clk]
set_clock_transition -max -fall 0.3 [get_clocks clk]
set_clock_transition -max -rise 0.3 [get_clocks clk]
set_input_delay -clock clk  35  [get_ports rst_n]
