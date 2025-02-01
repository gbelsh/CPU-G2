transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/fourToOneMux.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/Z_Reg.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/thirtyTwoToOneMultiplexer.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/ThirtyTwoToFiveEncoder.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/rotate_right.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/rotate_left.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/RCAdder32.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/PC_Reg.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/Multiplication.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/MDR_Reg.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/Gen_Reg.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/Datapath.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/bus.v}
vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/alu.v}

vlog -vlog01compat -work work +incdir+C:/intelFPGA_lite/18.1/elec374DesignProject {C:/intelFPGA_lite/18.1/elec374DesignProject/datapath_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  datapath_tb

add wave *
view structure
view signals
run 500 ns
