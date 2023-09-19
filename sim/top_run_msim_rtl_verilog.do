transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/debouncing.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/_1ms.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/transformer.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/time_pkg.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/seg7_control.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/main_cntrl.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/timer_ssms.sv}
vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src {A:/intelFPGA/proj/sec/src/main.sv}

vlog -sv -work work +incdir+A:/intelFPGA/proj/sec/src/../tb {A:/intelFPGA/proj/sec/src/../tb/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
