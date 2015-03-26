
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Bat_Finder -dir "/home/gudmundur/FPGA Projects/Pong/Bat_Finder/planAhead_run_2" -part xc6slx45fgg484-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "graphics_controller.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Bat_Finder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {graphics_controller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top graphics_controller $srcset
add_files [list {graphics_controller.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx45fgg484-3
