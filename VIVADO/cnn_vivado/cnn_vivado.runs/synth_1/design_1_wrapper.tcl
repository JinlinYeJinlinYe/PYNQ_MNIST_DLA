# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg400-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.cache/wt [current_project]
set_property parent.project_path C:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/HLS/conv_core
  c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/HLS/pool_core
} [current_project]
update_ip_catalog
set_property ip_output_repo c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib C:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
add_files C:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_Conv_0_0/constraints/Conv_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/bd_afc3_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/bd_afc3_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/bd_afc3_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/bd_afc3_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/bd_afc3_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/bd_afc3_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/bd_afc3_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/bd_afc3_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_0/ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_0/design_1_rst_ps7_0_50M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_Pool_0_0/constraints/Pool_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/bd_6f02_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_1/bd_6f02_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_5/bd_6f02_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_6/bd_6f02_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_7/bd_6f02_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_8/bd_6f02_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_9/bd_6f02_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_10/bd_6f02_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/bd_0/ip/ip_11/bd_6f02_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/ip/design_1_axi_smc_1/ooc.xdc]
set_property used_in_implementation false [get_files -all C:/Users/JinlinYE/Documents/myProject/my_project_FPGA/VIVADO/cnn_vivado/cnn_vivado.srcs/sources_1/bd/design_1/design_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top design_1_wrapper -part xc7z020clg400-2


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef design_1_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
