# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_param simulator.modelsimInstallPath D:/TOOLS/modeltech_pe_10.4c/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/vivado_code/fpga/cpu31_190424/cpu31_190424.cache/wt [current_project]
set_property parent.project_path D:/vivado_code/fpga/cpu31_190424/cpu31_190424.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
add_files c:/Users/胡轩/Desktop/计算机组成原理/资料/31条指令CPU实验指导书和网站提交说明/网上提交测试所用coe/mips_31_mars_simulate.coe
add_files -quiet d:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp
set_property used_in_implementation false [get_files d:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.dcp]
add_files -quiet d:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.dcp
set_property used_in_implementation false [get_files d:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.dcp]
read_verilog -library xil_defaultlib {
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/PC.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/NPC.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/MUX4.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/RegFile.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/pc_hier.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/MUX.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/extend.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/cu.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/ALU.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/add.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/dram.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/cpu.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/seg7x16.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/sccomp_dataflow.v
  D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/sources_1/new/top_cpu_7seg.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/constrs_1/new/icf.xdc
set_property used_in_implementation false [get_files D:/vivado_code/fpga/cpu31_190424/cpu31_190424.srcs/constrs_1/new/icf.xdc]


synth_design -top top_cpu_7seg -part xc7a100tcsg324-1


write_checkpoint -force -noxdef top_cpu_7seg.dcp

catch { report_utilization -file top_cpu_7seg_utilization_synth.rpt -pb top_cpu_7seg_utilization_synth.pb }
