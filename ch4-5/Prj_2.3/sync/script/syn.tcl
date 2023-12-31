set search_path "~/library/"  
set target_library "typical.db"     
set link_library   "* $target_library"
#set symbol_library " smic18.sdb "  

set access_internal_pins true

set report_path "../rpt/reports"   
set output_path "../rpt/outputs"    


read_file -format verilog ../../src/mul_tc_16_16.v   
read_file -format verilog ../../src/wallace.v   
read_file -format verilog ../../src/wallace_tree.v   
read_file -format verilog ../../src/wallace_tree_1bit.v   
read_file -format verilog ../../src/full_adder.v   
read_file -format verilog ../../src/half_adder.v   
read_file -format verilog ../../src/wallace_adder.v   
read_file -format verilog ../../src/carry4.v
read_file -format verilog ../../src/booth.v
read_file -format verilog ../../src/booth_code.v


current_design mul_tc_16_16 
link   
uniquify


set     design_name     [get_object_name [current_design]]

#set_wire_load_model -name "smic18_wl10"   
#set_wire_load_mode top

#create_clock -period 100 -waveform {0 50} [get_ports clk]  -name clk   


#create_generated_clock  [get_pins div/clk_div] -source [get_ports clk]  -divide_by 64 -name clk_div  

#set_clock_latency 2.5 clk    
#set_clock_transition 0.3 clk    
#set_clock_uncertainty 1.5 -setup clk   
#set_clock_uncertainty 0.3 -hold clk    

#set_drive 0 [list clk rst_n]      
#set_driving_cell -lib_cell NAND2X1  in  


#set_input_delay  35 -clock [get_clocks clk] {in rst_n}  
#set_output_delay 35 -clock [get_clocks clk_div] [get_ports out]
set_input_transition 0.15 [all_inputs]
set_load          2        [all_outputs]   

set_max_area 0



check_design > $report_path/check_design_before_compile.rpt
check_timing > $report_path/check_timing_before_compile.rpt


compile
compile -incremental_mapping -map_effort high


write_sdf -version 2.1         $output_path/${design_name}_post_dc.sdf   
write -f ddc -hier -output     $output_path/${design_name}_post_dc.ddc
write -f verilog -hier -output $output_path/${design_name}_post_dc.v   
write_sdc                      $output_path/${design_name}_post_dc.sdc  

report_constraint -all_violators -verbose          > $report_path/constraint.rpt
report_qor                > $report_path/qor.rpt
report_power              > $report_path/power.rpt
report_area               > $report_path/area.rpt
report_cell               > $report_path/cell.rpt
report_clock              > $report_path/clk.rpt
report_hierarchy          > $report_path/hierarchy.rpt
report_design             > $report_path/design.rpt
report_reference          > $report_path/reference.rpt
report_timing             > $report_path/timing.rpt

check_design > $report_path/check_design_post_compile.rpt
check_timing > $report_path/check_timing_post_compile.rpt


#start_gui
