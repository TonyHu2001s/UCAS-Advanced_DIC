###################################################################

# Created by write_sdc on Wed Jan  3 23:27:57 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current uA
set_max_area 0
set_load -pin_load 2 [get_ports vld_out]
set_load -pin_load 2 [get_ports {dout[9]}]
set_load -pin_load 2 [get_ports {dout[8]}]
set_load -pin_load 2 [get_ports {dout[7]}]
set_load -pin_load 2 [get_ports {dout[6]}]
set_load -pin_load 2 [get_ports {dout[5]}]
set_load -pin_load 2 [get_ports {dout[4]}]
set_load -pin_load 2 [get_ports {dout[3]}]
set_load -pin_load 2 [get_ports {dout[2]}]
set_load -pin_load 2 [get_ports {dout[1]}]
set_load -pin_load 2 [get_ports {dout[0]}]
create_clock [get_ports clk]  -period 100  -waveform {0 50}
set_input_transition -max 0.15  [get_ports clk]
set_input_transition -min 0.15  [get_ports clk]
set_input_transition -max 0.15  [get_ports rst_n]
set_input_transition -min 0.15  [get_ports rst_n]
set_input_transition -max 0.15  [get_ports vld_in]
set_input_transition -min 0.15  [get_ports vld_in]
set_input_transition -max 0.15  [get_ports {din[9]}]
set_input_transition -min 0.15  [get_ports {din[9]}]
set_input_transition -max 0.15  [get_ports {din[8]}]
set_input_transition -min 0.15  [get_ports {din[8]}]
set_input_transition -max 0.15  [get_ports {din[7]}]
set_input_transition -min 0.15  [get_ports {din[7]}]
set_input_transition -max 0.15  [get_ports {din[6]}]
set_input_transition -min 0.15  [get_ports {din[6]}]
set_input_transition -max 0.15  [get_ports {din[5]}]
set_input_transition -min 0.15  [get_ports {din[5]}]
set_input_transition -max 0.15  [get_ports {din[4]}]
set_input_transition -min 0.15  [get_ports {din[4]}]
set_input_transition -max 0.15  [get_ports {din[3]}]
set_input_transition -min 0.15  [get_ports {din[3]}]
set_input_transition -max 0.15  [get_ports {din[2]}]
set_input_transition -min 0.15  [get_ports {din[2]}]
set_input_transition -max 0.15  [get_ports {din[1]}]
set_input_transition -min 0.15  [get_ports {din[1]}]
set_input_transition -max 0.15  [get_ports {din[0]}]
set_input_transition -min 0.15  [get_ports {din[0]}]
