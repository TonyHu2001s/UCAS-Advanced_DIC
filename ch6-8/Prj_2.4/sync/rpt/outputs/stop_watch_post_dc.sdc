###################################################################

# Created by write_sdc on Tue Dec  5 14:03:58 2023

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_area 0
set_load -pin_load 2 [get_ports {hr_h[3]}]
set_load -pin_load 2 [get_ports {hr_h[2]}]
set_load -pin_load 2 [get_ports {hr_h[1]}]
set_load -pin_load 2 [get_ports {hr_h[0]}]
set_load -pin_load 2 [get_ports {hr_l[3]}]
set_load -pin_load 2 [get_ports {hr_l[2]}]
set_load -pin_load 2 [get_ports {hr_l[1]}]
set_load -pin_load 2 [get_ports {hr_l[0]}]
set_load -pin_load 2 [get_ports {min_h[3]}]
set_load -pin_load 2 [get_ports {min_h[2]}]
set_load -pin_load 2 [get_ports {min_h[1]}]
set_load -pin_load 2 [get_ports {min_h[0]}]
set_load -pin_load 2 [get_ports {min_l[3]}]
set_load -pin_load 2 [get_ports {min_l[2]}]
set_load -pin_load 2 [get_ports {min_l[1]}]
set_load -pin_load 2 [get_ports {min_l[0]}]
set_load -pin_load 2 [get_ports {sec_h[3]}]
set_load -pin_load 2 [get_ports {sec_h[2]}]
set_load -pin_load 2 [get_ports {sec_h[1]}]
set_load -pin_load 2 [get_ports {sec_h[0]}]
set_load -pin_load 2 [get_ports {sec_l[3]}]
set_load -pin_load 2 [get_ports {sec_l[2]}]
set_load -pin_load 2 [get_ports {sec_l[1]}]
set_load -pin_load 2 [get_ports {sec_l[0]}]
create_clock [get_ports clk]  -period 100  -waveform {0 50}
set_clock_latency 2.5  [get_clocks clk]
set_clock_uncertainty -setup 1.5  [get_clocks clk]
set_clock_uncertainty -hold 0.3  [get_clocks clk]
set_clock_transition -min -fall 0.3 [get_clocks clk]
set_clock_transition -min -rise 0.3 [get_clocks clk]
set_clock_transition -max -fall 0.3 [get_clocks clk]
set_clock_transition -max -rise 0.3 [get_clocks clk]
set_input_delay -clock clk  35  [get_ports rst_n]
