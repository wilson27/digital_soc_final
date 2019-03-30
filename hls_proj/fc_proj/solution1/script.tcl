############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fc_proj
set_top fc_layer
add_files ../fc_test/fc_layer.cpp
add_files fc_layer.cpp
open_solution "solution1"
set_part {xc7a200tsbg484-1} -tool vivado
create_clock -period 250MHz -name default
config_interface -clock_enable -m_axi_offset off -register_io off
#source "./fc_proj/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
